import 'package:doc_viseta/core/helpers/extensions.dart';
import 'package:doc_viseta/core/routes/routes.dart';
import 'package:doc_viseta/core/theming/colors.dart';
import 'package:doc_viseta/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.kPrimaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              const MaterialStatePropertyAll(Size(double.infinity, 56)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
