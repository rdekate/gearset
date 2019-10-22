public with sharing class AccountController {
  @AuraEnabled
   public static List<Account> findAll() {
             return [SELECT id, Name, AccountNumber, Fax,Industry,Type  FROM Account LIMIT 10];
   }
}