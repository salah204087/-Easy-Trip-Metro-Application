/*import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:metro_app/stations/model_station/model_station.dart';

class linestation3 extends StatefulWidget {
  const linestation3({Key? key}) : super(key: key);

  @override
  State<linestation3> createState() => _linestation3state();
}

class _linestation3state extends State<linestation3> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  late final AnimationController controllerScale =
  AnimationController(duration: const Duration(seconds: 10), vsync: this)
    ..repeat(reverse: true);

  late final Animation<double> animationScale = Tween<double>(
      begin: 1.0, end: 1.2)
      .animate(CurvedAnimation(parent: controllerScale, curve: Curves.linear));

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.forward();
    controllerScale.repeat(reverse: true);
  }

  Animation<double> get scaleAnime {
    return animationScale;
  }

  @override
  void dispose() {
    controllerScale.dispose();
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: PageView.builder(

          physics: const BouncingScrollPhysics(),
          itemCount: line3.length,
          itemBuilder: (ctx, index) {
            return Stack(
              children: [
                ScaleTransition(
                  scale: scaleAnime,
                  child: Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(line3[index].img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Items(size: size, index: index, textTheme: textTheme),
              ],
            );
          },
        ));
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.size,
    required this.index,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final int index;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        /// Bottom Gradient
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: size.width,
            height: size.height / 1.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black.withOpacity(0.6),
                Colors.transparent
              ], end: Alignment.topCenter, begin: Alignment.bottomCenter),
            ),
          ),
        ),

        /// Texts
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// Title
              FadeInUp(
                delay: const Duration(microseconds: 100),
                duration: const Duration(milliseconds: 500),
                from: 40,
                child: Text(line3[index].title, style: textTheme.headline1),
              ),

              /// Bar Rating
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 200),
                from: 40,
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  width: size.width,
                  height: size.height / 25,
                  child: Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 16,
                        unratedColor: const Color.fromARGB(179, 191, 191, 191),
                        onRatingUpdate: (_) {},
                        initialRating: line3[index].star,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                        const EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${line3[index].star.toInt()} / 5",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 400),
                from: 40,
                child: line3[index].percent,
              ),

              ///
              const SizedBox(
                height: 12,
              ),

              /// SubTitle
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 400),
                from: 40,
                child: Text(line3[index].subTitle,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.subtitle1),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 400),
                from: 40,
                child: line1[index].url,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}*/