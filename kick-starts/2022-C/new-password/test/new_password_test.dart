import 'package:new_password/new_password.dart';
import 'package:test/test.dart';

void main() {
  test('getNewPassword', () {
    expect(
      getNewPassword("1234567"),
      "1234567Aa#",
    );

    expect(
      getNewPassword("1111234567"),
      "1111234567Aa#",
    );

    expect(
      getNewPassword("A"),
      "Aa1#AAA",
    );

    expect(
      getNewPassword("1*"),
      "1*AaAAA",
    );

    expect(
      getNewPassword("1234aB&"),
      "1234aB&",
    );
  });
}
