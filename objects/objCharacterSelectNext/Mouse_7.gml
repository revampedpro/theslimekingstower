// Saltar
xscale = 0.6;
yscale = 0.6;

with(selectionController)          { pos--; if(pos < 0) pos = instance_number(objCharacterSelect)-1; }
with(challengeSelectionController) { pos--; if(pos < 0) pos = instance_number(objChallengeSelect)-1; }

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */
