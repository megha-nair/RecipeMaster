import 'package:flutter/material.dart';
import 'add_recipe_page.dart'; // Adjust the path if necessary
import 'view_recipes_page.dart'; // Adjust the path if necessary
import 'home.dart'; // Ensure the correct path and filename
import 'favourites.dart'; // Ensure the correct path and filename
import 'existing_recipe.dart'; // Adjust the path if necessary
import 'objectbox.g.dart'; // Import the ObjectBox generated code



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize ObjectBox
  final store = await openStore(); // Ensure openStore() is a method to initialize ObjectBox

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store store;

  MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: HomePage(store: store), // Pass the store to HomePage
      routes: {
        '/home': (context) => HomePageContent(store: store,),
        '/page1': (context) => PastaPage(), // Ensure these page classes accept the store
        '/page2': (context) => PaneerPage(),
        '/page3': (context) => BiriyaniPage(),
        '/page4': (context) => PotatoPage(),
        '/page5': (context) => ThaiPage(),
        '/page6': (context) => SpringRollPage(),
        '/favorites': (context) => FavoritesPage(),
        '/addRecipe': (context) => AddYourRecipe(store: store),
        '/viewRecipes': (context) => ViewYourRecipe(store: store),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  final Store store;

  HomePage({Key? key, required this.store}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToHome() {
    Navigator.pushNamed(
      context,
      '/home',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpeg'), // Ensure this image exists
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay to lighten the image
          Container(
            color: Colors.white.withOpacity(0.5), // Adjust opacity here (0.0 to 1.0)
          ),
          // Content on top of the background and overlay
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Unlock the Secrets to Delicious Meals!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _navigateToHome,
                      child: Text('Secrets'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
