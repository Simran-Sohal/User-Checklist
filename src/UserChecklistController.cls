public with sharing class UserChecklistController{

    @AuraEnabled
    public static Checklist getChecklist(){
        
        Checklist chklist = new Checklist();
        chklist.recordId = UserInfo.getUserId();
        chklist.checklistName = 'My Checklist';
        chklist.checklistType = 'TO_DO';
        
        List<Combobox> chkTypeOptions = new List<Combobox>();
        chkTypeOptions.add(new Combobox('To Do Items', 'TO_DO'));
        chkTypeOptions.add(new Combobox('Approval Items', 'APPROVAL'));
        chkTypeOptions.add(new Combobox('Follow-Up Items', 'FOLLOW_UP'));
        
        chklist.checklistTypeOptions = chkTypeOptions;
        
        chklist.checklistItems = new List<ChecklistItem>();
        chklist.checklistItems.add(getChecklistItem('1'));
        chklist.checklistItems.add(getChecklistItem('2'));
        chklist.checklistItems.add(getChecklistItem('3'));
        chklist.checklistItems.add(getChecklistItem('4'));
        
        return chklist;
    }

    private static ChecklistItem getChecklistItem(String itemNumber){
        ChecklistItem item = new ChecklistItem();
        item.recordId = itemNumber;
        item.itemName = 'Item Name ' + itemNumber;
        item.itemDescription = 'Item Description ' + itemNumber;
        item.isCompleted = true;
        
        return item;
    }

    @AuraEnabled
    public static void saveChecklist(){
        
    }
}