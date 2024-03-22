

import 'package:cny_det/service/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class DataPage extends StatefulWidget {
  

  @override
  _DataPageState createState() => _DataPageState();
  
}






class _DataPageState extends State<DataPage> {
  TextEditingController namecontroller= new TextEditingController();
  TextEditingController agecontroller= new TextEditingController();
  TextEditingController addresscontroller= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 138, 113),
            appBar: AppBar(
  backgroundColor: Color.fromARGB(255, 190, 191, 192),
  title: Text("REGISTER"),
  centerTitle: true, // Aligns the title vertically centered
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(25),
      bottomRight: Radius.circular(25),
    ), 
  ),
),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("Name", style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10.0,),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          controller: namecontroller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
        ),
        SizedBox(height: 20.0,),

        Text("Age", style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10.0,),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          controller: agecontroller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
        ),
        SizedBox(height: 20.0,),
        Text("Address", style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10.0,),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          controller: addresscontroller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
        ),
        SizedBox(height: 30.0,),
        Center(
          child: ElevatedButton(onPressed: () async{
          String Id= randomAlphaNumeric(10);
          Map<String, dynamic> employeeInfoMap={
            "Name": namecontroller.text,
            "Age": agecontroller.text,
            "Id": Id,
            "Address": addresscontroller.text,
          };
await DatabaseMethods().addEmployeeDetails(employeeInfoMap, Id).then((value) {
  Fluttertoast.showToast(
        msg: "Details added successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
});
          }, child: const Text("Add", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100,color: Colors.purple,fontFamily: AutofillHints.addressCity),)),
        )
    

      ],) ,),
    );
  }
}

