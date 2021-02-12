import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.orangeAccent,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45.0,
            ),
            Text(
              "Blogging",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25.0,
            ),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5)),
                        hintText: "Full Name",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5)),
                        labelText: "Valid Email",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 12.0),
                          child:
                              Icon(Icons.alternate_email, color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5)),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(Icons.lock, color: Colors.white),
                        )),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5)),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(Icons.lock, color: Colors.white),
                        )),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                    splashColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text("  Sign In", style: TextStyle(color: Colors.black))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
