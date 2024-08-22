/// @description Char Vals

// Movement Vars
movementSpeed = 2;
sprintMovementSpeed = movementSpeed * 3;
sprintCooldown = 0;

// Menu
menuOpen = false;
menuCooldown = 0;


// Health
maxHealth = 100;
currentHealth = 100;
healthRegen = 0.1;

// Stamina
maxStam = 250;
currentStam = 250;
stamRegen = 0.5;
sprintDrain = 1.25;

// Player animations
idleSprite = sPlayer;
walkingSprite = sPlayerWalking;
runningSprite = sPlayerRun;
idleImageNum = 0;

// Player-NPC Dialogue
dialogueTriggered = false;

// Movement sounds
walking_sound = noone;
walkingSoundFile = footsteps_slow;
running_sound = noone;
runningSoundFile = footseps_running;
