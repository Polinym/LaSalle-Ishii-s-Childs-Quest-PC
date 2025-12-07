hash = scr_actor_hash();
if (scr_secret_check(hash)) {instance_destroy();}
bonus = obj_ram.bonus;
type = SECRET_NONE;
item = item_WaterBottle;
infinite = false;
image_speed = 0.15;
money = 0;