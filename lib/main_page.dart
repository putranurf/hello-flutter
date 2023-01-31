import 'package:flutter/material.dart';
import 'package:hello_flutter/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(
      //         builder: (context) {
      //           return SecondPage();
      //         },
      //       ));
      //     },
      //     child: Text("Go to second page"),
      //   ),
      // ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ];
  }
}
