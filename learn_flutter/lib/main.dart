import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

final eventBus = EventBus();

class UserInfo {
  String nickname;
  UserInfo(this.nickname);
}

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
  String _string = "123";
  @override
  void initState() {
    super.initState();
    eventBus.on<UserInfo>().listen((event) {
      print("${event.nickname}");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ZYCButton(),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.deepPurpleAccent,
          child: Center(child: Text(_string)),
        )
      ],
    ));
  }
}

class ZYCButton extends StatefulWidget {
  const ZYCButton({Key? key}) : super(key: key);

  @override
  State<ZYCButton> createState() => _ZYCButtonState();
}

class _ZYCButtonState extends State<ZYCButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            final info = UserInfo("21331231231");
            eventBus.fire(info);
          },
          child: Text("123321312"),
        ),
      ),
    );
  }
}
