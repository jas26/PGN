import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(
      MaterialApp(
        home: LoginPage(),
      )
      
  );
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,30,10,0),
                    child: Text(
                      'PGN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        //fontFamily: 'Pacifico'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,0,10,10),
                    child: SizedBox(
                      height: 10,
                      width: 300,
                      child: Divider(
                        color: Colors.tealAccent.shade200,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(), //labelText: 'User Name',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blueGrey,
                        ),
                        hintText: 'Email id',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                            letterSpacing: 1.0,
                            fontSize: 15
                        ),

                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          //labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.blueGrey,
                          ),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                              letterSpacing: 1.0,
                              fontSize: 15
                          ),
                          hintText: 'Password'
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),

              //SizedBox(
              //  height: 130,
              //),
              
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateAccount()),
                      );
                    },
                    child: Text(
                      'New User? Create Account',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
            ],
          ),
        ),
      );
  }
}

//remove the below class
class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Account"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('work still in progress. go back!'),
        ),
      ),
    );
  }
}