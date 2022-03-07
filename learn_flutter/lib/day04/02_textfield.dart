import 'package:flutter/material.dart';
import 'package:learn_flutter/day03/02_%E6%96%87%E6%9C%ACwidget.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ZYCHomePage());
  }
}

class ZYCHomePage extends StatelessWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础widget"),
      ),
      body: const ZYCHomeContent(),
    );
  }
}

class ZYCHomeContent extends StatefulWidget {
  const ZYCHomeContent({Key? key}) : super(key: key);

  @override
  _ZYCHomeContentState createState() => _ZYCHomeContentState();
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {

  @override
  Widget build(BuildContext context) {
    return TextFieldDemo();
  }
}

class TextFieldDemo extends StatelessWidget {
  var usernameTextEditController = TextEditingController();
  var passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            controller: usernameTextEditController,
            decoration: const InputDecoration(
              labelText: "username",
              icon: Icon(Icons.people),
              hintText: "",
              border: OutlineInputBorder(),
              // filled: true,
              // fillColor: Colors.green,
            ),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print("onSubmitted:$value");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordTextEditController,
            decoration: const InputDecoration(
              labelText: "password",
              icon: Icon(Icons.lock),
              hintText: "",
              border: OutlineInputBorder(),
              // filled: true,
              // fillColor: Colors.green,
            ),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print("onSubmitted:$value");
            },
          ),
          const SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 50,
            child: FlatButton(color:Colors.green, onPressed: () {
              print("\nusername:${usernameTextEditController.text}\npassword:${passwordTextEditController.text}");
            }, child: Text("Login")),
          )
        ],
      ),
    );
  }
}
