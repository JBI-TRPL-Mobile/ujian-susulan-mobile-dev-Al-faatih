// File: profile_screen.dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  ProfileScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("$username's Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[400],
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Username
              Center(
                child: Text(
                  username,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Bio Section
              Text(
                "Bio:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "This is a placeholder for the user's bio. You can display more details about the user here.",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 20),

              // Posts Section
              Text(
                "Posts:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // List of Posts
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5, // Example post count
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Post ${index + 1}: This is an example post by $username.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
