import 'package:flutter/material.dart';

enum size { small, medium, large }

Widget npjButton(
  String text,
  Function() tap,
) {
  return TextButton(
      onPressed: tap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.1),
      ),
      child: Container(
          width: 150,
          height: 50,
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
          )));
}
