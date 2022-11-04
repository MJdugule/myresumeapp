import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transparent_image/transparent_image.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return Container(
        color: Color(0xFF73385a),
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            constraints: BoxConstraints(
          maxWidth: 600
        ),
            child: Image.asset('assets/no.png', fit: BoxFit.fill,  height: MediaQuery.of(context).size.height-50,))));
          // return FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://i.gifer.com/1Eqt.gif', fit: BoxFit.cover, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,);
//           Center(child: 
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hi, I am MJ', style: TextStyle(color: Colors.white, fontSize: 42.0.sm, fontWeight: FontWeight.bold),),
//               Container(
//                 height: 100.h,
//                 child: AnimatedTextKit(
//   animatedTexts: [
//                 TypewriterAnimatedText(
//       'Software developer.',
//       textAlign: TextAlign.center,
//       speed: Duration(milliseconds: 150),
//       cursor: '|',
//       textStyle: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
//     ),
//   ],
//   repeatForever: true,
//   stopPauseOnTap: true,

// ),
//               ),
//               SizedBox(height: 140,),
//               Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 25.w,)
//             ],
//           ),
//       );
    }));

    
  }
}