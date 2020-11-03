import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('State Management'),
//         centerTitle: true,
//       ),
//       body: Center(child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(icon: Icon(Icons.remove), onPressed: (){
//             setState(() {
//               counter--;
//             });
//           }),
//           Text("$counter", style: TextStyle(
//             fontSize: 24
//           ),),
//           IconButton(icon: Icon(Icons.add), onPressed: (){
//             setState(() {
//               counter++;
//             });
//           }),
//         ],
//       ),),
//     );
//   }
// }

//we can use statefulBuilder() instead of StatefulWidget to avoid building two classes and rebuilding all the tree that's inside 'build' function

class Home extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        centerTitle: true,
      ),
      body: Center(
          child: counterWidget(context)
      ),
    );
  }

  Widget counterWidget(context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                }),
            Text(
              "$counter",
              style: TextStyle(fontSize: 24),
            ),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
          ],
        );
      },
    );
  }
}
