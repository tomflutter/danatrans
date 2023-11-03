import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:danatrans/utils/button.dart';
import 'package:danatrans/utils/card.dart';
import 'package:danatrans/utils/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//page controller
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          //app bar
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Kartu",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Dana",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),

                  //plus button
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //cards
            Container(
              height: 200,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 200000,
                    cardNumber: 12345678,
                    expiredMonth: 10,
                    expiredYear: 24,
                    color: Colors.blue[300],
                    cardType: 'assets/visa.png',
                  ),
                  MyCard(
                    balance: 3462.76,
                    cardNumber: 41435211,
                    expiredMonth: 12,
                    expiredYear: 30,
                    color: Colors.red[300],
                    cardType: 'assets/mastercard.png',
                  ),
                  MyCard(
                    balance: 54032.43,
                    cardNumber: 456874464,
                    expiredMonth: 02,
                    expiredYear: 25,
                    color: Colors.deepPurple[300],
                    cardType: 'assets/visa.png',
                  ),
                  MyCard(
                    balance: 245.89,
                    cardNumber: 24523432,
                    expiredMonth: 08,
                    expiredYear: 28,
                    color: Colors.green[300],
                    cardType: 'assets/mastercard.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 35),

            //button -> send, pay, bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconPath: "assets/sendmoney.png",
                    textButton: "Kirim",
                  ),
                  MyButton(
                    iconPath: "assets/card.png",
                    textButton: "Pembayaran",
                  ),
                  MyButton(
                    iconPath: "assets/bill.png",
                    textButton: "Kredit",
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.0),

            //column -> stats, transaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconPath: "assets/statistics.png",
                    title: "Analisa",
                    subTitle: "Analisa Keuangan",
                  ),
                  MyListTile(
                    iconPath: "assets/transaction.png",
                    title: "Pengeluaran",
                    subTitle: "Pengeluaran Keuangan",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 226, 226, 226),
        animationDuration: Duration(milliseconds: 300),
        color: Colors.blue,
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 34,
          ),
          Icon(
            Icons.menu_book_outlined,
            color: Colors.white,
            size: 34,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 34,
          ),
        ],
      ),
    );
  }
}
