import 'package:doctor_guide/view/screens/add_doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green[800],
            ),
            child: Text(
              'Doctor Guide',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
              ),
            ),
          ),
          ListTile(
            title: const Text('Add Doctor'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddDoctorScreen(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              // Login functionality
            },
          ),
        ],
      ),
    );
  }
}
