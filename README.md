# The Last Climb 🧗‍♂️

A thrilling 2D platformer game built with Godot Engine during a 24-hour hackathon! Guide your knight through an endless climb, jumping across platforms while avoiding deadly lava below.

## 🎮 Game Description

**The Last Climb** is an infinite vertical platformer where players must navigate a knight character through procedurally generated platforms. The game challenges players to climb as high as possible while managing limited health points and avoiding the rising lava beneath them.

### Key Features

- **Dynamic Platform Generation**: Platforms spawn randomly with smart collision avoidance
- **Health System**: Start with 5 hearts; lose 3 hearts if you touch the lava
- **Scoring System**: Earn 100 points for each new platform reached
- **Power-ups**: 
  - Double Jump (Press KEY_1)
  - Lava Immunity (Press KEY_2)
- **Progressive Difficulty**: Platform spawning duration decreases as you climb higher
- **Smooth Controls**: Responsive left/right movement and jump mechanics
- **Game Over Screen**: Displays when health reaches zero

## 🕐 24-Hour Hackathon Timeline

This game was created during an intensive 24-hour hackathon. Here's how the development progressed hour by hour:

### **Hour 0-1: Planning & Setup**
- Brainstormed game concept and mechanics
- Set up Godot Engine project
- Created initial project structure
- Sketched basic game design on paper
- Decided on a vertical platformer concept

### **Hour 1-2: Core Game Mechanics**
- Implemented player character movement (left/right)
- Added basic jump physics with gravity
- Created the main game scene structure
- Set up player character body and collision
- Implemented basic platform spawning system

### **Hour 2-3: Platform System & Collision**
- Developed procedural platform generation algorithm
- Added platform collision detection
- Implemented overlap prevention for platforms
- Created random X-axis positioning (200-1000 range)
- Added platform width detection for better spawning

### **Hours 3-7: Sleep Break 😴**
- Took a much-needed rest to recharge
- Let the subconscious work on problem-solving
- Dreamed of endless platforms (probably!)

### **Hour 7-8: Fresh Start & Refinement**
- Reviewed code from previous night
- Fixed bugs in platform spawning
- Adjusted physics parameters for better feel
- Tweaked gravity settings to 475.0 for optimal gameplay

### **Hour 8-9: Health & Scoring System**
- Implemented 5-heart health system
- Added visual heart UI elements
- Created scoring mechanism (100 points per platform)
- Added score display text
- Implemented lava collision detection

### **Hour 9-10: Game States & Screens**
- Created intro screen with start instructions
- Built instructions screen explaining game mechanics
- Designed death/game over screen
- Added scene transitions between game states
- Implemented spacebar to start game flow

### **Hour 10-11: Power-up System**
- Added double jump ability (KEY_1)
- Implemented lava immunity power-up (KEY_2)
- Created power-up activation logic
- Balanced power-up effects
- Added visual feedback for character direction

### **Hour 11-12: Art & Animation**
- Added knight character sprite
- Implemented sprite flipping based on movement direction
- Created platform graphics
- Designed heart icons for health display
- Added lava/death zone visuals

### **Hour 12-13: Difficulty Progression**
- Implemented duration-based difficulty system
- Platforms spawn faster as you climb higher
- Duration decreases from initial 50
- Added timer-based platform spawning
- Balanced spawn rate for fair gameplay

### **Hour 13-14: Polish & Bug Fixes**
- Fixed collision detection edge cases
- Resolved platform overlap issues
- Improved jump velocity and feel
- Fixed score calculation bugs
- Cleaned up debug print statements

### **Hour 14-15: Sound & UI Improvements**
- Refined UI positioning and visibility
- Updated heart UI update logic
- Improved score text formatting
- Added better visual hierarchy
- Enhanced game over conditions

### **Hour 15-16: Testing & Balance**
- Playtested extensively
- Adjusted player speed (300.0)
- Tuned jump velocity (-600.0)
- Balanced heart loss from lava (3 hearts)
- Fine-tuned platform spawn intervals

### **Hour 16-17: More Testing & Tweaks**
- Fixed respawn position after lava hit
- Improved lava immunity mechanics
- Added safety checks for deleted platforms
- Optimized collision detection loop
- Ensured smooth platform transitions

### **Hour 17-18: Export & Web Build**
- Configured export settings for web
- Created HTML5 export
- Set up canvas and display properties
- Configured Godot web engine settings
- Tested web version compatibility

