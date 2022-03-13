package smsap.ssm.handlers;

import java.util.stream.Stream;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.catalogservice.CatalogService_;
import lombok.extern.slf4j.Slf4j;
import cds.gen.catalogservice.Books;

@Component
@ServiceName(CatalogService_.CDS_NAME)
@Slf4j
public class CatalogServiceHandler implements EventHandler {

	@After(event = CdsService.EVENT_READ)
	public void discountBooks(Stream<Books> books) {
		String methodName = "discountBooks";
		log.info("CatalogServiceHandler::{} Start", methodName);
		books.filter(b -> b.getTitle() != null && b.getStock() != null)
				.filter(b -> b.getStock() > 200)
				.forEach(b -> b.setTitle(b.getTitle() + " (discounted)"));
		log.info("CatalogServiceHandler::{} End", methodName);
	}

	@On(event = CdsService.EVENT_READ)
	public void checkBooks(Stream<Books> books) {
		String methodName = "checkBooks";
		log.info("CatalogServiceHandler::{} Start", methodName);
		log.info("CatalogServiceHandler::{} End", methodName);
	}
}