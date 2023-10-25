import 'package:flutter/material.dart';

import '../../../widgets/searchbar.dart';
import 'ListViewSearchPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SearchBarApp(
                ontap: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
            Spacer(),
            ListViewSearch(),
          ],
        ),
      ),
    );
  }
}
