import 'package:flutter/material.dart';
import 'package:renty_car/screens/car_options_screen.dart';

// Assurez-vous que ce fichier existe
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const PremiumCarsPage(),
    );
  }
}

class PremiumCarsPage extends StatefulWidget {
  const PremiumCarsPage({super.key});

  @override
  State<PremiumCarsPage> createState() => _PremiumCarsPageState();
}

class _PremiumCarsPageState extends State<PremiumCarsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E), // Couleur de fond de la page
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image de la voiture
              Expanded(
                child: Image.asset(
                  '../../assets/sujin.jpg', // Chemin de votre image
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),

              // Texte de titre "Premium Cars. Enjoy The Luxury"
              const Text(
                'Premium Cars.\nEnjoy The Luxury',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow, // Couleur du texte principal
                ),
              ),
              const SizedBox(height: 10),

              // Texte de description
              const Text(
                'Premium and prestige car hourly rental.\nExperience the thrill at a lower price.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70, // Couleur du texte secondaire
                ),
              ),
              const SizedBox(height: 30),

              // Bouton "Let's Go"
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CarOptionScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "LET'S GO",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PremiumCarsPage(),
    debugShowCheckedModeBanner: false,
  ));
}
