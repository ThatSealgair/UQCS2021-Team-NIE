using System.Collections;
using System.Collections.Generic;
using Godot;

/// <summary>
/// We need to put this onto the player
/// 
/// </summary>

public class PlayerThings : Area2D
{
    public void Interaction(Area2D area)
    {
        if (area is 'Type' Collect){
            //Gives me the Type of item I am collecting
        }
        else if (area is 'Type' Hacker)
        {
            ItemToGive = Inventory.Item1;
            Inventory.Remove();
            //gives the hacker the item in slot one
        }
        //there is nothing to interact with
    }
}