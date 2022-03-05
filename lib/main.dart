import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Points App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int walletBalance = 0;
  String buttonText1 = "Redeem Point";
  String buttonText2 = "Redeem Point";
  String buttonText3 = "Redeem Point";
  String buttonText4 = "Redeem Point";
  String buttonText5 = "Redeem Point";

  void pointEarn() {
    setState(() {
      walletBalance += 100;
    });

    print("Wallet Balance: " + walletBalance.toString());
  }

  void pointRedeem1() {
    if (buttonText1 != "XXXXX") {
      if (walletBalance >= 200) {
        setState(() {
          walletBalance -= 200;
          buttonText1 = "XXXXX";
        });
        print("Wallet Balance: " + walletBalance.toString());
      } else {
        Fluttertoast.showToast(
          msg: "Insufficient Wallet Balance", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.BOTTOM, // location
          // duration
        );
        print("Insufficenet Wallet Balance");
      }
    }
  }

  void pointRedeem2() {
    if (buttonText2 != "XXXXX") {
      if (walletBalance >= 200) {
        setState(() {
          walletBalance -= 200;
          buttonText2 = "XXXXX";
        });
        print("Wallet Balance: " + walletBalance.toString());
      } else {
        Fluttertoast.showToast(
          msg: "Insufficient Wallet Balance", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.BOTTOM, // location
          // duration
        );
        print("Insufficenet Wallet Balance");
      }
    }
  }

  void pointRedeem3() {
    if (buttonText3 != "XXXXX") {
      if (walletBalance >= 200) {
        setState(() {
          walletBalance -= 200;
          buttonText3 = "XXXXX";
        });
        print("Wallet Balance: " + walletBalance.toString());
      } else {
        Fluttertoast.showToast(
          msg: "Insufficient Wallet Balance", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.BOTTOM, // location
          // duration
        );
        print("Insufficenet Wallet Balance");
      }
    }
  }

  void pointRedeem4() {
    if (buttonText4 != "XXXXX") {
      if (walletBalance >= 200) {
        setState(() {
          walletBalance -= 200;
          buttonText4 = "XXXXX";
        });
        print("Wallet Balance: " + walletBalance.toString());
      } else {
        Fluttertoast.showToast(
          msg: "Insufficient Wallet Balance", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.BOTTOM, // location
          // duration
        );
        print("Insufficenet Wallet Balance");
      }
    }
  }

  void pointRedeem5() {
    if (buttonText5 != "XXXXX") {
      if (walletBalance >= 200) {
        setState(() {
          walletBalance -= 200;
          buttonText5 = "XXXXX";
        });
        print("Wallet Balance: " + walletBalance.toString());
      } else {
        Fluttertoast.showToast(
          msg: "Insufficient Wallet Balance", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.BOTTOM, // location
          // duration
        );
        print("Insufficenet Wallet Balance");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Wallet Balance: "
              '$walletBalance',
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(
              onPressed: pointEarn,
              child: Text(
                "Complete Workout",
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: pointRedeem1,
              child: Text(
                buttonText1,
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: pointRedeem2,
              child: Text(
                buttonText2,
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: pointRedeem3,
              child: Text(
                buttonText3,
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: pointRedeem4,
              child: Text(
                buttonText4,
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: pointRedeem5,
              child: Text(
                buttonText5,
                style: (TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
