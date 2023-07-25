part of 'choose_image_cubit.dart';

abstract class ChooseImageState extends Equatable {
  const ChooseImageState();
  @override
  List<Object> get props => [];
}

class ChooseImageInitial extends ChooseImageState {

}

class ChooseImageLoading extends ChooseImageState {

}

class ChooseImageNoPermission extends ChooseImageState {

}

class ChooseImageSuccess extends ChooseImageState {

  final List<GalleryImageVO> imageList;

  const ChooseImageSuccess(this.imageList);
}

class ChooseImageError extends ChooseImageState {
  final String errorText;

  const ChooseImageError(this.errorText);
}