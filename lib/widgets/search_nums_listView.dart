import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart';
import 'package:quran_tutorial/views/quran_page_view.dart';

class SearchNumbersListView extends StatelessWidget {
  final List<int> pageNumbers;
  final void Function(int) onTap;

  SearchNumbersListView({required this.pageNumbers, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "الصفحات",
              style: TextStyle(fontSize: 20),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        ListView.separated(
          reverse: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: EasyContainer(
                onTap: () => onTap(index),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pageNumbers[index].toString(),
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'سورة ${getSurahName(
                          getPageData(pageNumbers[index])[0]["surah"],
                        )}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: Colors.grey.withOpacity(.5),
            ),
          ),
          itemCount: pageNumbers.length,
        ),
      ],
    );
  }
}
