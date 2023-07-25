import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:kanote_app/data/models/create/gallery_image_vo.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/pages/add_your_artwork_page.dart';
import 'package:kanote_app/presentation/create_auction/viewitems/photo_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/viewmodels/create/choose_image_cubit.dart';
import 'package:kanote_app/presentation/viewmodels/create/image_album_cubit.dart';
import 'package:kanote_app/presentation/viewmodels/create/take_image_cubit.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';
import 'package:kanote_app/presentation/widgets/create_post_button_view.dart';
import 'package:kanote_app/presentation/widgets/create_post_title.dart';
import 'package:photo_gallery/photo_gallery.dart';

class ChoosePhotoPage extends StatelessWidget {
  String title;
  Function ontap;

  ChoosePhotoPage({Key? key, required this.title, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String txt = '';
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChooseImageCubit()),
        BlocProvider(create: (context) => ImageAlbumCubit()),
        BlocProvider(create: (context) => TakeImageCubit()),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: Appbar(title: title),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MARGIN_MEDIUM_2),
                TitleSectionView(
                  num: 1,
                  title: "Choose a photo",
                ),
                SizedBox(height: MARGIN_MEDIUM_2),
                ImageListSectionView(),
                NextSectionView(
                  ontap: () {
                    ontap();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NextSectionView extends StatelessWidget {
  Function ontap;
  NextSectionView({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    ChooseImageCubit bloc = context.watch<ChooseImageCubit>();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_2,
      ),
      child: Row(
        children: [
          Expanded(
            child: CreatePostButtonView(
              ontap: () => Get.back(),
              label: "Go to back",
              labelColor: const Color.fromRGBO(107, 106, 106, 1.0),
              backgroundColor: Colors.white,
              borderColor: const Color.fromRGBO(77, 77, 77, 1.0),
            ),
          ),
          const SizedBox(width: MARGIN_MEDIUM_3),
          Expanded(
            child: CreatePostButtonView(
              ontap: () {
                ontap();
              }, //ChooseLayout()
              label: "Next",
              labelColor: Colors.white,
              backgroundColor: bloc.selectedImageList.isEmpty
                  ? const Color.fromRGBO(77, 77, 77, 1.0)
                  : kPrimaryColor,
              borderColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageListSectionView extends StatelessWidget {
  const ImageListSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocConsumer<ImageAlbumCubit, ImageAlbumState>(
            listener: (context, state) {
              if (state is ImageAlbumSuccess) {
                Album album = state.albumList
                    .firstWhere((element) => element.name == state.albumName);
                context.read<ChooseImageCubit>().loadImage(album);
              }
            },
            builder: (context, state) {
              if (state is ImageAlbumSuccess) {
                return DropdownView(albumList: state.albumList);
              }
              return Container(
                child: const Center(
                  child: Text(
                    "User permission denied.",
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Expanded(
            child: BlocBuilder<ChooseImageCubit, ChooseImageState>(
              builder: (context, state) {
                if (state is ChooseImageLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: kPrimaryColor,
                    ),
                  );
                }
                if (state is ChooseImageSuccess) {
                  return GalleryImageGridView(
                      galleryImageList: state.imageList);
                }
                if (state is ChooseImageNoPermission) {
                  return Text(
                    "User Permission denied",
                    style: knNormalText(),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GalleryImageGridView extends StatelessWidget {
  final List<GalleryImageVO> galleryImageList;

  const GalleryImageGridView({super.key, required this.galleryImageList});

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      radius: const Radius.circular(MARGIN_MEDIUM),
      child: GridView.builder(
        itemCount: galleryImageList.length,
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 150 / 200,
          crossAxisSpacing: MARGIN_MEDIUM,
          mainAxisSpacing: MARGIN_MEDIUM_2,
        ),
        itemBuilder: (context, index) {
          return PhotoView(galleryImageList[index]);
        },
      ),
    );
  }
}

class DropdownView extends StatelessWidget {
  final List<Album> albumList;

  const DropdownView({super.key, required this.albumList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 242, 249, 1.0),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
        border: Border.all(color: const Color.fromRGBO(222, 211, 234, 1.0)),
      ),
      child: BlocBuilder<ImageAlbumCubit, ImageAlbumState>(
        builder: (context, state) {
          if (state is ImageAlbumSuccess) {
            return DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: state.albumName,
                isDense: true,
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
                items: state.albumList.map((value) {
                  return DropdownMenuItem(
                    value: value.name ?? "",
                    child: Text(
                      value.name ?? "",
                      style: knSubTitle().copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (albumName) {
                  context.read<ImageAlbumCubit>().selectAlbum(albumName ?? "");
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}

class TitleSectionView extends StatelessWidget {
  int num;
  String title;
  TitleSectionView({super.key, required this.num, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Step ${num} of 4",
            style: knNormalText().copyWith(
              color: Color.fromRGBO(107, 107, 107, 1.0),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          CreatePostTitle(title: title),
        ],
      ),
    );
  }
}
