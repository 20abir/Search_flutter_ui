import 'package:flutter/material.dart';

// NOt WORKING

class Search2File extends SearchDelegate {
  List<String> data = [
    "Tawhid",
    "Abir",
    "Lubnan",
    "Khadiza",
    "Khatun",
    "Jakia",
    "Mahrusha",
    "Sawdan",
    "Fahmid",
    "Shohel",
    "Miah"
  ];

  List<String> recentSearch = ["Tawhid", "Abir", "Shohel", "Miah"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No Result Found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  }
}
