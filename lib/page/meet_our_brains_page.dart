import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:meet_our_brains/widgets/appbar.dart';
import 'package:meet_our_brains/widgets/bottom_appbar.dart';
import 'package:meet_our_brains/widgets/card_widget.dart';
import 'package:meet_our_brains/widgets/swipe_text.dart';

class MeetOurBrainsPage extends StatefulWidget {
  const MeetOurBrainsPage({super.key});

  @override
  State<MeetOurBrainsPage> createState() => _MeetOurBrainsPageState();
}

class _MeetOurBrainsPageState extends State<MeetOurBrainsPage> {
  final List<String> _cards =
      List.generate(10, (index) => "Card #${index + 1}");
  void _loadMoreCards() {
    setState(() {
      _cards.addAll(
          List.generate(5, (index) => "Card #${_cards.length + index + 1}"));
    });
  }

  Gradient _backgroundGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF2E2F33),
      Color.fromARGB(255, 37, 43, 14),
    ],
  );
  Color _iconColor = Colors.white;
  Color _cardColor = const Color.fromARGB(255, 44, 44, 44);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(gradient: _backgroundGradient),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: MyAppbar(
                  iconBg: _cardColor,
                  iconcolor: _iconColor,
                )),
            Expanded(
                flex: 70,
                child: CardSwiper(
                  onSwipe: (previousIndex, currentIndex, direction) {
                    return _onSwipe(previousIndex, currentIndex, direction);
                  },
                  cardBuilder: (context, index, horizontalOffsetPercentage,
                          verticalOffsetPercentage) =>
                      CardWidget(
                    iconcolor: _iconColor,
                    cardColor: _cardColor,
                  ),
                  cardsCount: _cards.length,
                  numberOfCardsDisplayed: 3,
                )),
            Expanded(
                flex: 20,
                child: Column(
                  children: [
                    const Expanded(flex: 50, child: SwipeText()),
                    Expanded(
                        flex: 50,
                        child: BottomAppbar(
                          bgColor: _cardColor,
                          iconcolor: _iconColor,
                        )),
                  ],
                ))
          ],
        ),
      )),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );

    setState(() {
      if (direction == CardSwiperDirection.left) {
        _backgroundGradient = const LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        );

        _cardColor = const Color.fromARGB(255, 162, 189, 224);
        _iconColor = Colors.black;
      } else if (direction == CardSwiperDirection.right) {
        _backgroundGradient = const LinearGradient(
          colors: [
            Color(0xFF2E2F33),
            Color.fromARGB(255, 37, 43, 14),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
        _iconColor = Colors.white;
        _cardColor = const Color.fromARGB(255, 44, 44, 44);
      }
    });

    return true;
  }
}
