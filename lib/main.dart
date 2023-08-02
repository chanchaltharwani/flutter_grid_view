import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(title: 'Flutter Demo', theme: ThemeData(


    ), home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.grey,
      Colors.pink,
      Colors.orange,
      Colors.yellow,];

    return Scaffold(appBar: AppBar(title: Text("Grid layout"),
    ),
        body:
        GridView.builder(itemBuilder: (context,index)
        {
          return Container(
            color:arrColors[index],
          );
        }, itemCount :arrColors.length ,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,crossAxisSpacing: 11,mainAxisSpacing: 11)    ,

        )


      // Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       //grivview.count 1.
      //       child: GridView.count(
      //         crossAxisCount: 4, crossAxisSpacing: 11, mainAxisSpacing: 11,
      //
      //         children:[
      //           Container(color: Colors.green),
      //           Container(color: Colors.red),
      //           Container(color: Colors.black),
      //           Container(color: Colors.blue),
      //           Container(color: Colors.orange),
      //           Container(color: Colors.grey),
      //           Container(color: Colors.yellow),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       height: 100,
      //     ),
      //     Container(
      //       height: 200,
      //       //grivview.extent 2.
      //       child: GridView.extent(maxCrossAxisExtent: 200,
      //           crossAxisSpacing: 11, mainAxisSpacing: 11,
      //
      //         children: [
      //           Container(color: Colors.green),
      //           Container(color: Colors.red),
      //           Container(color: Colors.black),
      //           Container(color: Colors.blue),
      //           Container(color: Colors.orange),
      //           Container(color: Colors.grey),
      //           Container(color: Colors.yellow),
      //         ],
      //       ),
      //     )
      //   ],
      // ),

    );
  }
}
