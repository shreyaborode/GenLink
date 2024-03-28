import 'package:flutter/material.dart';

import 'OrgCreateEventPage.dart';
import 'OrgDashboardPage.dart';
import 'OrgManageVolunteersPage.dart';
import 'OrgNotificationsPage.dart';
import 'OrgViewFeedbackPage.dart';

void main() {
  runApp(MaterialApp(home: OrganizationHomePage()));
}

class OrganizationHomePage extends StatefulWidget {
  @override
  _OrganizationHomePageState createState() => _OrganizationHomePageState();
}

class _OrganizationHomePageState extends State<OrganizationHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardPage(),
    CreateEventForm(),
    ManageVolunteersPage(),
    NotificationsPage(),
    ViewFeedbackPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GenLink'),
        backgroundColor: Colors.teal,
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Organization Name'), // Customize with your organization name
              accountEmail: Text('contact@example.com'), // Customize with your contact email
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'), // Ensure you have this asset in your project
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              leading: Icon(Icons.group_add),
              title: Text('New Volunteers'),
              onTap: () {
                // Navigate to New Volunteers Page
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                // Navigate to Feedback Page
              },
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Updates'),
              onTap: () {
                // Navigate to Updates Page
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text('Analytics'),
              onTap: () {
                // Navigate to Analytics Page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings Page
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help & Support'),
              onTap: () {
                // Navigate to Help & Support Page
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Handle Logout
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Create Event'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Manage Volunteers'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: 'View Feedback'),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}



