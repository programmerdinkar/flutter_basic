import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardviewLoginScreen extends StatefulWidget {
  const CardviewLoginScreen({Key? key}) : super(key: key);

  @override
  State<CardviewLoginScreen> createState() => _CardviewLoginScreenState();
}

final _formKey = GlobalKey<FormState>();
final fieldText1 = TextEditingController();
final fieldText2 = TextEditingController();
final fieldText3 = TextEditingController();

class _CardviewLoginScreenState extends State<CardviewLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 12, left: 20),
              child: Text(
                "Login back into your account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              margin: EdgeInsets.only(top: 25,bottom: 10,right: 25,left: 25),
              child: Stack(
                  //alignment: Alignment.topRight,
                  //
                  // fit: StackFit.loose,
                  clipBehavior: Clip.hardEdge,
                children:[ 
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 450,
                    child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100)),
                        side: BorderSide(color: Colors.black, width: 3)),
                    shadowColor: Colors.black,
                    elevation: 120,
                    borderOnForeground: true,
                    color: HexColor("#31d37d"),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40,bottom: 30),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 10),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: TextFormField(
                                    controller: fieldText2,
                                    decoration: InputDecoration(
                                        labelText: "Enter your Email",
                                        hintText: "email",
                                        hintStyle: TextStyle(color: Colors.black),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 10,
                                            ))),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Email";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 25,
                                  ),
                                  child: TextFormField(
                                    controller: fieldText3,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        labelText: "Enter your Password",
                                        hintText: "password",
                                        hintStyle: TextStyle(color: Colors.black),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 10,
                                            ))),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Password";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 25, top: 5),
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(30),
                              width: 200,
                              height: 50,
                              child: ElevatedButton(onPressed: (){},
                                  child: Text("Login", style:
                                    TextStyle(fontSize: 20,
                                    color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                shape:  RoundedRectangleBorder(
                                  side: BorderSide(width:3, color:Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),


                              ),),
                            )
                          ],
                        ),
                      ],
                    ),
                ),
                  ),
                   Container(
                     margin: EdgeInsets.only(right: 15),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                        Positioned(
                           // top: -2,

                           child: Container(
                             width: 90,
                             height: 90,
                             // color: Colors.black,
                             child: CircleAvatar(
                               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkHwIfa83tAQNOjJdd9LRhjc9LNakC8v3jZnnOWc1dil6XHmsEdaab8z7DYAhcTiT3DGw&usqp=CAU"),
                             ),
                           ),
                         ),
                       ],
                     ),
                  )
                   ]),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "signupscreen");
                },
                child: Text(
                  "New user? Signup",
                  style: TextStyle(
                    color: Colors.black,
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
