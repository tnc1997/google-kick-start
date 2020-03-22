int getMaxNoOfHouses(int budget, List<int> housesForSale) {
  housesForSale..sort();

  var totalCost = 0;
  var maxNoOfHouses = 0;

  for (var houseForSale in housesForSale) {
    if (totalCost + houseForSale > budget) break;

    totalCost += houseForSale;
    maxNoOfHouses += 1;
  }

  return maxNoOfHouses;
}
