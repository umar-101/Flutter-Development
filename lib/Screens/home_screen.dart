import 'package:flutter/material.dart';
import 'package:trading_app/Screens/currencypair_screen.dart';
import 'constants.dart';
import 'package:trading_app/Screens/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCE2E),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Currency Exposure Calculator'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 17.0, 10.0, 17.0),
            child: Text(
              'Clear',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 30.0),
                child: Text(
                  'Currency Exposure\n Calculator',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF244B80),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Tutorials'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rate Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  TextField(
                    style: kTextFieldStyle,
                    autofocus: true,
                    showCursor: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Account Balance',
                      labelStyle: kLabelStyle,
                      hintText: '15,000',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Risk',
                      labelStyle: kLabelStyle,
                      hintText: '1.5%',
                      hintStyle: kHintTextStyle,
                    ),
                    style: kTextFieldStyle,
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Stop los in pips',
                      labelStyle: kLabelStyle,
                      hintText: '150',
                      hintStyle: kHintTextStyle,
                    ),
                    style: kTextFieldStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SELECT CURRENCY PAIR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CurrencyPairScreen();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
