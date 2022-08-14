//------------ Nível ------------

//Autoscroll e Classic scroll
if(global.uni_level_autoscroll == 1)
||(global.uni_level_autoscroll == 2)
||(global.uni_level_autoscroll == 3)
    instance_create(view_xview[0]+214,view_yview[0]+226,obj_uni_autoscroll);
else if(global.uni_level_autoscroll == 4)
    instance_create(0,0,obj_uni_classicscroll);

//Cobrir nível de água para alguns estilos
if(global.uni_level_style == 2)
||(global.uni_level_style == 18)
    instance_create(0,0,obj_fillwater);

//Lago
if(global.uni_level_style == 9){
    lake = instance_create(0,544,obj_swim);
    lake.image_xscale = room_width;
    lake.image_yscale = 5;
}

//Lava
if(global.uni_level_style == 4)
||(global.uni_level_style == 10)
||(global.uni_level_style == 13)
||(global.uni_level_style == 14){
    lava = instance_create(0,544,obj_lava);
    lava.sprite_index = spr_uni_layout_demoresources_option;
    lava.image_xscale = room_width;
    lava.image_yscale = 5;
}

with(obj_uni_flagpole){instance_deactivate_object(id); instance_create(x,y,obj_flagpole);}
//------------ Objetos gerais ------------
with(obj_uni_tile)instance_create(x,y,obj_solid);
with(obj_uni_demo_2)instance_create(x,y,obj_solid);
with(obj_uni_demo_3){instance_create(x,y,obj_slippery); instance_create(x,y,obj_solid);}
with(obj_uni_demo_4_1){instance_deactivate_object(id); instance_create(x,y,obj_expandplatform_h);}
with(obj_uni_demo_4_2){instance_deactivate_object(id); instance_create(x,y,obj_expandplatform_v);}
with(obj_uni_demo_4_3){instance_deactivate_object(id); instance_create(x,y,obj_expandplatform_hv);}
with(obj_uni_demo_5_1){instance_deactivate_object(id); instance_create(x,y,obj_flowerblock);} 
with(obj_uni_demo_5_2){instance_deactivate_object(id); instance_create(x,y,obj_hammerblock);}
with(obj_uni_demo_5_3){instance_deactivate_object(id); instance_create(x,y,obj_boomerangblock);}
with(obj_uni_demo_5_4){instance_deactivate_object(id); instance_create(x,y,obj_starblock);}
with(obj_uni_demo_6){instance_deactivate_object(id); instance_create(x,y,obj_arrowplatform);}
with(obj_uni_demo_7){instance_deactivate_object(id); instance_create(x,y,obj_noteblock);}
with(obj_uni_demo_10){instance_deactivate_object(id); instance_create(x,y,obj_flipblock);}
with(obj_uni_demo_11){instance_deactivate_object(id); instance_create(x,y,obj_propellerblock);}
with(obj_uni_demo_12){instance_deactivate_object(id); instance_create(x,y,obj_bluebrick);}
with(obj_uni_demo_13){instance_deactivate_object(id); instance_create(x,y,obj_block_pow);}
with(obj_uni_demo_14){instance_deactivate_object(id); instance_create(x,y,obj_block_view);}
with(obj_uni_demo_15){instance_deactivate_object(id); instance_create(x,y,obj_onoffblock);}
with(obj_uni_demo_16){instance_deactivate_object(id); instance_create(x,y,obj_onoffplatform);}
with(obj_uni_demo_17_1){instance_deactivate_object(id); instance_create(x,y,obj_coin);}
with(obj_uni_demo_17_2){instance_deactivate_object(id); instance_create(x,y,obj_pcoin);}
with(obj_uni_demo_18_1){instance_deactivate_object(id); instance_create(x,y,obj_pswitch);}
with(obj_uni_demo_19){instance_deactivate_object(id); instance_create(x,y,obj_hatch);}
with(obj_uni_demo_20){instance_deactivate_object(id); instance_create(x,y,obj_getshoe);}
with(obj_uni_demo_21){instance_deactivate_object(id); instance_create(x,y,obj_poison);}
with(obj_uni_demo_22){instance_deactivate_object(id); instance_create(x,y,obj_1up);}
with(obj_uni_demo_23){instance_deactivate_object(id); instance_create(x,y,obj_3upmoon);}
with(obj_uni_demo_24){instance_deactivate_object(id); instance_create(x,y,obj_star);}
with(obj_uni_demo_25){instance_deactivate_object(id); instance_create(x,y,obj_mushroom);}
with(obj_uni_demo_26){instance_deactivate_object(id); instance_create(x,y,obj_fireflower);}
with(obj_uni_demo_27){instance_deactivate_object(id); instance_create(x,y,obj_hammersuit);}
with(obj_uni_demo_28){instance_deactivate_object(id); instance_create(x,y,obj_leaf);}
with(obj_uni_demo_29){instance_deactivate_object(id); instance_create(x,y,obj_superflower);}
with(obj_uni_demo_30){instance_deactivate_object(id); instance_create(x,y,obj_blueshell);}
with(obj_uni_demo_31){instance_deactivate_object(id); instance_create(x,y,obj_beeshroom);}
with(obj_uni_demo_32){instance_deactivate_object(id); instance_create(x,y,obj_iceflower);}
with(obj_uni_demo_33){instance_deactivate_object(id); instance_create(x,y,obj_boomerangflower);}
with(obj_uni_demo_34){instance_deactivate_object(id); instance_create(x,y,obj_propellershroom);}
with(obj_uni_demo_35){instance_deactivate_object(id); instance_create(x,y,obj_goomba);}
with(obj_uni_demo_36_1){instance_deactivate_object(id); instance_create(x,y+2,obj_koopa);}
with(obj_uni_demo_36_2){instance_deactivate_object(id); instance_create(x,y+2,obj_koopa_red);}
with(obj_uni_demo_37_1){instance_deactivate_object(id); instance_create(x+16,y+32,obj_piranhaplant);}
with(obj_uni_demo_37_2){instance_deactivate_object(id); instance_create(x+16,y-32,obj_piranhaplant_down);}
with(obj_uni_demo_37_3){instance_deactivate_object(id); instance_create(x-32,y+16,obj_piranhaplant_right);}
with(obj_uni_demo_37_4){instance_deactivate_object(id); instance_create(x+32,y+16,obj_piranhaplant_left);}
with(obj_uni_demo_38){instance_deactivate_object(id); instance_create(x,y,obj_dinotorch);}
with(obj_uni_demo_39){instance_deactivate_object(id); instance_create(x,y,obj_swooper);}
with(obj_uni_demo_40){instance_deactivate_object(id); instance_create(x,y,obj_spiney);}
with(obj_uni_demo_41){instance_deactivate_object(id); instance_create(x,y,obj_buzzybeetle);}
with(obj_uni_demo_42){instance_deactivate_object(id); instance_create(x,y,obj_spiketop);}
with(obj_uni_demo_43){instance_deactivate_object(id); instance_create(x,y,obj_cheepcheep);}
with(obj_uni_demo_44){instance_deactivate_object(id); instance_create(x,y,obj_blooper);}
with(obj_uni_demo_45){instance_deactivate_object(id); instance_create(x,y,obj_porchupuffer);}
with(obj_uni_demo_46){instance_deactivate_object(id); instance_create(x,y,obj_podoboo);}
with(obj_uni_demo_47){instance_deactivate_object(id); instance_create(x,y+2,obj_drybones);}
with(obj_uni_demo_48){instance_deactivate_object(id); instance_create(x,y,obj_thwomp);}
with(obj_uni_demo_49){instance_deactivate_object(id); instance_create(x,y,obj_boo);}
with(obj_uni_demo_50){instance_deactivate_object(id); instance_create(x,y,obj_bobomb);}
with(obj_uni_demo_51){instance_deactivate_object(id); instance_create(x,y,obj_rex);}
with(obj_uni_demo_52){instance_deactivate_object(id); instance_create(x,y,obj_chargingchuck);}
with(obj_uni_demo_53){instance_deactivate_object(id); instance_create(x,y,obj_roundgoomba);}
with(obj_uni_demo_54_1){instance_deactivate_object(id); with(instance_create(x,y,obj_diacannon)) image_index = 0;}
with(obj_uni_demo_54_2){instance_deactivate_object(id); with(instance_create(x,y,obj_diacannon)) image_index = 1;}
with(obj_uni_demo_54_3){instance_deactivate_object(id); with(instance_create(x,y,obj_diacannon)) image_index = 2;}
with(obj_uni_demo_54_4){instance_deactivate_object(id); with(instance_create(x,y,obj_diacannon)) image_index = 3;}
with(obj_uni_demo_55){instance_deactivate_object(id); instance_create(x,y,obj_monty);}
with(obj_uni_demo_56){instance_deactivate_object(id); instance_create(x,y,obj_vulcanolotus);}
with(obj_uni_demo_57){instance_deactivate_object(id); instance_create(x,y,obj_firesnake);}
with(obj_uni_demo_58){instance_deactivate_object(id); instance_create(x,y,obj_nipper);} //<errado
with(obj_uni_demo_59){instance_deactivate_object(id); instance_create(x,y,obj_torpedolaunch);}
with(obj_uni_demo_60){instance_deactivate_object(id); instance_create(x,y,obj_newbowser);}
with(obj_uni_demo_61){instance_deactivate_object(id); instance_create(x,y,obj_fallingspike);}
with(obj_uni_demo_62) instance_create(x,y,obj_hurtsolid);
with(obj_uni_demo_63_1){instance_deactivate_object(id); instance_create(x,y,obj_vengine); instance_create(x,y,obj_engineblock_v);}
with(obj_uni_demo_63_2){instance_deactivate_object(id); instance_create(x,y,obj_vengine2); instance_create(x,y-16,obj_engineblock_v);}
with(obj_uni_demo_63_3){instance_deactivate_object(id); instance_create(x,y,obj_engine2); instance_create(x-16,y,obj_engineblock_h);}
with(obj_uni_demo_63_4){instance_deactivate_object(id); instance_create(x,y,obj_engine); instance_create(x,y,obj_engineblock_h);}
with(obj_uni_demo_64_1){instance_deactivate_object(id); instance_create(x,y,obj_bulletblaster);}
with(obj_uni_demo_64_2){instance_deactivate_object(id); instance_create(x,y,obj_bulletblaster_2);}
with(obj_uni_demo_65_1){pipev_solid = instance_create(x,y,obj_solid); pipev_solid.image_xscale = 2; pipev_solid.image_yscale = 1;}
with(obj_uni_demo_65_2){pipeh_solid = instance_create(x,y,obj_solid); pipeh_solid.image_xscale = 1; pipeh_solid.image_yscale = 2;}
with(obj_uni_demo_66)instance_create(x,y,obj_solidtop);
with(obj_uni_demo_67_1){instance_deactivate_object(id); instance_create(x,y,obj_donut);}
with(obj_uni_demo_67_2){instance_deactivate_object(id); instance_create(x,y,obj_donut_red);}
with(obj_uni_demo_68_1){instance_deactivate_object(id); with(instance_create(x,y,obj_platform_automoving)) type = 0;}
with(obj_uni_demo_68_2){instance_deactivate_object(id); with(instance_create(x,y,obj_platform_automoving)) type = 1;}
with(obj_uni_demo_68_3){instance_deactivate_object(id); with(instance_create(x,y,obj_platform_automoving)) type = 2;}
with(obj_uni_demo_68_4){instance_deactivate_object(id); with(instance_create(x,y,obj_platform_automoving)) type = 3;}
with(obj_uni_demo_69)instance_create(x,y,obj_solidtop);
with(obj_uni_demo_70_1){instance_deactivate_object(id); instance_create(x,y,obj_spring);}
with(obj_uni_demo_70_2){instance_deactivate_object(id); instance_create(x+16,y+12,obj_spring_super);}
with(obj_uni_demo_71)instance_create(x,y,obj_climb);
with(obj_uni_demo_72){instance_deactivate_object(id); instance_create(x,y,obj_key);}
with(obj_uni_demo_73){instance_deactivate_object(id); instance_create(x,y,obj_doorwall);}
with(obj_uni_demo_74_1){instance_deactivate_object(id); instance_create(x-8,y-1,obj_flippers_bottom);}
with(obj_uni_demo_74_2){instance_deactivate_object(id); instance_create(x-8,y,obj_flippers_top);}
with(obj_uni_demo_74_3){instance_deactivate_object(id); instance_create(x-14,y-8,obj_flippers_left);}
with(obj_uni_demo_74_4){instance_deactivate_object(id); instance_create(x-1,y-8,obj_flippers_right);}
with(obj_uni_demo_75){instance_deactivate_object(id); instance_create(x,y,obj_keyhole);}
with(obj_uni_demo_76){instance_deactivate_object(id); instance_create(x,y,obj_endboss);}

