/*
2, 7, 11, 15
target = 9

Map<String, String> hashMap = {}

for (int i = 0; i < list.length; i++){
  hashMap[list[i]] = 1
}

for (int i = 0; i < list.length; i++){
  if (hasMap[(target - list[i])] != null) return [i, (target - list[i])];
  return [];
}

*/

main() {
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  List<int> nums3 = [3, 3];
  int target3 = 6;
  print(twoSum(nums1, target1));
  print(twoSum(nums2, target2));
  print(twoSum(nums3, target3));
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> hashMap = {};

  for (int i = 0; i < nums.length; i++) {
    hashMap[nums[i]] = i;
  }

  for (int i = 0; i < nums.length; i++) {
    int? secondIndex = hashMap[(target - nums[i])];
    if (i != secondIndex && secondIndex != null) return [i, secondIndex];
  }
  return [];
}
