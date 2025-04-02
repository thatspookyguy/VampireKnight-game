if (sprite_index == spr_checkpoint_active)
{
        exit;
}
sprite_index = spr_checkpoint_active;

mask_index = spr_nothing


ini_open("checkpoint.ini");
ini_write_real("player", "x", x);
ini_write_real("player", "y", y);
ini_close();