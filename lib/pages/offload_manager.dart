import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_challenge/helper/base_controller.dart';
import 'package:flutter_challenge/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_challenge/helper/extantion.dart';

class OffloadManager extends GetView<BaseController> {
  const OffloadManager({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(padding:EdgeInsets.only(top:15),child:Text(
          'Pick your fish',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.black,
                letterSpacing: 0.0,
                wordSpacing: 1.0,
                fontWeight: FontWeight.w600,
              ),
              fontSize: 16),
        )),

        Padding(padding:EdgeInsets.only(top:15,right: 35),child:Text(
          'Total Qty',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.black,
                letterSpacing: 0.0,
                wordSpacing: 1.0,
                fontWeight: FontWeight.w600,
              ),
              fontSize: 16),
        )).alignTo(Alignment.bottomRight),

        GestureDetector(
          onTap: () {
            globalKey.currentState!.onSelectItem(2);
          },
          child: Row(
            children: [
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Container(),
                  )),
              Expanded(
                  child: Text(
                'Haddock',
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
                  width: 120,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Center(
                    child: Obx(() => Text(
                      controller.haddock==0?'':controller.haddock.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.0,
                                wordSpacing: 1.0,
                                fontWeight: FontWeight.w500,
                              ),
                              fontSize: 16),
                        )),
                  )),
            ],
          ),
        ),

        GestureDetector(
          onTap: () {
            globalKey.currentState!.onSelectItem(3);
          },
          child: Row(
            children: [
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Container(),
                  )),
              Expanded(
                  child: Text(
                'Red fish',
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
                  width: 120,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Center(
                    child: Obx(() => Text(
                          controller.redfish==0?'':controller.redfish.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.0,
                                wordSpacing: 1.0,
                                fontWeight: FontWeight.w500,
                              ),
                              fontSize: 16),
                        )),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
