import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String time;
  final String text;

  const Posts({
    Key key,
    @required this.time,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF34373d),
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: double.infinity,
      height: 229.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/49295632?v=4',
                  ),
                ),
                // Spacer(),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Natasha Paulon',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF171b1b),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              text,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text(
                  '🔥 🤘 +5',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
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
