import 'package:flutter/material.dart';
import 'package:stock_app_ui/components/line_chart.dart';

class StockScreen extends StatefulWidget {
  final IconData icon;
  final String stock;
  final String company;
  final String value;
  final String valueChange;
  final String priceDown;

  StockScreen({
    Key key,
    this.icon,
    this.stock,
    this.company,
    this.value,
    this.valueChange,
    this.priceDown,
  }) : super(key: key);

  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
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
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            widget.stock,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.company,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF34373d),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.0),
                Center(
                  child: Column(
                    children: [
                      Icon(
                        widget.icon,
                        size: 100.0,
                      ),
                      SizedBox(height: 50.0),
                      Text(
                        widget.valueChange,
                        style: TextStyle(
                          color: widget.priceDown == 'Down'
                              ? Colors.red
                              : Color(0xFF2db08d),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.value,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 80.0),
                      LineChartComponent(),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Container(
                            height: 35.0,
                            width: 35.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF34373d),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                '1D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1W',
                            style: TextStyle(
                              color: Color(0xFF424649),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1M',
                            style: TextStyle(
                              color: Color(0xFF424649),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '3M',
                            style: TextStyle(
                              color: Color(0xFF424649),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '6M',
                            style: TextStyle(
                              color: Color(0xFF424649),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xFF424649),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 100.0),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF2db08d),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 70.0,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Buy Stocks",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
