PVector num1=new PVector(6, 10);
PVector num2=new PVector(100, 2);
PVector num3=new PVector(61, 10);
PVector num4=new PVector(60, 10);
PVector num5=new PVector(100, 10);
PVector [] array={num1, num2, num3, num4, num5};
void setup() {
  bruteForceClosestPoints( array);
}
void draw() {
}
void bruteForceClosestPoints(PVector [] array) {
  int dMin=Integer.MAX_VALUE;
  int result=0;
  int index1=0;
  int index2=0;
  for (int i=0; i<array.length; i++) {
    for (int j=i+1; j<array.length; j++) {
      int distance=(int)dist(array[i].x, array[i].y, array[j].x, array[j].y);
      if (distance<dMin) {
        dMin=distance;
        result=dMin;
        index1=i;
        index2=j;
      }
    }
  }
  println("Min distance="+result);
  println("indexes of closest points="+index1+" "+"and"+" "+index2);
}
