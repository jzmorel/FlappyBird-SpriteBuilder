#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"]; //initializes the object "character" with data from the CCB file called "Character"
    [physicsNode addChild:character];   // adds object "character" to be a child of physicsNode
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here.  in Cocoa2D, default update loop runs 60 times per second
    // this code will be run every frame.
    // delta is the time that has elapsed since the last time it was run.
    // This is usually 1/60, but can be bigger if the game slows down.
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta;  // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // reset the timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // touchBegan is a Cocoa2d built in command
    // it gets called automatically every time the player touches the screen
    [character flap]; // applies a 'fly upward' impulse to "character", simulated by physicsNode
}
@end
