import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField(
      {required this.filterdData,
      required this.suraJsonData,
      required this.pageNumbers,
      required this.ayaFiltered,
      required this.SearchSurahController,
      required this.onChanged});

  var filterdData;
  var suraJsonData;
  List<int> pageNumbers;
  var ayaFiltered;
  var SearchSurahController;
  void Function(String)? onChanged;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    var searchQuery = "";

    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 50,
        child: TextField(
          textDirection: TextDirection.rtl,
          controller: widget.SearchSurahController,
          onChanged: widget.onChanged,
          cursorColor: Colors.black,
          style: const TextStyle(color: Color.fromARGB(190, 0, 0, 0)),
          decoration: const InputDecoration(
            hintText: ' ابحث عن سورة أو صفحة أو آية',
            hintTextDirection: TextDirection.rtl,
            focusColor: Colors.red,
            hintStyle: TextStyle(),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.black),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
