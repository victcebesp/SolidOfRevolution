public class VertexRotationManager {

  private float radians;
  private int angle;
  private ArrayList<Vertex> vertexes;
  
  public VertexRotationManager(ArrayList<Vertex> vertexes) {
    this.angle = 360 / 45;
    this.radians = radians(angle);
    this.vertexes = vertexes;
  }

  public void rotateVertexes() {
    
    for (int i = 0; i < vertexes.size() - 1; i++) {
      
      Vertex firstVertex = vertexes.get(i);
      Vertex secondVertex = vertexes.get(i + 1);
      
      shape.vertex(firstVertex.x, firstVertex.y, firstVertex.z);
      shape.vertex(secondVertex.x, secondVertex.y, secondVertex.z);
      
      vertexRotationManager.update(shape, vertexes.get(i), vertexes.get(i+1));
    }
    
  }

  public Vertex rotateVertex(Vertex vertex, float radians) {
    
    int newX = (int) (vertex.x() * cos(radians) - vertex.z() * sin(radians));
    int newZ = (int) (vertex.x() * sin(radians) + vertex.z() * cos(radians));
    
    return new Vertex(newX, vertex.y(), newZ);
  }
  
  public void update(PShape shape, Vertex first, Vertex second) {
    for (int j = angle; j <= 360; j += angle) {
        Vertex firstVertex = vertexRotationManager.rotateVertex(first, radians);
        shape.vertex(firstVertex.x, firstVertex.y, firstVertex.z);
  
        Vertex secondLevel = vertexRotationManager.rotateVertex(second, radians);
        shape.vertex(secondLevel.x, secondLevel.y, secondLevel.z);
        
        radians = radians(angle + j);
      }
  }
  
}
