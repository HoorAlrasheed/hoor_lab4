import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7956D8),
        elevation: 0,
        toolbarHeight: 60,

        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 28,
        ),

        title: const Text(
          'Taskly',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 18),

            Row(
              children: [
                CategoryCard(
                  title: 'Work',
                  tasks: '12 tasks',
                  icon: Icons.assignment,
                  cardColor: const Color(0xFFEAF4FF),
                  iconColor: const Color(0xFF3498E8),
                ),

                const SizedBox(width: 10),

                CategoryCard(
                  title: 'Study',
                  tasks: '8 tasks',
                  icon: Icons.school,
                  cardColor: const Color(0xFFEEF8EC),
                  iconColor: const Color(0xFF72C83D),
                ),

                const SizedBox(width: 10),

                CategoryCard(
                  title: 'Personal',
                  tasks: '5 tasks',
                  icon: Icons.favorite,
                  cardColor: const Color(0xFFFFF0E5),
                  iconColor: const Color(0xFFF28A3B),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Custom Widget

class CategoryCard extends StatelessWidget {
  final String title;
  final String tasks;
  final IconData icon;
  final Color cardColor;
  final Color iconColor;

  const CategoryCard({
    super.key,
    required this.title,
    required this.tasks,
    required this.icon,
    required this.cardColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 135,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: iconColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 28,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              tasks,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}