import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 1019,
          child: GridView.count(
              mainAxisSpacing: 36,
              crossAxisSpacing: 20,
              crossAxisCount: 3,
              childAspectRatio: 326 / 527,
              children: List.generate(
                  21,
                  (i) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFF9F9F9)),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    i % 2 == 0
                                        ? "assets/svg/Heart, Favorite.svg"
                                        : 'assets/svg/Path.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/photo_2024-07-23_19-34-23.jpg",
                                  width: 326,
                                  height: 326,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      "Apple Iphone 15 Pro Max ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      "Qora titanium ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "17 568 000 ",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.blue, // text color
                                        backgroundColor:
                                            Colors.white, // background color
                                        side: const BorderSide(
                                          color: Colors.blue,
                                          width: 1.2,
                                        ),
                                      ),
                                      child: const Text(
                                        "  Savatga  ",
                                        selectionColor: Colors.blue,
                                      ),
                                      onPressed: () {},
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.white, // text color
                                        backgroundColor:
                                            Colors.blue, // background color
                                      ),
                                      child: const Text(
                                        " Xarid qilish",
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ))),
        ),
      ),
    );
  }
}
