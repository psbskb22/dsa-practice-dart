/*
{2, 3, -8, 7, -1, 2, 3}

2
2 + 3
3 + 3 -8
...

3
3 -8
....

if (list.isEmpty) return;
int max = list.first;

for (){
  int sum = arr[i];
  for (){
    if (sum > max) max = sum;
    sum += arr[j];
  }
}

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

  for (var i = 0; i < list.length; i++) {
    int sum = 0;
    for (var j = i; j < list.length; j++) {
      sum += list[j];
      if (sum > max) max = sum;
    }
  }
  return max;
}
