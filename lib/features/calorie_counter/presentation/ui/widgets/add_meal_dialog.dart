import 'dart:io';
import 'package:flutter/material.dart';

class AddMealDialog extends StatelessWidget {
  final String? imagePath;
  const AddMealDialog({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
            image: imagePath != null ? DecorationImage(
              image: FileImage(File(imagePath!)),
              fit: BoxFit.cover,
            ) : null,
          ),
          child: imagePath == null ? const Icon(Icons.photo_camera) : null,
        ),
        const SizedBox(height: 16),
        const Row(children: [Icon(Icons.shuffle)]),
      ]),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Отмена')),
        ElevatedButton(onPressed: () => Navigator.pop(context, imagePath), child: const Text('Добавить')),
      ],
    );
  }
}