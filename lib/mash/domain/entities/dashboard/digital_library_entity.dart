import 'package:equatable/equatable.dart';

class DigitalLibraryEntity extends Equatable {
  final String? contentId;
  final String? contentName;
  final String? contentDesc;
  final String? typeId;
  final String? dgCatName;
  final String? dgSubCatName;
  final String? coverImg;
  final String? docName;
  final String? userType;
  final String? isActive;
  final String? createdBy;
  final String? createdOn;
  final String? lastModifyBy;
  final String? lastModifiedOn;
  final String? authorName;
  final String? dateOfPublish;
  final String? languageName;
  final String? dgTypeName;
  final String? publisher;
  final String? likeStatus;
  final String? bookMarkStatus;
  final String? docExt;

  const DigitalLibraryEntity(
      {required this.contentId,
      required this.contentName,
      required this.contentDesc,
      required this.typeId,
      required this.dgCatName,
      required this.dgSubCatName,
      required this.coverImg,
      required this.docName,
      required this.userType,
      required this.isActive,
      required this.createdBy,
      required this.createdOn,
      required this.lastModifyBy,
      required this.lastModifiedOn,
      required this.authorName,
      required this.dateOfPublish,
      required this.languageName,
      required this.dgTypeName,
      required this.publisher,
      this.likeStatus,
      this.bookMarkStatus,
      this.docExt});

  @override
  List<Object?> get props => [contentId];
}
