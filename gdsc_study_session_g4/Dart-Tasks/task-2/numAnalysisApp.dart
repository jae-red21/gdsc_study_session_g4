import 'dart:io';

void main() {
  final List<int> numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  String display = numbers.join(', ');
  print(display);
  print(
      "input the number of your choice:\n1. Find Maximum \n2. Find Minimum \n3. Calculate Sum \n4. Calculate Average ");
  var choice = stdin.readLineSync();
  switch (choice) {
    case '1':
      var maximum = findMaximum(numbers);
      print("The maximum number in the list is $maximum");
      break;
    case '2':
      var minimum = findMinimum(numbers);
      print("The minimum number in the list is $minimum");
      break;
    case '3':
      var sum = calculateSum(numbers);
      print("The Sum of the numbers in the list is $sum");
      break;
    case '4':
      var average = calculateAverage(numbers);
      print("The average of the numbers in the list is $average");
      break;
    default:
      print("Invalid Choice, try again.");
  }
}

int findMaximum(List<int> nums) {
  int max = nums[0];
  for (var num in nums) {
    if (num > max) max = num;
  }
  return max;
}

int findMinimum(List<int> nums) {
  int min = nums[0];
  for (var num in nums) {
    if (num < min) min = num;
  }
  return min;
}

double calculateSum(List<int> nums) {
  var total = 0.0;
  for (var num in nums) {
    total += num;
  }
  return total;
}

double calculateAverage(List<int> nums) {
  var total = 0.0;
  for (var num in nums) {
    total += num;
  }
  return total / nums.length;
}
