import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return const MobileAbout();
        } else {
          return const DesktopAbout();
        }
      });
    }));
  }
}

class MobileAbout extends StatefulWidget {
  const MobileAbout({Key? key}) : super(key: key);

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  Color normal = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Hello, I am Joshua',
                  style: GoogleFonts.poppins(
                    fontSize: 33.sm,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Text(
              'Software Developer',
              textScaleFactor: 0.7,
              style: GoogleFonts.poppins(
                  fontSize: 26.sm,
                  fontWeight: FontWeight.w600,
                  height: 2.1,
                  letterSpacing: .3),
            ),
            Text(
              'I am a Highly skilled software development professional bringing enormous talents for software design, development and integrations. I Offer advanced knowledge of in-demand programming languages. Constantly striving to learn new technologies and look to ways to better myself in this rapidly changing industry. I have a background of writing code and developing systems for Mobile, Web and Desktop applications.',
              textScaleFactor: 0.8,
              style: GoogleFonts.poppins(
                  fontSize: 21.sm, fontWeight: FontWeight.w500, height: 1.5),
            ),
            Container(
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/linkedin.png',
                  //   height: 40.h,
                  // ),
                  InkWell(
                    onTap: () async {
                      if (!await launchUrl(
                          Uri.parse('https://github.com/MJdugule'))) {
                        throw 'Could not launch page';
                      }
                    },
                    child: Image.asset(
                      'assets/github.png',
                      height: 40.h,
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                       onTap: () async {
                      if (!await launchUrl(
                          Uri.parse('https://twitter.com/Don_MJ1'))) {
                        throw 'Could not launch page';
                      }
                    },
                    child: Image.asset(
                      'assets/twitter.png',
                      height: 40.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        onSurface: Colors.white,
                        primary: normal, //background color of button
                        elevation: 8, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(6)),

                        //to set border radius to button

                        padding:
                            const EdgeInsets.all(14) //content padding inside button
                        ),
                    onHover: (value) {
                      normal = Colors.blueGrey;
                    },
                    onPressed: ()async {
                       if (!await launchUrl(
                              Uri.parse('https://firebasestorage.googleapis.com/v0/b/chat-1d2dc.appspot.com/o/MORKA%20JOSHUA%20CV%20(2).pdf?alt=media&token=ee6225ec-3096-40fb-a0e3-c4a9fdb7f554'))) {
                            throw 'Could not launch page';
                          }
                    },
                    child: Text('Download CV')),
              ],
            ),
            SizedBox(
              height: 90.h,
            ),
            Divider(height: 5, color: Colors.black,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              'Skills',
                              style: GoogleFonts.poppins(
                                fontSize: 26.sm,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                       
                        LinearPercentIndicator(
                          animation: true,
                          percent: 0.85,
                          trailing: Text(
                            "85.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.h),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Flutter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.h),
                            ),
                          ),
                          // circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                        ),
                        Divider(height: 5, color: Colors.black,),
                        LinearPercentIndicator(
                          animation: true,
                          percent: 0.7,
                          trailing: Text(
                            "70.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.h),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "RestFul API",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.h),
                            ),
                          ),
                          //circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                        ),
                     Divider(height: 5, color: Colors.black,),
                        LinearPercentIndicator(
                          animation: true,
                          percent: 0.5,
                          trailing: Text(
                            "50.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.h),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "PHP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.h),
                            ),
                          ),
                          // circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                        ),
                        Divider(height: 5, color: Colors.black,),
                        LinearPercentIndicator(
                          animation: true,
                          percent: 0.45,
                          trailing: Text(
                            "45.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.h),
                          ),
                          leading: Text(
                            "Python",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.h),
                          ),
                          //circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Divider(height: 5, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}

class DesktopAbout extends StatefulWidget {
  const DesktopAbout({Key? key}) : super(key: key);

  @override
  State<DesktopAbout> createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  Color normal = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.09.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40.w, 50.h, 40.w, 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                  'Hello, I am Joshua',
                  style: GoogleFonts.poppins(
                    fontSize: 33.sm,
                    fontWeight: FontWeight.w600,
                  ),
                )),
                   Text(
              'Software Developer',
              textScaleFactor: 0.7,
              style: GoogleFonts.poppins(
                  fontSize: 26.sm,
                  fontWeight: FontWeight.w600,
                  height: 2.1,
                  letterSpacing: .3),
            ),
            Text(
              'I am a Highly skilled software development professional bringing enormous talents for software design, development and integrations. I Offer advanced knowledge of in-demand programming languages. Constantly striving to learn new technologies and look to ways to better myself in this rapidly changing industry. I have a background of writing code and developing systems for Mobile, Web and Desktop applications.',
              textScaleFactor: 0.8,
              style: GoogleFonts.poppins(
                  fontSize: 21.sm, fontWeight: FontWeight.w500, height: 1.5),
            ),
                  Container(
                    height: 90.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Image.asset(
                        //   'assets/linkedin.png',
                        //   height: 30.h,
                        // ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.sm),
                          child: Image.asset(
                            'assets/github.png',
                            height: 30.h,
                          ),
                        ),
                        Image.asset(
                          'assets/twitter.png',
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onSurface: Colors.white,
                          primary: normal, //background color of button
                          elevation: 8, //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(6)),

                          //to set border radius to button

                          padding: const EdgeInsets.all(
                              14) //content padding inside button
                          ),
                      onHover: (value) {
                        normal = Colors.blueGrey;
                      },
                      onPressed: () async {
                             if (!await launchUrl(
                          Uri.parse('https://firebasestorage.googleapis.com/v0/b/chat-1d2dc.appspot.com/o/MORKA%20JOSHUA%20CV%20(4).pdf?alt=media&token=7368ebc2-6a16-4208-a356-9e5266cba569'))) {
                        throw 'Could not launch page';
                      }
                      },
                      child: Text('Download CV'))
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Skills',
                    style: GoogleFonts.poppins(
                      fontSize: 32.sm,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 40.sm,
                            lineWidth: 10.0,
                            animation: true,
                            percent: 0.85,
                            center: Text(
                              "85.0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sm),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Flutter",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sm),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.green,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          CircularPercentIndicator(
                            radius: 40.sm,
                            lineWidth: 10.0,
                            animation: true,
                            percent: 0.7,
                            center: Text(
                              "70.0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sm),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "RestFul API",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sm),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 40.sm,
                            lineWidth: 10.0,
                            animation: true,
                            percent: 0.5,
                            center: Text(
                              "50.0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sm),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "PHP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sm),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.green,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          CircularPercentIndicator(
                            radius: 40.sm,
                            lineWidth: 10.0,
                            animation: true,
                            percent: 0.45,
                            center: Text(
                              "45.0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sm),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "     Python  ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sm),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
