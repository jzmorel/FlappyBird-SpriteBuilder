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
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // touchBegan is a Cocoa2d built in command
    // it gets called automatically every time the player touches the screen
    [character flap]; // applies a 'fly upward' impulse to "character", simulated by physicsNode
}
@end
