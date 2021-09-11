using System.Collections;
using System.Collections.Generic;
using Godot;

/// <summary>
/// We need to put this onto the player
/// 
/// </summary>

public class PlayerMovement : Area2D{
    //We need to set playerPosition to the position of the player
    private Vector2 input;
    private string _up, _down, _right, _left;
    public const float movementSpeed = 2;
    public Area2D area = this;

    public override void _Ready()
    {
        string name = Name.ToLower();
        _up = name + "move_up";
        _down = name + "move_down";
        _right = name + "move_right";
        _left = name + "move_left";
        _interact = "j";
        _drop = "k";
        _swap = "l";
    }

    public override void _Process(float delta)
    {
        if (!Moving)
        {
            input.y = Input.GetActionStrength(_up) - Input.GetActionStrength(_down);
            input.x = Input.GetActionStrength(_right) - Input.GetActionStrength(_left);
            //Want to compare input to zero Vector Not idea if Gidot has
            if (input != Vector2(0.0,0.0))
            {
                Moving = true;
                //We want to find player postion needs a property position which is 
                //Note we may want to edit the amount that input.x or input.y is scaled
                Vector2 TargetPosition = Position;
                TargetPosition.x += input.x;
                TargetPosition.y += input.y;

                //We want a Corountine so that we can animate
                if (Unblocked)
                {
                    StartCoroutine(Movement(TargetPosition, delta));
                }
            }
        }

        bool interact = Input.IsActionJustPressed(_interact);
        bool drop = Input.IsActionJustPressed(_drop);
        bool swap = Input.IsActionJustPressed(_swap);
        if (interact)
        {
            PlayerThings.Interaction(area);
        }
        else if (drop)
        {
            Inventory.Remove();
        }
        else if (swap)
        {
            Inventory.Switch();
        }
    }

    private bool Unblocked()
    {
        return true
        //Add code to check that the player can move to the position directly infront of it
    } 

    IEnumerator Movement(Vector2 TargetPosition, float delta)
    {
        Moving = true;
        Vector2 position = Position;

        //Start an animation here!

        //Again no idea if this cool, I want to fin the magnitude of the vector, hope GoDot has this property
        while (Vector2.abs(TargetPosition - playerPosition) > 0.00001)
        {
            float step = movementSpeed * delta;
            //check if MoveTowards exists 
            position = playerPosition + (TargetPosition-playerPosition)*step;
            Position = position;
            yield return null;
        }
        Moving = false;
    }

}