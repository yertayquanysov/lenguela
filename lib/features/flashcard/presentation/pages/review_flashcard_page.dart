import 'package:flutter/material.dart';

class ReviewCardPage extends StatelessWidget {
  const ReviewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Text(
              "I love you!",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Мен сені жақсы көремін!",
              style: TextStyle(fontSize: 30),
            ),
            Image.network(
                "https://static8.depositphotos.com/1054619/930/v/450/depositphotos_9305298-stock-illustration-i-love-you.jpg"),
            const Expanded(child: SizedBox()),
            MaterialButton(
              onPressed: () {},
              color: Colors.teal,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Show",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrangeAccent,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Show",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrangeAccent,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Show",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrangeAccent,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Show",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
