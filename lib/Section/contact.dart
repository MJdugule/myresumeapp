import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return    Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
           
            child: Material(
              elevation: 10,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Contact Me', style: GoogleFonts.poppins(fontSize: 20.sm, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
  Column(
                    children: [
                      Image.asset('assets/gmail.png', height: 40.sm,),
                      // Text('morkaj360@gmail.com',style: GoogleFonts.poppins(fontSize: 7, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ), 
                  Column(
                    children: [
                      Image.asset('assets/whatsapp.png', height: 40.sm,),
                      // Text('https://wa.me/+2348130652995', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),
                   Column(
                    children: [
                      Image.asset('assets/telegram.png', height: 40.sm,),
                      // Text('https://t.me/Slasher56', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),   Column(
                    children: [
                      Image.asset('assets/phone.jpg', height: 40.sm,),
                      // Text('+2348130652995',style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ],
                  ),
                    ],
                  )
                
               
                ],
              ),
            ),
          );
  }
}