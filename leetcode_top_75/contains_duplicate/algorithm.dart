/*
1, 2, 3, 1

Map<int, int> hashMap = {}

*/

main() {
  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  List<int> nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  print(containsDuplicate(nums1));
  print(containsDuplicate(nums2));
  print(containsDuplicate(nums3));
}

bool containsDuplicate(List<int> nums) {
  Map<int, int> hashMap = {};

  for (var value in nums) {
    hashMap[value] = (hashMap[value] ?? 0) + 1;
  }

  for (var value in hashMap.values) {
    if (value > 1) return true;
  }

  return false;
}
