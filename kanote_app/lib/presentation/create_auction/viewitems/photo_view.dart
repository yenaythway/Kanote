import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:kanote_app/data/models/create/gallery_image_vo.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/viewmodels/create/choose_image_cubit.dart';
import 'package:kanote_app/presentation/viewmodels/create/image_album_cubit.dart';
import 'package:kanote_app/presentation/viewmodels/create/take_image_cubit.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:image_picker/image_picker.dart';

class PhotoView extends StatelessWidget {
  final GalleryImageVO? galleryImageVo;

  const PhotoView(this.galleryImageVo, {super.key});

  @override
  Widget build(BuildContext context) {
    return (galleryImageVo?.isImage ?? false)
        ? GestureDetector(
            onTap: () {
              context.read<ChooseImageCubit>().onTapImage(galleryImageVo);
            },
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: const AssetImage(
                        "assets/images/image_placeholder.jpeg",
                      ),
                      image: ThumbnailProvider(
                        mediumId: galleryImageVo?.medium?.id ?? "",
                        mediumType: galleryImageVo?.medium?.mediumType ??
                            MediumType.image,
                        highQuality: true,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: galleryImageVo?.isSelected ?? false,
                  child: Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                        color: const Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: galleryImageVo?.isSelected ?? false,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/select_icon.png",
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        : GestureDetector(
            onTap: () async {
              final ImagePicker picker = ImagePicker();
              final XFile? image = await picker.pickImage(source: ImageSource.camera);
              if(image != null) {
                context.read<TakeImageCubit>().onChooseImage(File(image.path));
                await GallerySaver.saveImage(image.path, albumName: "Kanote", toDcim: true);
                context.read<ImageAlbumCubit>().loadAlbum(album: "Kanote");
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 242, 249, 1.0),
                borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                border: Border.all(color: kPrimaryColor, width: 2),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/camera.png",
                  width: 30,
                ),
              ),
            ),
          );
  }
}
