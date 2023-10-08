import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleIntroPage extends StatefulWidget {
  const ExampleIntroPage({super.key});

  @override
  State<ExampleIntroPage> createState() => _ExampleIntroPageState();
}

class _ExampleIntroPageState extends State<ExampleIntroPage> {
  late PageController _pageController;
  late List<Widget> slideList;
  late int initialPage;
  int initialIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 2);
    initialPage = _pageController.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GFIntroScreen(
        color: Colors.blueGrey,
        slides: slides(),
        pageController: _pageController,
        currentIndex: initialIndex,
        pageCount: slideList.length,
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
          pageController: _pageController,
          pageCount: slideList.length,
          backButtonText: '',
          forwardButtonText: '',
          skipButtonText: '',
          doneButtonText: '',
          currentIndex: initialPage,
          navigationBarColor: Colors.white,
          showDivider: false,
          activeColor: GFColors.SUCCESS,
          inactiveColor: GFColors.LIGHT,
          dotHeight: 8,
        ),
      ),
    );
  }

  List<Widget> slides() {
    slideList = [
      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        color: Colors.orange,
        image: Image.network(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')
            .image,
        boxFit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: Image.network(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')
                  .image,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: Image.network(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')
                  .image,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: Image.network(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')
                  .image,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return slideList;
  }
}
