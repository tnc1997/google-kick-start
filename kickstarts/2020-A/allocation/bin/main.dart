import 'dart:io';

import 'package:allocation/allocation.dart';

void main(List<String> arguments) {
  var noOfTestCases = int.parse(stdin.readLineSync());

  for (var i = 1; i <= noOfTestCases; i++) {
    var inputs = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    var noOfHousesForSale = inputs[0];
    var budget = inputs[1];

    var housesForSale = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    if (housesForSale.length != noOfHousesForSale) {
      throw Exception('The number of houses is invalid.');
    }

    print('Case #$i: ${getMaxNoOfHouses(budget, housesForSale)}');
  }
}
