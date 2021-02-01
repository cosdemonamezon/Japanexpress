import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({Key key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Message"),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
            SizedBox(height: 15,),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
            messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blue,),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.chat),
                        onPressed: () {
                          
                        }),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.chat),
                        onPressed: () {
                          
                        }),
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.chat),
                        onPressed: () {
                          
                        }),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card messageCard(String title, IconData icon, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue,size: 40.0,),
        title: Text(
          title ,style: TextStyle(fontWeight: FontWeight.w400),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}