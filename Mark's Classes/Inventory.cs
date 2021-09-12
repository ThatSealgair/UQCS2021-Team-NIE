using System.Collections;
using System.Collections.Generic;
using Godot;

/// <summary>
/// We need to put this onto the player
/// 
/// </summary>

public class Inventory : Area2D
{
    //defined as teh items carried by the player
    //We assign an interger to each type of item
    public int Item1;
    public int Item2;

    public void Remove()
    {
        Item1 = Item2;
        Item2 = null;
    }

    public void Switch()
    {
        int TempItem = Item2;
        Item2 = Item1;
        Item1 = TempItem;
    }
}