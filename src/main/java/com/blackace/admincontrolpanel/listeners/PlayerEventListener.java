package com.blackace.admincontrolpanel.listeners;

import com.blackace.admincontrolpanel.utility.ChatComponentHelper;
import cpw.mods.fml.common.eventhandler.SubscribeEvent;
import net.minecraft.block.Block;
import net.minecraft.client.Minecraft;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.util.*;
import net.minecraft.world.World;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;

import javax.swing.text.html.parser.Entity;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Iterator;
import java.util.List;

public class PlayerEventListener
{
    public PlayerEventListener()
    {

    }

    @SubscribeEvent
    public void onPlayerInteract(PlayerInteractEvent e)
    {
        EntityPlayer thePlayer = e.entityPlayer;
        String playerName = thePlayer.getDisplayName();
        World w = e.world;
        int x = e.x;
        int y = e.y;
        int z = e.z;
        PlayerInteractEvent.Action action = e.action;
        String actionString = action.toString();

        String blockName = w.getBlock(x, y, z).;
        String itemInHand = thePlayer.getCurrentEquippedItem().getDisplayName();

        PlayerInteractEvent.Action a = e.action;



        thePlayer.addChatMessage(ChatComponentHelper.sendMessage("Player " + playerName + " used a " + itemInHand + " on a " + blockName + " at " + x + " " + y + " " + z + " " + " the action was " + actionString));



    }



}
