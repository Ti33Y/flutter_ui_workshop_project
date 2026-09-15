import 'package:flutter/material.dart';
import 'views/e01_page_ui.dart';
void main() {
  runApp(
    
    FlutterUiWorkshopProject(),
  );
}

//เรียกใช้ stf เปลียนชื่อแล้วเอาไปตั้งด้านน
class FlutterUiWorkshopProject extends StatefulWidget {
  const FlutterUiWorkshopProject({super.key});

  @override
  State<FlutterUiWorkshopProject> createState() => _FlutterUiWorkshopProjectState();
}

class _FlutterUiWorkshopProjectState extends State<FlutterUiWorkshopProject> {
  @override
  Widget build(BuildContext context) {
    //วิดเจ็ตหลักแอพ
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //ปิดป้ายดีบัคมุมน
      title: 'Orange ส้ม',
      home: E01PageUI(),//เรียกหน้าโฮม
    );
  }
}