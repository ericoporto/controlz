// controlz module header
// # controlz 0.3.0
// Move your character with keyboard or joystick controlz for Adventure Game Studio.
// 
// ## usage
// 
// ```AGS Script
// // called on every game cycle, except when the game is blocked
// function repeatedly_execute() 
// {
//   Controlz(player, 
//     IsKeyPressed(eKeyDownArrow),  IsKeyPressed(eKeyLeftArrow), 
//     IsKeyPressed(eKeyRightArrow),  IsKeyPressed(eKeyUpArrow));
// 
//   Controlz(cEgo2, 
//     IsKeyPressed(eKeyS),  IsKeyPressed(eKeyA), 
//     IsKeyPressed(eKeyD),  IsKeyPressed(eKeyW));
// }
// ```
// 
// ## script API
// 
// Controlz only has a single function
// 
// `Controlz(Character* c, bool down,  bool left,  bool right,  bool up)`
// 
// Call it on your repeatedly execute or repeatedly execute always, 
// passing a character and which keys are pressed at that time.
// 
// ## Author and License
// 
// This code was originally made by Dualnames for Strangeland and I eri0o got my hands on
// it and wrapped in this function to be easier to repurpose.
//  MIT License
//
//  Copyright (c) 2021 Dualnames, Érico Vieira Porto
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

enum MovingState {
  eControlzJustInvalid=-1, 
  eControlzStopped=0, 
  eControlzMoving=1, 
  eControlzJustStopped=2, 
};

/// Pass a character and four directional booleans, like IsKeyPressed(eKeyDownArrow) .
import MovingState Controlz(Character* c, bool down,  bool left,  bool right,  bool up);