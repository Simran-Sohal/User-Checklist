public class Checklist {

    @AuraEnabled public String          recordId             {get; set;}
    @AuraEnabled public String          checklistName        {get; set;}
    @AuraEnabled public String          checklistType        {get; set;}
    @AuraEnabled public Combobox[]      checklistTypeOptions {get; set;}
    @AuraEnabled public ChecklistItem[] checklistItems       {get; set;}

}
