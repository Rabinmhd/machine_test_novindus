import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TreatmentDialog extends StatelessWidget {
  const TreatmentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 16,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Choose Treatment',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xFF404040),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0x1A000000)),
                borderRadius: BorderRadius.circular(8.5),
                color: const Color(0x40D9D9D9),
              ),
              child: ListTile(
                title: Text(
                  'Choose preferred treatment',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: const Color(0x66000000),
                  ),
                ),
                trailing: const Icon(Icons.arrow_drop_down, size: 24),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Add Patients',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF404040),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildPatientContainer('Male'),
                      const SizedBox(height: 10),
                      _buildPatientContainer('Female'),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      _buildIconButton(Icons.add),
                      const SizedBox(height: 10),
                      _buildIconButton(Icons.remove),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF006837),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.5),
                ),
              ),
              child: Text(
                'Save',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientContainer(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x40000000)),
        borderRadius: BorderRadius.circular(8.5),
        color: const Color(0x40D9D9D9),
      ),
      padding: const EdgeInsets.all(15.6),
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: const Color(0xFF000000),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: const Color(0xFF006837),
        boxShadow: [
          BoxShadow(
            color: const Color(0x33006837),
            offset: const Offset(2, 2),
            blurRadius: 2,
          ),
        ],
      ),
      width: 40,
      height: 40,
      child: Center(
        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }
}
