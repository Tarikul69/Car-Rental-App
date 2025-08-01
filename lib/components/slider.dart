import 'package:flutter/material.dart';

class CarImageSlider extends StatefulWidget {
  final List<String> imageUrls;

  const CarImageSlider({Key? key, required this.imageUrls}) : super(key: key);

  @override
  _CarImageSliderState createState() => _CarImageSliderState();
}

class _CarImageSliderState extends State<CarImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            itemCount: widget.imageUrls.length,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.imageUrls.length, (index) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.green
                    : Colors.grey.shade400,
              ),
            );
          }),
        ),
      ],
    );
  }
}
