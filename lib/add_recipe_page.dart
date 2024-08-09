import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'User.dart'; // Adjust the path if necessary

class AddYourRecipe extends StatefulWidget {
  final Store store;

  AddYourRecipe({Key? key, required this.store}) : super(key: key);

  @override
  _AddYourRecipeState createState() => _AddYourRecipeState();
}

class _AddYourRecipeState extends State<AddYourRecipe> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ingredientController = TextEditingController();
  final _instructionController = TextEditingController();

  void _saveRecipe() {
    if (_formKey.currentState!.validate()) {
      final recipe = Rec(
        name: _nameController.text,
        ingredient: _ingredientController.text,
        instruction: _instructionController.text,
      );

      try {
        final recipeBox = widget.store.box<Rec>();
        recipeBox.put(recipe);
        Navigator.pop(context);
      } catch (e) {
        // Handle error (e.g., show an error message)
        print('Error saving recipe: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Recipe Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the recipe name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _ingredientController,
                decoration: InputDecoration(labelText: 'Ingredients'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the ingredients';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _instructionController,
                decoration: InputDecoration(labelText: 'Instructions'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the instructions';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveRecipe,
                child: Text('Save Recipe'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, // Correct color parameter
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
