class UpdateProfileRequest {
  String P_COMP_ID;
  String P_STUDENT_ID;
  String p_primary_num;
  String p_primary_mail;
  String p_father_num;
  String p_mother_num;
  String p_father_mail;
  String p_mother_mail;
  String p_per_address;
  String p_prf_phto;
  String p_tab_id;
  String P_edited_by;
  String p_blood_grp;

  UpdateProfileRequest({
    required this.P_COMP_ID,
    required this.P_STUDENT_ID,
    required this.p_primary_num,
    required this.p_primary_mail,
    required this.p_father_num,
    required this.p_mother_num,
    required this.p_father_mail,
    required this.p_mother_mail,
    required this.p_per_address,
    required this.p_prf_phto,
    required this.p_tab_id,
    required this.P_edited_by,
    required this.p_blood_grp,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': P_COMP_ID,
      'P_STUDENT_ID': P_STUDENT_ID,
      'p_primary_num': p_primary_num,
      'p_primary_mail': p_primary_mail,
      'p_father_num': p_father_num,
      'p_mother_num': p_mother_num,
      'p_father_mail': p_father_mail,
      'p_mother_mail': p_mother_mail,
      'p_per_address': p_per_address,
      'p_prf_phto': p_prf_phto,
      'p_tab_id': p_tab_id,
      'P_edited_by': P_edited_by,
      'p_blood_grp': p_blood_grp,
    };
  }
}
