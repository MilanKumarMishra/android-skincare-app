import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'streaks_page.dart';
import '../widgets/bottom_nav_bar.dart';

class RoutinePage extends StatelessWidget {
  final List<Map<String, dynamic>> routineItems = [
    {
      "title": "Cleanser",
      "subtitle": "Cetaphil Gentle Skin Cleanser",
      "time": "8:00 PM"
    },
    {
      "title": "Toner",
      "subtitle": "Thayers Witch Hazel Toner",
      "time": "8:02 PM"
    },
    {
      "title": "Moisturizer",
      "subtitle": "Kiehl's Ultra Facial Cream",
      "time": "8:04 PM"
    },
    {
      "title": "Sunscreen",
      "subtitle": "Supergoop Unseen Sunscreen SPF 40",
      "time": "8:06 PM"
    },
    {
      "title": "Lip Balm",
      "subtitle": "Glossier Birthday Balm Dotcom",
      "time": "8:08 PM"
    },
  ];

  final Logger logger = Logger(); // Initialize logger instance

  RoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Skincare"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: routineItems.length,
        itemBuilder: (context, index) {
          final item = routineItems[index];
          return ListTile(
            leading: Icon(Icons.check_box, color: Colors.pinkAccent),
            title: Text(item['title'],
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item['subtitle']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.pinkAccent),
                  onPressed: () {
                    // Action for camera icon (e.g., open camera or camera page)
                    logger.i("${item['title']} camera icon tapped"); // Log info
                  },
                ),
                Text(item['time'], style: TextStyle(color: Colors.pinkAccent)),
              ],
            ),
            onTap: () {
              // Action when tapping on the ListTile, if needed
              logger.d("${item['title']} tapped"); // Log debug message
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
        onPageSelected: (index) {
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StreaksPage()));
          }
        },
      ),
    );
  }
}
