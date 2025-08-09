import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class payment_methods extends StatefulWidget {
  const payment_methods({super.key});

  @override
  State<payment_methods> createState() => _payment_methodsState();
}

class _payment_methodsState extends State<payment_methods> {
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: SizedBox(
            width: Get.width * 0.8,
            child: Column(
              children: [
                Text("Add Payment Method"),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card Number',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expiry Date',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cardholder Name',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Billing Address',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // close popup
              },
            ),
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // close popup
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Methods',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.green),
              title: Text('Credit Card'),
              subtitle: Text('Visa, MasterCard, etc.'),
              trailing: Icon(Icons.delete),
              onTap: () {
                // Navigate to credit card payment method
              },
            ),
            ListTile(
              leading: Icon(Icons.paypal, color: Colors.blue),
              title: Text('PayPal'),
              subtitle: Text('Secure online payments'),
              trailing: Icon(Icons.delete),
              onTap: () {
                // Navigate to PayPal payment method
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, color: Colors.orange),
              title: Text('Wallet'),
              subtitle: Text('Use your wallet balance'),
              trailing: Icon(Icons.delete),
              onTap: () {
                // Navigate to wallet payment method
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showPopup(context),
        tooltip: 'Add Payment Method',
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
