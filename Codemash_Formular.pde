// formular to enter player names and emails

import controlP5.*;

ControlP5 cp5;

String textValue = "";

void setup() {
  size(700,400);
  
  PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  
                 
  cp5.addTextfield("Player 1 Name")
     .setPosition(20,100)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setFocus(true)
     .setAutoClear(false)
     ;
  
  cp5.addTextfield("Player 2 Name")
     .setPosition(400,100)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setFocus(false)
     .setAutoClear(false)
     ;
          
  cp5.addTextfield("Player 1 Email")
     .setPosition(20,240)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setFocus(false)
     .setAutoClear(false)
     ;
  
  cp5.addTextfield("Player 2 Email")
     .setPosition(400,240)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setFocus(false)
     .setAutoClear(false)
     ;
          
  textFont(font);
  cp5.hide(); // this is how to hide cp5
  cp5.show(); // this is how to show cp5
}

void draw() {
  background(0);
  fill(255);
  /*print(cp5.get(Textfield.class,"Player 1 Name").getText());print("\t");
  print(cp5.get(Textfield.class,"Player 2 Name").getText());print("\t");
  print(cp5.get(Textfield.class,"Player 1 Email").getText());print("\t");
  println(cp5.get(Textfield.class,"Player 2 Email").getText());
  text(textValue, 360,180);*/
}

/*public void clear() {
  cp5.get(Textfield.class,"Player 1 Name").clear();
}*/

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}


/*public void input(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'input' : "+theText);
}*/




