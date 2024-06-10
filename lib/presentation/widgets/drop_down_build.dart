import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildDropdown(String label, List<String> items) {
  String? selectedValue;

  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.4,
              color: const Color(0xFF404040),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x1A000000)),
            borderRadius: BorderRadius.circular(8.5),
            color: const Color(0x40D9D9D9),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue,
              isExpanded: true,
              hint: const Padding(
                padding: EdgeInsets.fromLTRB(14.1, 15.6, 14.1, 15.6),
                child: Text(
                  'Select an option',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0x66000000),
                  ),
                ),
              ),
              items: items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14.1, 15.6, 14.1, 15.6),
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF404040),
                      ),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                // Add your state management logic here if needed
              },
            ),
          ),
        ),
      ],
    ),
  );
}
