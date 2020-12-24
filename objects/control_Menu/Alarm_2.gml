/// @description  Particulas
part_emitter_stream(Particle_System,Particle_Emitter,Particle,Particle_Delay);
if(Particle_Delay = true) {
    Particle_Delay = false; 
    alarm[2] = 1;
    } else {
    Particle_Delay = true;
    alarm[2] = 10 + random(20);
}


