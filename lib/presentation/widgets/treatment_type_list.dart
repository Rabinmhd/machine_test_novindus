import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget treatmentTypeList() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          "Treatments",
          style: GoogleFonts.poppins(
            fontSize: 14,
            height: 1.4,
            color: const Color(0xFF404040),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                height: 84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0x40D9D9D9)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "1.",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Treatment type",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                              color: Colors.black,
                            ),
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.close_rounded),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Male",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 26,
                                  width: 46,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF404040),
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Female",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 26,
                                  width: 46,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF404040),
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                )
                              ],
                            ),
                            const Icon(Icons.edit)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 2),
    ],
  );
}
