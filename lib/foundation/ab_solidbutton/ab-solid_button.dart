import 'package:flutter/material.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';


class Ab_solidButton extends StatelessWidget {
  const Ab_solidButton({Key?key,required this.text}):super(key:key);
final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
            WidgetStateProperty.all(AppColor.buttonColor),
            textStyle: WidgetStateProperty.all(TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
            ))),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Center(
                child: Text(text,style: TextStyle(color: AppColor.whiteColor),),
            ),
        ),
        );
  }
}
