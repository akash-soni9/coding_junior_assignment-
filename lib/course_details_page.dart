import 'package:assignment_coding_junior/payment_success_page.dart';
import 'package:flutter/material.dart';

class PhotoshopCoursePage extends StatelessWidget {
  const PhotoshopCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Gradient background for the whole page
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF5F7FA), // Light grayish background
                Color(0xFFE2EBF0), // Slightly darker shade for depth
              ],
            ),
          ),
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // AppBar-like structure with Back and Notification buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.arrow_back, color: Colors.black),
                            IconButton(
                              icon: const Icon(Icons.notifications,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Container for both the "Our Student" section and course description
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white, // White background for the box
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Our Student',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // You can adjust the radius as per your need
                                    backgroundColor: Colors.transparent, // Optional: Set background color to transparent or another color
                                    child: ClipOval(
                                      child: Image.asset(
                                        'images/student1.png',
                                        fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                                        width: 60, // Width and height should match the diameter (2 * radius) of CircleAvatar
                                        height: 60,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 8),
                                  CircleAvatar(
                                    radius: 30, // You can adjust the radius as per your need
                                    backgroundColor: Colors.transparent, // Optional: Set background color to transparent or another color
                                    child: ClipOval(
                                      child: Image.asset(
                                        'images/student2.png',
                                        fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                                        width: 60, // Width and height should match the diameter (2 * radius) of CircleAvatar
                                        height: 60,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 8),
                                  CircleAvatar(
                                    radius: 30, // You can adjust the radius as per your need
                                    backgroundColor: Colors.transparent, // Optional: Set background color to transparent or another color
                                    child: ClipOval(
                                      child: Image.asset(
                                        'images/student3.png',
                                        fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                                        width: 60, // Width and height should match the diameter (2 * radius) of CircleAvatar
                                        height: 60,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 8),
                                  CircleAvatar(
                                    radius: 30, // You can adjust the radius as per your need
                                    backgroundColor: Colors.transparent, // Optional: Set background color to transparent or another color
                                    child: ClipOval(
                                      child: Image.asset(
                                        'images/student4.png',
                                        fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                                        width: 60, // Width and height should match the diameter (2 * radius) of CircleAvatar
                                        height: 60,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Photoshop Editing Course',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'A representation that can convey the three\n-dimensional aspect of a design through a two-\ndimensional medium.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Video Lesson Cards
                        _buildVideoLesson(context, 'Introduction', '3h 30min'),
                        _buildVideoLesson(context, 'Install Software', '1h 30min'),
                        _buildVideoLesson(context, 'Learn Tools', '2h 30min'),
                        _buildVideoLesson(context, 'Tracing Sketsa', '2h 30min'),
                        const SizedBox(height: 20),

                        // Centered Enroll Button
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: 42,
                             width: 42,
                             decoration: BoxDecoration(
                               color: const Color(0xFFB5E49E),
                               borderRadius: BorderRadius.circular(10),

                             ),
                             child: const Center(
                               child: Icon(
                                 Icons.bookmark_border_rounded,
                                 color: Colors.white,
                                 size: 25,
                               ),
                             ),
                           ),
                           const SizedBox(height: 0,width: 10,),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: const Color(0xFFB5E49E),
                               padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(10)),
                             ),
                             onPressed: () => Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const PaymentSuccessPage()),
                             ),
                             child: const Text(
                               'Enroll Now',
                               style:
                               TextStyle(fontSize: 18, color: Colors.black),
                             ),
                           ),
                         ],
                       )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVideoLesson(
      BuildContext context, String title, String duration) {
    return Card(
      color: Colors.white, // White background for video lesson card
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: const Icon(Icons.lock, color: Colors.grey),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(duration),
        trailing: _buildPlayButton(),
        // Icon(Icons.play_arrow),
      ),
    );
  }
}

Widget _buildPlayButton() {
  return OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.play_arrow,
      color: Colors.green,
    ),
    label: const Text(
      'Play Video',
      style: TextStyle(color: Colors.black),
    ),
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.grey),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
