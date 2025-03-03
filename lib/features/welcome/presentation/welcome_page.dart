import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_pt_pranala_ragam_karya/core/widgets/custom_button.dart';
import 'package:test_pt_pranala_ragam_karya/features/bilangan_prima/presentation/bilangan_prima_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController _controller = PageController();
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: PageView.builder(
                  controller: _controller,
                  itemBuilder: (_, index) {
                    return _pages(index);
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _indexPage = index;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: Color(0xFF04764e),
                  dotColor: Color(0xFFD2D2D2),
                ),
                onDotClicked: (index) {
                  _controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            CustomButton(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BilanganPrimaPage()));
            }, titleButton: "GET STARTED"),
          ],
        ),
      ),
    );
  }

  Widget _pages(int index) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.asset("assets/coffe.bmp")),
          Text(
            "Let's meet our summser coffe drinks",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, height: 1.5, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
