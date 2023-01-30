import 'package:flutter/material.dart';

void main() {
  // runApp(const RowColumn());
  // runApp(const TextApp());
  // runApp(const ContainerApp());
  // runApp(const TestStatefulWidget());
  runApp(const ListViewApp());
}

// class TextApp extends StatelessWidget {
//   const TextApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Aplikasi Testing Flutter"),
//         ),
//         body: Center(
//             child: Container(
//                 color: Colors.lightBlue,
//                 width: 150,
//                 height: 100,
//                 child: Text(
//                   "Hello World everything is fine and good for any peoples",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 ))),
//       ),
//     );
//   }
// }

// class RowColumn extends StatelessWidget {
//   const RowColumn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("Kolom"),
//             Text("Kolom2"),
//             Text("Kolom3"),
//             Row(
//               children: <Widget>[
//                 Text("Kolom4"),
//                 Text("Kolom5"),
//                 Text("Kolom6"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContainerApp extends StatelessWidget {
//   const ContainerApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Container"),
//         ),
//         body: Container(
//           color: Colors.red,
//           padding: EdgeInsets.fromLTRB(12, 21, 41, 31),
//           margin: EdgeInsets.all(10),
//           child: Container(
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 colors: <Color>[Colors.amber, Colors.blue],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TestStatefulWidget extends StatefulWidget {
//   const TestStatefulWidget({super.key});

//   @override
//   State<TestStatefulWidget> createState() => _TestStatefulWidgetState();
// }

// class _TestStatefulWidgetState extends State<TestStatefulWidget> {
//   int number = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Training Stateful Widget Flutter",
//             style: TextStyle(fontFamily: "Poppins"),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 10 + number.toDouble()),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     number = number + 1;
//                   }); // Anonymous Method
//                 },
//                 child: Text(
//                   "Submit",
//                   style: TextStyle(
//                       fontFamily: "Poppins",
//                       fontStyle: FontStyle.italic,
//                       fontSize: 40,
//                       decoration: TextDecoration.underline,
//                       decorationColor: Colors.red,
//                       decorationStyle: TextDecorationStyle.solid),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ListViewApp extends StatefulWidget {
  const ListViewApp({super.key});

  @override
  State<ListViewApp> createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View App"),
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data Ke" + counter.toString()));
                      counter++;
                    });
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text("Hapus")),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    );
  }
}
