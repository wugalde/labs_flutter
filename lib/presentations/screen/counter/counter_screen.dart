// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Hello Chapter')),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.favorite,
        //     color: Colors.pink,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.face_unlock_outlined,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.access_alarm,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clicks',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Click${clicks == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomBtn(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                setState(() {
                  clicks++;
                });
              }),
          const SizedBox(height: 5),
          CustomBtn(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clicks = 0;
                });
              }),
          const SizedBox(height: 5),
          CustomBtn(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clicks == 0) return;
                setState(() {
                  clicks--;
                });
              }),
        ],
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomBtn({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
