import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Application', style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 32),),
                CircleAvatar(
                backgroundImage: AssetImage('assets/53d189dfcd54fa9ecae756ddf5a7c2ee.jpg'),
                radius: 50,
              ),
                Padding(padding: EdgeInsets.only(top: 16),),
                Text('Sadovoy Andrey', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),),
                Padding(padding: EdgeInsets.only(top: 8),),
                Row(
                  children: [
                    Icon(Icons.mail_outline, size: 25,),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Text('asadovoy@gmail.com', style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54
                    ),)
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16),),
                Text('Likes: $_count', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey,
                ),),
              ],
            ),
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
