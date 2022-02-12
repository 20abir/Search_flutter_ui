import 'package:flutter/material.dart';
import 'package:practice2/ExtraFile/search_2_file.dart';

class Search2 extends StatelessWidget {
  const Search2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Search Here"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.search),
          onPressed: () =>
              showSearch(context: context, delegate: Search2File())),
    );
  }
}
