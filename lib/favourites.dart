import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favorites = ModalRoute.of(context)!.settings.arguments as List<Map<String, String>>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return ListTile(
            title: Text(item['text']!),
            onTap: () {
              Navigator.pushNamed(context, item['route']!);
            },
          );
        },
      ),
    );
  }
}
