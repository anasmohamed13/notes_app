import 'package:flutter/material.dart';

import '../constats.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap});

  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        //mediaQuery take width screen
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
