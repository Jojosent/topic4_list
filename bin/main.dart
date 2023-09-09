import 'dart:io';
import 'dart:math';

// Task 1
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   for (int i = 0; i < a.length; i++) {
//     a[i] *= 2;
//   }
//   print(a);
// }

// Task 1.2
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   int n = int.parse(stdin.readLineSync()!);
//   for (int i = 0; i < a.length; i++) {
//     a[i] -= n;
//   }
//   print(a);
// }

// Task 1.3
// void main() {
//   List<double> myArray = [10.0, 2.0, 5.0, 4.0];
//   if (myArray.isNotEmpty && myArray[0] != 0.0) {
//     for (int i = 0; i < myArray.length; i++) {
//       myArray[i] /= myArray[0];
//     }
//   }
//   print(myArray);
// }

// Task 2
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   for (int i = 0; i < a.length; i++) {
//     a[i] -= 20;
//   }
//   print(a);
// }

// Task 2.2
// void main() {
//   List<double> myArray = [10.0, 2.0, 5.0, 4.0];
//   if (myArray.isNotEmpty && myArray[0] != 0.0) {
//     for (int i = 0; i < myArray.length; i++) {
//       myArray[i] *= myArray[myArray.length - 1];
//     }
//   }
//   print(myArray);
// }

// Task 2.3
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   int n = int.parse(stdin.readLineSync()!);
//   for (int i = 0; i < a.length; i++) {
//     a[i] += n;
//   }
//   print(a);
// }

// Task 3
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   var r = 0;
//   for (int i = 0; i < a.length; i++) {
//     r += a[i];
//   }
//   print(r);
// }

// Task 3.1
// void main() {
//   List<int> a = [1, 2, 3];
//   var r = 1;
//   for (int i = 0; i < a.length; i++) {
//     r *= a[i];
//   }
//   print(r);
// }

// Task3.3
// void main() {
//   List<int> a = [1, 2, 3];
//   double r = 1;
//   for (int i = 0; i < a.length; i++) {
//     r += pow(a[i], 2);
//   }
//   print(r);
// }

// Task 3.4
// void main() {
//   List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   var r = 0;
//   for (int i = 0; i < 6; i++) {
//     r += a[i];
//   }
//   print(r);
// }

// Task 4
// void main() {
//   List<int> a = [12, 2, 13, 2, 14, 2, 15];

//   for (int i = 0; i < a.length; i++) {
//     if (a[i] ~/ 10 != 0) {
//       print(a[i]);
//     }
//   }
// }

// Task 4.2
// void main() {
//   List<int> a = [122, 2, 133, 2, 144, 2, 155];

//   for (int i = 0; i < a.length; i++) {
//     if (a[i] ~/ 100 != 0) {
//       print(a[i]);
//     }
//   }
// }

// Task 5
// void main() {
//   List<int> arr = [3, 7, 1, 9, 4, 6];
//   arr.sort();
//   arr.remove(arr[arr.length - 1]);
//   print(arr);
// }

// Task 5.1
// void main() {
//   List<int> arr = [3, 7, 1, 9, 4, 6];
//   arr.sort();
//   arr.remove(arr[0]);
//   print(arr);
// }

// Task 6
// void main() {
//   List<int> myList = [3, 7, 1, 9, 4, 6, 1, 3, 7];

//   List<int> uniqueList = [];

//   for (int i in myList) {
//     if (!uniqueList.contains(i)) {
//       uniqueList.add(i);
//     }
//   }

//   print(uniqueList);
// }

// Task 7
// void main() {
//   List<int> myList = [3, 7, -1, 9, 4, 6];
//   int numberToInsert = 55;
//   int indexOfFirstNegative = -1;

//   for (int i = 0; i < myList.length; i++) {
//     if (myList[i] <= -1) {
//       indexOfFirstNegative = i;
//       break;
//     }
//   }

//   if (indexOfFirstNegative != -1) {
//     myList.insert(indexOfFirstNegative + 1, numberToInsert);
//   }

//   print(myList);
// }

// Task 7.1
// void main() {
//   List<int> myList = [3, 7, -1, 9, 4, 6, 8, 10];
//   int numberToInsert = 55;

//   int indexOfLastEven = -1;
//   for (int i = myList.length - 1; i >= 0; i--) {
//     if (myList[i] % 2 == 0) {
//       indexOfLastEven = i;
//       break;
//     }
//   }

//   if (indexOfLastEven != -1) {
//     myList.insert(indexOfLastEven, numberToInsert);
//   }

//   print(myList);
// }

// Task 8
// void main() {
//   List<int> num1 = [9, 7, 8, 5, 4, 3, 2, 1, 6, 8, 0, 5, 4, 7, 3, 2, 1, 9, 0, 1];
//   List<int> num2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

//   List<int> result = List<int>.filled(20, 0);

//   int carry = 0;
//   for (int i = 19; i >= 0; i--) {
//     int sum = num1[i] + num2[i] + carry;
//     result[i] = sum % 10;
//     carry = sum ~/ 10;
//   }
//   print("Результат сложения:");
//   print(result);
// }

// Task 8.2
// void main() {
//   List<int> num1 = [9, 7, 8, 5, 4, 3, 2, 1, 6, 8, 0, 5, 4, 7, 3, 2, 1, 9, 0, 1, 9, 7, 8, 5, 4, 3, 2, 1, 6, 8];
//   List<int> num2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

//   List<int> result = List<int>.filled(30, 0);

//   int borrow = 0;
//   for (int i = 29; i >= 0; i--) {
//     int diff = num1[i] - num2[i] - borrow;
//     if (diff < 0) {
//       diff += 10;
//       borrow = 1;
//     } else {
//       borrow = 0;
//     }
//     result[i] = diff;
//   }

//   print("Результат вычитания:");
//   print(result);
// }

// Task 9
// void main() {
//   List<String> week = [];
//   week.add("Понедельник");
//   week.add("Вторник");
//   week.add("Среда");
//   week.add("Четверг");
//   week.add("Пятница");
//   week.add("Суббота");
//   week.add("Воскресенье");

//   print("Дни недели:");
//   week.forEach((day) => print(day));

//   week.remove("Суббота");
//   week.remove("Воскресенье");

//   print("\nРабочие дни:");
//   week.forEach((day) => print(day));
// }

// Task 10
// void main() {
//   const List<String> week = [
//     "Понедельник",
//     "Вторник",
//     "Среда",
//     "Четверг",
//     "Пятница",
//     "Суббота",
//     "Воскресенье"
//   ];

//   print(week);
// }
