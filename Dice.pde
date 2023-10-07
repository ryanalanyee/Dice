int total = 0;

void setup() {
    size(400, 400);
    noLoop();
}

void draw() {
    background(255);
    
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            Die die = new Die(i * 100 + 50, j * 100 + 50);
            die.show();
            total += die.getValue();
        }
    }
    
    textSize(32);
    fill(0);
    text("Total: " + total, 125, 375);
}

void mousePressed() {
    redraw();
    total = 0;
}

class Die {
    int x, y;
    int value;

    Die(int x, int y) {
        this.x = x;
        this.y = y;
        this.value = roll();
    }

    int roll() {
        return (int) random(1, 7);
    }

    int getValue() {
        return value;
    }

    void show() {
        fill(255);
        rect(x, y, 80, 80);

        if (value == 1) {
            fill(0);
            ellipse(x + 40, y + 40, 20, 20);
        } 
        else if (value == 2) {
            fill(0);
            ellipse(x + 25, y + 25, 20, 20);
            ellipse(x + 55, y + 55, 20, 20);
        }
        else if (value == 3) {
            fill(0);
            ellipse(x + 25, y + 25, 20, 20);
            ellipse(x + 40, y + 40, 20, 20);
            ellipse(x + 55, y + 55, 20, 20);
        }
        else if (value == 4) {
            fill(0);
            ellipse(x + 25, y + 25, 20, 20);
            ellipse(x + 55, y + 25, 20, 20);
            ellipse(x + 25, y + 55, 20, 20);
            ellipse(x + 55, y + 55, 20, 20);
        }
        else if (value == 5) {
            fill(0);
            ellipse(x + 25, y + 25, 20, 20);
            ellipse(x + 55, y + 25, 20, 20);
            ellipse(x + 40, y + 40, 20, 20);
            ellipse(x + 25, y + 55, 20, 20);
            ellipse(x + 55, y + 55, 20, 20);
        }
        else if (value == 6) {
            fill(0);
            ellipse(x + 25, y + 20, 20, 20);
            ellipse(x + 55, y + 20, 20, 20);
            ellipse(x + 25, y + 40, 20, 20);
            ellipse(x + 55, y + 40, 20, 20);
            ellipse(x + 25, y + 60, 20, 20);
            ellipse(x + 55, y + 60, 20, 20);
        }
    }
}
