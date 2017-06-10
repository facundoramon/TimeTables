//time tables

int size_x = 700, size_y = 700;
int contador = 0;
int cant_puntos = 1000, radio = size_x/2-20, tabla = 508;

PVector[] pos = new PVector[cant_puntos];

void setup(){
  
  size(700, 700);
  
  float w = TWO_PI/cant_puntos;

  for (int i = 0; i<cant_puntos;i++){
    pos[i] = new PVector (int(size_x/2-radio*cos(w*i)),size_y/2-int(radio*sin(w*i)));
  }
  background(0);
 
}

void draw(){ 
    strokeWeight(.5);
    
  if (contador<cant_puntos){
    int mult = tabla*(contador) % cant_puntos;

    stroke(100,0,100);
   
    line(pos[contador].x,pos[contador].y,pos[mult].x,pos[mult].y);
    
  }
  contador++;
  
}