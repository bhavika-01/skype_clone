import 'package:flutter/material.dart';
import 'package:mydemo/mainscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Skype';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(_title),
          centerTitle: true,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          IconButton(
              iconSize: 150,
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: const FaIcon(
                FontAwesomeIcons.skype,
                color: Colors.blue,
                //size: 40,
              ),
              onPressed: () {
                print("PRESSED");
              }),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                    color: Colors.blue,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.blue,
                  )),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ));
                },
              )),
        ],
      ),
    );
  }
}
