public class Combobox {

    @AuraEnabled public String label {get; set;}
    @AuraEnabled public String value {get; set;}
   
    public Combobox(String label, String value){
        this.label = label;
        this.value = value;
    }
}
