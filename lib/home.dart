import 'package:flutter/material.dart';
import 'add_recipe_page.dart'; // Ensure this path is correct
import 'view_recipes_page.dart'; // Ensure this path is correct
import 'favourites.dart'; // Ensure this file exists if used
import 'package:objectbox/objectbox.dart'; // Import ObjectBox


class HomePageContent extends StatefulWidget {
  final Store store; // Add this line to accept store

  HomePageContent({Key? key, required this.store}) : super(key: key);

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final List<Map<String, String>> items = [
    {'image': 'assets/pasta.jpeg', 'text': 'Pasta', 'route': '/page1'},
    {'image': 'assets/paneer.jpeg', 'text': 'Paneer Tikka', 'route': '/page2'},
    {'image': 'assets/biriyani.jpeg', 'text': 'Biriyani', 'route': '/page3'},
    {'image': 'assets/honey.webp', 'text': 'Honey Chilli Potato', 'route': '/page4'},
    {'image': 'assets/thaifriedrice.jpeg', 'text': 'Thai Fried Rice', 'route': '/page5'},
    {'image': 'assets/springroll.jpeg', 'text': 'Spring Roll', 'route': '/page6'},
  ];

  Set<Map<String, String>> favorites = {};

  void _toggleFavorite(String route, String text) {
    setState(() {
      if (favorites.any((item) => item['route'] == route)) {
        favorites.removeWhere((item) => item['route'] == route);
      } else {
        favorites.add({'route': route, 'text': text});
      }
    });
  }

  void _navigateToPage(String route) {
    Navigator.pushNamed(context, route);
  }

  void _navigateToFavorites() {
    Navigator.pushNamed(
      context,
      '/favorites',
      arguments: favorites.toList(),
    );
  }

  void _navigateToAddRecipe() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddYourRecipe(store: widget.store), // Pass store here
      ),
    );
  }

  void _navigateToViewRecipes() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewYourRecipe(store: widget.store), // Pass store here
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: _navigateToFavorites,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: 250,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 5, color: Colors.black38),
                  image: DecorationImage(
                    image: AssetImage('assets/pizza.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),

          // Buttons in a Row with brown background and white text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: _navigateToAddRecipe,
                    child: Text('Add your recipes'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown, // Background color
                      foregroundColor: Colors.white, // Text color
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _navigateToViewRecipes,
                    child: Text('View your recipes'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown, // Background color
                      foregroundColor: Colors.white, // Text color
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),
          Text(
            'All Recipes',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              padding: EdgeInsets.all(10.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isFavorite = favorites.any((fav) => fav['route'] == item['route']);
                return GestureDetector(
                  onTap: () => _navigateToPage(item['route']!),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(width: 1, color: Colors.black12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 114,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(item['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  item['text']!,
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.black,
                                ),
                                onPressed: () => _toggleFavorite(item['route']!, item['text']!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
