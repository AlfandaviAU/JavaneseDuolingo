import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/language_search_singular.dart';
import 'package:javanese_duolingo/components/class/flag.dart';

import '../components/widgets/button_with_no.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<String> languagePaths = [
    'jawa.png',
    'id.png',
    'en.png',
    'cy.png',
    'ar.png',
    'tr.png',
    'Yiddish.png',
    'vi.png',
    'nl.png',
    'zh.png',
    'sw.png',
    'pl.png',
    'el.png',
    'gd.png',
    'sv.png',
    'ja.png',
    'hi.png',
    'eo.png',
    'ru.png',
    'ga.png',
    'fr.png',
    'ko.png',
    'es.png',
    'fi.png',
    'da.png',
    'hu.png',
    'kl.png',
    'gn.png',
    'hv.png',
    'ha.png',
    'ro.png',
    'he.png',
    'de.png',
    'it.png',
    'nw.png',
    'nv.png',
    'uk.png',
    'cs.png',
    'th.png',
    'br.png',
    'ca.png'
  ];

  List<String> languageNames = [
    'Bahasa Jawa',
    'Indonesian',
    'Bahasa Inggris',
    'Welsh',
    'Arabic',
    'Turkish',
    'Yiddish',
    'Vietnamese',
    'Dutch',
    'Chinese',
    'Swahili',
    'Polish',
    'Greek',
    'Scottish Gaelic',
    'Swedish',
    'Japanese',
    'Hindi',
    'Esperanto',
    'Russian',
    'Irish',
    'French',
    'Korean',
    'Spanish',
    'Finnish',
    'Danish',
    'Hungarian',
    'Greenlandic',
    'Guarani',
    'Northern Khmer',
    'Hausa',
    'Romanian',
    'Hebrew',
    'German',
    'Italian',
    'Norwegian',
    'Navajo',
    'Ukrainian',
    'Czech',
    'Thai',
    'Breton',
    'Catalan'
  ];

  @override
  void initState() {
    super.initState();
    _generateFlagCollection();
  }

  void _generateFlagCollection() {
    for (int i = 0; i < languagePaths.length; i++) {
      if (i < languageNames.length) {
        flagCollection.add(
          Flag(
            name: languageNames[i],
            path: 'assets/flag/${languagePaths[i]}',
          ),
        );
        filteredFlagCollection.add(
          Flag(
            name: languageNames[i],
            path: 'assets/flag/${languagePaths[i]}',
          ),
        );
      }
    }
  }

  List<Flag> flagCollection = [];
  List<Flag> filteredFlagCollection = [];

  void _filterLanguage(String searchTerm) {
    setState(() {
      if (searchTerm.isEmpty) {
        filteredFlagCollection = List.from(flagCollection);
      } else {
        filteredFlagCollection = flagCollection
            .where((flag) =>
                flag.name.toLowerCase().contains(searchTerm.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Courses",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 19.258,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Konstanta.BACKGROUND_COLOR,
        elevation: 0,
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    TextField(
                      style: const TextStyle(
                        fontFamily: "DIN Regular",
                        color: Colors.white,
                        fontSize: 19.258,
                      ),
                      onChanged: (value) {
                        _filterLanguage(value);
                      },
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Konstanta.DIVIDER,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search for Languages",
                          hintStyle: const TextStyle(
                            fontFamily: "DIN Regular",
                            color: Color(0xff54636B),
                            fontSize: 19.258,
                          ),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Konstanta.MAGNIFIER),
                    ),
                    const SizedBox(
                      height: 16.13,
                    ),
                    const Divider(
                      thickness: 3,
                      color: Konstanta.DIVIDER,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height -
                        256, // Adjust the height constraint as needed
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Konstanta.DIVIDER, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: filteredFlagCollection.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    LanguageSearchSingular(
                                      name: filteredFlagCollection[index].name,
                                      path: filteredFlagCollection[index].path,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 118,
                width: 428,
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    color: Konstanta.BACKGROUND_COLOR,
                    border: Border(
                      top: BorderSide(
                        color: Konstanta.DIVIDER, // Customize the border color
                        width: 3.0, // Adjust the border width as needed
                      ),
                    )),
                padding: const EdgeInsets.fromLTRB(
                    0, 37, 0, 0), // Add margin as needed
                child: Button(
                  text1: "CONTINUE",
                  path: "/",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
