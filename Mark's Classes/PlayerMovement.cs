using System.Collections;
using System.Collections.Generic;
using Godot;

/// <summary>
/// </summary>

public class PlayerMovement : Area2D{
    //We need to set playerPosition to the position of the player
    private Vector2 input;
    private string _up, _down, _right, _left;
    public const float movementSpeed = 2;

    public override void _Ready()
    {
        string name = Name.ToLower();
        _up = name + "_move_up";
        _down = name + "_move_down";
        _right = name + "_move_right";
        _left = name + "_move_left";
    }

    void Update()
    {
        if (Moving == false)
        {
            input.y = Input.GetActionStrength(_up) - Input.GetActionStrength(_down);
            input.x = Input.GetActionStrength(_right) - input.GetActionStrength(_left);
            //Want to compare input to zero Vector Not idea if Gidot has
            if (input != Vector2(0.0,0.0))
            {
                Moving = true;
                //We want to find player postion needs a property position which is 
                Vector2 TargetPosition = Position;
                TargetPosition.x += input.x;
                TargetPosition.y += input.y;

                //We want a Corountine so that we can animate
                StartCoroutine(Movement(TargetPosition));
            }

        }
    }
    IEnumerator Movement(Vector2 TargetPosition)
    {
        Moving = true;
        Vector2 position = Position;

        //Start an animation here!

        //Again no idea if this cool, I want to fin the magnitude of the vector, hope GoDot has this property
        while (Vector2.Magnitude(TargetPosition - playerPosition) > 0.00001)
        {
            float step = movementSpeed * Time.deltaTime;
            //check if MoveTowards exists 
            position = playerPosition + (TargetPosition-playerPosition)*step;
            Position = position;
            yield return null;
        }
        Moving = false;
    }

}