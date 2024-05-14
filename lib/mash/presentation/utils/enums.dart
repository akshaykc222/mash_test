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

enum UserTypes { staff, student, parent }

UserTypes getUserType(String userType) {
  switch (userType) {
    case "1":
      return UserTypes.staff;

    case "2":
      return UserTypes.student;

    case "3":
      return UserTypes.parent;

    default:
      return UserTypes.student;
  }
}
