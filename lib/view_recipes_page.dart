import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'User.dart'; // Ensure this file exists and contains the Rec class

class ViewYourRecipe extends StatefulWidget {
  final Store store;

  ViewYourRecipe({Key? key, required this.store}) : super(key: key);

  @override
  _ViewYourRecipeState createState() => _ViewYourRecipeState();
}

class _ViewYourRecipeState extends State<ViewYourRecipe> {
  List<Rec> _recipes = [];

  @override
  void initState() {
    super.initState();
    _fetchRecipes();
  }

  void _fetchRecipes() async {
    try {
      final recipeBox = widget.store.box<Rec>();
      final recipes = recipeBox.getAll();

      setState(() {
        _recipes = recipes;
      });

      // Print to console to check
      recipes.forEach((recipe) {
        print('Recipe: ${recipe.name}, Ingredients: ${recipe.ingredient}, Instructions: ${recipe.instruction}');
      });
    } catch (e) {
      print('Error fetching recipes: $e');
    }
  }

  Future<void> _deleteRecipe(int id) async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this recipe?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Delete'),
            ),
          ],
        );
      },
    );

    if (shouldDelete == true) {
      try {
        final recipeBox = widget.store.box<Rec>();
        recipeBox.remove(id);

        // Refresh the list after deletion
        _fetchRecipes();
      } catch (e) {
        print('Error deleting recipe: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Recipes'),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          final recipe = _recipes[index];
          return ListTile(
            title: Text(recipe.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Ingredients: ${recipe.ingredient}'),
                SizedBox(height: 4),
                Text('Instructions: ${recipe.instruction}'),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                _deleteRecipe(recipe.id); // Call the delete function
              },
            ),
            onTap: () {
              // Show details or navigate to a detailed view page
            },
          );
        },
      ),
    );
  }
}
