import 'package:flutter/material.dart';
import 'package:untitled12/VIEW/AdvetismentsSliderCourser.dart';
import 'package:untitled12/VIEW/CardForDetilseEcommersAndResturant.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';
import 'package:untitled12/imageassets.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Ecommerce         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _StateEcommerce();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Ecommerce         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _StateEcommerce extends State<Ecommerce> {
  List name = [
    "إلكترونيات",
    "ملابس",
    " إكسسوارات ",
    "أدوات منزلية",
    "كهربائيات",
    "عطور",
    "سوبر ماركت",
  ];
  int? defaultchioseindex;

  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Ecommerce",
              style: TextStyle(fontSize: 18, color: Colors.pink))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// CHOISE CHIP ECOMMERCE
            //@@@@@@@@//@@@@@@@@@//
            Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Wrap(children: [
                        const SizedBox(width: 8),
                        ChoiceChip(
                            showCheckmark: false,
                            selectedColor: Colors.pink[50],
                            selected: defaultchioseindex == index,
                            onSelected: (nowSelcted) {
                              setState(() {
                                defaultchioseindex = nowSelcted ? index : null;
                              });
                            },
                            label: Text("${name[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: isselected == true
                                        ? Colors.pink
                                        : Colors.black)))
                      ]);
                    })),

            //=======================

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// TEXT FORM FILED (SEARCH) ECOMMRECE
            //@@@@@@@@//@@@@@@@@@//
            KH_FormTextField(
                padding: const EdgeInsets.all(10),
                placeHolder: "ابحث",
                leadingInnerPrefixIconOrWidget:
                    const Icon(Icons.delete_outline),
                trailingInnerPrefixIconOrWidget: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 20,
                    ))),

            const SizedBox(height: 20),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// AdvetismentsSliderCourser
            //@@@@@@@@//@@@@@@@@@//

            const AdvetismentsSliderCourser(),
            const SizedBox(height: 20),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// CardForDetilseEcommersAndResturant
            //@@@@@@@@//@@@@@@@@@//
            const CardForDetilseEcommersAndResturant(
                nameresturantorecommers: "AVON",
                contentRestOrEcomm: "AVON , PARFAN",
                openOrClosed: "open",
                image: ImageAsset.eat,
                evaluationNumber: "10.0",
                pricedelivry: "free")
          ],
        ),
      )),
    );
  }
}
