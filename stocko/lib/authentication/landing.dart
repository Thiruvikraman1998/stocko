import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stocko/custom_widgets/custom_gapper.dart';
import 'package:stocko/utils/theme_constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              SvgPicture.asset(
                'assets/svg/landing.svg',
                height: size.height * 0.6,
              ),
              Positioned(
                top: size.height * 0.4,
                bottom: size.height * 0.4,
                left: size.width * 0.4,
                child: SizedBox(
                  child: SvgPicture.asset(
                    "assets/svg/checking_boxes.svg",
                    height: size.height * 0.1,
                  ),
                ),
              )
            ]),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                maximumSize: MaterialStatePropertyAll(
                  Size(double.infinity, size.height * 0.06),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(double.infinity, size.height * 0.06),
                ),
                elevation: const MaterialStatePropertyAll(0),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white, fontSize: size.height * 0.025),
              ),
            ),
            Gap.column(height: size.height * 0.04),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                elevation: const MaterialStatePropertyAll(0),
                maximumSize: MaterialStatePropertyAll(
                  Size(double.infinity, size.height * 0.06),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(double.infinity, size.height * 0.06),
                ),
                shape: const MaterialStatePropertyAll(
                  StadiumBorder(
                    side: BorderSide(color: ThemeConstants.borderGreyColor),
                  ),
                ),
              ),
              child: Text(
                "Register",
                style: TextStyle(
                    color: ThemeConstants.primaryColor,
                    fontSize: size.height * 0.025),
              ),
            )
          ],
        ),
      ),
    );
  }
}
