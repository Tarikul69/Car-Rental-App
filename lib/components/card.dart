import 'package:car_rental_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class GroFastCard extends StatelessWidget {
  final Map<String, String> data;

  const GroFastCard({required this.data, required Map<String, String> title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: data.entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    '${entry.key}: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      entry.value,
                      style: TextStyle(color: Colors.grey[800]),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

//////////////////////////////////////
////////Carousel Card////////////////
////////////////////////////////////

///////////////////////////////////////
/////////////Notification Card////////
/// /////////////////////////////////
Widget notificationCard({
  required IconData icon,
  required String title,
  String subtitle = '',
  required VoidCallback onTap,
  Color iconColor = Colors.black,
  Color textColor = Colors.black,
  Color backgroundColor = const Color.fromARGB(255, 168, 168, 168),
  double elevation = 1.0,
}) {
  return Card(
    color: backgroundColor,
    elevation: elevation,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: ListTile(
      leading: Icon(icon, color: iconColor),
      title: ListTile(
        title: Text(title),
        subtitle: Text("data"),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: iconColor, size: 16),
      onTap: onTap,
    ),
  );
}

/////////////////////////
//////slider card///////
///////////////////////
Widget slider_card({
  String imgePath = "assets/car.png",
  String carModel = "Toyota Camry",
  String carDescription = "A comfortable and spacious sedan.",
  double carPrice = 60.0,
  double carRating = 4.5,
  String offerTag = "20% OFF",
  String newTag = "NEW",
  bool isFavorite = false,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    elevation: 4,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Rounded image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imgePath,
                width: double.infinity,
                height: 140,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/placeholder.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            // Favorite icon (top-left)
            Positioned(
              top: 8,
              left: 8,
              child: CircleAvatar(
                backgroundColor: Colors.white70,
                child: Icon(Icons.favorite_border, color: Colors.red),
              ),
            ),
            // "Offer" tag (top-right)
            Positioned(
              top: 8,
              right: 70,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 173, 82),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  offerTag,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // "New" tag (top-right)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  newTag,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
          child: ListTile(
            title: Text(carModel),
            subtitle: Text('Available for rent'),
            trailing: Text(
              '\$$carPrice/day | Rating: $carRating',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

/////////////////////////////////////
/////////slider card1////////////
/////////////////////////////////////
// This is a simplified version of the slider card with fewer features.
Widget slider_card1(String imgePath, String carModel) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 1,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Car Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                imgePath,
                height: 120, // constrained height
                width: 185,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/placeholder.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            // Discount Tag
            Positioned(
              top: 10,
              left: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '20% OFF',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // NEW Tag
            Positioned(
              top: 40,
              left: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'NEW',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // Favorite Icon
            Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border, color: Colors.green),
              ),
            ),
            // Info Icon
            const Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.info_outline, color: Colors.purple),
              ),
            ),
          ],
        ),

        // Title and Subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
          child: Text(
            carModel,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'RideMaster Taxis',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

//#######################################################################
Widget slider_card2(String imgePath, String carModel) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 1,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Car Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                imgePath,
                height: double.infinity,
                width: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/placeholder.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            // Discount Tag
            Positioned(
              top: 10,
              left: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '20% OFF',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // NEW Tag
            Positioned(
              top: 40,
              left: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'NEW',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // Favorite Icon
            const Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border, color: Colors.green),
              ),
            ),
            // Info Icon
            const Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.info_outline, color: Colors.purple),
              ),
            ),
          ],
        ),

        // Title and Subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
          child: Text(
            carModel,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'RideMaster Taxis',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

/////// invite friend card //////////
Widget invitation_card(BuildContext context) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Invitation Icon
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue[100],
              child: Icon(Icons.card_giftcard, color: Colors.blue, size: 40),
            ),
            SizedBox(width: 16),
            // Invitation Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invite a Friend',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Get rewards for inviting friends to use our app.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            // Invite Button
            ElevatedButton(
              onPressed: () {
                // Handle invite action
                //Get.toNamed(AppRoutes.invite_friends);
              },
              child: Text('Invite'),
            ),
          ],
        )),
  );
}

/////////////////////////////////
/////////trip Details///////////
///////////////////////////////
Widget trip_card({
  String imgePath = "assets/car.png",
  String carModel = "Toyota Camry",
  String carDescription = "A comfortable and spacious sedan.",
  double carPrice = 60.0,
  double carRating = 4.5,
  String offerTag = "20% OFF",
  String newTag = "NEW",
  bool isFavorite = false,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    elevation: 4,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Rounded image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imgePath,
                width: double.infinity,
                height: 140,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/placeholder.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            // Favorite icon (top-left)
            Positioned(
              top: 8,
              left: 8,
              child: CircleAvatar(
                backgroundColor: Colors.white70,
                child: Icon(Icons.favorite_border, color: Colors.red),
              ),
            ),
            // "Offer" tag (top-right)
            Positioned(
              top: 8,
              right: 70,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 173, 82),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  offerTag,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            // "New" tag (top-right)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  newTag,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(carModel),
              subtitle: Text(carDescription),
              trailing: Text(
                '\$$carPrice/day',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
