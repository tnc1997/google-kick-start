import 'package:kick_start/kick_start.dart';
import 'package:test/test.dart';

void main() {
  test('getNoOfLuckyFragments', () {
    expect(
      getNoOfLuckyFragments('AKICKSTARTPROBLEMNAMEDKICKSTART'),
      3,
    );

    expect(
      getNoOfLuckyFragments('STARTUNLUCKYKICK'),
      0,
    );

    expect(
      getNoOfLuckyFragments('KICKXKICKXSTARTXKICKXSTART'),
      5,
    );
  });
}
