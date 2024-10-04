import 'package:flutter/material.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';

class AbTextButton extends StatelessWidget {
  const AbTextButton({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(
          text,
          style: TextStyle(
            fontSize: 11.5,
            fontWeight: FontWeight.w600,
            color: AppColor.headinglarg,
          ),),
        ),
      ),
    );
  }
}
