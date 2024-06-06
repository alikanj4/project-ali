import 'package:flutter/material.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Order             @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Order extends StatelessWidget {
  const Order({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Order             @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
        centerTitle: true,
        title: KH_App_Title(
          text: "Orders",
          textAlign: TextAlign.center,
          titleColor: Colors.pink,
        ),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            //@@@@@@@@@@@@@@@@@@@@@// DetilsOrdres
            //@@@@@@@@@@@@@@@@@@@@@//

            DetilsOrdres(
                nameEcommer: "Ecommer",
                price: "price",
                statusOrder: "statusOrder")
          ],
        ),
      )),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      DetilsOrdres          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      DetilsOrdres          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class DetilsOrdres extends StatelessWidget {
  final String nameEcommer;
  final String price;
  final String statusOrder;

  const DetilsOrdres(
      {super.key,
      required this.nameEcommer,
      required this.price,
      required this.statusOrder});

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      child: Column(children: [
        Row(children: [
          Expanded(
              child: KH_SplashedCard(
                  height: 40,
                  bgColor: Colors.pink[50],
                  child: KH_App_Title(
                      virticalPadding: 8,
                      horezontalPadding: 0,
                      textAlign: TextAlign.center,
                      text: "Name Ecommerce",
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      titleColor: Colors.pink))),

          //=============================================================

          const SizedBox(width: 10),
          Container(color: Colors.grey, width: 2, height: 30),
          const SizedBox(width: 10),

          //=============================================================

          Expanded(
              child: KH_App_Title(
            virticalPadding: 8,
            horezontalPadding: 0,
            text: nameEcommer,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          )),
        ]),

        //===================================================================

        const SizedBox(height: 3),
        const Divider(height: 2, color: Colors.grey),
        const SizedBox(height: 3),

        //===================================================================

        Row(children: [
          Expanded(
              child: KH_SplashedCard(
                  height: 40,
                  bgColor: Colors.pink[50],
                  child: KH_App_Title(
                      virticalPadding: 8,
                      horezontalPadding: 0,
                      text: "price",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      titleColor: Colors.pink))),

          //===================================================================

          const SizedBox(width: 10),
          Container(color: Colors.grey, width: 2, height: 30),
          const SizedBox(width: 10),

          //===================================================================

          Expanded(
              child: KH_App_Title(
            text: price,
            virticalPadding: 0,
            horezontalPadding: 0,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          )),
        ]),

        //===================================================================

        const SizedBox(height: 3),
        const Divider(height: 2, color: Colors.grey),
        const SizedBox(height: 3),

        //===================================================================

        Row(children: [
          Expanded(
              child: KH_SplashedCard(
                  height: 40,
                  bgColor: Colors.pink[50],
                  child: KH_App_Title(
                      virticalPadding: 8,
                      horezontalPadding: 0,
                      text: "Status Order",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      titleColor: Colors.pink))),

          //===================================================================

          const SizedBox(width: 10),
          Container(color: Colors.grey, width: 2, height: 30),
          const SizedBox(width: 10),

          //===================================================================

          Expanded(
              child: KH_SplashedCard(
                  bgColor: Colors.pink[50],
                  child: KH_App_Title(
                      virticalPadding: 0,
                      horezontalPadding: 0,
                      text: statusOrder,
                      textAlign: TextAlign.center,
                      fontSize: 15,
                      titleColor: Colors.pink))),
        ])

        //===================================================================
      ]),
    );
  }
}
