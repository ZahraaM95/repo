// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_8/core/constant/color.dart';

class ChooseLessonesListView extends StatefulWidget {
  const ChooseLessonesListView({super.key});

  @override
  State<ChooseLessonesListView> createState() => _ChooseLessonesListViewState();
}

class _ChooseLessonesListViewState extends State<ChooseLessonesListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'الخامس اعدادي',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: ListView(
            children:const [
             ChooseLessonesItem(
              text: 'اختبار فصلي',
             lessonTaken: true,
            ),
             ChooseLessonesItem(
              text: ' unit one / الوحدة الأولى',
             lessonTaken: true,
            ),
             ChooseLessonesItem(
              text: ' unit two / الوحدة الثانية',
             lessonTaken: false,
            )
          ]),
        ),
      ),
    );
  }
}

class ChooseLessonesItem extends StatelessWidget {
  const ChooseLessonesItem({
    Key? key,
    required this.text,
    required this.lessonTaken,
    
  }) : super(key: key);
   final String text;
   final bool lessonTaken;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          //  Get.to(() =>   FinsheExam());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
              Checkbox(value: lessonTaken, onChanged: (value) {}),    

            Container(
               height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          boxShadow: const [BoxShadow(
            color: AppColor.black,
              offset: Offset(1, 1)  
          )],
          borderRadius: BorderRadius.circular(10),
         
        ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                          text,
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                         
                          ),
                          textAlign: TextAlign.right,
                        ),
                  ),
                     const Spacer(
                  flex: 1,
                ),
      IconButton(onPressed: (){}, 
           
                icon:  Icon(
                  lessonTaken ? Icons.check_circle : Icons.punch_clock_sharp,
        color: Colors.white,
                ),
             ),
                ],
              ),
            ),
            
             
                
          ],
        ),
      ),
    );
  }
}
