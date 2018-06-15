public class ChecklistItem {

    @AuraEnabled public String  recordId        {get; set;}
    @AuraEnabled public String  itemName        {get; set;}
    @AuraEnabled public String  itemDescription {get; set;}
    @AuraEnabled public Boolean isCompleted     {get; set;}

}
