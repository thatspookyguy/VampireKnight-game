// Inherit the parent event
event_inherited();

if (file_exists("checkpoint.ini"))
{
        file_delete("checkpoint.ini");
}

room_goto(rm_introcutscene);