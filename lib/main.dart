import 'package:flutter/material.dart';

import 'Organization/OrganizationHomePage.dart';

void main() {
  runApp(GenLinkApp());
}

class GenLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Bright and attractive color theme
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
          accentColor: Colors.amber,
        ),
        fontFamily: 'Georgia',
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  void navigateToHomePage(BuildContext context, String userType) {
    // Placeholder for navigation logic
    print("Navigate to the $userType homepage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GenLink'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Adjusted for upward positioning
          children: <Widget>[
            SizedBox(height: 50), // Provides top space for aesthetic balance
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/namaste.jpg',
                height: 180, // Adjust the size as needed
              ),
            ),
            SizedBox(height: 40), // Space between image and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrganizationHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                minimumSize: Size(200, 50), // Button size
              ),
              child: Text('Organization', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => navigateToHomePage(context, "Volunteer"),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                minimumSize: Size(200, 50), // Button size
              ),
              child: Text('Volunteer', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => navigateToHomePage(context, "Elder"),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                minimumSize: Size(200, 50), // Button size
              ),
              child: Text('Elder', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
