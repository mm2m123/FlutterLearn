import 'package:flutter/material.dart';
import 'package:learn_flutter/day09/viewModel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

main() {
  runApp(ChangeNotifierProvider(
      create: (ctx) => ZYCCounterViewModel(), child: const MyApp()));
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
        selector: (ctx, counterViewModel){
          return counterViewModel;
        },
        shouldRebuild: (prev, next){
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
      child: Consumer<ZYCCounterViewModel>(
        builder: (ctx, counterViewModel, child) {
          return Text("${counterViewModel.counter}");
        },
      ),
    );
  }
}
