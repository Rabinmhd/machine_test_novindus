import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/drop_down_build.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/payment_radio_group.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/text_field_build.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/treatment_add_popup.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/treatment_time.dart';
import 'package:machine_test_ayurvedic/presentation/widgets/treatment_type_list.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications_sharp),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    height: 1.4,
                    color: const Color(0xFF404040),
                  ),
                ),
                const Divider(),
                buildTextField('Name', 'Enter your full name'),
                buildTextField('Whatsapp Number', 'Enter your WhatsApp number'),
                buildTextField('Address', 'Enter your address'),
                buildDropdown(
                    'Location', ['Location 1', 'Location 2', 'Location 3']),
                buildDropdown('Branch', ['Branch 1', 'Branch 2', 'Branch 3']),
                treatmentTypeList(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => const TreatmentDialog(),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.5),
                      color: const Color(0x4D389A48),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33006837),
                          offset: Offset(2, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '+ Add Treatments',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                buildTextField("Total Amount", ""),
                buildTextField("Discount Amount", ""),
                const PaymentRadioGroup(),
                buildTextField("Advance Amount", ""),
                buildTextField("Balance Amount", ""),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Treatment Date",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            height: 1.4,
                            color: const Color(0xFF404040),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0x1A000000)),
                            borderRadius: BorderRadius.circular(8.5),
                            color: const Color(0x40D9D9D9),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.calendar_today_outlined),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                buildTimePickerRow(),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF006837),
                    borderRadius: BorderRadius.circular(8.5),
                  ),
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        letterSpacing: 0.2,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
