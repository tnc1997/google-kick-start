List<int> getStudentMentors(List<int> R) {
  var students = <List<int>>[];

  for (var i = 0; i < R.length; i++) {
    students.add([i, R[i]]);
  }

  students.sort((a, b) => b[1].compareTo(a[1]));

  var M = <int>[];

  for (var i = 0; i < R.length; i++) {
    M.add(students.firstWhere(
      (student) => student[0] != i && student[1] <= 2 * R[i],
      orElse: () => [-1, -1],
    )[1]);
  }

  return M;
}
