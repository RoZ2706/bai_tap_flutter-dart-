import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        FocusScope.of(context).requestFocus(FocusNode());
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                  child: Center(
                    child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Username', style: TextStyle(fontWeight: FontWeight.bold),),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(1000))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(1000))),
                        ),
                      ),
                      Divider(color: Colors.transparent,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text('Password', style: TextStyle(fontWeight: FontWeight.bold),),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(1000))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(1000))),
                        ),
                      ),
                      Divider(color: Colors.transparent,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Forgot ', style: TextStyle(color: Colors.grey)),
                              TextSpan(text: 'Username/Password?', style: TextStyle(color: Colors.green)),
                            ]
                          ),
                        ),
                      ),
                      Divider(color: Colors.transparent,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(onPressed: () {
                          print('hú');
                        }, child: Text('SIGN IN'), style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(1000))
                          )),
                          backgroundColor: MaterialStateProperty.all(Colors.green)
                        ),),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Text('Don\'t have an account?', style: TextStyle(color: Colors.grey),),
                Text('SIGN UP NOW', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                Divider(color: Colors.transparent, height: 30,)
              ],
            ),
          ),
        )
      ),
    );
  }
}
