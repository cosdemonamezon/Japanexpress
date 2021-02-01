import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
            Hero(
              tag: "hero",
              child: Container(
                height: 150,
                //width: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 58.0),
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: false,
              //initialValue: 'phone number',
              decoration: InputDecoration(
                labelText: "Phone number",
                //hintText: '0933xxxxx',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              autofocus: false,
              //initialValue: 'some password',
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                //hintText: 'Password',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/home");
                },
                padding: EdgeInsets.all(12),
                color: Colors.lightBlueAccent,
                child: Text('Log In', style: TextStyle(color: Colors.white)),
              ),
            ),
            FlatButton(
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}