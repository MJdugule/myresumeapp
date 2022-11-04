import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key? key, required this.project, this.width})
      : super(key: key);
  final Project project;
  final double? width;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(widget.project.link!);
    return Material(
      child: Card(
        elevation: 5,
          child: animate
              ? Row(
                  children: [
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          animate = false;
                        });
                      },
                      child: Image.asset(
                        widget.project.image!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: widget.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              widget.project.name!,
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sm, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                                child: Text(
                              widget.project.about!,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                              
                                  height: 1.2.h, fontSize: 13.sm),
                            )),
                            Spacer(),
                            TextButton(
                                style: ElevatedButton.styleFrom(
                                  onSurface: Colors.white,
                                  primary: Colors
                                      .green[800], //background color of button
                                  elevation: 8, //elevation of button
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(6)),
    
                                  //to set border radius to button
    
                                  // padding: const EdgeInsets.all(
                                  //     14) //content padding inside button
                                ),
                                onHover: (value) {
                                  //   normal = Colors.blueGrey;
                                },
                                onPressed: () async {
                                  if (!await launchUrl(_url)) {
                                    throw 'Could not launch $_url';
                                  }
                                },
                                child: Text(
                                  'View',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sm,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              : MouseRegion(
                  onExit: (event) {
                    setState(() {
                      animate = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    // curve: Curves.easeOut,
                    child: AnimatedOpacity(
                      opacity: 1,
                      duration: Duration(milliseconds: 430),
                      curve: Curves.easeOut,
                      child: Image.asset(
                        widget.project.hoverImage!,
                      ),
                    ),
                  ),
                )),
    );
  }
}
