import 'package:custom_button_flutter/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                height: 80,
                width: 300,
                fontSize: 40,
                titleColor: Colors.black,
                bgColor: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                title: 'First Button',
                onPress: () {},
                isSelected: true,
              ),
              CustomButton(
                height: 50,
                width: 300,
                fontSize: 20,
                bgColor: Colors.amber,
                titleColor: Colors.black,
                borderRadius: 20,
                fontWeight: FontWeight.bold,
                title: 'Second Button',
                onPress: () {},
                isSelected: true,
              ),
              //Below button is also disssable button it take IsSelected default value which is false
              //the opacity and the onpress is define with isSelected Condition
              CustomButton(
                titleColor: Colors.white,
                bgColor: Colors.redAccent,
                borderRadius: 0,
                title: 'Third Button',
                onPress: () {},
                fontSize: 20,
              ),
              CustomButton(
                  width: 340,
                  bgColor: Colors.cyanAccent,
                  titleColor: Colors.red,
                  fontSize: 20,
                  title: 'Forth Button',
                  onPress: () {}),
              CustomButton(
                height: 100,
                bgColor: Colors.red,
                titleColor: Colors.white,
                fontSize: 30,
                title: 'Fift Button',
                onPress: () {},
                isSelected: true,
              ),
              //This is the default button with the default properties
              CustomButton(title: 'Six Button', onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
