import 'dart:io';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final String? imagePath;
  final int calories;
  final VoidCallback onDelete;
  const MealCard({super.key, this.imagePath, required this.calories, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6, offset: const Offset(0, 3))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [
        Expanded(child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: imagePath == null ? Container(
            color: Colors.grey.shade200,
            child: const Icon(Icons.photo),
          ) : Image.file(File(imagePath!), fit: BoxFit.cover),
        )),
        Padding(
          padding: const EdgeInsets.all(12), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$calories ккал'), 
              IconButton(onPressed: onDelete, 
              icon: const Icon(Icons.delete))
            ],
        )),
      ]),
    );
  }
}