import 'package:flutter/material.dart';
import 'package:stock_app_ui/components/posts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171b1b),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF34373d),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/49295632?v=4',
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Natasha Paulon',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        '@natashagp',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '24',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                                Text(
                                  'Post',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '12k',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '6',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                Row(
                  children: [
                    Text(
                      'Posts',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Sorting',
                      style: TextStyle(
                        color: Color(0xFF2db08d),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Posts(
                  time: '20 min ago',
                  text:
                      'All time high. There is nothing to prevent his resistance. Fundamentals do not doubt if for the long term.',
                ),
                SizedBox(height: 20.0),
                Posts(
                  time: '30 min ago',
                  text:
                      'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...',
                ),
                SizedBox(height: 20.0),
                Posts(
                  time: '1 hour ago',
                  text:
                      'Divide air light. Years subdue in. Us above, and seed great. Place life fourth were together Bring darkness you fly.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
