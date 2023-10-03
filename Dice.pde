int total = 0; // Variable to keep track of the total

void setup() {
    size(400, 400);
    noLoop();
}

void draw() {
    background(255); // Clear the screen
    
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            Die die = new Die(i * 100 + 50, j * 100 + 50); // Create a Die instance
            die.show(); // Display the die
            total += die.roll(); // Add the roll value to the total
        }
    }
    
    textSize(32);
    fill(0);
    text("Total: " + total, 150, 350); // Display the total
}

void mousePressed() {
    redraw(); // Redraw when the mouse is pressed
}

class Die {
    int x, y; // Member variable declarations for position
    
    Die(int x, int y) {
        this.x = x; // Initialize x and y with constructor arguments
        this.y = y;
    }
    
    int roll() {
        int value = (int) random(1, 7); // Simulate a dice roll (1-6)
        return value;
    }
    
    void show() {
      fill(255);
        rect(x, y, 80, 80); // Display the die as a square
        
        // Depending on the value, draw dots in the appropriate positions
        if (roll() == 1) {
          fill(0);
            ellipse(x + 40, y + 40, 20, 20); // Center dot for 1
        } 
        else 
           fill(0);
          ellipse(x + 20,y + 20 , 20,20);
    }
}

 
