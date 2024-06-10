import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/patient_tile.dart';

class PatientListPage extends StatelessWidget {
  const PatientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_sharp),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 249,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, size: 15.3),
                            hintText: 'Search for treatments',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0x33000000),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            isDense: true, // Less vertical space
                            contentPadding:
                                EdgeInsets.zero, // Remove default padding
                          ),
                        ),
                      ),
                      Container(
                        width: 85,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF006837),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 7, 12, 8),
                        child: SizedBox(
                          width: 169,
                          child: Text(
                            'Sort by :',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xFF404040),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Container(
                          width: 169,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0x4D000000)),
                            borderRadius: BorderRadius.circular(33),
                          ),
                          padding: const EdgeInsets.fromLTRB(18, 7, 0, 7),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: 'Date',
                              icon: const Icon(Icons.keyboard_arrow_down),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color(0xFF404040),
                              ),
                              onChanged: (value) {},
                              items: <String>[
                                'Date',
                                'Option 1',
                                'Option 2',
                                'Option 3'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return const PatientTile();
                },
                itemCount: 10,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF006837),
              ),
              child: Center(
                  child: Text(
                "Register Now",
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Colors.white,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
