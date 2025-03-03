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
              SizedBox(height: 40),
              Text(
                "Bilangan Prima",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(height: 15),
              Text(
                "Masukkan angka untuk menghasilkan bilangan prima",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, height: 1.5),
              ),
              SizedBox(height: 25),
              Text(
                "Input Angka",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Color(0xFFD0C9C5), fontSize: 20))),
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
