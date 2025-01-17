import 'package:flutter/material.dart';
import 'package:meet_our_brains/widgets/custom_shape.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, this.iconcolor, this.cardColor});
  final Color? iconcolor;
  final Color? cardColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(31, 32, 31, 31).withOpacity(0.3),
            spreadRadius: 1.5,
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ], color: cardColor, borderRadius: BorderRadius.circular(35)),
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Material(
                          elevation: 0.5,
                          shape: const CircleBorder(),
                          color: Colors.white.withOpacity(0.1),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.black38.withOpacity(0.0),
                            child: Icon(
                              Icons.favorite_border_rounded,
                              color: iconcolor,
                              size: 25,
                            ),
                          ),
                        )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Joined May 2020',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 126, 125, 125),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 35,
              child: Container(
                color: Colors.transparent,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: CustomShape(),
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        '09',
                        style: TextStyle(
                            fontSize: 17,
                            color: iconcolor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Todd',
                        style: TextStyle(
                            fontSize: 17,
                            color: iconcolor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Material(
                          elevation: 0.5,
                          shape: const CircleBorder(),
                          color: Colors.white54.withOpacity(0.1),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.black38.withOpacity(0.0),
                            child: Icon(
                              Icons.arrow_outward_rounded,
                              color: iconcolor,
                              size: 25,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
