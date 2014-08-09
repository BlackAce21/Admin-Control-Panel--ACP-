package com.blackace.admincontrolpanel;

import com.blackace.admincontrolpanel.handler.ConfigurationHandler;
import com.blackace.admincontrolpanel.listeners.PlayerEventListener;
import com.blackace.admincontrolpanel.proxy.IProxy;
import com.blackace.admincontrolpanel.reference.Reference;
import cpw.mods.fml.common.FMLCommonHandler;
import cpw.mods.fml.common.Mod;
import cpw.mods.fml.common.SidedProxy;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import cpw.mods.fml.common.event.FMLPostInitializationEvent;
import cpw.mods.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.common.MinecraftForge;


@Mod(modid=Reference.MOD_ID, name=Reference.MOD_NAME, version=Reference.VERSION, guiFactory = Reference.GUI_FACTORY_CLASS)
public class AdminControlPanel
{
    @Mod.Instance(Reference.MOD_ID)
    public static AdminControlPanel instance;

    @SidedProxy(clientSide = Reference.CLIENT_PROXY_CLASS, serverSide = Reference.SERVER_PROXY_CLASS)
    public static IProxy proxy;

    PlayerEventListener eventPlayers = new PlayerEventListener();

    @Mod.EventHandler
    public void preInit(FMLPreInitializationEvent e)
    {
        ConfigurationHandler.init(e.getSuggestedConfigurationFile());
        FMLCommonHandler.instance().bus().register(new ConfigurationHandler());
        MinecraftForge.EVENT_BUS.register(eventPlayers);

    }

    @Mod.EventHandler
    public void Init(FMLInitializationEvent e)
    {

    }

    @Mod.EventHandler
    public void postInit(FMLPostInitializationEvent e)
    {

    }

}
