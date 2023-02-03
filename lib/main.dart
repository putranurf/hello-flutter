import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_flutter/floating_page.dart';
import 'package:hello_flutter/login_page.dart';
import 'package:hello_flutter/main_page.dart';
import 'package:hello_flutter/opacity.dart';
import 'package:hello_flutter/signin_page.dart';

void main() {
  // runApp(const RowColumn());
  // runApp(const TextApp());
  // runApp(const ContainerApp());
  // runApp(const TestStatefulWidget());
  // runApp(const ListViewApp());
  // runApp(const AnimatedContainerApp());
  // runApp(const FlexibleWidgetApp());
  // runApp(const StackAlignApp());
  // runApp(const ImageWidgetApp());
  // runApp(const DraggableApp());
  // runApp(const MultiPageNavigationApp());
  // runApp(const AppBarExampleApp());
  // runApp(const CardWidgetApp());
  // runApp(const TextFieldWidgetApp());
  // runApp(const MediaQueryApp());
  // runApp(const InkWellApp());
  // runApp(const OpacityApp());

  // runApp(const FloatingActionApp());
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(const FloatingActionApp());
  // });

  runApp(const SignInPageApp());
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

// class ListViewApp extends StatefulWidget {
//   const ListViewApp({super.key});

//   @override
//   State<ListViewApp> createState() => _ListViewAppState();
// }

// class _ListViewAppState extends State<ListViewApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("List View App"),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       widgets.add(Text("Data Ke" + counter.toString()));
//                       counter++;
//                     });
//                   },
//                   child: Text("Tambah")),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   },
//                   child: Text("Hapus")),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: widgets,
//           )
//         ]),
//       ),
//     );
//   }
// }

// class AnimatedContainerApp extends StatefulWidget {
//   const AnimatedContainerApp({super.key});

//   @override
//   State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
// }

// class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Animated Container App"),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(256), random.nextInt(256)),
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FlexibleWidgetApp extends StatelessWidget {
//   const FlexibleWidgetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flexible Widget Demo"),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(6),
//                       color: Colors.pink,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(6),
//                       color: Colors.purple,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(6),
//                       color: Colors.orange,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 margin: EdgeInsets.all(6),
//                 color: Colors.blue,
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 margin: EdgeInsets.all(6),
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StackAlignApp extends StatelessWidget {
//   const StackAlignApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stack Align"),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.green,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.black12,
//                           )),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.blue,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.red,
//                           )),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(40),
//               child: Align(
//                 alignment: Alignment(-1, 0.5),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.purple,
//                     onPrimary: Colors.white,
//                   ),
//                   onPressed: () {},
//                   child: Text("My Button"),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ImageWidgetApp extends StatelessWidget {
//   const ImageWidgetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Image Widget"),
//           ),
//           body: Column(
//             children: <Widget>[
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               Container(
//                 child: Container(
//                   color: Colors.grey,
//                   width: 200,
//                   height: 200,
//                   // padding: EdgeInsets.all(6),
//                   child: Image(
//                     image:
//                         NetworkImage("https://dummyimage.com/600x400/000/fff"),
//                     fit: BoxFit.contain,
//                     repeat: ImageRepeat.repeat,
//                   ),
//                 ),
//               ),
//               Spacer(
//                 flex: 1,
//               ),
//               Container(
//                 child: Container(
//                   color: Colors.grey,
//                   width: 200,
//                   height: 200,
//                   // padding: EdgeInsets.all(6),
//                   child: Image(
//                     image: AssetImage("images/dummy.jpg"),
//                     fit: BoxFit.contain,
//                     repeat: ImageRepeat.repeat,
//                   ),
//                 ),
//               ),
//               Spacer(
//                 flex: 4,
//               ),
//               Container(
//                 child: Container(
//                   color: Colors.grey,
//                   width: 200,
//                   height: 200,
//                   // padding: EdgeInsets.all(6),
//                   child: Image(
//                     image: AssetImage("images/dummy.jpg"),
//                     fit: BoxFit.contain,
//                     repeat: ImageRepeat.repeat,
//                   ),
//                 ),
//               ),
//               Spacer(
//                 flex: 3,
//               ),
//             ],
//           )),
//     );
//   }
// }

// class DraggableApp extends StatefulWidget {
//   const DraggableApp({super.key});

//   @override
//   State<DraggableApp> createState() => _DraggableAppState();
// }

// class _DraggableAppState extends State<DraggableApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   late Color targetColor;
//   bool isAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Draggable App"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Draggable<Color>(
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.red,
//                       shape: StadiumBorder(),
//                       elevation: 13,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.7),
//                       shape: StadiumBorder(),
//                       elevation: 13,
//                     ),
//                   ),
//                 ),
//                 Draggable<Color>(
//                   data: color2,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2,
//                       shape: StadiumBorder(),
//                       elevation: 13,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2.withOpacity(0.7),
//                       shape: StadiumBorder(),
//                       elevation: 13,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             DragTarget<Color>(
//               onWillAccept: (value) => true,
//               onAccept: (value) {
//                 isAccepted = true;
//                 targetColor = value;
//               },
//               builder: (context, candidateData, rejectedData) {
//                 return (isAccepted)
//                     ? SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: targetColor,
//                           shape: StadiumBorder(),
//                         ),
//                       )
//                     : SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: Colors.grey,
//                           shape: StadiumBorder(),
//                         ),
//                       );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MultiPageNavigationApp extends StatelessWidget {
//   const MultiPageNavigationApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// class AppBarExampleApp extends StatelessWidget {
//   const AppBarExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Icon(
//             Icons.adb,
//             color: Colors.white,
//           ),
//           title: Text(
//             "AppBar Example",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
//             IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/pattern.png"),
//                   fit: BoxFit.none,
//                   repeat: ImageRepeat.repeat,
//                 ),
//                 gradient: LinearGradient(
//                     colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CardWidgetApp extends StatelessWidget {
//   const CardWidgetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               buildCard(Icons.account_box, "Account Box"),
//               buildCard(Icons.adb, "Android"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Card buildCard(IconData iconData, String text) {
//     return Card(
//       elevation: 5,
//       child: Row(children: <Widget>[
//         Container(
//             margin: EdgeInsets.all(5),
//             child: Icon(
//               iconData,
//               color: Colors.green,
//             )),
//         Text(text),
//       ]),
//     );
//   }
// }

// class TextFieldWidgetApp extends StatefulWidget {
//   const TextFieldWidgetApp({super.key});

//   @override
//   State<TextFieldWidgetApp> createState() => _TextFieldWidgetAppState();
// }

// class _TextFieldWidgetAppState extends State<TextFieldWidgetApp> {
//   TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("TextField Widget")),
//         body: Container(
//           margin: EdgeInsets.all(25),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 maxLength: 5,
//                 decoration: InputDecoration(
//                   // icon: Icon(Icons.people),
//                   fillColor: Colors.lightBlue[50],
//                   filled: true,
//                   prefixIcon: Icon(Icons.people_alt),
//                   // suffix: Container(
//                   //   width: 5,
//                   //   height: 5,
//                   //   color: Colors.red,
//                   // ),
//                   // prefixText: "Username",
//                   // prefixStyle: TextStyle(color: Colors.blue),
//                   // labelText: "Username",
//                   // labelStyle: TextStyle(color: Colors.blue),
//                   // hintText: "Username isi disini",
//                   // hintStyle: TextStyle(color: Colors.blue, fontSize: 12),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MediaQueryApp extends StatelessWidget {
//   const MediaQueryApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class InkWellApp extends StatelessWidget {
//   const InkWellApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("InkWell App"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Elevated Button"),
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.amber, shape: StadiumBorder()),
//               ),
//               Material(
//                 elevation: 20,
//                 borderRadius: BorderRadius.circular(20),
//                 child: Container(
//                   width: 150,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                       colors: [Colors.purple, Colors.pink],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                   ),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.transparent,
//                     child: InkWell(
//                       splashColor: Colors.amber,
//                       borderRadius: BorderRadius.circular(20),
//                       onTap: () {},
//                       child: Center(
//                         child: Text(
//                           "Button",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OpacityApp extends StatelessWidget {
//   const OpacityApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: OpacityPageApp(),
//     );
//   }
// }

// class FloatingActionApp extends StatelessWidget {
//   const FloatingActionApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FloatingActionPageApp(),
//     );
//   }
// }

class SignInPageApp extends StatelessWidget {
  const SignInPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
