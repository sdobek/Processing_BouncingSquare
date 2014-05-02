//import processing.opengl.*;
float theta;
float dy;
int dir;
float zDepth;
float zDir;

void setup(){
  size(600, 600, P3D); 
  theta = 0;
  dy = 200;
  dir = 1;
  zDepth = 800;
  zDir = -1;
}

void draw(){
  background(0);
  fill(0,0,255);
  stroke(0, 255, 0);
  strokeWeight(3);
  pushMatrix();
  translate(300, dy, 0); 
  rotateX(theta);
  box(100);
  popMatrix();
  
  if (dir == -1){
    dy -= 5;
    if (dy < 100){
      dir = 1;
    }
  }
  else if (dir == 1){
    dy += 5;
    if (dy > 500){
      dir = -1;
    }
  }
  
  theta += 3;
  if (theta >= 360){
    theta -= 360;
  }
  
  beginCamera();
  //rotateY(radians(cAngle));
  camera(500, 500, zDepth, 300, 300, 0, 0, 1, 0);
  //rotateY(radians(cAngle));
  endCamera();
  //zDepth -= 6;
  if (zDir == -1){
    zDepth -= 5;
    if (zDepth < -1000){
      zDir = 1;
    }
  }
  else if (zDir == 1){
    zDepth += 5;
    if (zDepth > 1000){
      zDir = -1;
    }
  }
  
}
  
