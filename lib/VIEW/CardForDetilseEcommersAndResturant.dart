import 'package:flutter/material.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       CardForDetilse       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommersAndResturant   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       CardForDetilse       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommersAndResturant   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class CardForDetilseEcommersAndResturant extends StatelessWidget {
  final String nameresturantorecommers;
  final String contentRestOrEcomm;
  final String openOrClosed;
  final String image;
  final String evaluationNumber;
  final String pricedelivry;
  final Function()? onTap;
  const CardForDetilseEcommersAndResturant(
      {super.key,
      required this.nameresturantorecommers,
      required this.contentRestOrEcomm,
      required this.openOrClosed,
      required this.image,
      required this.evaluationNumber,
      required this.pricedelivry,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: KH_ShadowCard(
        innerPadding: 10,
        innerPaddingvertical: 10,
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 110,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      nameresturantorecommers,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      contentRestOrEcomm,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                      const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: KH_SplashedCard(
                            borderRadius: 8,
                            height: 30,
                            bgColor: Colors.orange[50],
                            outsideMargin: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(evaluationNumber)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: KH_SplashedCard(
                            borderRadius: 8,
                            bgColor: Colors.blue[100],
                            outsideMargin: 5,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.delivery_dining_outlined,
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(pricedelivry)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: KH_SplashedCard(
                            borderRadius: 8,
                            bgColor: Colors.green[100],
                            outsideMargin: 5,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 25,
                                  width: 40,
                                  child: IconButton(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    icon: const Icon(Icons.offline_pin_rounded),
                                    onPressed: () {},
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(openOrClosed)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
