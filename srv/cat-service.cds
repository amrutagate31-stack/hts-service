using my.bookshop as my from '../db/schema';

service CatalogService {
    @odata.draft.enabled
    entity Books as projection on my.Books;

    action uploadBooks(data: LargeString) returns array of UploadResult;

    type UploadResult {
        LineNo       : Integer;
        ID           : Integer;
        title        : String;
        stock        : Integer;
        author       : String;
        Status       : String;
        ErrorMessage : String;
    }
}
