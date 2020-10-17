import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loginn UI-1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _rememberMe = false;

  Widget _buildSignInText(){
    return Text("Sign In",
      style: TextStyle(
        fontSize: 30.0,
        fontFamily: 'OpenSans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildEmailTF() 
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("E-mail",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextField(
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'OpenSans',
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.blue[300],
              filled: true,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              hintText: 'Enter your E-mail',
              hintStyle: TextStyle(
                color: Colors.white70,
              )
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Password",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.blue[300],
              filled: true,
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: TextStyle(
                color: Colors.white70,
              )
            ),
          ),
        ),
      ],
    );
}

Widget _buildForgotPasswordButton()
{
return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password Button Pressed !!"), 
        padding: EdgeInsets.only(right: 0.0),
        child: Text("Forgot Password?",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold
          ),
        ),
      ) 
    );
  }

  Widget _buildRememberMeCheckBox()
  {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.white,
            ), 
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white, 
              onChanged: (value){
                setState(() {
                  _rememberMe = value;
                });
              }
            ),
          ),
          Text("Remember Me",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton()
  {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: RaisedButton(
        onPressed: () => print("Login Button Pressed"),
        child: Text("LOGIN",
          style: TextStyle(
          fontSize: 18.0,
          fontFamily: 'OpenSans',
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold
          ),
        ),
        color: Colors.white,
        textColor: Colors.blue,
        highlightColor: Colors.blue[200],
        //splashColor: Colors.green,
        elevation: 10.0,
        highlightElevation: 5.0,
        padding: EdgeInsets.all(15.0),
        //shape: Border.all(width: 2.0, color: Colors.orange)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)
        ),
      ),
    );
  }

  Widget _buildSignInWithText()
  {
    return Column(
    children: <Widget>[
      Text("- OR -",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height:10.0),
      Text("Sign in With",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans'
        ),
      )
    ],
  );
}

  Widget _buildSocialButton(Function onTap, AssetImage logo)
  {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            )
          ],
          image: DecorationImage(
            image: logo,
          )
        ),
      ),
    );
  }

  Widget _buildSocialButtonInRow()
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialButton(() => print("Login with Facebook!!"),AssetImage("assets/images/fb_logo.png")),
          _buildSocialButton(() => print("Login with Google!!"), AssetImage("assets/images/google_logo.png"))
        ],
      ),
    );
  }

  Widget _buildSignUpButton()
  {
    return GestureDetector(
      onTap: () => print("Sign Up Button Pressed !!"),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an Account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                )
            ),
            TextSpan(
              text: " Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )
            )
          ]
        )
      ),
    );
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: ,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue[200],
                  Colors.blue[700],
                ]
              )
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildSignInText(),
                  SizedBox(height: 30.0),
                  _buildEmailTF(),
                  SizedBox(height: 30.0),
                  _buildPasswordTF(),
                  _buildForgotPasswordButton(),
                  _buildRememberMeCheckBox(),
                  _buildLoginButton(),
                  _buildSignInWithText(),
                  _buildSocialButtonInRow(),
                  _buildSignUpButton(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}