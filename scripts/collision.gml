var dist, dir, xdir, ydir;
dist = point_distance(x, y, xprevious, yprevious)
dir = degtorad(point_direction(xprevious, yprevious, x, y))
xdir = cos(dir)
ydir = (-sin(dir))
x = xprevious
y = yprevious
repeat dist
{
    if place_meeting((x + xdir), y, other.object_index)
        hspeed = 0
    else
        x += xdir
    if place_meeting(x, (y + ydir), other.object_index)
        vspeed = 0
    else
        y += ydir
}
