import 'package:flutter/material.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return AnimatedNotificationCard(index: index);
        },
      ),
    );
  }
}

class AnimatedNotificationCard extends StatefulWidget {
  final int index;

  const AnimatedNotificationCard({super.key, required this.index});

  @override
  State<AnimatedNotificationCard> createState() =>
      _AnimatedNotificationCardState();
}

class _AnimatedNotificationCardState extends State<AnimatedNotificationCard> {
  bool _isExpanded = false;

  String _getTitle(int index) {
    final titles = [
      '🎉 Special Discount on SUVs',
      '🚘 Weekend Offer: 25% Off',
      '🔥 Hot Deal: Sedan Flash Sale',
      '🎁 First-Time User Offer',
      '📣 Limited Time Discount',
      '💥 Summer Offer on Rentals',
      '⭐ Exclusive Member Deals',
      '🚗 Flat 30% Off This Week',
      '🤑 Combo Deal on Bookings',
      '📢 Holiday Discount News',
    ];
    return titles[index % titles.length];
  }

  String _getSubtitle(int index) {
    final subtitles = [
      'Book now to avail the offer!',
      'Limited slots available, hurry up!',
      'Exclusive for our loyal customers.',
      'Join us and get amazing discounts.',
      'Don\'t miss out on this limited-time offer.',
      'Special rates for early bookings.',
      'Unlock exclusive deals with our app.',
      'Grab the best deals before they expire.',
      'Special offers just for you!',
      'Stay tuned for more exciting updates.',
    ];
    return subtitles[index % subtitles.length];
  }

  String _getImage(int index) {
    final images = [
      'assets/car.png',
      'assets/car1.png',
      'assets/car.png',
      'assets/car.png',
      'assets/car1.png',
      'assets/car.png',
    ];
    return images[index % images.length];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: InkWell(
        onTap: () => setState(() => _isExpanded = !_isExpanded),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title + Subtitle Row
              Row(
                children: [
                  //const Icon(Icons.notifications, color: Colors.green),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _getTitle(widget.index),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _getSubtitle(widget.index),
                          style:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.grey[600],
                  ),
                ],
              ),

              // Animated Detail Content
              const SizedBox(height: 8),
              AnimatedCrossFade(
                firstChild: const SizedBox.shrink(),
                secondChild: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      // Car Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _getImage(widget.index),
                          height: 140,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Detailed Text
                      const Text(
                        'A brand new car is now available for booking. Check out features, discounts, and availability. This update contains exclusive offers.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                crossFadeState: _isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
