import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  @override
  _NumericKeypadState createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<OtpVerification> {
  List<String> currentInput = List.filled(6, '-');

  void onButtonPressed(String value) {
    setState(() {
      for (int i = 0; i < 6; i++) {
        if (currentInput[i] == '-') {
          currentInput[i] = value;
          break;
        }
      }
      // print("Button pressed with value: $value");
    });
  }

  void deleteOne() {
    setState(() {
      for (int i = 5; i >= 0; i--) {
        if (currentInput[i] != '-') {
          currentInput[i] = '-';
          break;
        }
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
              height: 60,
            ),

            //! BUTTON BACK
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  //shape: MaterialStateProperty.all(CircleBorder()),
                ),
                icon: const Icon(
                  Icons.chevron_left,
                  size: 30,
                ),
                tooltip: 'Back',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //! TEXT OTP VERIFICATION
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
              height: 33,
            ),

            //! SIX BOX SHOW INPUT NUMBER
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8F9),
                          border: Border.all(width: 0.2, color: Colors.black),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            currentInput.isNotEmpty ? currentInput[i] : '-',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),

            //! TEXT Resent OTP
            const SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Resend OTP pressed');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Resend OTP',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 83, 158, 1.0),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),

            //! NumPad
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5),
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
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          //* Number 1 - 3
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(
                                    52 * fem, 1 * fem, 52 * fem, 1 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffcfcfe),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff898a8d),
                                      offset: Offset(0 * fem, 1 * fem),
                                      blurRadius: 0 * fem,
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    onButtonPressed("1");
                                  },
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 25 * fem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575 * fem / fem,
                                      letterSpacing: 0.2912249863 * fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: 6 * fem,
                            ),
                            Container(
                                width: 117 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffcfcfe),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff898a8d),
                                      offset: Offset(0 * fem, 1 * fem),
                                      blurRadius: 0 * fem,
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    onButtonPressed("2");
                                  },
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
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 10 * fem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575 * fem / fem,
                                                letterSpacing:
                                                    0.2912249863 * fem,
                                                color: const Color(0xff000000),
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
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 25 * fem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575 * fem / fem,
                                                letterSpacing:
                                                    0.2912249863 * fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("3");
                                },
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
                                            'DEF',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  'SF Pro Display', // Replace with your desired font family
                                              fontSize: 10 * fem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575 * fem / fem,
                                              letterSpacing: 0.2912249863 * fem,
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          //* Number 4 - 6
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("4");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("5");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("6");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 47 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          //* Number 7 - 9
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Container(
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("7");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("8");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  onButtonPressed("9");
                                },
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
                                              color: const Color(0xff000000),
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
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7 * fem,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            160 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 46 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          //* Number 0 and Icon delete
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 5 * fem, 0 * fem),
                              width: 117 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    onButtonPressed("0");
                                  },
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
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfffcfcfe),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff898a8d),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 0 * fem,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(right: 39.0),
                                margin: const EdgeInsets.only(left: 30),
                                child: IconButton(
                                  icon: const Icon(Icons.backspace,
                                      size: 30, color: Colors.black),
                                  onPressed: () {
                                    deleteOne();
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
