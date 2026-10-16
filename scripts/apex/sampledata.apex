/**
10 template Handover_Item__c records with no installation, the checklist every job starts from. You create these by hand,
 in helios-dev, like any record: open the org from Orgs Manager, search Handover Items in the App Launcher, and click New
  ten times. For each record, give an External Id (HANDOVER-TPL-01 to HANDOVER-TPL-10), a Label 
  (Panels fixed and torqued, Inverter commissioned, Isolator labelled...), a Sequence (10, 20, 30...), tick Is Template, 
  and leave Installation empty

*/

List<Handover_Item__c> insertHandovers = new List<Handover_Item__c>();
for(Integer i = 1;i<11;i++){
    String index;
    if(i != 10){
        index = '0' + i;
    }
    insertHandovers.add(new Handover_Item__c(
        External_Id__c = 'HANDOVER-TPL-' + index,
        Label__c = 'Step ' + i,
        Sequence__c = i *10,
        Is_Template__c = true
    ));

}

insert insertHandovers;