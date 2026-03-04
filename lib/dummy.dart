import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        //  Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //   //  crossAxisAlignment: CrossAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //         Text("Hii")
        //     ],
        // ),
      Column( mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center, children: [ Center(child: Container(width: 100, height: 50, color: Colors.red)), ], ),
);
   
  }
}