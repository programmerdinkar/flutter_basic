import 'package:flutter/material.dart';

import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState(

  );
}


final _formKey = GlobalKey<FormState>();
final fieldText1 = TextEditingController();
final fieldText2 = TextEditingController();
final fieldText3 = TextEditingController();
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black12,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(16),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 25,
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(
                              "Welcome Users",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25, top: 10),
                            child: Text(
                              "Hostpital Name",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25, top: 20),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
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
                                      hintStyle: TextStyle(
                                          color: Colors.black
                                      ),
                                      labelStyle: TextStyle(color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(color: Colors.black,width: 2,
                                          )

                                      )
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Please Enter Email";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25,),
                                child: TextFormField(
                                  controller: fieldText3,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Enter your Password",
                                      hintText: "password",
                                      hintStyle: TextStyle(
                                          color: Colors.black
                                      ),
                                      labelStyle: TextStyle(color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(color: Colors.black,width: 2,
                                          )

                                      )
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
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
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 10),
                                child: Text(
                                  "Forget Password ?",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 3),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding:EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width:3, color:Colors.black),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                          onPressed: (){},
                                          child: Text("Login Now",
                                            style: TextStyle(fontSize: 20,),)
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:15, right: 20,left: 5),
                                      child: FloatingActionButton(onPressed: (){},
                                      child: Icon(Icons.g_mobiledata),
                                      backgroundColor: Colors.green,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:15,),
                                      child: FloatingActionButton(onPressed: (){},
                                        child: Icon(Icons.gas_meter),
                                      backgroundColor: Colors.orange,),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, "signupscreen");
                                  },
                                  child: Text(
                                    "New user ? Signup",

                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(

                                width: MediaQuery.of(context).size.width,
                                  child: Image.network("https://www.shutterstock.com/image-vector/medical-concept-hospital-building-doctor-260nw-588196298.jpg"))

                            ],
                          ),
                        ),
                      ],
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
}
