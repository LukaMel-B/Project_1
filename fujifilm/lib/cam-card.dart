import 'package:flutter/material.dart';

class CamCard extends StatelessWidget {
  final Color Boxcolor;
  final String img;
  final String name;
  final String price;
  const CamCard(
      {Key? key,
      required this.Boxcolor,
      required this.img,
      required this.name,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Boxcolor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Container(
                  width: 139,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Limited Edition',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Instax',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                                letterSpacing: .7,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 26),
                          ),
                        ],
                      ),
                      Container(
                        height: 55,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Boxcolor.withOpacity(0.3))),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Buy',
                              style: TextStyle(
                                  color: Boxcolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  img,
                  height: 150,
                ),
              )
            ],
          )),
    );
  }
}
