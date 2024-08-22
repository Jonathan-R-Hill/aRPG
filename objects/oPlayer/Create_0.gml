/// @description Char Vals

// Movement Vars
movementSpeed = 2;
sprintMovementSpeed = movementSpeed * 2;
sprintCooldown = 0;

// Menu
menuOpen = false;
menuCooldown = 0;


// Health
maxHealth = 100;
currentHealth = 100;
healthRegen = 0.1;

// Stamina
maxStam = 200;
currentStam = 200;
stamRegen = 0.25;
sprintDrain = 2;

// Player animations
idleSprite = sPlayer;
walkingSprite = sPlayerWalking;
idleImageNum = 0;

// Player-NPC Dialogue
dialogueTriggered = false;

// Walking sounds
walking_sound = noone;
walkingSoundFile = footsteps_slow;