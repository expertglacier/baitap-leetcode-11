class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    int total = numBottles, empty = numBottles;

    // Tính số lượng chai nước đã uống hết.
    while (empty >= numExchange) {
      int newBottles = empty ~/ numExchange;
      total += newBottles;
      empty = newBottles + (empty % numExchange);
    }

    return total;
  }
}