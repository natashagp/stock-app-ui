import 'package:flutter/material.dart';
import 'package:stock_app_ui/components/chart.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:stock_app_ui/screens/profile_screen.dart';
import 'package:stock_app_ui/screens/stock_screen.dart';

List<IconData> icons = [
  BrandIcons.amd,
  BrandIcons.amazon,
  BrandIcons.apple,
  BrandIcons.facebook,
  BrandIcons.netflix
];

List<String> stocks = ['AMD', 'AMZN', 'AAPL', 'FB', 'NFLX'];

List<String> company = ['AMD', 'Amazon', 'Apple', 'Facebook', 'Netflix'];

List<String> value = [
  '\$ 75.41',
  '\$ 3057.07',
  '\$ 119.92',
  '\$ 290.50',
  '\$ 510.10'
];

List<String> valueChange = ['-2.42%', '+0.59%', '-1.14%', '+1.21%', '+1.01%'];

List<String> priceDown = ['Down', 'Up', 'Down', 'Up', 'Up'];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  child: Row(
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF34373d),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          size: 25.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Natasha Paulon',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/49295632?v=4',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF34373d),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: double.infinity,
                  height: 380.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Porfolio',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Text(
                          '\$ 24.265',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              size: 15.0,
                              color: Color(0xFF2db08d),
                            ),
                            Text(
                              ' 10.24 (2.54%)',
                              style: TextStyle(
                                color: Color(0xFF2db08d),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Divider(
                          color: Color(0xFFa0a1a1),
                        ),
                        SizedBox(height: 20.0),
                        Chart(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                Text(
                  'Stocks',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 220.0,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: stocks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StockScreen(
                                stock: stocks[index],
                                company: company[index],
                                icon: icons[index],
                                valueChange: valueChange[index],
                                value: value[index],
                                priceDown: priceDown[index],
                              ),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF34373d),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Icon(icons[index]),
                          ),
                          title: Text(
                            stocks[index],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            company[index],
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                value[index],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                valueChange[index],
                                style: TextStyle(
                                  color: priceDown[index] == 'Down'
                                      ? Colors.red
                                      : Color(0xFF2db08d),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
