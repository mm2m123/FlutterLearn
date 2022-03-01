import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ZYCHomePage()
    );
  }
}

class ZYCHomePage extends StatelessWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goods List"),
      ),
      body: ZYCHomeContent(),
    );
  }
}

class ZYCHomeContent extends StatelessWidget {
  const ZYCHomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ZYCHomeProductItem("11111", "", "https://img2.baidu.com/it/u=2177719753,1482320974&fm=253&fmt=auto&app=138&f=PNG?w=925&h=500"),
        ZYCHomeProductItem("22222", "", "https://img2.baidu.com/it/u=2177719753,1482320974&fm=253&fmt=auto&app=138&f=PNG?w=925&h=500"),
        ZYCHomeProductItem("33333", "", "https://img0.baidu.com/it/u=2936370367,293666828&fm=253&fmt=auto&app=138&f=JPEG?w=501&h=500"),
      ],
    );
  }
}

class ZYCHomeProductItem extends StatelessWidget {

  final String title;
  final String desc;
  final String imageURL;

  final style1 = const TextStyle(fontSize: 30, color: Colors.green);
  final style2 = const TextStyle(fontSize: 20, color: Colors.indigo);

  ZYCHomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
              width: 10,
              color: Colors.black12
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(title, style: style1,),
            ],
          ),
          const SizedBox(height: 8,),
          Text(desc, style: style2,),
          const SizedBox(height: 8,),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
