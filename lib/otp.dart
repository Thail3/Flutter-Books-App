import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  @override
  _NumericKeypadState createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<OtpVerification> {
  String currentInput = '';

  void onButtonPressed(String value) {
    setState(() {
      if (currentInput.length < 6) {
        currentInput += value;
      }
    });
  }

  void deleteOne() {
    setState(() {
      if (currentInput.isNotEmpty) {
        currentInput = currentInput.substring(0, currentInput.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'OTP Verification',
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Please enter verification code sent to your SMS',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "+66** ****8841",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Ref ID : AXD7K',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8F9),
                        border: Border.all(width: .2, color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Resend OTP pressed');
                  },
                  child: Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Resend OTP',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 83, 158, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),

            //! numPad ---------------------------------
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 400 * fem,
                  decoration: const BoxDecoration(
                    color: Color(0xffd1d5db),
                  ),
                  // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  52 * fem, 1 * fem, 52 * fem, 1 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily:
                                      'SF Pro Display', // Replace with your desired font family
                                  fontSize: 25 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * fem / fem,
                                  letterSpacing: 0.2912249863 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'ABC',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // label7yo (I0:142;272:1730)
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'DEF',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '3',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Container(
                        //       // JzR (I0:142;272:1736)
                        //       padding: EdgeInsets.fromLTRB(
                        //           52 * fem, 1 * fem, 52 * fem, 1 * fem),
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Text(
                        //         '1',
                        //         textAlign: TextAlign.center,
                        //         style: TextStyle(
                        //           fontFamily:
                        //               'SF Pro Display', // Replace with your desired font family
                        //           fontSize: 10 * fem,
                        //           fontWeight: FontWeight.w400,
                        //           height: 1.2575 * fem / fem,
                        //           letterSpacing: 0.2912249863 * fem,
                        //           color: Color(0xff000000),
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 46.5 * fem,
                        //             top: 29 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 24 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'ABC',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '2',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 46.5 * fem,
                        //             top: 29 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 24 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'DEF',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '3',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      Container(
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'GHI',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '4',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'JKL',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '5',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // label7yo (I0:142;272:1730)
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'MNO',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '6',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 47 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 23 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'GHI',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '4',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 47 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 23 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'JKL',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '5',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 44.5 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 28 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'MNO',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '6',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      Container(
                        width: double.infinity,
                        height: 47 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'PQRS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '7',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'TUV',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '8',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // label7yo (I0:142;272:1730)
                                    left: 46.5 * fem,
                                    top: 29 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'WXYZ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 10 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 52 * fem,
                                    top: 1 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 13 * fem,
                                        height: 32 * fem,
                                        child: Text(
                                          '9',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                'SF Pro Display', // Replace with your desired font family
                                            fontSize: 25 * fem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575 * fem / fem,
                                            letterSpacing: 0.2912249863 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 42 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 33 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'PQRS',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '7',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 46.5 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 24 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'TUV',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '8',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 6 * fem,
                        //     ),
                        //     Container(
                        //       width: 117 * fem,
                        //       height: double.infinity,
                        //       decoration: BoxDecoration(
                        //         color: Color(0xfffcfcfe),
                        //         borderRadius: BorderRadius.circular(5 * fem),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Color(0xff898a8d),
                        //             offset: Offset(0 * fem, 1 * fem),
                        //             blurRadius: 0 * fem,
                        //           ),
                        //         ],
                        //       ),
                        //       child: Stack(
                        //         children: [
                        //           Positioned(
                        //             left: 42 * fem,
                        //             top: 29.6304321289 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 33 * fem,
                        //                 height: 13 * fem,
                        //                 child: Text(
                        //                   'WXYZ',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Positioned(
                        //             left: 52 * fem,
                        //             top: 1.0217437744 * fem,
                        //             child: Align(
                        //               child: SizedBox(
                        //                 width: 13 * fem,
                        //                 height: 32 * fem,
                        //                 child: Text(
                        //                   '9',
                        //                   textAlign: TextAlign.center,
                        //                   style: TextStyle(
                        //                     fontFamily:
                        //                         'SF Pro Display', // Replace with your desired font family
                        //                     fontSize: 10 * fem,
                        //                     fontWeight: FontWeight.w400,
                        //                     height: 1.2575 * fem / fem,
                        //                     letterSpacing: 0.2912249863 * fem,
                        //                     color: Color(0xff000000),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            160 * fem, 0 * fem, 44 * fem, 0 * fem),
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 55 * fem, 0 * fem),
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  '0',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily:
                                        'SF Pro Display', // Replace with your desired font family
                                    fontSize: 25 * fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575 * fem / fem,
                                    letterSpacing: 0.2912249863 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //! NumPad
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Container(
            //       decoration: const BoxDecoration(
            //         color: Color(0xffd1d5db),
            //       ),
            // child: Container(
            //   margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            //   width: double.infinity,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         alignment: Alignment.center,
            //         width: double.infinity,
            //         height: 46 * fem,

            //Todo this line
            // child: Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     const SizedBox(
            //       width: 35,
            //     ),
            //     Container(
            //       padding: EdgeInsets.fromLTRB(
            //           52 * fem, 1 * fem, 52 * fem, 1 * fem),
            //       height: double.infinity,
            //       decoration: BoxDecoration(
            //         color: Color(0xfffcfcfe),
            //         borderRadius: BorderRadius.circular(5 * fem),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Color(0xff898a8d),
            //             offset: Offset(0 * fem, 1 * fem),
            //             blurRadius: 0 * fem,
            //           ),
            //         ],
            //       ),
            //       child: Text(
            //         '1',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           fontFamily:
            //               'SF Pro Display', // Replace with your desired font family
            //           fontSize: 25 * fem,
            //           fontWeight: FontWeight.w400,
            //           height: 1.2575 * fem / fem,
            //           letterSpacing: 0.2912249863 * fem,
            //           color: Color(0xff000000),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 6 * fem,
            //     ),
            //     Container(
            //       width: 117 * fem,
            //       height: double.infinity,
            //       decoration: BoxDecoration(
            //         color: Color(0xfffcfcfe),
            //         borderRadius: BorderRadius.circular(5 * fem),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Color(0xff898a8d),
            //             offset: Offset(0 * fem, 1 * fem),
            //             blurRadius: 0 * fem,
            //           ),
            //         ],
            //       ),
            //       child: Stack(
            //         children: [
            //           Positioned(
            //             left: 46.5 * fem,
            //             top: 29 * fem,
            //             child: Align(
            //               child: SizedBox(
            //                 width: 24 * fem,
            //                 height: 13 * fem,
            //                 child: Text(
            //                   'ABC',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontFamily:
            //                         'SF Pro Display', // Replace with your desired font family
            //                     fontSize: 10 * fem,
            //                     fontWeight: FontWeight.w400,
            //                     height: 1.2575 * fem / fem,
            //                     letterSpacing: 0.2912249863 * fem,
            //                     color: Color(0xff000000),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             left: 52 * fem,
            //             top: 1 * fem,
            //             child: Align(
            //               child: SizedBox(
            //                 width: 13 * fem,
            //                 height: 32 * fem,
            //                 child: Text(
            //                   '2',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontFamily:
            //                         'SF Pro Display', // Replace with your desired font family
            //                     fontSize: 25 * fem,
            //                     fontWeight: FontWeight.w400,
            //                     height: 1.2575 * fem / fem,
            //                     letterSpacing: 0.2912249863 * fem,
            //                     color: Color(0xff000000),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       width: 6 * fem,
            //     ),
            //     Container(
            //       width: 117 * fem,
            //       height: double.infinity,
            //       decoration: BoxDecoration(
            //         color: Color(0xfffcfcfe),
            //         borderRadius: BorderRadius.circular(5 * fem),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Color(0xff898a8d),
            //             offset: Offset(0 * fem, 1 * fem),
            //             blurRadius: 0 * fem,
            //           ),
            //         ],
            //       ),
            //       child: Stack(
            //         children: [
            //           Positioned(
            //             // label7yo (I0:142;272:1730)
            //             left: 46.5 * fem,
            //             top: 29 * fem,
            //             child: Align(
            //               child: SizedBox(
            //                 width: 24 * fem,
            //                 height: 13 * fem,
            //                 child: Text(
            //                   'DEF',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontFamily:
            //                         'SF Pro Display', // Replace with your desired font family
            //                     fontSize: 10 * fem,
            //                     fontWeight: FontWeight.w400,
            //                     height: 1.2575 * fem / fem,
            //                     letterSpacing: 0.2912249863 * fem,
            //                     color: Color(0xff000000),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             left: 52 * fem,
            //             top: 1 * fem,
            //             child: Align(
            //               child: SizedBox(
            //                 width: 13 * fem,
            //                 height: 32 * fem,
            //                 child: Text(
            //                   '3',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontFamily:
            //                         'SF Pro Display', // Replace with your desired font family
            //                     fontSize: 25 * fem,
            //                     fontWeight: FontWeight.w400,
            //                     height: 1.2575 * fem / fem,
            //                     letterSpacing: 0.2912249863 * fem,
            //                     color: Color(0xff000000),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       height: 7 * fem,
            //     ),
            //   ],
            // ),
            //! -------------------
            //       ),
            //     ],
            //   ),
            // ),
            // )
            // ],
            // ),
            // Column(
            //   children: [
            //     GridView.builder(
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 3,
            //         ),
            //         itemCount: 10,
            //         shrinkWrap: true,
            //         itemBuilder: (BuildContext context, int index) {
            //           if (index == 9) {
            //             return TextButton(
            //               onPressed: () {
            //                 onButtonPressed('0');
            //               },
            //               child: Text('0', style: TextStyle(fontSize: 5.0)),
            //             );
            //           } else {
            //             return TextButton(
            //               onPressed: () {
            //                 onButtonPressed((index + 1).toString());
            //               },
            //               child: Text((index + 1).toString(),
            //                   style: TextStyle(fontSize: 20.0)),
            //             );
            //           }
            //         })
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
