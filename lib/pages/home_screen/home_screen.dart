import 'package:drugs_reminder/utils/constantas/sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const CircleAvatar(),
            Wd(),
            const Text(
              "Madaliyev Hikmatulloh",
              style: TextStyle(),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFD5E9A4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bugun, 28 Iyul",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: generateWeekDays(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffE7F0F7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Hg(),
                    const Row(
                      children: [
                        Text("Dorilar ro'yxati", style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(8.0),
                        children: const [
                          MedicationItem(
                            time: '8:00',
                            name: 'Нимесил',
                            details: '2 таблетка, овқатдан кейин',
                          ),
                          MedicationItem(
                            time: '13:00',
                            name: 'Цетрин',
                            details: '1 таблетка, овқатдан олдин',
                          ),
                          MedicationItem(
                            time: '13:10',
                            name: 'Парацетамол',
                            details: '1 таблетка, овқат пайтида',
                          ),
                          MedicationItem(
                            time: '18:00',
                            name: 'Омега 3',
                            details: '2 капсула, овқатдан кейин',
                          ),
                          MedicationItem(
                            time: '18:10',
                            name: 'Аспирин',
                            details: '1 таблетка, овқатдан олдин',
                          ),
                          MedicationItem(
                            time: '18:15',
                            name: 'Цетрин',
                            details: '1 таблетка, овқат пайтида',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int selectedItem = 0;
  List<Widget> generateWeekDays() {
    List<Widget> weekDays = [];
    DateTime now = DateTime.now();
    DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    for (int i = 0; i < 7; i++) {
      DateTime currentDay = startOfWeek.add(Duration(days: i));
      String dayName = DateFormat('EE').format(currentDay);
      String dayNumber = DateFormat('d').format(currentDay);

      weekDays.add(
        _weekDayWidget(
          dayName,
          dayNumber,
          currentDay.day == now.day ? Colors.black : Colors.transparent,
        ),
      );
    }
    return weekDays;
  }
}

Widget _weekDayWidget(
  String dayName,
  String date,
  Color color,
) {
  return InkWell(
     child: Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          22,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dayName),
          const Divider(),
          Text(date),
        ],
      ),
    ),
  );
}

class MedicationItem extends StatelessWidget {
  final String time;
  final String name;
  final String details;

  const MedicationItem(
      {super.key,
      required this.time,
      required this.name,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text(details),
        trailing: Text(time),
      ),
    );
  }
}
