import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Model/project_model.dart';
import 'package:my_portfolio/constant/app_colors.dart';
import 'package:my_portfolio/constant/app_spacing.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectCard extends StatefulWidget {
  const MobileProjectCard({Key? key, required this.project, this.width})
      : super(key: key);
  final Project project;
  final double? width;

  @override
  State<MobileProjectCard> createState() => _MobileProjectCardState();
}

class _MobileProjectCardState extends State<MobileProjectCard> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(widget.project.link!);
    final Uri play = Uri.parse(widget.project.play!);
    final Uri figma = Uri.parse(widget.project.figma!);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10),
      color: Colors.grey.shade900.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
        child: 
        // animate
        //     ? 
            Container(
            
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // MouseRegion(
                      //   onEnter: (event) {
                      //     setState(() {
                      //       animate = false;
                      //     });
                      //   },
                      //   //child: 
                      // ),
                        Image.asset(
                          widget.project.image!,
                        //  width: 130.w,
                          height: 250.sm,
                          fit: BoxFit.fill,
                          
                        ),
                        verticalSpaceSmall,
                      SizedBox(
                        //width: MediaQuery.of(context).size.width/2.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Spacer(),
                            Text(
                              widget.project.name!,
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp, fontWeight: FontWeight.w600),
                            ),
                           
                            verticalSpaceSmall,
                            Text(
                              widget.project.about!,
                              //maxLines: 3,
                              //overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                              
                              fontSize: 15.sm),
                            ),
                             verticalSpaceSmall,
                              widget.project.website != "" ? Text(
                              "website: ${widget.project.website!}",
                              style: GoogleFonts.poppins(
                                  fontSize: 14.sm, ),
                            ) : Container(),
                           // Spacer(),
                           verticalSpaceSmall,
                           verticalSpaceSmall,
                           Wrap(
                            spacing: 9,
                            runSpacing: 7,
                            children: [
                              widget.project.play != "" ?
                              InkWell(
                                onTap: () async {
                                   if (!await launchUrl(play, mode: LaunchMode.externalApplication)) {
                                    throw 'Could not launch $play';
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(border: Border.all(color: kWhite), borderRadius: BorderRadius.circular(20)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("assets/googlePlay.png", width: 120,
                                    fit: BoxFit.cover,
                                    height: 35,),
                                  ),
                                )):Container(), 
                               
                                 widget.project.figma != "" ?
                              InkWell(
                                onTap: () async {
                                   if (!await launchUrl(figma, mode: LaunchMode.externalApplication)) {
                                    throw 'Could not launch $figma';
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    
                                    border: Border.all(color: kWhite),  borderRadius: BorderRadius.circular(20)), width: 100,
                                    height: 35,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/figma.png", 
                                        fit: BoxFit.contain,
                                       ),
                                      ),

                                      Text("UI/UX")
                                    ],
                                  ),
                                )):Container(),  
                               
                                widget.project.link != "" ?
                              InkWell(
                                onTap: () async {
                                  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
                                    throw 'Could not launch $_url';
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    border: Border.all(color: kWhite),  borderRadius: BorderRadius.circular(20)), width: 140,
                                    height: 35,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset("assets/github.png", 
                                        fit: BoxFit.contain,
                                        height: 40,),
                                      ),

                                      Text("Source Code", style: GoogleFonts.poppins(color: kPrimary),)
                                    ],
                                  ),
                                )):Container(),
                        
                           ],)

                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                      verticalSpaceSmall,
                    
                    ],
                  ),
              ),
            ));
            // : MouseRegion(
            //     onExit: (event) {
            //       setState(() {
            //         animate = true;
            //       });
            //     },
            //     child: AnimatedContainer(
            //       duration: Duration(milliseconds: 300),
            //       // curve: Curves.easeOut,
            //       child: AnimatedOpacity(
            //         opacity: 1,
            //         duration: Duration(milliseconds: 430),
            //         curve: Curves.easeOut,
            //         child: Image.asset(
            //           widget.project.hoverImage!,
            //         ),
            //       ),
            //     ),
            //   ));
  }
}
