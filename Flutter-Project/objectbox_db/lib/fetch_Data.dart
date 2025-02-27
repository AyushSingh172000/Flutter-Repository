//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox_db/database_services.dart';
import 'package:objectbox_db/helper.dart';
import 'package:objectbox_db/user.dart';
import 'package:objectbox_db/Objectbox_db_provider.dart';
import 'package:provider/provider.dart';

import 'edit_Data.dart';

class FetchDataScreen extends StatefulWidget {
  const FetchDataScreen({super.key}); //required ObjectBox objectBox

  @override
  State<FetchDataScreen> createState() => _FetchDataScreenState();
}

class _FetchDataScreenState extends State<FetchDataScreen> {
  //List<User> allData = [];
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      Provider.of<ObjectBoxProvider>(context, listen: false).fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Fetch Data'),
      ),
      body: Consumer<ObjectBoxProvider>(
        builder: (context, provider, _) {
          var allData = provider.fetchData();
          if (allData.isEmpty) {
            return const Center(child: Text('No Data Available'));
          }
          return ListView.builder(
            itemCount: allData.length,
            itemBuilder: (context, index) {
              User user = allData[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'ID:${user.id}    ${user.firstname} ${user.lastname}',
                  ),
                  tileColor: Colors.lightBlueAccent,
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        // Text('${allData.length}'),
                        IconButton(
                          onPressed: () {
                            provider.deleteData(user.id);

                            // setState(() {
                            //   deleteData(user.id);
                            // });
                          },
                          icon: const Icon(Icons.delete, color: Colors.red),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => EditDataScreen(id: user.id),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
