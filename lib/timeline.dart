import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final List data = [
    "What is Flutter? ",
    "What is Dart? ",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: Icon(Icons.menu),
          title: Text("Your Blogs"),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                trailing: Text("Jam 26, 2021"),
                contentPadding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                title: Text(
                  data[index],
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(data[index]),
                enabled: true,
                leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 40,
                    child: Text(
                      data[index][0],
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ));
            },
            itemCount: data.length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
