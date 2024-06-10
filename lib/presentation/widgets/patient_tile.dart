import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_ayurvedic/models/patient_model.dart';

class PatientTile extends StatelessWidget {
  const PatientTile({super.key, required this.patient, required this.index});
  final Patient patient;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.fromLTRB(0, 23, 0, 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 3),
            child: Row(
              children: [
                Text(
                  "${index + 1}",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(width: 14.4),
                Text(
                  patient.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28.3, 0, 28.3, 14),
            child: Text(
              'Couple Combo Package (Rejuven...',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: const Color(0xFF006837),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28.3, 0, 28.3, 14),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 6.3),
                      width: 13.3,
                      height: 13.3,
                      child: Image.asset('assets/dateVector.png'),
                    ),
                    Text(
                      '31/01/2024',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0x80000000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 22.8),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 16,
                      height: 10.7,
                      child: Image.asset('assets/patientVector.png'),
                    ),
                    Text(
                      'Jithesh',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0x80000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(color: Color(0x33000000), thickness: 1, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'View Booking details',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_outlined, size: 12.5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
