import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_map_provider.dart';

class add_Data extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Consumer<ListMapProvider>(
        builder: (ctx, provider, __) {
          final length = provider.getData().length;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<ListMapProvider>().addData({
                      "name": "contact name",
                      "MobNo": "6392301514",
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                Text(length.toString(), style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        },
      ),
    );
  }
}