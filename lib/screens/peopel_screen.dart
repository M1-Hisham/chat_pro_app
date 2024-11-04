import 'package:flutter/material.dart';

class PepleScreen extends StatefulWidget {
  const PepleScreen({super.key});

  @override
  State<PepleScreen> createState() => _PepleScreenState();
}

class _PepleScreenState extends State<PepleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People"),
      ),
      body: const Center(
        child: Text("People"),
      ),
    );
  }
}