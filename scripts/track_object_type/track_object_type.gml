/// @description track_object_type(viewid,object,minsize)
/// @function track_object_type
/// @param viewid
/// @param object
/// @param minsize
function track_object_type(argument0, argument1, argument2) {
	if( global.Camara_Modo == 0 ) {

	    if( !instance_exists(argument1) ) exit;
	    var Pre_View_X = __view_get( e__VW.XView, argument0 );
	    var Pre_View_Y = __view_get( e__VW.YView, argument0 );
	    __view_set( e__VW.XView, argument0, 0 );
	    __view_set( e__VW.YView, argument0, 0 );
    
	    with(argument1)
	    {   
	        __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) + (x) );
	        __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) + (y) );
	    }
    
	    __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) / (instance_number(argument1) ));
	    __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) / (instance_number(argument1) ));
    
	    globalvar VMinX,VMaxX,VMinY,VMaxY;
	    VMinX=__view_get( e__VW.XView, argument0 ); VMaxX=__view_get( e__VW.XView, argument0 );
	    VMinY=__view_get( e__VW.YView, argument0 ); VMaxY=__view_get( e__VW.YView, argument0 );
    
	    with(argument1)
	    {   
	        VMinX=min(VMinX,x)-5;
	        VMaxX=max(VMaxX,x)+5;
	        VMinY=min(VMinY,y)-5;
	        VMaxY=max(VMaxY,y)+5;
	    }
    
	    var VSize=max(argument2,(VMaxX-VMinX),(VMaxY-VMinY)*(__view_get( e__VW.WPort, argument0 )/__view_get( e__VW.HPort, argument0 )));
	    var VSizeW = VSize*(__view_get( e__VW.WPort, argument0 )/__view_get( e__VW.HPort, argument0 ));
	    if( __view_get( e__VW.WView, argument0 ) < VSizeW ) { __view_set( e__VW.WView, argument0, __view_get( e__VW.WView, argument0 ) + (abs(__view_get( e__VW.WView, argument0 )-VSizeW)/25) ); } 
	    if( __view_get( e__VW.WView, argument0 ) > VSizeW ) { __view_set( e__VW.WView, argument0, __view_get( e__VW.WView, argument0 ) - (abs(__view_get( e__VW.WView, argument0 )-VSizeW)/25) ); } 
	    if( __view_get( e__VW.HView, argument0 ) < VSize )  { __view_set( e__VW.HView, argument0, __view_get( e__VW.HView, argument0 ) + (abs(__view_get( e__VW.HView, argument0 )-VSize)/25) ); } 
	    if( __view_get( e__VW.HView, argument0 ) > VSize )  { __view_set( e__VW.HView, argument0, __view_get( e__VW.HView, argument0 ) - (abs(__view_get( e__VW.HView, argument0 )-VSize)/25) ); } 
    
	    //view_wview[argument0]=VSize*(view_wport[argument0]/view_hport[argument0]);
	    //view_hview[argument0]=VSize;
    
	    __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) - ((__view_get( e__VW.WView, argument0 )/2)) );
	    __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) - ((__view_get( e__VW.HView, argument0 )/2)) );
    
	    var Objetivo_View_X = __view_get( e__VW.XView, argument0 );
	    var Objetivo_View_Y = __view_get( e__VW.YView, argument0 );
    
	    __view_set( e__VW.XView, argument0, Pre_View_X );
	    __view_set( e__VW.YView, argument0, Pre_View_Y );
    
	    if( __view_get( e__VW.XView, argument0 ) < Objetivo_View_X ) { __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) + (abs(__view_get( e__VW.XView, argument0 )-Objetivo_View_X)/25) ); }
	    if( __view_get( e__VW.XView, argument0 ) > Objetivo_View_X ) { __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) - (abs(__view_get( e__VW.XView, argument0 )-Objetivo_View_X)/25) ); }
    
	    if( __view_get( e__VW.YView, argument0 ) < Objetivo_View_Y ) { __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) + (abs(__view_get( e__VW.YView, argument0 )-Objetivo_View_Y)/25) ); }
	    if( __view_get( e__VW.YView, argument0 ) > Objetivo_View_Y ) { __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) - (abs(__view_get( e__VW.YView, argument0 )-Objetivo_View_Y)/25) ); }
    
	    if( room = room_Transicion_Jefe ) {
	        __view_set( e__VW.XView, 0, 0 );
	        __view_set( e__VW.YView, 0, 0 );
	        __view_set( e__VW.WView, 0, 640 );
	        __view_set( e__VW.HView, 0, 360 );
	    }
    
	    if( room != room_Normal and room != room_Arcade and room != room_Jefe_KingSlime) {
	        __view_set( e__VW.XView, 0, room_width/2  - __view_get( e__VW.WView, 0 )/2 );
	        __view_set( e__VW.YView, 0, - 10 + room_height/2 - __view_get( e__VW.HView, 0 )/2 );
	    }
    
	} 

	if( global.Camara_Modo == 1 and instance_exists(obj_Jugador) ) {

	    __view_set( e__VW.WView, 0, 640 );
	    __view_set( e__VW.HView, 0, 360 );
    
	    if( !instance_exists(argument1) ) exit;
	    var Pre_View_X = __view_get( e__VW.XView, argument0 );
	    var Pre_View_Y = __view_get( e__VW.YView, argument0 );
	    __view_set( e__VW.XView, argument0, 0 );
	    __view_set( e__VW.YView, argument0, 0 );
    
	    with(argument1)
	    {   
	        __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) + (x) );
	        __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) + (y) );
	    }
    
	    __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) / (instance_number(argument1) ));
	    __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) / (instance_number(argument1) ));
    
	    globalvar VMinX,VMaxX,VMinY,VMaxY;
	    VMinX=__view_get( e__VW.XView, argument0 ); VMaxX=__view_get( e__VW.XView, argument0 );
	    VMinY=__view_get( e__VW.YView, argument0 ); VMaxY=__view_get( e__VW.YView, argument0 );
    
	    with(argument1)
	    {   
	        VMinX=min(VMinX,x)-5;
	        VMaxX=max(VMaxX,x)+5;
	        VMinY=min(VMinY,y)-5;
	        VMaxY=max(VMaxY,y)+5;
	    }
    
	    var VSize=max(180);
	    var VSizeW = VSize*(__view_get( e__VW.WPort, argument0 )/__view_get( e__VW.HPort, argument0 ));
	    if( __view_get( e__VW.WView, argument0 ) < VSizeW ) { __view_set( e__VW.WView, argument0, __view_get( e__VW.WView, argument0 ) + (abs(__view_get( e__VW.WView, argument0 )-VSizeW)/25) ); } 
	    if( __view_get( e__VW.WView, argument0 ) > VSizeW ) { __view_set( e__VW.WView, argument0, __view_get( e__VW.WView, argument0 ) - (abs(__view_get( e__VW.WView, argument0 )-VSizeW)/25) ); } 
	    if( __view_get( e__VW.HView, argument0 ) < VSize )  { __view_set( e__VW.HView, argument0, __view_get( e__VW.HView, argument0 ) + (abs(__view_get( e__VW.HView, argument0 )-VSize)/25) ); } 
	    if( __view_get( e__VW.HView, argument0 ) > VSize )  { __view_set( e__VW.HView, argument0, __view_get( e__VW.HView, argument0 ) - (abs(__view_get( e__VW.HView, argument0 )-VSize)/25) ); } 
    
	    __view_set( e__VW.WView, 0, 480 );
	    __view_set( e__VW.HView, 0, 270 );
    
	    __view_set( e__VW.WView, 0, 640 );
	    __view_set( e__VW.HView, 0, 360 );
    
	    //view_wview[argument0]=VSize*(view_wport[argument0]/view_hport[argument0]);
	    //view_hview[argument0]=VSize;
    
	    __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) - ((__view_get( e__VW.WView, argument0 )/2)) );
	    __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) - ((__view_get( e__VW.HView, argument0 )/2)) );
    
	    var Objetivo_View_X = __view_get( e__VW.XView, argument0 );
	    var Objetivo_View_Y = __view_get( e__VW.YView, argument0 );
    
	    __view_set( e__VW.XView, argument0, Pre_View_X );
	    __view_set( e__VW.YView, argument0, Pre_View_Y );
    
	    var Objetivo = obj_Jugador;
    
	    if( instance_exists( Objetivo ) ) {
	        if((__view_get( e__VW.XView, 0 ) + (0) + (__view_get( e__VW.WView, 0 )/2)) < (Objetivo.x))    { __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (abs((__view_get( e__VW.XView, 0 ) + (0) + (__view_get( e__VW.WView, 0 )/2)) - (Objetivo.x))/(10+(10*(alarm[0]>0 or alarm[1]>0)))) ); }
	        if((__view_get( e__VW.XView, 0 ) + (0) + (__view_get( e__VW.WView, 0 )/2)) > (Objetivo.x))    { __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (abs((__view_get( e__VW.XView, 0 ) + (0) + (__view_get( e__VW.WView, 0 )/2)) - (Objetivo.x))/(10+(10*(alarm[0]>0 or alarm[1]>0)))) ); }
	        if((__view_get( e__VW.YView, 0 ) + (0) + (__view_get( e__VW.HView, 0 )/2)) < (Objetivo.y))    { __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (abs((__view_get( e__VW.YView, 0 ) + (0) + (__view_get( e__VW.HView, 0 )/2)) - (Objetivo.y))/(10+(10*(alarm[0]>0 or alarm[1]>0)))) ); }
	        if((__view_get( e__VW.YView, 0 ) + (0) + (__view_get( e__VW.HView, 0 )/2)) > (Objetivo.y))    { __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (abs((__view_get( e__VW.YView, 0 ) + (0) + (__view_get( e__VW.HView, 0 )/2)) - (Objetivo.y))/(10+(10*(alarm[0]>0 or alarm[1]>0)))) ); }
	    }
    
	    if( room = room_Transicion_Jefe ) {
	        __view_set( e__VW.XView, 0, 0 );
	        __view_set( e__VW.YView, 0, 0 );
	        __view_set( e__VW.WView, 0, 640 );
	        __view_set( e__VW.HView, 0, 360 );
	    }
    
	    if( room != room_Arcade and room != room_Jefe_KingSlime ) {
	        __view_set( e__VW.XView, 0, room_width/2  - __view_get( e__VW.WView, 0 )/2 );
	        __view_set( e__VW.YView, 0, - 10 + room_height/2 - __view_get( e__VW.HView, 0 )/2 );
	    }

	}
	/*
	if( global.Camara_Modo == 2 ) {

	    view_xview[0] = -32;
	    view_yview[0] = -32;
	    view_wview[0] = 640+64;
	    view_hview[0] = 360+64;

	    if( room = room_Transicion_Jefe ) {
	        view_xview[0] = 0;
	        view_yview[0] = 0;
	        view_wview[0] = 640;
	        view_hview[0] = 360;
	    }
    
	    if( room != room_Normal and room != room_Arcade and room != room_Jefe_KingSlime ) {
	        view_xview[0] = room_width/2  - view_wview[0]/2;
	        view_yview[0] = - 10 + room_height/2 - view_hview[0]/2;
	    }
    
	}
	*/ 



}
