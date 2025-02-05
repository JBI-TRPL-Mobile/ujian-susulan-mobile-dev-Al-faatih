// File: dashboard_screen.dart
import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Example item count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Username ${index + 1}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "This is the content of the post. Post ${index + 1}.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notifications",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("User Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "User Profile Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
