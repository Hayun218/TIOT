import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

BottomAppBar appBar(BuildContext context) {
  return BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // TODO: modify
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/dashboard'),
          icon: Icon(Icons.home_outlined),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/home'),
          icon: Icon(Icons.fact_check_outlined),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/home'),
          icon: Icon(Icons.note_alt_outlined),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/home'),
          icon: Icon(Icons.calendar_today_outlined),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/home'),
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    ),
  );
}

var today = DateTime.now();
String todayDate = DateFormat('yyyy년 MM월 d일').format(DateTime.now());

class BadgedPage extends StatefulWidget {
  const BadgedPage({Key? key}) : super(key: key);

  @override
  State<BadgedPage> createState() => _BadgedPageState();
}

class _BadgedPageState extends State<BadgedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: Center(
              child: Text(
                todayDate + "\n Badge Page",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
