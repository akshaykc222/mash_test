class NoticeAllRequest {
  final String pCompId;
  final String usertype;

  NoticeAllRequest({
    required this.pCompId,
    required this.usertype,
  });
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": pCompId,
      "P_USER_TYPE": usertype,
    };
  }
}
