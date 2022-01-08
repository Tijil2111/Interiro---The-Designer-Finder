import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clipboard_manager/clipboard_manager.dart';

class HowToUse extends StatelessWidget {
String mail = "tijil2008@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Padding(
                padding: EdgeInsets.only(top:40.0),
                child: Text('Interiro', style: TextStyle(fontSize: 20),),
              ),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text('All Interior Designer'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/interior');
              },
            ),
            ListTile(
              title: const Text('How To Use'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/how');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
            'Interiro'
        ),
      ),


      body: Center(
        child: Column(
          children: [
              const SizedBox(
                height: 40
            ),


            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('You find various resources in this app. From the side navigation drawer you can find the dashboard that shows some statistics.In All Interior Designers You find the interior designers divided Region Wise. Currently the app only has few major Countries but with future updates it would have more and more features. This app was made during the Hibernation Hacks 2022. '),
            ),
            
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text('For further details contact -> tijil2008@gmail.com')
            ),
            
            Padding(
              padding: EdgeInsets.all(40),
              child: RaisedButton(
                onPressed: (){
                  ClipboardManager.copyToClipBoard(mail).then((result) {
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
                child: Text('Copy My Mail :D'),
                color: Colors.grey,
              ),
            )
          ]

        ),
      ),
    );
  }
}
