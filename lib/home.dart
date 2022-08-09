import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Section/about.dart';
import 'package:my_portfolio/Section/landing.dart';
import 'package:my_portfolio/Section/portfolio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
         return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: updateScroll,
        child: Stack(
          children: [
            Positioned(
              top: -.25 *offset,
              child: LandingScreen()),
              Positioned(
                 top: -.25 *offset,
                child:        Container(
                  color: Colors.black54,
                 height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment(0,0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 116, backgroundImage: AssetImage('assets/dugule.jpeg'),),
                        Text('Hi, I am MJ', style: GoogleFonts.poppins(color: Colors.white, fontSize: 42.0.sm, fontWeight: FontWeight.bold),),
                        Container(
                    height: 100.h,
                    child: AnimatedTextKit(
                    animatedTexts: [
                    TypewriterAnimatedText(
                        'Software developer.',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 180),
                        cursor: '|',
                        textStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 32.0.sm, fontWeight: FontWeight.w500),
                      ),
                    ],
                    repeatForever: true,
                    stopPauseOnTap: true,
                  
                  ),
                        ),
                          
                      ],
                    ),
                  ),
                )),
            SingleChildScrollView(
              child: Column(
                children: [
                  
                  SizedBox(height: MediaQuery.of(context).size.height-90.h),
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 50,),
                  AboutPage(),
            Portfolio()
                ],
              ),
            )
            
          ],
        ),
      ),
    );
    }));
 
  }

  double offset = 0;
 bool updateScroll(ScrollNotification scrollNotification){
   SchedulerBinding.instance.addPostFrameCallback((_){
     setState(() {
       offset = scrollNotification.metrics.pixels;
    });
   });
    
   
    return true;
  }
}