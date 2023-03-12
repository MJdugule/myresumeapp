import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Model/project_model.dart';
import 'package:my_portfolio/Section/contact.dart';
import 'package:my_portfolio/Widget/mobile_project_card.dart';
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
    return 
    Container(
      color: Colors.black,
      child: ListView.builder(
            // gridDelegate:
            //     const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 1,
            //   //mainAxisSpacing: 1.0,
            //   childAspectRatio: 200 / 90,
            // ),
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(project: projectList[index]);
            },
            itemCount: projectList.length,
            shrinkWrap: true,
            //scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
      
        
      //                else {
      //                 return GridView.builder(
      //                   gridDelegate:
      //                       const SliverGridDelegateWithFixedCrossAxisCount(
      //                     crossAxisCount: 2,
      //                     mainAxisSpacing: 5.0,
      //                     childAspectRatio: 250 / 160,
      //                   ),
      //                   itemBuilder: (BuildContext context, int index) {
      // return ProjectCard(project: projectList[index], width: 50.w,);
      //                   },
      //                   itemCount: projectList.length,
      //                   shrinkWrap: true,
      //                   scrollDirection: Axis.vertical,
      //                   physics: const AlwaysScrollableScrollPhysics(),
      //                 );
      //               }
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
            
         Container(
      color: Colors.black,
      child: ListView.builder(
            // gridDelegate:
            //     const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 1,
            //   //mainAxisSpacing: 1.0,
            //   childAspectRatio: 200 / 90,
            // ),
            itemBuilder: (BuildContext context, int index) {
              return MobileProjectCard(project: projectList[index]);
            },
            itemCount: projectList.length,
            shrinkWrap: true,
            //scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
      
        
      //                else {
      //                 return GridView.builder(
      //                   gridDelegate:
      //                       const SliverGridDelegateWithFixedCrossAxisCount(
      //                     crossAxisCount: 2,
      //                     mainAxisSpacing: 5.0,
      //                     childAspectRatio: 250 / 160,
      //                   ),
      //                   itemBuilder: (BuildContext context, int index) {
      // return ProjectCard(project: projectList[index], width: 50.w,);
      //                   },
      //                   itemCount: projectList.length,
      //                   shrinkWrap: true,
      //                   scrollDirection: Axis.vertical,
      //                   physics: const AlwaysScrollableScrollPhysics(),
      //                 );
      //               }
      ),
    ),
                        
                        ContactMe()
          ],
        ),
      );
  }
}
