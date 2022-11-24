import 'package:flutter/material.dart';
import 'package:interface_notejs/controllers/user_controller.dart';
import 'package:interface_notejs/model/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Users> listUsers = [];
  getUsers() async {
    await UserController().getUer().then((value) {
      setState(() {
        listUsers = value;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: listUsers.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(title: Text(listUsers[index].name)),
          );
        },
      ),
    );
  }
}
