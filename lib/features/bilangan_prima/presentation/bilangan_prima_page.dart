import 'package:flutter/material.dart';
import 'package:test_pt_pranala_ragam_karya/core/widgets/custom_button.dart';

class BilanganPrimaPage extends StatefulWidget {
  const BilanganPrimaPage({super.key});

  @override
  State<BilanganPrimaPage> createState() => _BilanganPrimaPageState();
}

class _BilanganPrimaPageState extends State<BilanganPrimaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/coffe_icon.bmp"),
                  Text(
                    "Test Apps",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "Bilangan Prima",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(height: 15),
              Text(
                "Masukkan angka untuk menghasilkan bilangan prima",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, height: 1.5),
              ),
              SizedBox(height: 30),
              Text(
                "Input Angka",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0C9C5))),
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Color(0xFFD0C9C5), fontSize: 18))),
              SizedBox(height: 25),
              CustomButton(
                isWithPadding: false,
                onTap: () {},
                titleButton: "GENERATE BILANGAN PRIMA",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
