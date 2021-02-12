import 'package:flutter/material.dart';

class Halamankedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Create a Post"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(),
                              hintText: "What is Flutter?",
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 30, 30),
                        child: SizedBox(
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 350),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.orangeAccent,
                          onPressed: () {
                            Navigator.pushNamed(context, '/third');
                          },
                          child: Text(
                            "Publish",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          elevation: 10,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
