// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

//import 'routes/routes.dart';

class BotonPrueba extends StatelessWidget {
  // ignore: use_super_parameters
  BotonPrueba({
    //required this.text1,
    required this.iconData,
    required this.buttonText,
    this.onTap,
    Key? key,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  //final text1;
  final IconData iconData;
  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                /*Container(
                  height: 50.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),*/

                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        //color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
