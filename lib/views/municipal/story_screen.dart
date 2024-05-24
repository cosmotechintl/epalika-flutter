import 'package:flutter/material.dart';
import '../../models/news.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  List<News> news = [
    News(
      title: "Flutter 2.10 Release",
      description:
      "Google announces the release of Flutter 2.10 with new features and improvements.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    News(
      title: "New Study on Climate Change",
      description:
      "A new study published on climate change reveals alarming statistics.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    News(
      title: "SpaceX Launches New Satellite",
      description:
      "SpaceX successfully launches a new satellite into orbit for communication purposes.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    News(
      title: "COVID-19 Vaccination Drive",
      description:
      "Governments worldwide announce a new phase of the COVID-19 vaccination drive.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    News(
      title: "Tech Company IPO",
      description:
      "A leading tech company announces its initial public offering (IPO) on the stock market.",
      imageUrl: "https://picsum.photos/200/300",
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 200.0,
      child: GestureDetector(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: news.length,
          controller: PageController(
            initialPage: currentIndex,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to story details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        StoryDetailScreen(news: news, index: index),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff2196f3)),

                      ),
                      child: Image.network(
                        news[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          news[index].title,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 10);
          },
        ),
      ),
    );
  }
}

class StoryDetailScreen extends StatefulWidget {
  final List<News> news;
  final int index;

  StoryDetailScreen({required this.news, required this.index});

  @override
  _StoryDetailScreenState createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              if (_pageController.page! > 0) {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            } else {
              if (_pageController.page! < widget.news.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            }
          },
          child: PageView.builder(
            itemCount: widget.news.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, int pageIndex) {
              final newsItem = widget.news[pageIndex];
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsItem.title,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Customize text color
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.network(
                      newsItem.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const CircularProgressIndicator(); // Show loading indicator
                      },
                    ),
                    const SizedBox(height: 3),
                    Text(
                      newsItem.description,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white, // Customize text color
                      ),
                    ),
                  ],
                ),
              );
            },
          )

      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
