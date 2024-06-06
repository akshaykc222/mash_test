enum CustomBottomNavigationItems {
  home,
  timetable,
  homework,
  library,
  addOn,
}

enum ProgressIndicatorType {
  linear,
  circular,
}

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum ChatType {
  personal,
  group,
}

enum HomeWorkAndNoteScreenType {
  homeworkScreen,
  noteScreen,
}

enum PaymentStatusType {
  paid,
  pending,
  transaction,
}

enum UserTypes { staff, student, parent }

UserTypes getUserType(String userType) {
  switch (userType) {
    case "2":
      return UserTypes.student;

    case "3":
      return UserTypes.parent;

    case "5":
      return UserTypes.staff;

    default:
      return UserTypes.student;
  }
}
