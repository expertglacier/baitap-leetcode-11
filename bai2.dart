class Solution {
  int maxProfit(List<int> prices) {
    int priceBuy = prices[0];
    int maximumProfit = 0;

    // Tìm lợi nhuận tốt nhất.
    for (int i = 0; i < prices.length; i++) {
      if (prices[i] < priceBuy) {
        priceBuy = prices[i];
      } else {
        int currentProfit = prices[i] - priceBuy;
        
        if (currentProfit > maximumProfit) {
          maximumProfit = currentProfit;
        }
      }
    }

    return maximumProfit;
  }
}