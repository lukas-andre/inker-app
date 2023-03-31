import 'package:flutter/material.dart';

class SearchArtistDelegate extends SearchDelegate {
  SearchArtistDelegate()
      : super(
          searchFieldLabel: 'Buscar...',
          // searchFieldStyle: TextStyleTheme.instance,
          textInputAction: TextInputAction.search,
          searchFieldDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('build results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text('suggestion 1'),
        ),
        ListTile(
          title: Text('suggestion 2'),
        ),
      ],
    );
  }
}
