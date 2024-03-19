import 'package:flutter/material.dart';
import 'package:learn_flutter/drawer.dart';
import 'package:learn_flutter/note.dart';

class Dashboard extends StatelessWidget {
  // Hardcoded note data
  List<Map<String, String>> noteData = [
    {
      'title': 'Note 1',
      'body': 'This is the first note',
    },
    {
      'title': 'Note 2',
      'body': 'This is the second note',
    },
    {
      'title': 'Note 3',
      'body': 'This is the third note',
    },
    // Add more notes as needed
  ];

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700], // Change the background color to yellow
        elevation: 0,
        title: const Center( // Center the search bar
          child: Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: Colors.white, // Change the icon color to white
              ),
              SizedBox(width: 8),
              Text(
                'Google Keep',
                style: TextStyle(
                  color: Colors.white, // Change the text color to white
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white, // Change the icon color to white
            ),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      drawer: DashboardDrawer(),
      body: GridView.builder(
        itemCount: noteData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return NoteCard(
            title: noteData[index]['title']!,
            body: noteData[index]['body']!,
            color: Colors.yellow, // Change the note card color to light yellow
            labels: const ['Label 1', 'Label 2'],
          );
        },
      ),
    );
  }
}
