/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.Graphics;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import javax.swing.JApplet;

/**
 *
 * @author arjun
 */
public class MyRectangleDrawer extends JApplet {

    /**
     * Initialization method that will be called after the applet is loaded into
     * the browser.
     */
    
    int sx, sy; //starting (x, y) co-ordinates for rectangle
    int ex, ey; //ending (x, y) co-ordinates for rectangle
    
    boolean release_flag;
    
    public void init() {
        // TODO start asynchronous download of heavy resources
        
        release_flag = false;
        
        addMouseListener(new MyMouseAdapter(this));
        addMouseMotionListener( new MyMouseMotionAdapter(this));
    }
    
    public void paint(Graphics g)   {
        g.drawString("Click and drag mouse to draw a rectangle!", 10, 20);
        
        if( release_flag == true )  
            g.drawRect(sx, sy, ex - sx, ey - sy );
           
    }

    // TODO overwrite start(), stop() and destroy() methods
}

class MyMouseAdapter extends MouseAdapter    {
    MyRectangleDrawer mrd;        
    MyMouseAdapter(MyRectangleDrawer mrd) {
        this.mrd = mrd;
    }
    
    @Override
    public void mousePressed(MouseEvent me) {
        mrd.sx = me.getX();
        mrd.sy = me.getY();
    }
    
    @Override
    public void mouseReleased(MouseEvent me) {
        mrd.ex = me.getX();
        mrd.ey = me.getY();
        
        mrd.release_flag = true;
        
        mrd.repaint();
    }   
}

class MyMouseMotionAdapter extends MouseMotionAdapter   {
    MyRectangleDrawer mrd;        
    
    MyMouseMotionAdapter(MyRectangleDrawer mrd) {
        this.mrd = mrd;
    }
    
    public void mouseDragged(MouseEvent me) {
        mrd.showStatus(me.getX() + " " + me.getY());
    }
    
}
