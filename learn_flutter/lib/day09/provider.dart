import 'package:flutter/material.dart';
import 'package:learn_flutter/day09/model/user_info.dart';
import 'package:learn_flutter/day09/viewModel/counter_viewmodel.dart';
import 'package:learn_flutter/day09/viewModel/user_view_model.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) {
        return UserViewModel(UserInfo("123", 123));
      }),
      ChangeNotifierProvider(create: (ctx) {
        return ZYCCounterViewModel();
      })
    ],
    child: MyApp(),
  ));
  // ChangeNotifierProvider(
  // create: (ctx) => ZYCCounterViewModel(),
  // child:
  //     ChangeNotifierProvider(
  //       create: (ctx) => UserViewModel(UserInfo("123", 123)),
  //       child: const MyApp(),
  //     )
  // )
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ZYCHomePage());
  }
}

class ZYCHomePage extends StatefulWidget {
  @override
  State<ZYCHomePage> createState() => _ZYCHomePageState();
}

class _ZYCHomePageState extends State<ZYCHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZYCShowData01(),
            ZYCShowData02(),
          ],
        ),
      ),
      floatingActionButton: Selector<ZYCCounterViewModel, ZYCCounterViewModel>(
        selector: (ctx, counterViewModel) {
          return counterViewModel;
        },
        shouldRebuild: (prev, next) {
          return false;
        },
        builder: (ctx, counterViewModel, child) {
          return FloatingActionButton(
            child: child,
            onPressed: () {
              counterViewModel.counter++;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ZYCShowData01 extends StatelessWidget {
  const ZYCShowData01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Text("${Provider.of<ZYCCounterViewModel>(context).counter}"),
    );
  }
}

class ZYCShowData02 extends StatelessWidget {
  const ZYCShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Consumer2<ZYCCounterViewModel, UserViewModel> (
        builder: (ctx, counterViewModel, userViewModel, child) {
          return Text("${counterViewModel.counter}");
        },
      ),
    );
  }
}
