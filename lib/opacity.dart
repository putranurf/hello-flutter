import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OpacityPageApp extends StatelessWidget {
  const OpacityPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFe5788), Color(0xFFF56D5D)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 20,
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/pattern.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/dummy.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Beautiful sunset at paddy field",
                            style: TextStyle(
                              color: Color(0xFFF56D5D),
                              fontSize: 25,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Posted on ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  " June 18, 2019",
                                  style: TextStyle(
                                    color: Color(0xFFF56D5D),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(
                                flex: 10,
                              ),
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                "111 ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(
                                flex: 5,
                              ),
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                " 888",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(
                                flex: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
