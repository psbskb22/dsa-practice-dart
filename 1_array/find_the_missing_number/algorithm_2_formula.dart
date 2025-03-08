/*
arr[] = [1, 2, 4] 

1 + 2 + x + 4 = total = n(n + 1) / 2

x = (n(n + 1) / 2) - (1 + 2 + 4)

Time - O(n)
Space - O(1)

*/


void main(){
  List<int> list1 = [1, 2, 4, 6, 3, 7, 8];
  List<int> list2 = [1, 2, 3, 5];
  print(missingNumber(list1));
  print(missingNumber(list2));
}

int missingNumber(List<int> list){
  int n = list.length + 1;
  int total = ((n * (n + 1)) / 2).toInt();
  int sum = 0;
  for (var i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return total - sum;
}
