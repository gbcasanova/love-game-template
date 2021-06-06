# love-game-template
My template for creating games in LÖVE. It includes the setup for a fully functional screen management system and the libraries i use the most.

## Libraries included:
* [anim8](https://github.com/kikito/anim8) - Spritesheet animation.
* [bump](https://github.com/kikito/bump.lua) - Collision detection.
* [Cartographer](https://github.com/tesselode/cartographer) - Load read and draw Tiled maps.
* [Classic](https://github.com/rxi/classic/) - Class module for object orientation.
* [gamera](https://github.com/kikito/gamera) - Camera system.
* [Yonder](https://github.com/thenerdie/Yonder) - State management.

### Scene creation.
When creating a scene, duplicate the ```screens/exampleScreen.lua``` file and remember to add it on the *gameStates* section of ```libs/ScreenManager.lua```. For more information, read the Yonder [documentation](https://github.com/thenerdie/Yonder).