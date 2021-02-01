import 'package:Japanexpress/Screens/Customer/CustomerScreen.dart';
import 'package:Japanexpress/Screens/Maintain/MaintainScreen.dart';
import 'package:Japanexpress/Screens/Message/MessageScreen.dart';
import 'package:Japanexpress/Screens/PreOders/PreoderScreen.dart';
import 'package:Japanexpress/Screens/Deposit/DepositScreen.dart';
import 'package:Japanexpress/Screens/PurchaseOrders/PrechaseScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App for Admin"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(3.0),
                children: [
                  dashboardItem("Purchase Orders", Icons.supervised_user_circle, 1, context),
                  dashboardItem("Pre Orders", Icons.supervised_user_circle, 2, context),
                  dashboardItem("Maintain Rate", Icons.supervised_user_circle, 3, context),
                  dashboardItem("Deposit Withdraw", Icons.supervised_user_circle, 4, context),
                  dashboardItem("Customer Manage", Icons.supervised_user_circle, 5, context),
                  dashboardItem("Notification Message", Icons.supervised_user_circle, 6, context),
                ],
              ),
            ),
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
}

Card dashboardItem(String title, IconData icon, int page, context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 5.0,
    margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF343434),
        borderRadius: BorderRadius.circular(15),
      ),
      child: new InkWell(
        onTap: () {
          if (page == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrechaseScreen()));
          } else if (page == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PreoderScreen()));
          } else if (page == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MaintainScreen()));
          } else if (page == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DepositScreen()));
          } else if (page == 5) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CustomerScreen()));
          } else if (page == 6) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MessageScreen()));
          } 
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: [
            SizedBox(height: 20.0),
            Center(
              child: Icon(
                icon,
                size: 60.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  title,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}