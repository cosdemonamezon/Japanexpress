import 'package:flutter/material.dart';

class PrechaseScreen extends StatefulWidget {
  PrechaseScreen({Key key}) : super(key: key);

  @override
  _PrechaseScreenState createState() => _PrechaseScreenState();
}

class _PrechaseScreenState extends State<PrechaseScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Pre Oders"),
          bottom: TabBar(
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)),
              color: Colors.white),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("New Orders"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("History"),
                ),
              ),
              
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                children: [
                  SizedBox(height: 15,),
                  //messageCard("Learn Git and GitHub without any code!", Icons.account_box, "Software developer"),
                  buildCard(
                    "Square style can be done by changing small code in the Material Button And Icon Button In Flutter !",
                    "assets/o1.jpg",
                  ),
                  buildCard(
                    "A Material Design raised button. A raised button consists of a rectangular piece of material that hovers over the interface. Documentation. Input and selections",
                    "assets/o2.jpg",
                  ),
                  buildCard(
                    "Implementing an icon-only toggle button. The following example shows a toggle button with three buttons that have icons",
                    "assets/o3.jpg",
                  ),
                  buildCard(
                    "a free and open source (MIT license) Material Flutter Button that supports variety of buttons style demands. 08 June 2019",
                    "assets/o4.jpg",
                  ),
                  buildCard(
                    "Here we discuss all paramaters available of the Flutter's MaterialButton Class. ... In Material Design, button's elevation is around 2dp to 8dp",
                    "assets/o5.jpg",
                  ),
                  buildCard(
                    "A material design “Raised button”. · color — This is the color used for the background color of the button while it is in it's default, unpressed state.",
                    "assets/o6.jpg",
                  ),
                  buildCard(
                    "Buttons are the Flutter widgets, which is a part of the material design library. Flutter provides several types of buttons that have different shapes",
                    "assets/o7.jpg",
                  ),
                  buildCard(
                    "Hi everyone in this flutter article I am working with flutter button UI Design. Flutter button with image",
                    "assets/o8.jpg",
                  ),
                ],
              ),
            ),




            Icon(Icons.movie),
          ],
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
      ),
    );
  }

  Card buildCard(String title, String image) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14,
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: (){},
              color: Colors.green,
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
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