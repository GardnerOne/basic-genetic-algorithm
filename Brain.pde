class Brain {
 PVector[] directions;
 int step = 0;
 float mutationRate;
 
 Brain(int size, float mutationRate) {
   this.mutationRate = mutationRate;
   directions = new PVector[size];
   randomize();
 }
 
 void randomize() {
    for (int i = 0; i < directions.length; i++) {
      float randomAngle = random(2*PI);
      directions[i] = PVector.fromAngle(randomAngle);
    }
 }
 
 Brain clone() {
   Brain clone = new Brain(directions.length, mutationRate);
   for (int i = 0; i < directions.length; i++) {
    clone.directions[i] = directions[i].copy(); 
   }
   return clone;
 }
 
 void mutate() {   
   for (int i = 1; i < directions.length; i++) {
    float rand = random(1);
    if (rand < mutationRate) {
     float randomAngle = random(2*PI);
     directions[i] = PVector.fromAngle(randomAngle);
    }
   }
 }
}
