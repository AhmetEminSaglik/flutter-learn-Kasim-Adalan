void main() {
  var nums = <int>[];
  nums.add(34);
  nums.add(67);
  nums.add(67);
  nums.add(67);
  nums.add(67);
  try {
    nums[20] = 89;

  } catch (e) {
    print("Size of list is exceed --> ${e}");
  }
}
