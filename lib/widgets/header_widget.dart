import 'package:flutter/material.dart';

import 'package:quran/quran.dart';

class HeaderWidget extends StatelessWidget {
  var e;
  var jsonData;

  HeaderWidget({
    super.key,
    required this.e,
    required this.jsonData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/888-02.png",
              width: MediaQuery.of(context).size.width,
              height: 70,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.7, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "آياتها\n${getVerseCount(e["surah"])}",
                  style: const TextStyle(
                    fontSize: 11,
                    fontFamily: "UthmanicHafs13",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  getSurahNameArabic(e["surah"]),
                  style: const TextStyle(
                      fontFamily: "uthmanic",
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
                Text(
                  "ترتيبها\n${e["surah"]}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      fontFamily: "UthmanicHafs13"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}