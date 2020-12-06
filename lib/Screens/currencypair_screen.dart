import 'package:flutter/material.dart';
import 'package:trading_app/Widgets/currency_pair.dart';
import 'package:trading_app/Widgets/app_bar.dart';

class CurrencyPairScreen extends StatefulWidget {
  CurrencyPairScreen({Key key}) : super(key: key);

  @override
  _CurrencyPairScreenState createState() => _CurrencyPairScreenState();
}

class _CurrencyPairScreenState extends State<CurrencyPairScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: MainAppBar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'CURRENCY PAIR',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'EUR / USD',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CurrencyPairContainer(title: Text('AUD')),
                CurrencyPairContainer(title: Text('CAD')),
                CurrencyPairContainer(title: Text('CHF')),
              ],
            ),
          ),
          //SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CurrencyPairContainer(title: Text('EUR')),
                CurrencyPairContainer(title: Text('GBP')),
                CurrencyPairContainer(title: Text('JPY')),
              ],
            ),
          ),
          //SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CurrencyPairContainer(title: Text('NZD')),
                CurrencyPairContainer(title: Text('USD')),
                CurrencyPairContainer(title: Text('PKR')),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'GO BACK',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 15.0),
                ],
              ),
            ),
          ),
          Container(
            width: 220.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            alignment: Alignment.center,
            child: Text('CALCULATE'),
          ),
        ],
      ),
    );
  }
}
