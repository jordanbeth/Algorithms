/*
Problem Extra Number

- You're given three integers, a, b and c. It is guaranteed that two of these integers are equal to each other.
- What is the value of the third integer?

Example
* For a = 2, b = 7 and c = 2,
  - output - :  extraNumber(a, b, c) = 7
*/

int extraNumber(int a, int b, int c){
  if (a == b){
    return c;
  }else if(b == c){
    return a;
  }else if (a == c){
    return b;
  }else{
    return -1;
  }
}
