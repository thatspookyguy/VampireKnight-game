if (file_exists("checkpoint.ini"))
{
        ini_open("checkpoint.ini");
        x = ini_read_real("player", "x", x);
        y = obj_player.y + + 90;
        ini_close();
}
