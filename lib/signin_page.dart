import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  double getBigCirlce(BuildContext context) =>
      MediaQuery.of(context).size.width * 4 / 4;
  double getSmallCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 2;
  double getSmallerCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 2;
  double getSmallestCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF9FA8DA),
                Color(0xFFCE93D8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: -getBigCirlce(context) / 4,
                top: -getBigCirlce(context) / 4,
                width: getBigCirlce(context),
                height: getBigCirlce(context),
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[200]),
                  ),
                ),
              ),
              Positioned(
                right: getSmallCircle(context) / 4,
                top: getSmallCircle(context) / 1,
                width: getSmallCircle(context),
                height: getSmallCircle(context),
                child: Opacity(
                  opacity: 0.1,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[900]),
                  ),
                ),
              ),
              Positioned(
                left: -getSmallerCircle(context) / 2,
                top: getSmallerCircle(context) / 0.7,
                width: getSmallerCircle(context),
                height: getSmallerCircle(context),
                child: Opacity(
                  opacity: 0.1,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[900]),
                  ),
                ),
              ),
              Positioned(
                left: getSmallestCircle(context) / 1,
                top: getSmallestCircle(context) / 0.2,
                width: getSmallestCircle(context),
                height: getSmallestCircle(context),
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[200]),
                  ),
                ),
              ),
              Align(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 150, 20, 10),
                  child: ListView(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Silahkan login untuk mengakses aplikasi",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 100, 0, 10),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              style: TextStyle(fontFamily: "Poppins"),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                focusColor: Colors.amber,
                                prefixIcon: Icon(Icons.person),
                                hintText: "Username",
                                hintStyle: TextStyle(fontFamily: "Poppins"),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              obscureText: true,
                              style: const TextStyle(fontFamily: "Poppins"),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                focusColor: Colors.amber,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.visibility_off),
                                hintText: "Password",
                                hintStyle: TextStyle(fontFamily: "Poppins"),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF9FA8DA),
                              Color(0xFFCE93D8),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(30),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