//------------ Objetos especiais ------------
with(obj_uni_demo_8_1){
    instance_deactivate_object(id);
    switch(item){
        case(0): instance_create(x,y,obj_block) break;                                       //0 - Coin
        case(1): instance_create(x,y,obj_block_multicoin) break;                             //1 - Multi Coin
        case(2): with(instance_create(x,y,obj_block)){sprout = cs_big;} break;               //2 - Super Mushroom
        case(3): with(instance_create(x,y,obj_block)){sprout = cs_fire;} break;              //3 - Fire Flower 
        case(4): with(instance_create(x,y,obj_block)){sprout = cs_hammer;} break;            //4 - Hammer Flower
        case(5): with(instance_create(x,y,obj_block)){sprout = cs_tanooki;} break;           //5 - Super Leaf
        case(6): with(instance_create(x,y,obj_block)){sprout = cs_super;} break;             //6 - Super Ball Flower
        case(7): with(instance_create(x,y,obj_block)){sprout = cs_shell;} break;             //7 - Blue Shell
        case(8): with(instance_create(x,y,obj_block)){sprout = cs_bee;} break;               //8 - Bee Mushroom
        case(9): with(instance_create(x,y,obj_block)){sprout = cs_ice;} break;               //9 - Ice Flower
        case(10): with(instance_create(x,y,obj_block)){sprout = cs_boomerang;} break;        //10 - Boomerang Flower
        case(11): with(instance_create(x,y,obj_block)){sprout = cs_propeller;} break;        //11 - Propeller Mushroom
        case(12): with(instance_create(x,y,obj_block)){sprout = cs_poison;} break;           //12 - Poison Mushroom
        case(13): with(instance_create(x,y,obj_block)){sprout = cs_star;} break;             //13 - Superstar
        case(14): with(instance_create(x,y,obj_block)){sprout = cs_1up;} break;              //14 - 1UP Mushroom
        case(15): with(instance_create(x,y,obj_block)){sprout = cs_3up;} break;              //15 - 3UP Moon
        case(16): with(instance_create(x,y,obj_block)){sprout = cs_greenyoshi;} break;       //16 - Yoshi Egg
        case(17): with(instance_create(x,y,obj_block)){sprout = cs_key;} break;              //17 - Key
        case(18): with(instance_create(x,y,obj_block)){sprout = cs_spring;} break;           //18 - Spring
        case(19): with(instance_create(x,y,obj_block)){sprout = cs_pswitch;} break;          //19 - P-Switch
        case(20): with(instance_create(x,y,obj_block)){sprout = cs_beanstalk;} break;        //20 - Vine 
        case(21): with(instance_create(x,y,obj_block)){sprout = cs_kuriboshoe;} break;       //21 - Goomba Shoe
        case(22): with(instance_create(x,y,obj_block)){sprout = cs_propellerblock;} break;   //22 - Propeller Block
        case(23): instance_create(x,y,obj_block_coinchain) break;                            //23 - Coin Chain
        /*case(23): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //23 - SMB Mushroom
        case(24): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //24 - SMB3 Mushroom
        case(25): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //25 - SMW Mushroom*/
    }
}
with(obj_uni_demo_8_2){
    instance_deactivate_object(id);
    switch(item){
        case(0): instance_create(x,y,obj_block_hidden) break;                                       //0 - Coin
        case(1): instance_create(x,y,obj_block_hidden_multicoin) break;                             //1 - Multi Coin
        case(2): with(instance_create(x,y,obj_block_hidden)){sprout = cs_big;} break;               //2 - Super Mushroom
        case(3): with(instance_create(x,y,obj_block_hidden)){sprout = cs_fire;} break;              //3 - Fire Flower 
        case(4): with(instance_create(x,y,obj_block_hidden)){sprout = cs_hammer;} break;            //4 - Hammer Flower
        case(5): with(instance_create(x,y,obj_block_hidden)){sprout = cs_tanooki;} break;           //5 - Super Leaf
        case(6): with(instance_create(x,y,obj_block_hidden)){sprout = cs_super;} break;             //6 - Super Ball Flower
        case(7): with(instance_create(x,y,obj_block_hidden)){sprout = cs_shell;} break;             //7 - Blue Shell
        case(8): with(instance_create(x,y,obj_block_hidden)){sprout = cs_bee;} break;               //8 - Bee Mushroom
        case(9): with(instance_create(x,y,obj_block_hidden)){sprout = cs_ice;} break;               //9 - Ice Flower
        case(10): with(instance_create(x,y,obj_block_hidden)){sprout = cs_boomerang;} break;        //10 - Boomerang Flower
        case(11): with(instance_create(x,y,obj_block_hidden)){sprout = cs_propeller;} break;        //11 - Propeller Mushroom
        case(12): with(instance_create(x,y,obj_block_hidden)){sprout = cs_poison;} break;           //12 - Poison Mushroom
        case(13): with(instance_create(x,y,obj_block_hidden)){sprout = cs_star;} break;             //13 - Superstar
        case(14): with(instance_create(x,y,obj_block_hidden)){sprout = cs_1up;} break;              //14 - 1UP Mushroom
        case(15): with(instance_create(x,y,obj_block_hidden)){sprout = cs_3up;} break;              //15 - 3UP Moon
        case(16): with(instance_create(x,y,obj_block_hidden)){sprout = cs_greenyoshi;} break;       //16 - Yoshi Egg
        case(17): with(instance_create(x,y,obj_block_hidden)){sprout = cs_key;} break;              //17 - Key
        case(18): with(instance_create(x,y,obj_block_hidden)){sprout = cs_spring;} break;           //18 - Spring
        case(19): with(instance_create(x,y,obj_block_hidden)){sprout = cs_pswitch;} break;          //19 - P-Switch
        case(20): with(instance_create(x,y,obj_block_hidden)){sprout = cs_beanstalk;} break;        //20 - Vine 
        case(21): with(instance_create(x,y,obj_block_hidden)){sprout = cs_kuriboshoe;} break;       //21 - Goomba Shoe
        case(22): with(instance_create(x,y,obj_block_hidden)){sprout = cs_propellerblock;} break;   //22 - Propeller Block
        case(23): instance_create(x,y,obj_block_hidden_coinchain) break;                            //23 - Coin Chain
    }
}
with(obj_uni_demo_9){
    instance_deactivate_object(id);
    switch(item){
        case(0): instance_create(x,y,obj_brick) break;                                                                 //0 - Coin
        case(1): with(instance_create(x,y,obj_block_multicoin)){sprite_index = spr_brick;} break;                      //1 - Multi Coin
        case(2): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_big;;} break;              //2 - Super Mushroom
        case(3): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_fire;} break;              //3 - Fire Flower 
        case(4): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_hammer;} break;            //4 - Hammer Flower
        case(5): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_tanooki;} break;           //5 - Super Leaf
        case(6): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_super;} break;             //6 - Super Ball Flower
        case(7): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_shell;} break;             //7 - Blue Shell
        case(8): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_bee;} break;               //8 - Bee Mushroom
        case(9): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_ice;} break;               //9 - Ice Flower
        case(10): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_boomerang;} break;        //10 - Boomerang Flower
        case(11): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_propeller;} break;        //11 - Propeller Mushroom
        case(12): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_poison;} break;           //12 - Poison Mushroom
        case(13): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_star;} break;             //13 - Superstar
        case(14): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_1up;} break;              //14 - 1UP Mushroom
        case(15): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_3up;} break;              //15 - 3UP Moon
        case(16): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_greenyoshi;} break;       //16 - Yoshi Egg
        case(17): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_key;} break;              //17 - Key
        case(18): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_spring;} break;           //18 - Spring
        case(19): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_pswitch;} break;          //19 - P-Switch
        case(20): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_beanstalk;} break;        //20 - Vine 
        case(21): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_kuriboshoe;} break;       //21 - Goomba Shoe
        case(22): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_propellerblock;} break;   //22 - Propeller Block
        case(23): with(instance_create(x,y,obj_block_coinchain)){sprite_index = spr_brick;} break;                     //23 - Coin Chain
    }
}
with(obj_uni_demo_10){
    instance_deactivate_object(id);
    switch(item){
        case(0): instance_create(x,y,obj_flipblock) break;                                                                 //0 - Coin
        case(1): with(instance_create(x,y,obj_block_multicoin)){sprite_index = spr_flipblock;} break;                      //1 - Multi Coin
        case(2): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_big;;} break;              //2 - Super Mushroom
        case(3): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_fire;} break;              //3 - Fire Flower 
        case(4): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_hammer;} break;            //4 - Hammer Flower
        case(5): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_tanooki;} break;           //5 - Super Leaf
        case(6): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_super;} break;             //6 - Super Ball Flower
        case(7): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_shell;} break;             //7 - Blue Shell
        case(8): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_bee;} break;               //8 - Bee Mushroom
        case(9): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_ice;} break;               //9 - Ice Flower
        case(10): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_boomerang;} break;        //10 - Boomerang Flower
        case(11): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_propeller;} break;        //11 - Propeller Mushroom
        case(12): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_poison;} break;           //12 - Poison Mushroom
        case(13): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_star;} break;             //13 - Superstar
        case(14): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_1up;} break;              //14 - 1UP Mushroom
        case(15): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_3up;} break;              //15 - 3UP Moon
        case(16): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_greenyoshi;} break;       //16 - Yoshi Egg
        case(17): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_key;} break;              //17 - Key
        case(18): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_spring;} break;           //18 - Spring
        case(19): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_pswitch;} break;          //19 - P-Switch
        case(20): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_beanstalk;} break;        //20 - Vine 
        case(21): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_kuriboshoe;} break;       //21 - Goomba Shoe
        case(22): with(instance_create(x,y,obj_block)){sprite_index = spr_flipblock; sprout = cs_propellerblock;} break;   //22 - Propeller Block
        case(23): with(instance_create(x,y,obj_block_coinchain)){sprite_index = spr_flipblock;} break;                     //23 - Coin Chain
    }
}
