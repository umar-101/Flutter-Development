import 'package:flutter/material.dart';
import 'package:trading_app/Screens/constants.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  dynamic _radioValue1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF244B80),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCE2E),
        title: Text(
          'Settings',
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Account base',
                      ),
                      SizedBox(width: 80.0),
                      Text(
                        'CAD',
                        style: kRadioStyle,
                      ),
                      IconButton(
                        onPressed: () {
                          print('button Pressed');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 14.0,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Risk',
                      ),
                      SizedBox(width: 125.0),
                      Radio(
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: (_value) {
                          print('button Clicked');
                        },
                      ),
                      Text(
                        '%',
                        style: kRadioStyle,
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: (_value) {
                          print('button Clicked');
                        },
                      ),
                      Text(
                        'Amount',
                        style: kRadioStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Position Size',
                      ),
                      SizedBox(width: 70.0),
                      Radio(
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: (_value) {
                          print('button Clicked');
                        },
                      ),
                      Text(
                        'Units',
                        style: kRadioStyle,
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: (_value) {
                          print('button Clicked');
                        },
                      ),
                      Text(
                        'Lots',
                        style: kRadioStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
