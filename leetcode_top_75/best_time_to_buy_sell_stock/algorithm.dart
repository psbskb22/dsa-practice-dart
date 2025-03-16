/*
7,1,5,3,6,4

maxProfit = 0;

buyIndex = 0;   7 > 1
sellIndex = 0 + 1;  1 > 5

buy = 7 > 1
sell = 1 > 5

if (findLowestBuyIndex){
  updateBuyIndex
  updateSellIndex = 1 + buyIndex
}


for (int = 1; i < nums.length - 1; i++){
  if (nums[buyIndex] > nums[i]) buyIndex = i;
  if (nums[sellIndex] < nums[i + 1]) sellIndex = i + 1;
  if (nums[sellIndex] - nums[buyIndex] > maxProfilt) {
    maxProfilt = nums[sellIndex] - nums[buyIndex];
  }
}

*/

main() {
  List<int> nums1 = [7, 1, 5, 3, 6, 4];
  List<int> nums2 = [7, 6, 4, 3, 1];
  print(bestTimeToBuyStock(nums1));
  print(bestTimeToBuyStock(nums2));
}

int bestTimeToBuyStock(List<int> nums) {
  int maxProfit = 0;

  int buyIndex = 0;
  int sellIndex = 0 + 1;

  if (nums[sellIndex] - nums[buyIndex] > maxProfit) {
    maxProfit = nums[sellIndex] - nums[buyIndex];
  }

  for (int i = 1; i < nums.length - 1; i++) {
    if (nums[buyIndex] > nums[i]) {
      buyIndex = i;
      sellIndex = i + 1;
    }
    if (nums[sellIndex] < nums[i + 1]) sellIndex = i + 1;
    if (nums[sellIndex] - nums[buyIndex] > maxProfit) {
      maxProfit = nums[sellIndex] - nums[buyIndex];
    }
  }

  return maxProfit;
}
