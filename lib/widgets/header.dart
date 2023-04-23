import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';
import '../models/student_provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        leading: SvgPicture.asset(
          "assets/icons/grad_cap.png",
          height: 70.0,
        ),
        title: const Text(
          'My College',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        trailing: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage('${Provider.of<Student>(context).pic}'),
          //fit: BoxFit.contain
        ),
      ),
    );
  }
}
