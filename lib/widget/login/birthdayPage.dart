import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinder/widget/login/gender.dart';

import '../../main.dart';
import 'graidentButton.dart';
import 'mainText.dart';

class BirthDayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''My  
birthday is''',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                autocorrect: true,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'DD/MM/YYYY',
                  counterText: '',
                  // hintText: 'First name',
                ),
                onSubmitted: (_) {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              MainText('Your age will be public', FontWeight.w500, 15),
              SizedBox(
                height: 30,
              ),
              RaisedGradientButton(
                child: Text('CONTINUE'),
                radius: BorderRadius.circular(25),
                gradient: LinearGradient(colors: [
                  Color(0XFFFD297B),
                  Color(0XFFFF5864),
                  Color(0XFFdf5f23)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => Gender()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
