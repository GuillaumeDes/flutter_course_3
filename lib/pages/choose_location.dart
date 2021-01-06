import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _choose_locationState createState() => _choose_locationState();
}

class _choose_locationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async {
    // simulate network request for  a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'test';
    });


    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'like video games';
    });

    print("$username - $bio");
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('inisState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Chose a loc'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter')
      )
    );
  }
}
