///@description MAIN BEAT(MB), MD

//enemy_bullet(oebw, 270, bx, by + 40);

enemy_bullet_vinyl(-120, 1075, 270, (bx - 193) - 40 , by + 100, 5);


//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 340;

for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 - (i * 10), bx + 60 -(i * 4), by + 40);
}