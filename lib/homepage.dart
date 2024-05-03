

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scheduler/teacher.dart';



void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Составление расписания занятий"),
      ),
      body:
            Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children:[ 
              const Padding(
                padding: EdgeInsets.only(left: 500.0),
                child: Text(
                  'Нажмите на виджет для перехода',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  
                ),
              ),
              Positioned(
                top: 40,
                left: 25,
                child: Row(
                children: [
                  TextButton(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 112, 191, 219),
                  ),
                  child: Column
                  (children:[
                    Expanded(
                          child: SvgPicture.asset("assets/teacher.svg"),
                        ),
                    const Text(
                    "Учителя",
                  
                ),])),
                    
                    onPressed: () { 
                      // Navigator.pushNamed(context, TeacherPage());
                    }
                  )
                ],
        
              ))
          ],
          ),
      ]), 
    );
  }
}
