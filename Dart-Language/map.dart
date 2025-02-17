
main(){
  // var map_name = {
  //   'name':'Ayush',
  //   'phone':6392301514,
  //   'company':'vijatshi',
  //   'address':'noida sec-10'

  // };
  var mapName= Map();
  mapName['name']="Misthi";
  mapName['phone']=392151476;
  mapName['email']="misthi@gmail.com";
  mapName['pincode']=201301;
  //print(map_name['company']);
 // map_name['pin']=221005;
 // print(map_name);
 print(mapName);
 print(mapName.isEmpty);
 print(mapName.isNotEmpty);
 print(mapName.length);
 print(mapName.keys);
 print(mapName.values);
 print(mapName.containsKey('name'));
 print(mapName.containsKey('code'));
 print(mapName.remove('name'));
 print(mapName);
}