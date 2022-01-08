import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'list.dart';

class InteriorCard extends StatelessWidget {
  late final Names names;
  InteriorCard({required this.names});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0,  16.0, 16.0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            title: Text(
              names.name,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
              ),
            ),
            subtitle: Text(
              names.location,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
             trailing: InkWell(
               onTap: (){
                 ClipboardManager.copyToClipBoard(names.location).then((result) {
                   final snackBar = SnackBar(
                     content: Text('Copied to Clipboard'),
                     action: SnackBarAction(
                       label: 'Undo',
                       onPressed: () {},
                     ),
                   );
                   Scaffold.of(context).showSnackBar(snackBar);
                 });
               },
               child: const Icon(
                 Icons.copy,
               ),
             )
          ),
        ],
      ),
    );
  }
}
