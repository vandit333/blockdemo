import 'package:blockdemo/Blockclass.dart';
import 'package:flutter/material.dart';
import 'package:blockdemo/eventclass.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

class test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => eventclass(0),
    child: blockdemo(),
    );
  }
}

class blockdemo extends StatelessWidget {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    eventclass e=BlocProvider.of<eventclass>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {
            e.add(blockclass(t1.text, t2.text,"sum"));

          }, child: Text("sum")),
          ElevatedButton(onPressed: () {
            e.add(blockclass(t1.text, t2.text,"div"));

          }, child: Text("div")),
          ElevatedButton(onPressed: () {
            e.add(blockclass(t1.text, t2.text,"sub"));

          }, child: Text("sub")),
          BlocBuilder<eventclass,int>(builder: (context, state) {
            return Text("$state");
          },)
        ],
      ),
    );
  }
}

