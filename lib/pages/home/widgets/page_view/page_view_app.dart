import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/cards/card_app.dart';
import 'package:nubank/pages/home/widgets/cards/first_card.dart';
import 'package:nubank/pages/home/widgets/cards/second_card.dart';
import 'package:nubank/pages/home/widgets/cards/third_card.dart';

class PageViewApp extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key? key,
      required this.top,
      required this.onChanged,
      required this.onPanUpdate,
      required this.showMenu})
      : super(key: key);

  @override
  State<PageViewApp> createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween = Tween<double>(begin: 150.0, end: 0.0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutExpo,
        builder: (context, value, child) {
          return AnimatedPositioned(
              duration: Duration(milliseconds: 250),
              curve: Curves.bounceInOut,
              top: widget.top,
              height: MediaQuery.of(context).size.height * .45,
              left: value,
              right: value * -1,
              child: GestureDetector(
                onPanUpdate: widget.onPanUpdate,
                child: PageView(
                  onPageChanged: widget.onChanged,
                  physics: widget.showMenu
                      ? NeverScrollableScrollPhysics()
                      : BouncingScrollPhysics(),
                  children: [
                    CardApp(
                      child: FirstCard(),
                    ),
                    CardApp(child: SecondCard()),
                    CardApp(child: ThirdCard())
                  ],
                ),
              ));
        });
  }
}
