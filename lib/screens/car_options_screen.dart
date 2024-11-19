import 'package:flutter/material.dart';
import 'car_detail_screen.dart'; // Assurez-vous que l'import est correct

class CarOptionScreen extends StatelessWidget {
  const CarOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des voitures avec leurs détails
    final List<Map<String, dynamic>> cars = [
      {
        'name': 'toyota',
        'image': '../../assets/vlad.jpg',
        'price': 125.0,
        'mileage': '15.5 kmpl',
        'engine': '2993 cc',
        'bhp': '265',
        'bootSpace': '550-litres',
        'transmission': 'Automatic',
        'airbags': 'Yes',
      },
      {
        'name': 'Mercedes Benz A Class A200 D',
        'image': '../../assets/sujin.jpg',
        'price': 100.0,
        'mileage': '20.9 kmpl',
        'engine': '2143 cc',
        'bhp': '134.1',
        'bootSpace': '341-litres',
        'transmission': 'Automatic',
        'airbags': 'Yes',
      },
      {
        'name': 'ford',
        'image': '../../assets/sven.jpg',
        'price': 120.0,
        'mileage': '18.5 kmpl',
        'engine': '1199 cc',
        'bhp': '88.7',
        'bootSpace': '175-litres',
        'transmission': 'Manual',
        'airbags': 'Yes',
      },
      {
        'name': 'audi',
        'image': '../../assets/ivan.jpg',
        'price': 130.0,
        'mileage': '15.5 kmpl',
        'engine': '2993 cc',
        'bhp': '265',
        'bootSpace': '550-litres',
        'transmission': 'Automatic',
        'airbags': 'Yes',
      },
      {
        'name': 'mitsubishi',
        'image': '../../assets/jd.jpg',
        'price': 120.0,
        'mileage': '15.5 kmpl',
        'engine': '2993 cc',
        'bhp': '265',
        'bootSpace': '550-litres',
        'transmission': 'Automatic',
        'airbags': 'Yes',
      },
      {
        'name': 'Jeep',
        'image': '../../assets/kirk.jpg',
        'price': 130.0,
        'mileage': '15.5 kmpl',
        'engine': '2993 cc',
        'bhp': '265',
        'bootSpace': '550-litres',
        'transmission': 'Automatic',
        'airbags': 'Yes',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        title: const Text('Car Options'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: cars.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final car = cars[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailScreen(car: car),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        car['image'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        car['name'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 24, 24, 24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '\$${car['price']} / day',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 123, 14, 14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
