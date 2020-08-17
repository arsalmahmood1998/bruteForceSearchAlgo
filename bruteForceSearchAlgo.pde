PVector [] array= new PVector[5];
void setup() {
}
void draw() {
}
int bruteForceClosestPoints(PVector [] array) {
  float dMin=Integer.MAX_VALUE;
  int index1;
  int index2;
  for (int i=0; i<array.length; i++) {
    for (int j=1; j<array.length; j++) {
      float distance=sqrt((array[i].x-array[j].x)+(array[i].y-array[j].y));
      if (distance<dMin) {
        dMin=distance;
        index1=i;
        index2=j;
      }
    }
  }
  return index1;
}
