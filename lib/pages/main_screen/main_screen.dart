import 'package:drugs_reminder/pages/home_screen/home_screen.dart';
import 'package:drugs_reminder/utils/constantas/sizes.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
  ];

  int currentPage = 0;

  changePage(int changedPage) {
    setState(() {
      currentPage = changedPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xffD9E0E8),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBottomNavBarItem("Garfik", Icons.auto_graph, 0),
            _buildBottomNavBarItem("Qo`shish", Icons.add_box_rounded, 1),
            _buildBottomNavBarItem("Dorilar", Icons.medication_liquid, 2),
          ],
        ),
      ),
      body: _pages[0],
    );
  }

  _buildBottomNavBarItem(final String name, final IconData icon, int index) {
    return Expanded(
      child: InkWell(
        radius: 30,
        onTap: () {
          changePage(index);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: currentPage == index ? Colors.black : Colors.grey,
            ),
            Hg(),
            Text(name,
                style: TextStyle(
                    color: currentPage == index ? Colors.black : Colors.grey))
          ],
        ),
      ),
    );
  }
}
