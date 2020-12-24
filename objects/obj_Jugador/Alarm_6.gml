/// @description  Rafaga de balas (2)
/// @function  Rafaga de balas 
/// @param 2
if( room = room_Transicion_Jefe ) exit;
if( instance_exists(fx_Transition_In) ) exit;
if( !instance_exists( fx_Transition_In ) and !instance_exists( fx_Transition_Room ) ) {
    event_perform( ev_other, ev_user0 );
    event_perform( ev_other, ev_user1 );
    event_perform( ev_other, ev_user3 );
    event_perform( ev_other, ev_user2 );
}

