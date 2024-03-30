import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final String imagePath;
  final VoidCallback onPress;
  const MyListTile({
    super.key,
    required this.title,
    required this.description,
    required this.link,
    required this.imagePath,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: ListTile(
        leading: SizedBox(
          height: 200,
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 20,
          ),
        ),
        title: Text(style: const TextStyle(fontSize: 20), title),
        subtitle: Column(
          children: [
            Row(
              children: [
                Text(style: const TextStyle(fontSize: 12), description),
              ],
            ),
            Row(
              children: [
                Text(style: const TextStyle(color: Color(0xffa19fa4)), link)
              ],
            )
          ],
        ),
      ),
    );
  }
}
