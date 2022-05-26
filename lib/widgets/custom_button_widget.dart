
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.onTaps, required this.text,}) : super(key: key);
final   Function onTaps;
 final  String text;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          onTaps();
        },
        child: Row(

        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Container(
          width: 180,

          decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
         // stops: const [0.3,0.7 ,0.6,1.0,0.7],

        colors: [
         // Colors.white,
          Colors.pinkAccent.shade200,
          Colors.pink.shade400,
          Colors.redAccent.shade400.withOpacity(0.77),
          Colors.pink.shade500,

          Colors.pink.shade700,

         // Colors.pinkAccent.shade200,
         // Colors.pinkAccent.shade200,

        ],
        ),


        borderRadius: BorderRadius.circular(20),
      ),
          child: const SizedBox(
            height: 55,
            width: 80,
              child: Center(child: Text('Sign Up', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),
        )

    ],),
      );
  }
}
