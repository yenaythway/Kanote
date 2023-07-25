import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_gallery/photo_gallery.dart';

part 'image_album_state.dart';

class ImageAlbumCubit extends Cubit<ImageAlbumState> {

  ImageAlbumCubit() : super(ImageAlbumInitial()) {
    loadAlbum();
  }

  List<Album> albumList = [];
  String albumName = "";

  void loadAlbum({String? album}) async {
    emit(ImageAlbumInitial());

    try {
      if(await _promptPermissionSetting()) {
        List<Album> albums = await PhotoGallery.listAlbums(mediumType: MediumType.image);
        albumList = albums;
        if(album == null) {
          albumName = albumList.first.name ?? "";
        } else {
          albumName = album;
        }
        emit(ImageAlbumSuccess(albums, albumName));
      } else {
        emit(ImageAlbumError());
      }
    } catch(error) {
      emit(ImageAlbumError());
    }
  }

  void selectAlbum(String albumName) {
    emit(ImageAlbumInitial());
    this.albumName = albumName;
    emit(ImageAlbumSuccess(albumList, albumName));
  }

  Future<bool> _promptPermissionSetting() async {
    if (Platform.isIOS &&
        await Permission.storage.request().isGranted &&
        await Permission.photos.request().isGranted ||
        Platform.isAndroid && (await Permission.photos.request().isGranted || await Permission.storage.request().isGranted)) {
      return true;
    }
    return false;
  }
}
