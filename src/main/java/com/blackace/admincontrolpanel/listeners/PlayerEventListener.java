package com.blackace.admincontrolpanel.listeners;

import com.blackace.admincontrolpanel.utility.ChatComponentHelper;
import com.sun.media.jfxmedia.events.PlayerTimeListener;
import cpw.mods.fml.common.eventhandler.SubscribeEvent;
import cpw.mods.fml.common.gameevent.PlayerEvent;
import net.minecraft.block.Block;
import net.minecraft.client.Minecraft;
import net.minecraft.entity.item.EntityItem;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.event.ClickEvent;
import net.minecraft.item.ItemStack;
import net.minecraft.item.crafting.CraftingManager;
import net.minecraft.nbt.NBTTagCompound;
import net.minecraft.util.*;
import net.minecraft.world.World;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.CommandEvent;
import net.minecraftforge.event.ServerChatEvent;
import net.minecraftforge.event.entity.player.PlayerDestroyItemEvent;
import net.minecraftforge.event.entity.player.PlayerDropsEvent;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;
import net.minecraftforge.event.world.BlockEvent;

import javax.swing.text.html.parser.Entity;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.ArrayList;
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

        String blockName = w.getBlock(x, y, z).getLocalizedName();
        ItemStack itemStackInHand = thePlayer.getCurrentEquippedItem();
        String itemInHand;
        if(itemStackInHand != null) {
           itemInHand = itemStackInHand.getDisplayName();
        }
        else
        {
           itemInHand = "Fist";
        }

        //thePlayer.addChatMessage(ChatComponentHelper.sendMessage("Player " + playerName + " used a " + itemInHand + " on a " + blockName + " at " + x + " " + y + " " + z + " " + " the action was " + actionString));



    }

    @SubscribeEvent
    public void onPlayerDrop(PlayerDropsEvent e)
    {
        EntityPlayer thePlayer = e.entityPlayer;
        String playerName = thePlayer.getDisplayName();
        World w = thePlayer.getEntityWorld();
        int x = (int) thePlayer.posX;
        int y = (int) thePlayer.posY;
        int z = (int) thePlayer.posZ;

        ArrayList<EntityItem> drops = e.drops;

        for(EntityItem item : drops)
        {
            drops.get(0).getEntityItem().getDisplayName();
        }


        //thePlayer.addChatMessage(ChatComponentHelper.sendMessage("Player " + playerName + " has died at " + w.getWorldInfo().getWorldName() + " " + x + " " + y + " " + z));

    }

    @SubscribeEvent
    public void onCrafting(PlayerEvent.ItemCraftedEvent e)
    {

    }

    @SubscribeEvent
    public void onPlayerPickup(PlayerEvent.ItemPickupEvent e)
    {

    }

    @SubscribeEvent
    public void onPlayerDimChange(PlayerEvent.PlayerChangedDimensionEvent e)
    {

    }


}
