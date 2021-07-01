import 'package:arquitetura/app/components/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('HomePage'),),
           body: Center(
             child: CustomSwitchWidget(),
           ),
       );
  }
}
