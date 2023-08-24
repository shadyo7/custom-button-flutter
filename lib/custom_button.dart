import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
//Here we make some parameters optional because they remain same in alot of screens in Flutter app
//however the required parametes are different on different screens

  final Color? bgColor, titleColor; //pass title color and background colors
  final String title;
  final double? height;
  final double? width;
  final VoidCallback? onPress;
  final double? fontSize;
  final bool? isSelected;
  final FontWeight? fontWeight;
  final double? borderRadius;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.bgColor = Colors.black,
      this.titleColor = Colors.white,
      this.width =
          200, //if not value is pass then it will take the deafult width
      this.height = 52, //default height
      this.fontSize = 16, //default Font size
      this.borderRadius = 6, //deafult radius
      this.fontWeight = FontWeight.w500, //Font weight
      this.isSelected =
          false //This is for dissable and enable functionality by default it will be
      //dissable then when some condition meet you can enable it by passing isSelelcted = true
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: onPress == null || !isSelected!
            ? bgColor?.withOpacity(.5)
            : bgColor,
        //when button is dissable means isSelected = false the color is with 50% opacity
      ),
      child: TextButton(
        onPressed: isSelected!
            ? onPress
            : null, //onpressed will enable when isSelected is true
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
