frame = 0
if(place_meeting(x,y-16,object_index)){
    frame = 44
    if(place_meeting(x+16,y,object_index)){
        frame = 4
        if(place_meeting(x,y+16,object_index)){
            frame = 12
            if(place_meeting(x-16,y,object_index)){
                frame = 28
                if(place_meeting(x+16,y-16,object_index)){
                    frame = 29
                        if(place_meeting(x+16,y+16,object_index)){
                            frame = 33
                            if(place_meeting(x-16,y+16,object_index)){
                                frame = 39
                                if(place_meeting(x-16,y-16,object_index)){
                                
                                    //BUG FIX
                                    if(frame != 43)
                                    &&(frame != 47)
                                    &&(frame != 48)
                                        frame = choose(43,43,43,43,43,47,43,43,43,43,48,43,43,43,43,43); //RANDOM
                                };
                            }
                            else if(place_meeting(x-16,y-16,object_index))
                                frame = 40
                        }
                        else if(place_meeting(x-16,y+16,object_index)){
                            frame = 37
                            if(place_meeting(x-16,y-16,object_index))
                                frame = 41
                        }
                        else if(place_meeting(x-16,y-16,object_index))
                            frame = 36
                }
                else if(place_meeting(x+16,y+16,object_index)){
                    frame = 30
                    if(place_meeting(x-16,y+16,object_index)){
                        frame = 34
                        if(place_meeting(x-16,y-16,object_index))
                            frame = 42
                    }
                    else if(place_meeting(x-16,y-16,object_index))
                        frame = 38
                }
                else if(place_meeting(x-16,y+16,object_index)){
                    frame = 31
                    if(place_meeting(x-16,y-16,object_index))
                        frame = 35
                }
                else if(place_meeting(x-16,y-16,object_index))
                    frame = 32
            }
            else if(place_meeting(x+16,y-16,object_index)){
                frame = 16//17
                if(place_meeting(x+16,y+16,object_index))
                    frame = 18
            }
            else if(place_meeting(x+16,y+16,object_index))
                frame = 17 //16
        }
        else if(place_meeting(x-16,y,object_index)){
            frame = 15
            if(place_meeting(x+16,y-16,object_index)){
                frame = 25
                if(place_meeting(x-16,y-16,object_index))frame = 27
            }
            else if(place_meeting(x-16,y-16,object_index))frame = 26
        }
        else if(place_meeting(x+16,y-16,object_index))frame = 8
    }
    else if(place_meeting(x,y+16,object_index)){
        frame = 45
        if(place_meeting(x-16,y,object_index)){
            frame = 14
            if(place_meeting(x-16,y+16,object_index)){
                frame = 22
                if(place_meeting(x-16,y-16,object_index))
                    frame = 24
            }
            else if(place_meeting(x-16,y-16,object_index))
                frame = 23
        }
    }
    else if(place_meeting(x-16,y,object_index)){
        frame = 7
        if(place_meeting(x-16,y-16,object_index))
            frame = 11
    }
}
else if(place_meeting(x+16,y,object_index)){
    frame = 1
    if(place_meeting(x,y+16,object_index)){
        frame = 5
        if(place_meeting(x-16,y,object_index)){
            frame = 13
            if(place_meeting(x+16,y+16,object_index)){
                frame = 19
                if(place_meeting(x-16,y+16,object_index))
                    frame = 21
            }
            else if(place_meeting(x-16,y+16,object_index))
                frame = 20
        }
        else if(place_meeting(x+16,y+16,object_index))
            frame = 9
    }
    else if(place_meeting(x-16,y,object_index)){
        frame = 46
    }
}
else if(place_meeting(x,y+16,object_index)){
    frame = 2
    if(place_meeting(x-16,y,object_index)){
        frame = 6
        if(place_meeting(x-16,y+16,object_index))
            frame = 10
    }
}
else if(place_meeting(x-16,y,object_index))
    frame = 3
