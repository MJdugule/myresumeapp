import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
              // color: Colors.red,
              //width: MediaQuery.of(context).size.width,
             
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Contact Me', style: GoogleFonts.poppins(fontSize: 20.sm, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
  Column(
                      children: [
                        InkWell(
                          onTap: () async{
                            String email = Uri.encodeComponent("morkaj360@gmail.com");
                    String subject = Uri.encodeComponent("Hello Joshua");
                    String body = Uri.encodeComponent("");
                 //output: Hello%20Flutter
                    Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
                    if (await launchUrl(mail)) {
                        //email app opened
                    }else{
                        //email app is not opened
                    }
                }, 
                          
                          child: Image.asset('assets/gmail.png', height: 40.sm,)),
                        // Text('morkaj360@gmail.com',style: GoogleFonts.poppins(fontSize: 7, fontWeight: FontWeight.w400, color: Colors.black),),
                      ],
                    ), 
                    Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            if (!await launchUrl(
                            Uri.parse('https://wa.me/+2348130652995'))) {
                          throw 'Could not launch page';
                        }
                          },
                          child: Image.asset('assets/whatsapp.png', height: 40.sm,)),
                        // Text('https://wa.me/+2348130652995', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                      ],
                    ),
                     InkWell(
                       onTap: () async{
                          if (!await launchUrl(
                         Uri.parse('https://t.me/Slasher56'))) {
                       throw 'Could not launch page';
                     }
                       },
                       child: Image.asset('assets/telegram.png', height: 40.sm,)),   Column(
                      children: [
                        InkWell(
                          onTap: () async{
                            Uri url = Uri(scheme: "tel", path: "+2348130652995");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
       print("Can't open dial pad.");
    }
                          },
                          child: Image.asset('assets/phone.jpg', height: 40.sm,)),
                        // Text('+2348130652995',style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                      ],
                    ),
                      ],
                    )
                  
                 
                  ],
                ),
              ),
            ),
    );
  }
}