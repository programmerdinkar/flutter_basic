import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

final _formKey = GlobalKey<FormState>();
final fieldText1 = TextEditingController();
final fieldText2 = TextEditingController();
final fieldText3 = TextEditingController();

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.indigo,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      FloatingActionButton(backgroundColor: Colors.white,
                        onPressed: (){},
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_back),
                        iconSize: 20,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                    child: Image.network("https://pngimg.com/uploads/audi/audi_PNG1729.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SignUp", style: TextStyle(fontSize: 30,
                        color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                      wordSpacing: 10,
                      decorationStyle: TextDecorationStyle.dashed,
                      decorationColor: Colors.black,
                    ),
                    )

                  ],
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: TextFormField(
                              controller: fieldText1,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                  labelText: "Enter your Name",
                                  hintText: "name",
                                  hintStyle: TextStyle(
                                      color: Colors.black
                                  ),
                                  labelStyle: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.lightBlue,width: 2,
                                      )

                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Please Enter Name";
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            child: TextFormField(
                              controller: fieldText2,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  labelText: "Enter your Email",
                                  hintText: "email",
                                  hintStyle: TextStyle(
                                      color: Colors.black
                                  ),
                                  labelStyle: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.lightBlue,width: 2,
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
                            margin: EdgeInsets.only(top: 25),
                            child: TextFormField(
                              controller: fieldText3,
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.remove_red_eye),
                                  labelText: "Enter your Password",
                                  hintText: "password",
                                  hintStyle: TextStyle(
                                      color: Colors.black
                                  ),
                                  labelStyle: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.lightBlue,width: 2,
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Already Signup,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                ),),
                              TextButton(onPressed: (){},
                                  child: Text("Login Here",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold
                                  ),))
                            ],
                          ),
                          SizedBox(
                            width: 180,
                            child: ElevatedButton(
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  fieldText1.clear();
                                  fieldText2.clear();
                                  fieldText3.clear();
                                  MotionToast.success(title: Text("Data Enter Succesfully"),
                                    description: Text("Let's Go"),
                                    toastDuration: Duration(
                                        seconds: 5),
                                    animationType: AnimationType.fromLeft,
                                    position: MotionToastPosition.bottom,
                                    width: 300,
                                    height: 80,
                                  ).show(context);
                                }
                              },
                              child: Text("Signup", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width:3, color:Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
