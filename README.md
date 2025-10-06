# The Last Climb 🧗‍♂️

A thrilling 2D platformer game built with Godot Engine during a 22-hour hackathon! Guide your knight through an endless climb, jumping across platforms while avoiding deadly lava below.

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

## 🕐 22-Hour Hackathon Timeline

This game was created during an intensive hackathon from **12:00 PM (noon) on September 27** to **10:00 AM on September 28**, with a sleep break from approximately 3:00 AM to 6:00 AM. Here's the actual development schedule based on git commits:

### **Hour 0-8 (12:00 PM - 8:10 PM): Theme Reveal, Planning & Setup**
- **12:00 PM** - Hackathon begins! Theme revealed
- Brainstormed game concept and mechanics
- Set up Godot Engine project
- Created initial project structure
- Sketched basic game design on paper
- Decided on a vertical platformer concept
- **8:10 PM** - 🎯 **Commit:** `initial commit` - Project foundation established

### **Hours 8-12 (8:10 PM - 12:45 AM): Core Game Mechanics**
- Implemented player character (CharacterBody2D)
- Added left/right movement controls
- Implemented jump physics with gravity
- Created the main game scene structure
- Set up player collision detection
- **12:27 AM** - 🎯 **Commit:** `Added player and movement` - Player controls working!
- Added game background visuals
- **12:42 AM** - 🎯 **Commit:** `background` - Background complete

### **Hours 12-16 (12:45 AM - 3:45 AM): Platform System & Health**
- **1:18 AM** - 🎯 **Commit:** `clone` - Platform cloning/instantiation working
- Developed procedural platform generation algorithm
- Implemented random X-axis positioning (200-1000 range)
- Added platform collision detection
- **2:39 AM** - 🎯 **Commit:** `platforms and stuff` - Platform spawning system complete
- Created overlap prevention for platforms
- Implemented 5-heart health system
- Added visual heart UI elements
- Tweaked gravity settings to 475.0
- **3:45 AM** - 🎯 **Commit:** `hearts and gravity` - Health & physics working
- **Almost 16 hours of straight coding!** Time for sleep 😴

### **Hours 16-19 (3:45 AM - ~6:00 AM): Sleep Break 💤**
- Crashed at approximately 3:45 AM after intense coding session
- Took a power nap (~2-3 hours)
- Let the subconscious work on problem-solving
- Recharged just enough to finish strong

### **Hours 19-22 (6:00 AM - 10:00 AM): Final Push - Power-ups & Polish**
- **5:55 AM** - 🎯 **Commit:** `power ups menu and double jump functionality`
  - Added double jump ability (KEY_1)
  - Created power-up menu system
  - Implemented double jump logic
- **6:20 AM** - 🎯 **Commit:** `lava immunity power-up functionality`  
  - Added lava immunity power-up (KEY_2)
  - Implemented lava collision detection
  - Created power-up activation logic
  - Added visual feedback for character direction
  - Implemented sprite flipping based on movement
- Final playtesting and bug fixes
- Balanced heart loss from lava (3 hearts)
- Optimized collision detection
- **10:00 AM** - ⏰ **Hackathon deadline reached!** 
- **Game was playable and submitted on time!** 🎉

---

### **Post-Hackathon: Polish & Enhancement Phase**

After the hackathon deadline, development continued to add more polish and features:

### **Afternoon Session (2:00 PM - 4:00 PM): Game States & Screens**
- **2:23 PM** - 🎯 **Commit:** `Store and immunity refined`
  - Refined power-up system
  - Improved lava immunity mechanics  
  - Added safety checks for platform deletion
  - Optimized respawn position after lava hit
- **3:11 PM** - 🎯 **Commit:** `Intro and Introduction screens, building of score count`
  - Created intro screen with spacebar to start
  - Built instructions screen explaining controls
  - Designed game over/death screen
  - Added scene transitions
  - Started building score counting system
- **3:30 PM** - 🎯 **Commit:** `Completed score count`
  - Finished scoring mechanism (100 points per platform)
  - Added score display text
  - Implemented completed platform tracking
- **4:08 PM** - 🎯 **Commit:** `Double jump tweaks and death change`
  - Fine-tuned double jump mechanics
  - Improved death screen presentation
  - Final gameplay balance adjustments
  - Code cleanup

### **Final Day: Export & Web Deployment**
- Created HTML5 export for web browsers
- Configured export settings and canvas properties
- Set up proper display modes and stretch settings
- Tested web version compatibility
- Optimized asset sizes for web
- Organized project file structure
- Created Export folder with all web files
- **September 29, 2:02 AM** - 🎯 **Commit:** `Submit project` - Final submission! 🚀

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

During this intense 22-hour hackathon, I gained valuable experience in:

- **Rapid Prototyping**: Building a complete game in under 22 hours with minimal sleep
- **Godot Engine**: Working with GDScript and the scene system
- **Game Physics**: Implementing custom gravity and collision detection
- **Procedural Generation**: Creating dynamic platform spawning algorithms
- **UI/UX Design**: Crafting intuitive game controls and feedback
- **Web Deployment**: Exporting Godot games for browser play
- **Time Management**: Balancing development, testing, and rest
- **Problem Solving**: Debugging under time pressure

## 🏆 Achievements

- ✅ Completed a fully playable game in 22 hours (with only 2-3 hours of sleep!)
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
- **Coffee** for keeping me awake during those crucial hours (except 3:45am-6am!)

---

**Made with 💪 and ☕ during a 22-hour hackathon**

*"Every climb begins with a single jump!"*
