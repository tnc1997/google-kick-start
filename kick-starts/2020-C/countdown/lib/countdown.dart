int getNoOfKCountdowns(int k, List<int> values) {
  if (values.length < k) {
    return 0;
  }

  var noOfKCountdowns = 0;

  for (var i = 0; i <= values.length - k; i++) {
    if (values[i] != k) {
      continue;
    }

    for (var j = i; j < values.length - 1; j++) {
      if (values[j + 1] == values[j] - 1) {
        if (values[j + 1] != 1) {
          continue;
        }

        noOfKCountdowns++;
      }

      i = j;

      break;
    }
  }

  return noOfKCountdowns;
}
