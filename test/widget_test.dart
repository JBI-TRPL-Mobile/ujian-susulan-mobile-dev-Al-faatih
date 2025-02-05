// File: widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:template_project/login_screen.dart';

void main() {
  testWidgets('Login screen widgets render correctly', (WidgetTester tester) async {
    // Build the LoginScreen widget.
    await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );

    // Verify that the CircleAvatar is present.
    expect(find.byType(CircleAvatar), findsOneWidget);

    // Verify that there are two TextFields for email and password.
    expect(find.byType(TextField), findsNWidgets(2));

    // Verify that the ElevatedButton is present.
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Verify the presence of the "Forgot Password?" TextButton.
    expect(find.text("Forgot Password?"), findsOneWidget);
  });
}
