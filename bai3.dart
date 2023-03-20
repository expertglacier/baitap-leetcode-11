class Solution {
  bool isPalindrome(String s) {
    List<String> temp = [];

    // Xoá các kí tự trừ chữ thường, chữ in hoa và số.
    // Lưu ý: chữ in hoa sẽ chuyển thành chữ thường.
    for (int i = 0; i < s.length; i++) {
      int indexASCII = s.codeUnitAt(i);

      if (indexASCII >= 48 && indexASCII <= 57 ||
          indexASCII >= 97 && indexASCII <= 122) {
        temp.add(s[i]);
      } else if (indexASCII >= 65 && indexASCII <= 90) {
        temp.add(String.fromCharCode(indexASCII + 32));
      }
    }

    // Kiểm tra chuỗi có phải là palindrome.
    for (int i = 0; i < temp.length / 2; i++) {
      if (temp[i] != temp[temp.length - 1 - i]) return false;
    }

    return true;
  }
}