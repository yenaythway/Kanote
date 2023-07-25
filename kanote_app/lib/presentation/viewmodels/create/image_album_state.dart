part of 'image_album_cubit.dart';

abstract class ImageAlbumState extends Equatable {
  const ImageAlbumState();

  @override
  List<Object> get props => [];
}

class ImageAlbumInitial extends ImageAlbumState {

}

class ImageAlbumSuccess extends ImageAlbumState {
  final List<Album> albumList;
  final String albumName;

  const ImageAlbumSuccess(this.albumList, this.albumName);
}

class ImageAlbumError extends ImageAlbumState {

}