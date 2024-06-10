import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentRadioGroup extends StatelessWidget {
  const PaymentRadioGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Payment Option",
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.4,
              color: const Color(0xFF404040),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Row(children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                Text(
                  "cash",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    height: 1.4,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF404040),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Row(children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                Text(
                  "Card",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    color: const Color(0xFF404040),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Row(children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                Text(
                  "UPI",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    height: 1.4,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF404040),
                  ),
                ),
              ]),
            )
          ],
        ),
      ],
    );
  }
}
