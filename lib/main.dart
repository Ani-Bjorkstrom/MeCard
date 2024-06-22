import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCardPage(),
    );
  }
}

class MyCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me Card'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/Ani_Björkström.jpg'), // Replace with your image path
                  ),
                ),
                // Title section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your Name', // Replace with your name
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Subtitle section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your Title', // Replace with your title
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Information section
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      InfoRow(
                        icon: Icons.email,
                        text: 'your.email@example.com', // Replace with your email
                      ),
                      InfoRow(
                        icon: Icons.phone,
                        text: '+123 456 7890', // Replace with your phone number
                      ),
                      InfoRow(
                        icon: Icons.location_city,
                        text: 'Your City, Country', // Replace with your location
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom widget for information row
class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
