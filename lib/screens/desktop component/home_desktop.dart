import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/styles.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.93 : 600.0;
    return SizedBox(
      height: screenHeight,
      width: screenSize.width,
      child: Row(
        children: [
          buildSocialButtons(),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "____HOLA.I AM",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'M',
                        style: kNameTextStyle.copyWith(
                          fontSize: 56.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'OHAMMED ',
                            style: kNameTextStyle.copyWith(
                              fontSize: 50.0,
                            ),
                          ),
                          TextSpan(
                            text: 'S',
                            style: kNameTextStyle.copyWith(
                              fontSize: 56.0,
                              color: Color(0xffdc2430),
                            ),
                          ),
                          TextSpan(
                            text: 'HIBIN ',
                            style: kNameTextStyle.copyWith(
                              fontSize: 50.0,
                              color: Color(0xffdc2430),
                            ),
                          ),
                          TextSpan(
                            text: 'V',
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Computer Science Undergratuate",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          ),
          Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              SizedBox(
                width: 480,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      //color: const Color(0xffeeeeee),
                      color: const Color(0xffDBE1F1),
                    ),
                    Container(
                      width: 80,
                      //color: const Color(0xff0F044C),
                      //color: const Color(0xfff1f1f1),
                      color: const Color(0xffDBE1F1),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: 480,
                  height: 480,
                  child: Image.asset('portfolioImg.png',fit: BoxFit.fitHeight),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: screenSize.height * 0.93,
              //color: const Color(0xfff1f1f1),
              //color: const Color(0xff1F2233),
              color: const Color(0xffEDF1FD),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSocialButtons() => Container(
      //color: const Color(0xff1F2233),
      //color: const Color(0xff0F044C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialButton(icon: FontAwesomeIcons.linkedin, onClicked: () {}),
          SizedBox(
            height: 25,
          ),
          buildSocialButton(icon: FontAwesomeIcons.github, onClicked: () {}),
          SizedBox(
            height: 25,
          ),
          buildSocialButton(icon: Icons.mail, onClicked: () {}),
        ],
      ),
    );

Widget buildSocialButton({
  required IconData icon,
  required VoidCallback onClicked,
}) =>
    InkWell(
      child: SizedBox(
        width: 64,
        height: 64,
        child: Center(
          child: FaIcon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      onTap: onClicked,
    );