### **Hour 18-19: Web Optimization**
- Optimized asset sizes
- Configured service worker for web
- Set up proper MIME types and headers
- Created loading screen with progress bar
- Added error handling for web deployment

### **Hour 19-20: Final Polish**
- Added intro screen graphics
- Created instruction screen visuals
- Improved death screen presentation
- Final balance adjustments
- Code cleanup and organization

### **Hour 20-21: Documentation Prep**
- Organized project files
- Prepared export builds
- Created multiple export configurations
- Set up proper folder structure
- Prepared assets for distribution

### **Hour 21-22: Last-Minute Features**
- Added completed platform tracking
- Improved score calculation
- Enhanced collision response
- Final visual polish
- Last bug fixes

### **Hour 22-23: Final Testing & Export**
- Comprehensive playthrough testing
- Fixed any last-minute issues
- Created final export builds
- Verified web build functionality
- Prepared submission materials

### **Hour 23-24: Submission & Wrap-up**
- Final git commits
- Organized repository
- Prepared project documentation
- Created submission package
- Submitted to hackathon! 🎉

## 🎯 Game Controls

- **Arrow Keys / A-D**: Move left and right
- **Space / Up Arrow**: Jump
- **KEY_1**: Activate double jump ability
- **KEY_2**: Activate lava immunity

## 🚀 How to Play

1. Start the game from the intro screen (press SPACE)
2. Read the instructions screen (press SPACE to continue)
3. Navigate your knight across platforms using arrow keys
4. Jump to reach higher platforms and avoid falling into the lava
5. Collect power-ups by pressing KEY_1 and KEY_2
6. Try to achieve the highest score possible!
7. Game ends when you run out of hearts

## 🛠️ Technical Details

- **Engine**: Godot 4.5
- **Language**: GDScript
- **Rendering**: GL Compatibility mode
- **Physics**: Custom 2D physics with 475.0 gravity
- **Display**: Canvas items stretch mode for responsive gameplay

## 📦 Installation

### Playing the Web Version
1. Navigate to the `Export` folder
2. Open `index.html` in a modern web browser
3. Start playing!

### Running from Source
1. Install [Godot Engine 4.5+](https://godotengine.org/download)
2. Clone this repository
3. Open the project in Godot
4. Press F5 to run the game

## 🏗️ Project Structure

```
The_Last_Climb/
├── main.gd              # Main game logic and platform spawning
├── player.gd            # Player movement and physics
├── intro_screen.gd      # Intro screen logic
├── intro_screen_2.gd    # Instructions screen logic
├── main.tscn            # Main game scene
├── player.tscn          # Player character scene
├── platform.tscn        # Platform scene template
├── intro.tscn           # Intro screen scene
├── instructions.tscn    # Instructions scene
├── dead.tscn            # Game over scene
└── Export/              # Web build files
```

## 🎓 What I Learned

During this 24-hour hackathon, I gained valuable experience in:

- **Rapid Prototyping**: Building a complete game in 24 hours
- **Godot Engine**: Working with GDScript and the scene system
- **Game Physics**: Implementing custom gravity and collision detection
- **Procedural Generation**: Creating dynamic platform spawning algorithms
- **UI/UX Design**: Crafting intuitive game controls and feedback
- **Web Deployment**: Exporting Godot games for browser play
- **Time Management**: Balancing development, testing, and rest
- **Problem Solving**: Debugging under time pressure

## 🏆 Achievements

- ✅ Completed a fully playable game in 24 hours
- ✅ Implemented multiple game states and screens
- ✅ Created working power-up system
- ✅ Deployed web-playable version
- ✅ Built engaging infinite platformer mechanics

## 🐛 Known Issues

- Occasional platform overlap in extreme edge cases
- Score text formatting could be improved
- Some debug code still present in player collision detection

## 🔮 Future Enhancements

If I had more time, I would add:
- Background music and sound effects
- Multiple character skins
- Leaderboard system
- Additional power-up types
- Animated sprites
- Particle effects
- Mobile touch controls

## 📝 License

This project was created for a hackathon. Feel free to learn from it and build upon it!

## 🙏 Acknowledgments

- **Godot Engine** for providing an amazing free and open-source game engine
- **The Hackathon Organizers** for the opportunity to create this game
- **Coffee** for keeping me awake during those crucial hours (except 3-7am!)

---

**Made with 💪 and ☕ during a 24-hour hackathon**

*"Every climb begins with a single jump!"*
