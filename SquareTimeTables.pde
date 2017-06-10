//time tables

int size_x = 700, size_y = 700;
int contador = 0;
int lado = 250, cant_puntos = lado*4, dist = 20, tabla = 21;

PVector[] pos = new PVector[cant_puntos];

void setup(){
  
  size(700, 700);
  
  //float w = TWO_PI/cant_puntos;
  float w = float(size_x-2*dist);
  w = w/float(lado);
  
  println(w);

  for (int i = 0; i<lado ;i++){
    pos[i] = new PVector (dist+w*i,dist);
    pos[i+lado] = new PVector (size_x-dist,(dist+w*i));
    pos[i+2*lado] = new PVector (size_x-dist-w*i,size_y-dist);
    pos[i+3*lado] = new PVector (dist,size_y-dist-w*i);
  }
  background(0);
 
}

void draw(){ 
    strokeWeight(.5);
    
  if (contador<cant_puntos){
    int mult = tabla*(contador) % cant_puntos;
    
    //ellipse(pos[contador].x,pos[contador].y,5,5);
    
    stroke(0,250,0);
   
    line(pos[contador].x,pos[contador].y,pos[mult].x,pos[mult].y);
    
  }
  contador++;
  
}