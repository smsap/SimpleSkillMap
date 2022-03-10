using {my.bookshop as my} from '../../../db';

@path : '/books/'
service CatalogService {
    @readonly
    entity Books as projection on my.Books;
}
