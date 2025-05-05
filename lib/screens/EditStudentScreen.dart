import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:volt/screens/widgets/Custom_Textfield.dart';

class EditStudentScreen extends StatefulWidget {
  final String studentId;
  final String name;
  final String phone;
  // final String description;
  //final String message;

  const EditStudentScreen({
    Key? key,
    required this.studentId,
    required this.name,
    required this.phone,
    // required this.description,
    //required this.message,
  }) : super(key: key);

  @override
  _EditStudentScreenState createState() => _EditStudentScreenState();
}

class _EditStudentScreenState extends State<EditStudentScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.name;
    _phoneController.text = widget.phone;
    //  _descriptionController.text = widget.description;
    // _messageController.text = widget.message;
  }

  Future<void> _updateStudent() async {
    await FirebaseFirestore.instance
        .collection('students')
        .doc(widget.studentId)
        .update({
      'name': _nameController.text,
      'phone': _phoneController.text,
      'description': _descriptionController.text,
      'message': _messageController.text,
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Student',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "Name",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5775d8)),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            CustomTextField(controller: _nameController),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "Family Phone",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5775d8)),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            CustomTextField(controller: _phoneController),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _updateStudent,
                child: Text('Update'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
