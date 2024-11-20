import 'package:flutter/material.dart';
import 'car_detail_screen.dart';

class CarOptionScreen extends StatefulWidget {
  const CarOptionScreen({super.key});

  @override
  State<CarOptionScreen> createState() => _CarOptionScreenState();
}

class _CarOptionScreenState extends State<CarOptionScreen> {
  String? selectedLocation;

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Historique'),
              
              onTap: () {
                // Naviguez ou ajoutez une action
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                // Naviguez ou ajoutez une action
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favoris'),
              onTap: () {
                // Naviguez ou ajoutez une action
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text("At the agency"),
                            onTap: () {
                              setState(() {
                                selectedLocation = "At the agency";
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: const Text("At the airport"),
                            onTap: () {
                              setState(() {
                                selectedLocation = "At the airport";
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white, // Fond blanc
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedLocation ?? "What's your pick-up location?",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.grey),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
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
          ),
        ],
      ),
    );
  }
}
