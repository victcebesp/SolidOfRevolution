PShape shape;
int xCoordinate, yCoordinate, lastXCoordinate, lastYCoordinate;
ArrayList<Line> lines = new ArrayList();
ArrayList<Vertex> vertexes = new ArrayList();
boolean shapeEnded = false;
VertexRotationManager vertexRotationManager;
Vertex firstVertex, lastVertex;

void setup() {

  size(600, 600, P3D);
  stroke(255,  201, 34);
  
  lastXCoordinate = width / 2;
  lastYCoordinate = 30;
  
  firstVertex = new Vertex(lastXCoordinate - width/2, lastYCoordinate - height/2, 0);
  vertexes.add(firstVertex);
}

void draw() {
  background(0);
  
  if(!shapeEnded) {
    rect(width/2, 0, 1, height);
    drawPrintedLines();
    showInstructions();
    if(mouseX >= width / 2) {
      line(lastXCoordinate, lastYCoordinate, mouseX, mouseY);
    }  
  }
  
  
  
  if(shapeEnded) {
    showRestartInstruction();
    translate(mouseX, mouseY);
    shape(shape);
  }
}

void mousePressed() {
  if(!shapeEnded && mouseX >= width / 2) {
    xCoordinate = mouseX;
    yCoordinate = mouseY;
    
    lines.add(new Line(lastXCoordinate, lastYCoordinate, xCoordinate, yCoordinate));
    
    vertexes.add(new Vertex(xCoordinate - width/2, yCoordinate - height/2, 0));
    
    lastXCoordinate = xCoordinate;
    lastYCoordinate = yCoordinate;
  }
  
}

void drawPrintedLines() {
  for (Line line : lines) {
    line(line.firstX(), line.firstY(), line.secondX(), line.secondY());
  }
}

void renderThreeDimensionForm() {
  
   vertexRotationManager = new VertexRotationManager(vertexes);
  
  if (vertexes.size() >= 2) {      
    
    shape = createShape();
    shape.beginShape(TRIANGLE_STRIP);
    
    shape.fill(color(255));
    shape.stroke(255, 201, 34);
    shape.strokeWeight(2);
    
    vertexRotationManager.rotateVertexes();
    
    shape.endShape();   
  }
  shapeEnded = true;
}

void keyPressed() {
  if(key == 'f') {
    lastVertex = vertexes.get(vertexes.size() - 1);
    renderThreeDimensionForm();
  } else if (key == 'r'){
    restart();
  }
}

void showInstructions() {
  text("You can only draw in the right part", 20, height / 2 - 20);
  text("To build the solid of revolution, press \" f \" key", 20, height / 2);
  text("To restart the drawing, press \" r \" key", 20, height / 2 + 20);
}

void showRestartInstruction() {
  text("To restart, press \" r \" key", 220, width - 30);
  text("You can move the solid of revolution by moving the mouse pointer", 100, width - 10 );
}

void restart() {
  shapeEnded = false;
  lines = new ArrayList();
  vertexes = new ArrayList();
  lastXCoordinate = width / 2;
  lastYCoordinate = 30;
  firstVertex = new Vertex(lastXCoordinate - width/2, lastYCoordinate - height/2, 0);
  vertexes.add(firstVertex);
}
