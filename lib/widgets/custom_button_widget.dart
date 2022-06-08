import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.onTaps, required this.text, this.borderRadius})
      : super(key: key);
  final Function onTaps;
  final String text;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              boxShadow: [
                BoxShadow(
                  color: Colors.pinkAccent.withOpacity(0.2),
                  spreadRadius: 1,
                  // spreadRadius: 2,
                  blurRadius: 3.5,
                  offset: const Offset(4, 3.5), // changes position of shadow
                ),
              ],
            ),
            child: Material(
              borderRadius: BorderRadius.circular(borderRadius ?? 20),
              child: Ink(
                width: 180,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.03, 0.04, 0.2, 0.4, 0.92, 0.98],
                    colors: [
                      Color.fromRGBO(255, 128, 161, 1),
                      Color.fromRGBO(255, 112, 156, 1),
                      Color.fromRGBO(255, 51, 141, 1),
                      Color.fromRGBO(255, 14, 131, 1),
                      Color.fromRGBO(255, 0, 128, 1),
                      Color.fromRGBO(208, 46, 128, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                ),
                child: InkWell(
                  onTap: () {
                    onTaps();
                  },
                  child: SizedBox(
                      height: 55,
                      width: 80,
                      child: Center(
                          child: Text(
                        text,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
