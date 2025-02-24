import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/add_Data.dart';
import 'package:provider_project/list_map_provider.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Consumer<ListMapProvider>(
          builder: (ctx, provider, __){
         // builder: (_, provider, __){
            var allData = provider.getData();
            print(allData.length);
        //return ctx.watch<ListMapProvider>().getData(); // it is for context type.
            return allData.isNotEmpty ? ListView.builder(
              itemCount: allData.length,
                itemBuilder: (_, index){
              return ListTile(
                title: Text('${allData[index]['name']}'),
                subtitle: Text('${allData[index]['MobNo']}'),
                trailing: SizedBox(
                  width: 120,
                  child: Row(
                    children: [
                      IconButton(
                      onPressed: (){
                context.read<ListMapProvider>().upadateData({
                "name" : "Updated contact name",
                "MobNo" : "6392301518",
                }, index);
                }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: (){
                        context.read<ListMapProvider>().deleteData(index);
                      }, icon: Icon(Icons.delete, color: Colors.red,)),
                    ],
                  ),
                ),
              );
            }): Center(child: Text('No Contacts Yet!!'),);
        },
      ),
      floatingActionButton: FloatingActionButton
        (onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>add_Data(),));
          // context.read<ListMapProvider>().addData({
          //   "name" : "contact name",
          //   "MobNo" : "6392301514"
          },
          child: Icon(Icons.add),
          ),

      //},

     // ),
    );
  }
}