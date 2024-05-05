import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.onTap, this.islooding = false});
  final String text;
  final void Function()? onTap;
  final bool islooding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 48,
          decoration: BoxDecoration(
            color: kprimaryColor.withOpacity(.8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: islooding
              ? const Center(
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      
                    color: Colors.black54,
                                    ),
                  ))
              : Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
    );
  }
}
