import 'package:deafcantalk/custom_widgets/youtube_player.dart';
import 'package:deafcantalk/views/main/news_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(0, 153, 156, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/lg.png',
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              child: const YoutubePlayerView(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Category',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CategoryCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const NewsView()));
              },
              title: 'News',
              cardColor: const Color.fromRGBO(0, 54, 79, 1),
              icon: Icons.book_outlined,
            ),
            const CategoryCard(
                onTap: null,
                title: 'Sports',
                cardColor: Color.fromRGBO(233, 0, 50, 1),
                icon: Icons.sports_hockey_outlined),
            const CategoryCard(
              onTap: null,
              title: 'Religion',
              cardColor: Color.fromARGB(255, 55, 178, 235),
              icon: Icons.menu_book_outlined,
            ),
            const CategoryCard(
              onTap: null,
              title: 'Business',
              cardColor: Color.fromRGBO(79, 89, 12, 1),
              icon: Icons.money_outlined,
            ),
            const CategoryCard(
                onTap: null,
                title: 'Education',
                cardColor: Color.fromRGBO(86, 0, 61, 1),
                icon: Icons.school_outlined),
          ],
        ),
      ),
    ));
  }
}

class CategoryCard extends StatelessWidget {
  final String? title;
  final Color? cardColor;
  final IconData? icon;
  final void Function()? onTap;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.cardColor,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.92,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                title.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
