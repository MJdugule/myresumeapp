import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Model/project_model.dart';
import 'package:my_portfolio/Section/contact.dart';
import 'package:my_portfolio/Widget/projectCard.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);
 
  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return const MobilePortfolio();
        } else {
          return const DesktopPortfolio();
        }
      });
    }));
  }
}

class DesktopPortfolio extends StatefulWidget {
  const DesktopPortfolio({Key? key}) : super(key: key);

  @override
  State<DesktopPortfolio> createState() => _DesktopPortfolioState();
}

class _DesktopPortfolioState extends State<DesktopPortfolio> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            width: 310,
            height: MediaQuery.of(context).size.height,
            child: Material(
              elevation: 10,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Contact Me', style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  Column(
                    children: [
                      Image.asset('assets/gmail.png', height: 70,),
                      Text('morkaj360@gmail.com',style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ), 
                  Column(
                    children: [
                      Image.asset('assets/whatsapp.png', height: 70,),
                      Text('https://wa.me/+2348130652995', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),
                   Column(
                    children: [
                      Image.asset('assets/telegram.png', height: 70,),
                      Text('https://t.me/Slasher56', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),   Column(
                    children: [
                      Image.asset('assets/phone.jpg', height: 70,),
                      Text('+2348130652995',style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),
               
                ],
              ),
            ),
          ),
          Container(
              //color: Colors.white,
              width: MediaQuery.of(context).size.width - 320,
              height: MediaQuery.of(context).size.height,
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth < 800) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 350 / 160,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectCard(width: 100.w,project: projectList[index]);
                    },
                    itemCount: projectList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                  );
                } else {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 250 / 160,
                    ),
                    itemBuilder: (BuildContext context, int index) {
    return ProjectCard(project: projectList[index], width: 50.w,);
                    },
                    itemCount: projectList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                  );
                }
              })),
        ],
      ),
    );
  }
}

class MobilePortfolio extends StatefulWidget {
  const MobilePortfolio({Key? key}) : super(key: key);

  @override
  State<MobilePortfolio> createState() => _MobilePortfolioState();
}

class _MobilePortfolioState extends State<MobilePortfolio> {
  @override
  Widget build(BuildContext context) {
      return Card(
        margin: EdgeInsets.zero,
         //color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 30),
              child: Text('Projects', style: GoogleFonts.poppins(fontSize: 20.sm, fontWeight: FontWeight.bold,),),
            ),
            
            GridView.builder(
              padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 3.0,
                            childAspectRatio: 330 / 160,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProjectCard(project: projectList[index], width: 180.w,),
                            );
                          },
                          itemCount: projectList.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics:BouncingScrollPhysics(),
                        ),
                        ContactMe()
          ],
        ),
      );
  }
}
