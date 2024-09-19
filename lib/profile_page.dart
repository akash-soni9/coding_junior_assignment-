import 'package:assignment_coding_junior/course_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Section
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30, // Adjust the radius as per your need
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.asset(
                            'images/student1.png',
                            fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                            width: 60, // Width and height should match the diameter (2 * radius)
                            height: 60,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Christiana Amandla',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Lets Learning to smart',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/search_icon.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Mathematics Course Section
                  Container(
                    height: 150, // Increased height
                    decoration: BoxDecoration(
                      color: const Color(0xFFB5E49E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  const Padding(
                      padding: EdgeInsets.all(24.0), // Increased padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mathematics Course',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18, // Increased font size
                            ),
                          ),
                          SizedBox(height: 12), // Increased spacing
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.check_circle, color: Colors.black),
                                    SizedBox(width: 4),
                                    Text(
                                      'Completed: 20',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.timer, color: Colors.black),
                                  SizedBox(width: 4),
                                  Text(
                                    'Hours Spent: 455',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Popular Courses Section
                  const SectionTitle(title: 'Popular Course'),
                  const SizedBox(height: 16),
                   Row(
                    children: [
                      // Wrap CourseCard in Flexible for responsiveness
                      Flexible(
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PhotoshopCoursePage()),
                          ),

                          child: const CourseCard(
                            title: 'Photoshop Editing Course',
                            iconPath: 'assets/photoshop_icon.svg',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8), // Add spacing between cards
                      Flexible(
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PhotoshopCoursePage()),
                          ),
                          child: const CourseCard(
                            title: 'Illustrator Editing Course',
                            iconPath: 'assets/illustrator_icon.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  const SectionTitle(title: 'Popular Course'),
                  const SizedBox(height: 16),
                  const CourseCard(
                    title: 'Adobe Xd Editing Course',
                    iconPath: 'assets/xd_icon.svg',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF007AFF),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home_icon.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/heart_icon.svg'),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/notification_icon.svg'),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/user_icon.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'View All',
          style: TextStyle(
            fontSize: 14,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String iconPath;

  const CourseCard({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(iconPath, height: 40),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 4),
                Text(
                  '4.8 (230)',
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  '30 Lessons',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
