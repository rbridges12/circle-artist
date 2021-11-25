float cursor_x = 100;
float cursor_y = 100;
float r = 0;
float last_r = 0;
float angle = 0;
float last_angle = 0;

float[] RADIUS_BOUNDS = {100, 110};
float[] ANGLE_BOUNDS = {-PI, PI};

void setup() {
    size(1000, 700);
    background(255);
    noFill();
    frameRate(4);
    cursor_x = random(30, width-30);
    cursor_y = random(30, height-30);
    last_r = 20;
    circle(cursor_x, cursor_y, 20);
    
    //for (int i = 0; i < 10; i++) {
    //  draw_circle();
    //}
}
    
void draw() {
  draw_circle();
}

void draw_circle() {
    check_bounds();
    //fill(100, 50, 70);
    r = random(RADIUS_BOUNDS[0], RADIUS_BOUNDS[1]);
    angle = random(ANGLE_BOUNDS[0], ANGLE_BOUNDS[1]);
    float combined_radii = r + last_r;
    float x_offset = r * cos(angle);
    float y_offset = r * sin(angle);
    //float x_dist = cursor_x + x_offset;
    //float y_dist = cursor_y + y_offset;
    //stroke(0);
    //line(cursor_x, cursor_y, cursor_x + x_offset, cursor_y);
    //line(cursor_x + x_offset, cursor_y, cursor_x + x_offset, cursor_y + y_offset);
    line(cursor_x, cursor_y, cursor_x + x_offset, cursor_y + y_offset);
    stroke(100, 75, 200);
    circle(cursor_x + x_offset, cursor_y + y_offset, r);
    cursor_x += x_offset;
    cursor_y += y_offset;
    last_r = r;
}

void check_bounds() {
 if((cursor_x > width - 30) || (cursor_x < 30))
   cursor_x = random(30, width-30);
 
 if((cursor_y > height - 30) || (cursor_y < 30))
   cursor_y = random(30, height-30);
}
