import 'package:flutter/material.dart';
import '../widgets/line_chart.dart';
import '../widgets/bottom_nav_bar.dart';

class StreaksPage extends StatelessWidget {
  const StreaksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Streaks"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today's Goal: 3 streak days",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.pink[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Streak Days",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("2", style: TextStyle(fontSize: 24)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Daily Streak",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("2", style: TextStyle(fontSize: 24)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Last 30 Days +100%",
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 8),
            Expanded(child: LineChartWidget()),
            SizedBox(height: 16),
            Center(
              child: Text(
                "Keep it up! You're on a roll.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Define the action for the "Get Started" button here
                  Navigator.pushNamed(context, '/routine'); // Example route
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
        onPageSelected: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
