//Excluir a zona de atividade para ativar tudo de uma só vez
global.uni_instance_deactivate = false;

with(obj_uni_demo_6){
    visible = false;
    instance_create(x,y,obj_arrowplatform);
}
with(obj_uni_demo_7){
    visible = false;
    instance_create(x,y,obj_noteblock);
}
with(obj_uni_demo_8){
    visible = false;
    switch(item){
        case(0): instance_create(x,y,obj_block) break;                                      //0 - Coin
        case(1): instance_create(x,y,obj_block_multicoin) break;                            //1 - Multi Coin
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
        /*case(23): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //23 - SMB Mushroom
        case(24): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //24 - SMB3 Mushroom
        case(25): with(instance_create(x,y,obj_block)){sprout = cs_;} break;        //25 - SMW Mushroom*/
    }
}
with(obj_uni_demo_9){
    visible = false;
    switch(item){
        case(0): instance_create(x,y,obj_brick) break;                                      //0 - Coin
        case(1): with(instance_create(x,y,obj_block_multicoin)){sprite_index = spr_brick;} break;                            //1 - Multi Coin
        case(2): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_big;;} break;               //2 - Super Mushroom
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
        /*case(23): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_;} break;        //23 - SMB Mushroom
        case(24): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_;} break;        //24 - SMB3 Mushroom
        case(25): with(instance_create(x,y,obj_block)){sprite_index = spr_brick; sprout = cs_;} break;        //25 - SMW Mushroom*/
    }
}
with(obj_uni_demo_10){
    visible = false;
    instance_create(x,y,obj_flipblock);
}
with(obj_uni_demo_11){
    visible = false;
    instance_create(x,y,obj_propellerblock);
}
with(obj_uni_demo_12){
    visible = false;
    instance_create(x,y,obj_bluebrick);
}
with(obj_uni_demo_13){
    visible = false;
    instance_create(x,y,spr_block_pow);
}
with(obj_uni_demo_15){
    visible = false;
    instance_create(x,y,obj_onoffblock);
}
with(obj_uni_demo_16){
    visible = false;
    instance_create(x,y,obj_onoffplatform);
}
with(obj_uni_demo_17_1){
    visible = false;
    instance_create(x,y,obj_coin);
}
with(obj_uni_demo_18_1){
    visible = false;
    instance_create(x,y,obj_pswitch);
}
with(obj_uni_demo_35){
    visible = false;
    instance_create(x,y,obj_goomba);
}
with(obj_uni_demo_43){
    visible = false;
    instance_create(x,y,obj_cheepcheep);
}
with(obj_uni_demo_48){
    visible = false;
    instance_create(x,y,obj_thwomp);
}
with(obj_uni_demo_49){
    visible = false;
    instance_create(x,y,obj_boo);
}
with(obj_uni_demo_61){
    visible = false;
    instance_create(x,y,obj_fallingspike);
}
with(obj_uni_demo_70){
    visible = false;
    instance_create(x,y,obj_spring);
}
with(obj_uni_demo_72){
    visible = false;
    instance_create(x,y,obj_key);
}
with(obj_uni_demo_73){
    visible = false;
    instance_create(x,y,obj_doorwall);
}
with(obj_uni_demo_75){
    visible = false;
    instance_create(x,y,obj_keyhole);
}
with(obj_uni_demo_76){
    visible = false;
    instance_create(x,y,obj_endboss);
}
//Nível
if(global.uni_level_autoscroll == 1)
||(global.uni_level_autoscroll == 2)
||(global.uni_level_autoscroll == 3)
    instance_create(view_xview[0]+214,view_yview[0]+226,obj_uni_autoscroll);
else if(global.uni_level_autoscroll == 4)
    instance_create(0,0,obj_uni_classicscroll);

//Retornar a zona de atividade
global.uni_instance_deactivate = true;
