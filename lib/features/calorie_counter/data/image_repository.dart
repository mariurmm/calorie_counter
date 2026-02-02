import "../models/app_image.dart";

class ImageRepository {
  Future<List<AppImageModel>> fetchImages() async {
    await Future.delayed(const Duration(seconds: 2));
    
    return [
      AppImageModel(
        id: '1',
        url: 'https://example.com/image1.jpg',
      ),
      AppImageModel(
        id: '2',
        url: 'https://example.com/image2.jpg',
      ),
      // Можно добавить больше изображений
    ];
  }
  
  // Имитация загрузки одного изображения
  Future<AppImageModel> uploadImage(String localPath) async {
    await Future.delayed(const Duration(seconds: 1));
    
    // В реальном приложении здесь был бы POST запрос на сервер
    return AppImageModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      url: 'https://example.com/uploaded_${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
  }
}