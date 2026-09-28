import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioDataPage(),
    );
  }
}

class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});

  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController sectionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();

  String displayedName = '';
  String displayedAge = '';
  String displayedBirthday = '';
  String displayedAddress = '';
  String displayedCourse = '';
  String displayedSection = '';
  String displayedEmail = '';
  String displayedPhone = '';
  String displayedSkills = '';

  void displayBioData() {
    setState(() {
      displayedName = nameController.text.trim();
      displayedAge = ageController.text.trim();
      displayedBirthday = birthdayController.text.trim();
      displayedAddress = addressController.text.trim();
      displayedCourse = courseController.text.trim();
      displayedSection = sectionController.text.trim();
      displayedEmail = emailController.text.trim();
      displayedPhone = phoneController.text.trim();
      displayedSkills = skillsController.text.trim();
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    birthdayController.dispose();
    addressController.dispose();
    courseController.dispose();
    sectionController.dispose();
    emailController.dispose();
    phoneController.dispose();
    skillsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Biodata'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Text(
              'BIODATA FORM',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // FIRST ROW
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: birthdayController,
                    decoration: const InputDecoration(
                      labelText: 'Birthday',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.cake),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // SECOND ROW
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.home),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: courseController,
                    decoration: const InputDecoration(
                      labelText: 'Course',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.school),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: sectionController,
                    decoration: const InputDecoration(
                      labelText: 'Section',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.group),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // THIRD ROW
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: skillsController,
                    decoration: const InputDecoration(
                      labelText: 'Skills',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: displayBioData,
              child: const Text('Display Biodata'),
            ),

            const SizedBox(height: 25),

            const Text(
              'BIODATA INFORMATION',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // OUTPUT FIRST ROW
            Row(
              children: [
                Expanded(
                  child: Text(
                    displayedName.isEmpty
                        ? 'Name: Empty'
                        : 'Name: $displayedName',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedAge.isEmpty ? 'Age: Empty' : 'Age: $displayedAge',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedBirthday.isEmpty
                        ? 'Birthday: Empty'
                        : 'Birthday: $displayedBirthday',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // OUTPUT SECOND ROW
            Row(
              children: [
                Expanded(
                  child: Text(
                    displayedAddress.isEmpty
                        ? 'Address: Empty'
                        : 'Address: $displayedAddress',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedCourse.isEmpty
                        ? 'Course: Empty'
                        : 'Course: $displayedCourse',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedSection.isEmpty
                        ? 'Section: Empty'
                        : 'Section: $displayedSection',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // OUTPUT THIRD ROW
            Row(
              children: [
                Expanded(
                  child: Text(
                    displayedEmail.isEmpty
                        ? 'Email: Empty'
                        : 'Email: $displayedEmail',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedPhone.isEmpty
                        ? 'Phone: Empty'
                        : 'Phone: $displayedPhone',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),

                Expanded(
                  child: Text(
                    displayedSkills.isEmpty
                        ? 'Skills: Empty'
                        : 'Skills: $displayedSkills',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
