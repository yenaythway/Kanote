import 'package:photo_gallery/photo_gallery.dart';

class GalleryImageVO {
  Medium? medium;
  bool? isSelected;
  bool? isImage;

  GalleryImageVO({
    this.medium,
    required this.isSelected,
    required this.isImage,
  });
}
