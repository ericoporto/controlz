# controlz
Move your character with keyboard or joystick controlz for Adventure Game Studio.

## usage

```AGS Script
// called on every game cycle, except when the game is blocked
function repeatedly_execute() 
{
  Controlz(player, 
    IsKeyPressed(eKeyDownArrow),  IsKeyPressed(eKeyLeftArrow), 
    IsKeyPressed(eKeyRightArrow),  IsKeyPressed(eKeyUpArrow));

  Controlz(cEgo2, 
    IsKeyPressed(eKeyS),  IsKeyPressed(eKeyA), 
    IsKeyPressed(eKeyD),  IsKeyPressed(eKeyW));
}
```

## script API

Controlz only has a single function

`Controlz(Character* c, bool down,  bool left,  bool right,  bool up)`

Call it on your repeatedly execute always, passing a character and which keys are
pressed at that time.

## Author and License

This code was originally made by Dualnames for Strangeland and I eri0o got my hands on
it and wrapped in this function to be easier to repurpose.

This code is licensed with MIT [`LICENSE`](LICENSE).
