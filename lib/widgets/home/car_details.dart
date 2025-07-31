import 'package:flutter/material.dart';

class car_details extends StatelessWidget {
  const car_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Vehicle Details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.share, color: Colors.green),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Image + Tags + Dot Indicator
            Stack(
              children: [
                Image.asset(
                  'assets/car.png',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text('NEW',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 80,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text('30.0% OFF',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: const Icon(Icons.favorite_border, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Icon(Icons.circle, color: Colors.green, size: 10),
            const SizedBox(height: 16),

            // 2. Vehicle Info Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + Similar count
                  Row(
                    children: [
                      const Expanded(
                        child: Text('Toyota Corolla',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 171, 171, 171)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text('Similar Vehicle 3',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Daily Commuting (Economical and Efficient)',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 12),
                  // Feature icons
                  Wrap(
                    spacing: 40,
                    runSpacing: 12,
                    children: const [
                      FeatureItem(icon: Icons.star, label: '4.00'),
                      FeatureItem(icon: Icons.directions_car, label: 'Compact'),
                      FeatureItem(icon: Icons.event_seat, label: '4 seats'),
                      FeatureItem(icon: Icons.ac_unit, label: 'AC  '),
                      FeatureItem(icon: Icons.settings, label: 'Automatic'),
                      FeatureItem(icon: Icons.oil_barrel, label: '1000 L'),
                      FeatureItem(
                          icon: Icons.local_gas_station, label: 'Octane'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 3. Trip Type Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text('Trip Type',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  Expanded(
                      child: TripCard(
                          title: 'Distance wise',
                          oldPrice: '\$500.00/km',
                          newPrice: '\$350.00/km')),
                  SizedBox(width: 12),
                  Expanded(
                      child: TripCard(
                          title: 'Hourly',
                          oldPrice: '\$250.00/hr',
                          newPrice: '\$175.00/hr')),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 4. Vendor Info
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/taxi.png'),
                  ),
                  title: const Text('CityLink Taxis'),
                  subtitle:
                      const Text('Best-in-class rentals for city & long trips'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // Navigate to vendor page
                  },
                ),
              ),
            ),

            const SizedBox(height: 80), // leave space for button
          ],
        ),
      ),

      // 5. Rent Button
      bottomSheet: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Rent logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text(
                'Rent This Vehicle',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Reusable feature icon + text
class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const FeatureItem({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}

// Trip type card
class TripCard extends StatelessWidget {
  final String title, oldPrice, newPrice;
  const TripCard(
      {required this.title,
      required this.oldPrice,
      required this.newPrice,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Text('Start From $oldPrice',
              style: const TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey)),
          const SizedBox(height: 4),
          Text(newPrice,
              style: const TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
