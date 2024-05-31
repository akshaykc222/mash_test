class DigitalLibraryRequest {
  String pCompId;
  String pUserId;
  String pModuleName;
  String prmContentId;
  String prmIsActive;
  String prmTypeId;
  String prmCatId;
  String prmSubcatId;
  String prmLangId;
  String prmSearchTxt;
  int prmUserType;
  int prmOffset;
  int prmLimit;

  DigitalLibraryRequest({
    required this.pCompId,
    required this.pUserId,
    required this.pModuleName,
    required this.prmContentId,
    required this.prmIsActive,
    required this.prmTypeId,
    required this.prmCatId,
    required this.prmSubcatId,
    required this.prmLangId,
    required this.prmSearchTxt,
    required this.prmUserType,
    required this.prmOffset,
    required this.prmLimit,
  });

  factory DigitalLibraryRequest.fromJson(Map<String, dynamic> json) {
    return DigitalLibraryRequest(
      pCompId: json['P_COMP_ID'],
      pUserId: json['P_USER_ID'],
      pModuleName: json['P_MODULE_NAME'],
      prmContentId: json['prm_content_id'],
      prmIsActive: json['prm_isactive'],
      prmTypeId: json['prm_type_id'],
      prmCatId: json['prm_cat_id'],
      prmSubcatId: json['prm_subcat_id'],
      prmLangId: json['prm_lang_id'],
      prmSearchTxt: json['prm_search_txt'],
      prmUserType: json['prm_user_type'],
      prmOffset: json['prm_offset'],
      prmLimit: json['prm_limit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_USER_ID': pUserId,
      'P_MODULE_NAME': pModuleName,
      'prm_content_id': prmContentId,
      'prm_isactive': prmIsActive,
      'prm_type_id': prmTypeId,
      'prm_cat_id': prmCatId,
      'prm_subcat_id': prmSubcatId,
      'prm_lang_id': prmLangId,
      'prm_search_txt': prmSearchTxt,
      'prm_user_type': prmUserType,
      'prm_offset': prmOffset,
      'prm_limit': prmLimit,
    };
  }
}
