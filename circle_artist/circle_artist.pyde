cursor_x = 0
cursor_y = 0
r = 0
last_r = 0
angle = 0

RADIUS_BOUNDS = (30, 50)
ANGLE_BOUNDS = (0, 2*PI)

def setup():
    size(1000, 700)
    background(255)
    stroke(1)
    draw_circle()
    draw_circle()
    
def draw():
    pass

def draw_circle():
    fill(100, 50, 70)
    r = random(RADIUS_BOUNDS[0], RADIUS_BOUNDS[1])
    angle = random(ANGLE_BOUNDS[0], ANGLE_BOUNDS[1])
    combined_radii = r + last_r
    x_offset = r * cos(angle)
    y_offset = r * sin(angle)
    x_dist = cursor_x + x_offset
    y_dist = cursor_y + y_offset
    line(cursor_x, cursor_y, cursor_x + x_offset, cursor_y)
    line(cursor_x, cursor_y, cursor_x, cursor_y + y_offset)
    line(cursor_x, cursor_y, cursor_x + x_offset, cursor_y + y_offset)
    circle(cursor_x + x_offset, cursor_y + y_offset, r)
    cursor_x += x_offset
    cursor_y += y_offset
    last_r = r
