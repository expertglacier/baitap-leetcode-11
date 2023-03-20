/*
Ý tưởng: Sắp xếp lại list nums theo thứ tự tăng dần.
Sau đó kiểm tra từ cuối list nums lên đầu, nếu tam giác
nào thoả mãn định lý tam giác thì đó là tam giác có chu vi lớn nhất.
*/

class Solution {
  int largestPerimeter(List<int> nums) {
    nums.sort();

    // Tìm tam giác có chu vi lớn nhất.
    for (int i = nums.length - 1; i > 1; i--) {
      if (nums[i] < nums[i - 1] + nums[i - 2]) {
        return nums[i] + nums[i - 1] + nums[i - 2];
      }
    }

    return 0;
  }
}