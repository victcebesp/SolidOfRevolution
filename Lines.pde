public class Line {
  
  private int firstXCoordinate;
  private int firstYCoordinate;
  private int secondXCoordinate;
  private int secondYCoordinate;
  
  public Line(int firstXCoordinate, int firstYCoordinate, int secondXCoordinate, int secondYCoordinate) {
    this.firstXCoordinate = firstXCoordinate;
    this.firstYCoordinate = firstYCoordinate;
    this.secondXCoordinate = secondXCoordinate;
    this.secondYCoordinate = secondYCoordinate;
  }
  
  public int firstX() {
    return firstXCoordinate;
  }
  
  public int firstY() {
    return firstYCoordinate;
  }
  
  public int secondX() {
    return secondXCoordinate;
  }
  
  public int secondY() {
    return secondYCoordinate;
  }
  
}
