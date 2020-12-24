/// @description  Shake
if( Shake_X > 0 or Shake_Y > 0 ) {

    if( abs(Shake_X) > 0 ) Shake_X -= sign(Shake_X);
    if( abs(Shake_Y) > 0 ) Shake_Y -= sign(Shake_Y);
    
    //view_xview[0] = choose(1,-1) * Shake_X;
    //view_yview[0] = choose(1,-1) * Shake_Y;
    
    Shake_D = choose( 1, -1 );
    
    alarm[0] = Delay;

}

