class Solution {
  List<int> sortArrayByParityII(List<int> nums) {
    int index = 0;
    int indexFindNumber = 0;

    // Sắp xếp list theo điều kiện số chẵn ở vị trí chẵn, số lẻ ở vị trí lẻ.
    while (index < nums.length) {
      // Trường hợp số ở vị trí hiện tại thoả mãn điều kiện
      // (giữ nguyên số không cần thay đổi).
      // Số chẵn.
      if (index % 2 == 0 && nums[indexFindNumber] % 2 == 0 && index == indexFindNumber) {
        index++;
        indexFindNumber = index;

        continue;
        // Số lẻ.
      } else if (index % 2 != 0 && nums[indexFindNumber] % 2 != 0 && index == indexFindNumber) {
        index++;
        indexFindNumber = index;

        continue;
      }

      // Trường hợp số ở vị trí hiện tại không thoả mãn điều kiện
      // (phải đi tìm số ở vị trí khác để thay thế).
      //Số chẵn.
      if (index % 2 == 0 &&
          nums[indexFindNumber] % 2 == 0 &&
          index != indexFindNumber) {
        int temp = nums[index];

        nums[index] = nums[indexFindNumber];
        nums[indexFindNumber] = temp;

        index++;
        indexFindNumber = index;

        continue;
        // Số lẻ.
      } else if (index % 2 != 0 &&
          nums[indexFindNumber] % 2 != 0 &&
          index != indexFindNumber) {
        int temp = nums[index];

        nums[index] = nums[indexFindNumber];
        nums[indexFindNumber] = temp;

        index++;
        indexFindNumber = index;

        continue;
      }

      indexFindNumber++;
    }

    return nums;
  }
}