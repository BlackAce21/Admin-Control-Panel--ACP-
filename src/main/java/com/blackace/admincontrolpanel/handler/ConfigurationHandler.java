package com.blackace.admincontrolpanel.handler;

import com.blackace.admincontrolpanel.reference.Reference;
import cpw.mods.fml.client.event.ConfigChangedEvent;
import cpw.mods.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.common.config.Configuration;

import java.io.File;

public class ConfigurationHandler
{
    public static Configuration configuration;

    public static String ownerName = "Notch";

    public static void init(File configFile)
    {
        if(configuration == null)
        {
            configuration = new Configuration(configFile);
            loadConfiguration();
        }
    }

    @SubscribeEvent
    public void onConfigurationChangedEvent(ConfigChangedEvent.OnConfigChangedEvent event)
    {
        if(event.modID.equalsIgnoreCase(Reference.MOD_ID))
        {
            loadConfiguration();
        }
    }

    private static void loadConfiguration()
    {
        ownerName = configuration.getString("ownerName", Configuration.CATEGORY_GENERAL, "Notch", "This is where you set the server owner name for base permissions. The name you set here gets all permissions by default.");


        if(configuration.hasChanged())
        {
            configuration.save();
        }
    }
}
