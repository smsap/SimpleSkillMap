using my.bookshop as my from '../../../db';

service CatalogService {
    @readonly
    entity Books as projection on my.Books;
}
