// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TreatmentTile extends StatelessWidget {
//   const TreatmentTile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xFFF0F0F0),
//           borderRadius: BorderRadius.circular(8.5),
//         ),
//         child: Container(
//           padding: EdgeInsets.fromLTRB(20, 7, 5, 14),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0, 0, 14.4, 0),
//                             child: Text(
//                               '1.',
//                               style: GoogleFonts.getFont(
//                                 'Poppins',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 18,
//                                 color: Color(0xFF000000),
//                               ),
//                             ),
//                           ),
//                           Text(
//                             'Couple Combo package i..',
//                             style: GoogleFonts.getFont(
//                               'Poppins',
//                               fontWeight: FontWeight.w500,
//                               fontSize: 18,
//                               color: Color(0xFF000000),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
//                       width: 28,
//                       height: 28,
//                       child: SizedBox(
//                         width: 28,
//                         height: 28,
//                         child: SvgPicture.network(
//                           'assets/vectors/vector_25_x2.svg',
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                 child: SizedBox(
//                   width: 295,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0, 1, 9.6, 1),
//                             child: Text(
//                               'Male',
//                               style: GoogleFonts.getFont(
//                                 'Poppins',
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 16,
//                                 color: Color(0xFF006837),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.fromLTRB(17, 1, 17.8, 1),
//                             child: Stack(
//                               clipBehavior: Clip.none,
//                               children: [
//                                 Text(
//                                   '2',
//                                   style: GoogleFonts.getFont(
//                                     'Poppins',
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 16,
//                                     color: Color(0xFF006837),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   bottom: -1,
//                                   child: Container(
//                                     width: 44,
//                                     height: 26,
//                                     decoration: BoxDecoration(
//                                       border:
//                                           Border.all(color: Color(0x33000000)),
//                                       borderRadius: BorderRadius.circular(5),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0, 1, 9.9, 1),
//                             child: Text(
//                               'Female',
//                               style: GoogleFonts.getFont(
//                                 'Poppins',
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 16,
//                                 color: Color(0xFF006837),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.fromLTRB(17, 1, 17.8, 1),
//                             child: Stack(
//                               clipBehavior: Clip.none,
//                               children: [
//                                 Text(
//                                   '2',
//                                   style: GoogleFonts.getFont(
//                                     'Poppins',
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 16,
//                                     color: Color(0xFF006837),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   bottom: -1,
//                                   child: Container(
//                                     width: 44,
//                                     height: 26,
//                                     decoration: BoxDecoration(
//                                       border:
//                                           Border.all(color: Color(0x33000000)),
//                                       borderRadius: BorderRadius.circular(5),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         margin: EdgeInsets.fromLTRB(0, 6, 0, 2),
//                         width: 18,
//                         height: 18,
//                         child: SizedBox(
//                           width: 18,
//                           height: 18,
//                           child: SvgPicture.network(
//                             'assets/vectors/vector_17_x2.svg',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
