import 'package:flutter/material.dart';

class CurrencyPairContainer extends StatelessWidget {
  CurrencyPairContainer({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      alignment: Alignment.center,
      child: title,
    );
  }
}
