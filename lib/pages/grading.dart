import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge/helper/base_controller.dart';
import 'package:flutter_challenge/helper/extantion.dart';
import 'package:flutter_challenge/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Grading extends GetView<BaseController> {
  const Grading({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Positioned(
        child: Align(
        alignment: FractionalOffset.center,
            child:Column(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
          SizedBox(width:
           200,child:Text(
            "Weight",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 0.0,
                  wordSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                ),
                fontSize: 16),
          )),
          Container(
              width: 200,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.black)),
              child: Center(
                child: TextField(
                  controller: controller.weightController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 0.0,
                        wordSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                      ),
                      fontSize: 16),
                ),
              ))
        ],))),
        Positioned(
            child: Align(
                alignment: FractionalOffset.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Obx(()=>Text(
                      controller.type==0?'Haddock':'Red fish',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.0,
                            wordSpacing: 1.0,
                            fontWeight: FontWeight.w600,
                          ),
                          fontSize: 16),
                    ))))),
        Positioned(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: RaisedButton(
                  onPressed: () {
                    if(controller.type == 0){
                      var x = int.parse(controller.weightController.text);
                      controller.haddock += x;
                    }else{
                      var x = int.parse(controller.weightController.text);
                      controller.redfish += x;
                    }
                    controller.weightController.text = '';
                    globalKey.currentState!.onSelectItem(0);
                  },
                  color: '#124d3d'.hexToColor(),
                  child: const Text(
                    'Add To Total',
                    style: TextStyle(color: Colors.white),
                  ),
                ))),
      ],
    ));
  }
}
