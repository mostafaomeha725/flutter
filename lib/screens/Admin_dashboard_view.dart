import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:volt/screens/EditStudentScreen.dart';
import 'package:volt/screens/widgets/DashbordDetailesAdminCardView.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Admin Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset('assets/back Icons.svg')),
          )
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('students')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final users = snapshot.data?.docs;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: users?.length ?? 0,
              itemBuilder: (context, index) {
                final user = users![index];
                DateTime createdAt = user['createdAt'].toDate();

                // Format the date
                String formattedDate =
                    DateFormat('MMM dd, yyyy, hh:mm a').format(createdAt);
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashbordDetailesAdminCardView(
                          name: user['name'],
                          phone: user['phone'],
                          //  description: user['description'],
                          createdAt: ' $formattedDate',
                          //    message: user['message'],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: Color(0xffffcd7a),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 4,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Text(
                        user['name'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditStudentScreen(
                                    studentId: user.id,
                                    name: user['name'],
                                    phone: user['phone'],
                                    // description: user['description'],
                                    // message: user['message'],
                                  ),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () async {
                              await FirebaseFirestore.instance
                                  .collection('students')
                                  .doc(user.id)
                                  .delete();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
