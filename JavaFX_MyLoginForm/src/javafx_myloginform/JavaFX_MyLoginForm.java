/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javafx_myloginform;


import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.stage.Stage;

/**
 *
 * @author arjun
 */
public class JavaFX_MyLoginForm extends Application {
    
    @Override
    public void start(Stage primaryStage)   {
            primaryStage.setTitle("JavaFX Welcome!");
            
            //setup the GridPane layout
            GridPane grid = new GridPane();
            grid.setAlignment(Pos.CENTER);
            
            //manage the spacing between rows and columns
            grid.setHgap(10);
            grid.setVgap(10);

            //space around the edges of the grid pane
            grid.setPadding(new Insets(25, 25, 25, 25));
            
            //create the scene with grid as root node
            Scene scene = new Scene(grid, 300, 275);
                 
            //set the title for the page, along with font
            Text sceneTitle = new Text("Welcome");
            sceneTitle.setFont(Font.font("Tahoma", FontWeight.NORMAL, 20));
            grid.add(sceneTitle, 0, 0, 2, 1);
            
            //set the username label at zeroth col, first row
            Label userName = new Label("Username");
            grid.add(userName, 0, 1);
            
            TextField userTextField = new TextField();
            grid.add(userTextField, 1, 1);           
            
            Label pw = new Label("Password");
            grid.add(pw, 0, 2);
            
            PasswordField pwBox = new PasswordField();
            grid.add(pwBox, 1, 2);
            
            
            //set up button and text
            Button btn = new Button("Sign In");
            HBox hBtn = new HBox(10);
            hBtn.setAlignment(Pos.BOTTOM_RIGHT);
            hBtn.getChildren().add(btn);
            grid.add(hBtn, 1, 4);
            
            //text control for displaying the message   
            final Text actionTarget = new Text();
            grid.add(actionTarget, 1, 6);
            
                        
            primaryStage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
