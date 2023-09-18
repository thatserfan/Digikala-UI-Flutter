import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key, required this.images});

  final List<String> images;

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

int _current = 0;
final CarouselController _controller = CarouselController();

class _ProductImageSliderState extends State<ProductImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.5,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            reverse: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          carouselController: _controller,
          items: widget.images
              .map((item) => SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      item,
                      fit: BoxFit.fitHeight,
                    ),
                  ))
              .toList(),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images
                .asMap()
                .entries
                .map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                })
                .toList()
                .reversed
                .toList(),
          ),
        ),
      ],
    );
  }
}
