// Saltar
xscale = 0.6;
yscale = 0.6;

with(selectionController)          { pos++; if(pos > instance_number(objCharacterSelect)) pos = 1; }
with(challengeSelectionController) { pos++; if(pos > instance_number(objChallengeSelect)) pos = 1; }

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */
