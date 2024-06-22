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
                    radius: 100.0,
                    backgroundImage: AssetImage('assets/Ani_Björkström.jpg'),
                  ),
                ),
                // Title section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ani Björkström',
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
                    'Lead Full-Stack Developer', // Replace with your title
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
                        text: 'ani.bjorkstrom@gmail.com',
                      ),
                      InfoRow(
                        icon: Icons.phone,
                        text: '+46 72 454 39 37', // Replace with your phone number
                      ),
                      InfoRow(
                        icon: Icons.location_city,
                        text: 'Stockholm, Sweden',
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
