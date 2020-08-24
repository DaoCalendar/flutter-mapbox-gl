class HeavenDataModel {
  int count;
  double amount;
  //List<dynamic> productCodes=new List();
  String catKey='';
  String code;
  HeavenDataModel ({this.count,this.amount,this.code,this.catKey});


   Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["Count"]=this.count;
    map["Amount"]=this.amount;
    map["Code"]=this.code;
    map['CatKey']=this.catKey==null ? '' : this.catKey;
   
   return map;

  }

  HeavenDataModel.map(Map<String, dynamic> obj)
{
  this.amount=num.tryParse( obj['Amount'])?.toDouble();
  this.catKey=obj['CatKey'];
  this.code=obj['Code'];
  this.count=num.tryParse( obj['Count'])?.toInt();
}
factory HeavenDataModel.fromMap(Map<String, dynamic> obj)
{
  return new HeavenDataModel(
  amount:num.tryParse( obj['Amount'])?.toDouble(),
  catKey:obj['CatKey'],
  code:obj['Code'],
  count:num.tryParse( obj['Count'])?.toInt()
  );
}
}