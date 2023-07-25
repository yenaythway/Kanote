
import 'package:equatable/equatable.dart';
import 'package:kanote_app/data/models/create/gallery_image_vo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery/photo_gallery.dart';

import '../../../data/models/create/gallery_image_vo.dart';


part 'choose_image_state.dart';

class ChooseImageCubit extends Cubit<ChooseImageState> {
  List<GalleryImageVO> galleryImageList = [];
  List<GalleryImageVO> selectedImageList = [];

  ChooseImageCubit() : super(ChooseImageInitial());

  void loadImage(Album album) async {
    print('load');
    emit(ChooseImageLoading());
    galleryImageList = [];
    MediaPage mediaPage = await album.listMedia();
    print("################");
    print(mediaPage);
    List<String> selectedImageIds =
        selectedImageList.map((e) => e.medium?.id ?? "").toList();
    galleryImageList = mediaPage.items.map((medium) {
      if (selectedImageIds.contains(medium.id)) {
        return selectedImageList
            .firstWhere((element) => element.medium?.id == medium.id);
      }
      return GalleryImageVO(
        medium: medium,
        isSelected: false,
        isImage: true,
      );
    }).toList();
    galleryImageList.insert(
        0, GalleryImageVO(isSelected: false, isImage: false));
    emit(ChooseImageSuccess(galleryImageList));
  }

  void onTapImage(GalleryImageVO? galleryImageVo) {
    emit(ChooseImageInitial());
    galleryImageList.forEach((galleryImage) async {
      if (galleryImageVo?.medium?.id == galleryImage.medium?.id) {
        if (galleryImage.isSelected ?? false) {
          galleryImage.isSelected = false;
          selectedImageList.remove(galleryImage);
        } else {
          galleryImage.isSelected = true;
          if (galleryImage.medium != null) {
            selectedImageList.add(galleryImage);
          }
        }
      }
    });

    print("Gallery image list is $galleryImageList");
    print("Image Length is ====> ${galleryImageList.length}");
    print("Selected file is $selectedImageList");
    emit(ChooseImageSuccess(galleryImageList));
  }
}
