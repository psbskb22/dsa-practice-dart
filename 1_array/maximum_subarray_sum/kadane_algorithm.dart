/*
{2, 3, -8, 7, -1, 2, 3}

max = 2
if (maxEnding < 0) maxEnding = 2
if (maxEnding > max) max = maxEnding


2 3 -8

5, -3-> -8 -> 7

*/

void main() {
  List<int> list1 = [2, 3, -8, 7, -1, 2, 3];
  List<int> list2 = [-2, -4];
  List<int> list3 = [5, 4, 1, 7, 8];
  print(maximumSubarraySum(list1));
  print(maximumSubarraySum(list2));
  print(maximumSubarraySum(list3));
}

int? maximumSubarraySum(List<int> list){
  if (list.isEmpty) return null;
  int max = list.first;
  int maxEnding = list.first;

  for (var i = 1; i < list.length; i++) {
    if (maxEnding < 0) maxEnding = list[i];
    else maxEnding += list[i];
    if (maxEnding > max) max = maxEnding;
  }

  return max;
}
