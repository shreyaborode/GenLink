import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {'type': 'New Volunteer', 'details': '3 new volunteers have joined your event.'},
    {'type': 'Feedback', 'details': 'You got a new feedback on your recent event.'},
    {'type': 'Inquiry', 'details': 'There is a new inquiry about the upcoming event.'},
    {'type': 'Payment', 'details': 'Received payment of Rupees 7000 for the event.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Colors.deepPurple), // Customize icon color
              title: Text(notifications[index]['type'], style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(notifications[index]['details']),
              trailing: Icon(Icons.chevron_right, color: Colors.deepPurple), // Customize icon color
            ),
          );
        },
      ),
    );
  }
}
