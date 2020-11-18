import 'package:crypto_font_icons/crypto_font_icons.dart' show CryptoFontIcons;
import 'package:flutter/material.dart';
import 'bitcoin.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      routes: {
        "/second": (context) => SecondRoute(),
      },
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'PredictaMint';

    var bitcoin = IconButton(
      // Bitcoin
      icon: Icon(CryptoFontIcons.BTC),
    );

    var litecoin = IconButton(
      // litecoin
      icon: Icon(CryptoFontIcons.LTC),
    );

    var ethereum = IconButton(
      // ethereum
      icon: Icon(CryptoFontIcons.ETC),
    );

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: ListView(
              children: <Widget>[
                ListTile(
                    leading: bitcoin,
                    title: Text('Bitcoin'),
                    trailing: RaisedButton(
                        child: Text('Go'),
                        color: Colors.blueGrey[100],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        })),
                ListTile(
                    leading: litecoin,
                    title: Text('Litecoin'),
                    trailing: RaisedButton(
                        child: Text('Go'),
                        color: Colors.blueGrey[100],
                        onPressed: () async {
                          print("hello");
                        })),
                ListTile(
                    leading: ethereum,
                    title: Text('Ethereum'),
                    trailing: RaisedButton(
                        child: Text('Go'),
                        color: Colors.blueGrey[100],
                        onPressed: () async {
                          print("hello");
                        })),
              ],
            )));
  }
}
