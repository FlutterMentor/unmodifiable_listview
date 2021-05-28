import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UnmodifiableListView',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...Provider.of<ProviderData>(context).getList,
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ProviderData>(context, listen: false).addToList(
                  Container(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Text('Tile 4'),
                      trailing: Text('THE FOUR'),
                    ),
                  ),
                );
              },
              child: Text('Add To List'),
            ),
          ],
        ),
      ),
    );
  }
}
