package com.blackace.admincontrolpanel.utility;

import net.minecraft.util.ChatComponentText;
import net.minecraft.util.ChatStyle;
import net.minecraft.util.EnumChatFormatting;

public class ChatComponentHelper
{
    public static ChatComponentText sendMessage(String string)
    {
        ChatComponentText text = new ChatComponentText(string);
        return text;
    }

    public static ChatComponentText sendColoredMessage(String color, String string)
    {
        ChatComponentText text = new ChatComponentText(string);
        ChatStyle style = new ChatStyle();
        style.setColor(getChatFormat(color));
        text.setChatStyle(style);

        return text;
    }

    private static EnumChatFormatting getChatFormat(String color)
    {
        color = color.toLowerCase();
        if(color == "aqua")
        {
            return EnumChatFormatting.AQUA;
        }
        if(color == "black")
        {
            return EnumChatFormatting.BLACK;
        }
        if(color == "blue")
        {
            return EnumChatFormatting.BLUE;
        }
        if(color == "dark_aqua")
        {
            return EnumChatFormatting.DARK_AQUA;
        }
        if(color == "dark_blue")
        {
            return EnumChatFormatting.DARK_BLUE;
        }
        if(color == "dark_gray")
        {
            return EnumChatFormatting.DARK_GRAY;
        }
        if(color == "dark_green")
        {
            return EnumChatFormatting.DARK_GREEN;
        }
        if(color == "dark_purple")
        {
            return EnumChatFormatting.DARK_PURPLE;
        }
        if(color == "dark_red")
        {
            return EnumChatFormatting.DARK_RED;
        }
        if(color == "gold")
        {
            return EnumChatFormatting.GOLD;
        }
        if(color == "gray")
        {
            return EnumChatFormatting.GRAY;
        }
        if(color == "green")
        {
            return EnumChatFormatting.GREEN;
        }
        if(color == "light_purple")
        {
            return EnumChatFormatting.LIGHT_PURPLE;
        }
        if(color == "red")
        {
            return EnumChatFormatting.RED;
        }
        if(color == "yellow")
        {
            return EnumChatFormatting.YELLOW;
        }

        return EnumChatFormatting.WHITE;

    }


}
