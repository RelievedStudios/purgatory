///@description TIMES
enemy_bullet(oebw, 270, 448, by + 40);
dir_01 = 200;
for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60, by + 40);
	enemy_bullet(oeba, (dir_01 - 5) + (i * 10), bx - 60, by + 40);
}
//area_warning(457, 110, 110, 600, 44, 0);
//area_warning(713, 110, 110, 600, 44, 0);