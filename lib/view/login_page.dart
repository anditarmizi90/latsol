import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latsol/constants/r.dart';
import 'package:latsol/view/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String route = "login_screen";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f7f8),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                R.strings.login,
                style: const TextStyle(
                  height: 4,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(R.assets.imLogin),
            SizedBox(
              height: 35,
            ),
            Text(
              R.strings.welcome,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              R.strings.loginDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: R.colors.greySubtitle,
              ),
            ),
            Spacer(),
            ButtonLogin(
              onTap: () {
                Navigator.of(context).pushNamed(RegisterPage.route);
              },
              backgroundColor: Colors.blueGrey,
              borderColor: R.colors.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(R.assets.icGoogle),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    R.strings.loginWithGoogle,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: R.colors.blackLogin,
                    ),
                  ),
                ],
              ),
            ),
            ButtonLogin(
              onTap: () {},
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(R.assets.icApple),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    R.strings.loginWithApple,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.backgroundColor,
    required this.child,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;
  final Color borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(
                color: borderColor,
              ),
            ),
            fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
          ),
          onPressed: onTap,
          child: child),
    );
  }
}
