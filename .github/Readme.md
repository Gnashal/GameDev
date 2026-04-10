# Game Dev Project Deliverables

## Project Overview

This repository contains my Godot game development activities and submissions.

Current prototype focus:

- Simple COD Zombies-like FPS shooter.
- Gameplay loop: fixed amount of zombies spawn -> player shoots zombies -> win or lose.
- Assets: combination of free low-poly assets, high-resolution grass assets, and zombie assets from Mixamo.

---

## Weekly Activity Deliverables

## Week 2 - Activity 1: Gameplay Mechanics

### Subtopics

- Handling input (keyboard/gamepad)
- Physics bodies (rigid/kinematic)
- Collision detection
- Basics of player controllers (movement, jumping)

### Activity / Exercises

- [ ] Build a dodge mechanic or simple platformer character.
- [ ] Test gameplay feel with physics tweaks.

### Links (Add URL)

- Input Handling in Godot
- Physics Introduction
- Your First 2D Game Tutorial

### Screenshot Placeholders

![Week 2 Activity 1 - Gameplay Mechanics](./screenshots/week2-activity1-gameplay.png)
![Week 2 Activity 1 - Physics Tuning](./screenshots/week2-activity1-physics-tweaks.png)

---

## Week 2 - Activity 2: Level Design

### Subtopics

- Tilemaps for grid-based levels
- Hazards (spikes/traps)
- Designing flow (pacing, difficulty curves)

### Activity / Exercises

- [ ] Design 2 levels for an endless runner (2D or 3D).
- [ ] Ensure Level 1 is noticeably easier than Level 2.
- [ ] Implement traps.
- [ ] No HP system; once caught in a trap, restart from the beginning of the level.
- [ ] Show a notification when entering Level 2.

### Links (Add URL)

- Tilemaps Tutorial
- Level Design Principles
- Endless Runner Example

### Screenshot Placeholders

![Week 2 Activity 2 - Level 1 Overview](./screenshots/week2-activity2-level1.png)
![Week 2 Activity 2 - Level 2 Overview](./screenshots/week2-activity2-level2.png)
![Week 2 Activity 2 - Trap and Restart](./screenshots/week2-activity2-trap-restart.png)

---

## Week 3 - Activity 1: UI/UX and Audio

### Subtopics

- HUD elements (health bars, scores)
- Menu systems (CanvasLayer)
- Audio buses for mixing SFX and music

### Activity / Exercises

- [ ] Integrate UI into the game prototype.
- [ ] Add sound effects (walk, run, slash, etc.).
- [ ] Add music/intro audio if needed.

### Links (Add URL)

- GUI in Godot
- Audio Features
- Audacity Guide

### Screenshot Placeholders

![Week 3 Activity 1 - HUD](./screenshots/week3-activity1-hud.png)
![Week 3 Activity 1 - Menu System](./screenshots/week3-activity1-menu.png)
![Week 3 Activity 1 - Audio Setup](./screenshots/week3-activity1-audio-buses.png)

---

## Week 3 - Activity 2: AI and Enemies

### Subtopics

- Pathfinding navigation
- Finite state machines for behavior (patrol/attack)
- Enemy AI patterns

### Activity / Exercises

- [ ] Add enemies to the game prototype (enemies, not obstacles only).

### Links (Add URL)

- Navigation and Pathfinding
- State Machines
- AI Behaviors Tutorial

### Screenshot Placeholders

![Week 3 Activity 2 - Enemy AI Patrol](./screenshots/week3-activity2-ai-patrol.png)
![Week 3 Activity 2 - Enemy Attack Behavior](./screenshots/week3-activity2-ai-attack.png)

---

## Week 4 - Activity 1: 3D Basics and Optimization

### Subtopics

- 3D nodes (meshes, cameras)
- Lighting (DirectionalLight)
- Profiling tools for FPS optimization

### Activity / Exercises

- [ ] Convert 2D prototype concepts into a 3D implementation.
- [ ] Optimize performance for 60 FPS target.

### Links (Add URL)

- 3D Introduction
- Optimization Techniques
- Lighting Tutorial

### Screenshot Placeholders

![Week 4 Activity 1 - 3D Scene Setup](./screenshots/week4-activity1-3d-scene.png)
![Week 4 Activity 1 - Optimization Profiling](./screenshots/week4-activity1-optimization.png)

---

## Week 4 - Multiplayer (Basic Cloud Server / Local Network)

Professor note: cloud-based or local network-based is acceptable. Only one is required.

### Subtopics

- Installing Nakama Godot SDK
- Connecting to Heroic Cloud or local Nakama server (Docker quick-start)
- Authentication (device ID or email/password)
- Matchmaking (create/join match)
- Relayed realtime sync (socket + match messages)
- Syncing player position and inputs/actions between 2 clients

### Activity / Exercises

- [ ] Set up Nakama Godot addon (AssetLib or GitHub release).
- [ ] Connect to free Heroic Cloud or local Docker Nakama instance.
- [ ] Implement authentication (device ID or email/password).
- [ ] Create simple lobby/matchmaking screen (create match or join random).
- [ ] Sync at least player position and basic actions (move/jump/shoot) between 2 clients in realtime.
- [ ] Test with 2 Godot instances (same network or cloud).
- [ ] Handle disconnects gracefully.
- [ ] Commit code plus short video/gif demo of 2 players moving together.

### Links (Add URL)

- Nakama Godot SDK Setup
- Heroic Cloud Quick Start
- Nakama Docker Quick Start
- Nakama Matchmaking and Realtime Messages

### Rubric

- [ ] Correct Nakama connection and auth (0-3 pts)
- [ ] Successful matchmaking/join (0-3 pts)
- [ ] Realtime player sync for position/actions (0-3 pts)
- [ ] Clean code, error handling, and demo video (0-1 pt)

### Screenshot Placeholders

![Week 4 Multiplayer - Login and Connection](./screenshots/week4-multiplayer-login.png)
![Week 4 Multiplayer - Matchmaking Lobby](./screenshots/week4-multiplayer-lobby.png)
![Week 4 Multiplayer - Two Player Sync](./screenshots/week4-multiplayer-sync.png)
![Week 4 Multiplayer - Demo GIF](./screenshots/week4-multiplayer-demo.gif)
