@isTest
private class HelloWorldTestClass {
    static testMethod void validateHelloWorld(){
    Book__c b = new Book__c(name='Test1', Price__c=100);
    System.debug('Price before inserting new book: ' + b.Price__c);
    // Insert book
    insert b;
    // Retrive the book
    b = [select Price__c from book__c where id = :b.id];
    System.debug('Price after trigger fired: ' + b.Price__c);

    // Test that the trigger correctly updated the price
    System.assertEquals(90, b.Price__c);
       
    }

}