import 'package:flutter/material.dart';
import 'package:pk_cnic_input_field/pk_cnic_input_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PK CNIC Input Field Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PK CNIC Input Field Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String cnic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            PKCNICInputField(
              onChanged: (value) {
                cnic = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text("Your CNIC is " + cnic),
          ],
        ),
      ),
    );
  }
}
