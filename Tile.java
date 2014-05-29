import java.awt.*;

public class Tile extends Rectangle
{
    private int xcor;
    private int ycor;
    
    
    public Tile(int xCor, int yCor, int width, int height){
	setBounds(xCor,yCor,width, height);//sets x and y coordinbates on GUI
    }

    public void draw(Graphics g){
	g.setColor(new Color(0,0,0));
	g.fillRect(xcor, ycor,Grid.tileSize,Grid.tileSize);
    }
    

}
