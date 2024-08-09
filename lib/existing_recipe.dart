import 'package:flutter/material.dart';

class PastaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/pasta.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pasta Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class PaneerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/paneer.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Paneer Tikka Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class BiriyaniPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/biriyani.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Biriyani Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PotatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/honey.webp',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Honey Chilli Potato Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThaiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/thaifriedrice.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Thai Fried Rice Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpringRollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Pasta Recipe'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Pops the current page off the navigation stack
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/springroll.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // White container with recipe
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Adjust opacity here
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Spring Roll Recipe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '- 200g pasta\n- 2 tablespoons olive oil\n- 1 garlic clove, minced\n- 400g tomatoes, chopped\n- Salt and pepper to taste\n- Fresh basil leaves\n- Grated Parmesan cheese',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '1. Boil a large pot of salted water and cook the pasta according to the package instructions.\n'
                        '2. Heat olive oil in a pan over medium heat. Add minced garlic and cook until fragrant.\n'
                        '3. Add chopped tomatoes to the pan and cook for about 10 minutes until they break down.\n'
                        '4. Season with salt and pepper.\n'
                        '5. Toss the cooked pasta with the tomato sauce.\n'
                        '6. Garnish with fresh basil leaves and grated Parmesan cheese.\n'
                        '7. Serve hot.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
