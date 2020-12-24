/// @description  Setear la camara al empezar la sala
if( !instance_exists(obj_Seguido_Por_Camara) ) exit;

// Reset accuracy mover
px = 0;
py = 0;

	
// Limit room bigger
if(room == room_Bigger) or (room == room_Rush) {
    __view_set(e__VW.XView,0,obj_Jugador.x-(__view_get(e__VW.WView,0)/2));
    __view_set(e__VW.YView,0,obj_Jugador.y-(__view_get(e__VW.HView,0)/2));
	__view_set(e__VW.XView,0,clamp(__view_get(e__VW.XView, 0),128,496-__view_get(e__VW.WView,0)));
	__view_set(e__VW.YView,0,clamp(__view_get(e__VW.YView, 0),54, 282-__view_get(e__VW.HView,0)));
}


/*
var Pre_View_X = __view_get( e__VW.XView, 0 );
var Pre_View_Y = __view_get( e__VW.YView, 0 );
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );

with(obj_Seguido_Por_Camara)
{   
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (x) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (y) );
}

__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) / (instance_number(obj_Seguido_Por_Camara) ));
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) / (instance_number(obj_Seguido_Por_Camara) ));

globalvar VMinX,VMaxX,VMinY,VMaxY;
VMinX=__view_get( e__VW.XView, 0 ); VMaxX=__view_get( e__VW.XView, 0 );
VMinY=__view_get( e__VW.YView, 0 ); VMaxY=__view_get( e__VW.YView, 0 );

with(obj_Seguido_Por_Camara)
{   
    VMinX=min(VMinX,x);
    VMaxX=max(VMaxX,x);
    VMinY=min(VMinY,y);
    VMaxY=max(VMaxY,y);
}

var VSize=max(minsize,(VMaxX-VMinX),(VMaxY-VMinY)*(__view_get( e__VW.WPort, 0 )/__view_get( e__VW.HPort, 0 )));

__view_set( e__VW.WView, 0, VSize*(__view_get( e__VW.WPort, 0 )/__view_get( e__VW.HPort, 0 )) );
__view_set( e__VW.HView, 0, VSize );

__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - ((__view_get( e__VW.WView, 0 )/2)) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - ((__view_get( e__VW.HView, 0 )/2)) );




