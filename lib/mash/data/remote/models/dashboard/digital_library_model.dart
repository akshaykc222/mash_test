import '../../../../domain/entities/dashboard/digital_library_entity.dart';

class DigitalLibraryModel extends DigitalLibraryEntity {
  const DigitalLibraryModel(
      {required super.contentId,
      required super.contentName,
      required super.contentDesc,
      required super.typeId,
      required super.dgCatName,
      required super.dgSubCatName,
      required super.coverImg,
      required super.docName,
      required super.userType,
      required super.isActive,
      required super.createdBy,
      required super.createdOn,
      required super.lastModifyBy,
      required super.lastModifiedOn,
      required super.authorName,
      required super.dateOfPublish,
      required super.languageName,
      required super.dgTypeName,
      required super.publisher,
      super.likeStatus,
      super.docExt,
      super.bookMarkStatus});

  factory DigitalLibraryModel.fromJson(Map<String, dynamic> json) {
    return DigitalLibraryModel(
        contentId: json['CONTENT_ID'],
        contentName: json['CONTENT_NAME'],
        contentDesc: json['CONTENT_DESC'],
        typeId: json['TYPE_ID'],
        dgCatName: json['DG_CAT_NAME'],
        dgSubCatName: json['DG_SUB_CAT_NAME'],
        coverImg: json['COVER_IMG'],
        docName: json['DOC_NAME'],
        userType: json['USER_TYPE'],
        isActive: json['ISACTIVE'],
        createdBy: json['CREATED_BY'],
        createdOn: json['CREATED_ON'],
        lastModifyBy: json['LAST_MODIFY_BY'] ?? '',
        lastModifiedOn: json['LAST_MODIFIED_ON'] ?? '',
        authorName: json['AUTHOR_NAME'],
        dateOfPublish: json['DATEOFPUBLISH'],
        languageName: json['LANGUAGE_NAME'],
        dgTypeName: json['DG_TYPE_NAME'],
        publisher: json['PUBLISHER'],
        docExt: json['DOC_EXTN'],
        likeStatus: json['LIKE_STATUS'],
        bookMarkStatus: json['BOOKMARK_STATUS']);
  }

  Map<String, dynamic> toJson() {
    return {
      'CONTENT_ID': contentId,
      'CONTENT_NAME': contentName,
      'CONTENT_DESC': contentDesc,
      'TYPE_ID': typeId,
      'DG_CAT_NAME': dgCatName,
      'DG_SUB_CAT_NAME': dgSubCatName,
      'COVER_IMG': coverImg,
      'DOC_NAME': docName,
      'USER_TYPE': userType,
      'ISACTIVE': isActive,
      'CREATED_BY': createdBy,
      'CREATED_ON': createdOn,
      'LAST_MODIFY_BY': lastModifyBy,
      'LAST_MODIFIED_ON': lastModifiedOn,
      'AUTHOR_NAME': authorName,
      'DATEOFPUBLISH': dateOfPublish,
      'LANGUAGE_NAME': languageName,
      'DG_TYPE_NAME': dgTypeName,
      'PUBLISHER': publisher,
    };
  }
}
