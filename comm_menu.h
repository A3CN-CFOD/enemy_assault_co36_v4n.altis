class CfgCommunicationMenu
{
	class Attackhelo
	{
		text = "Attack Helicopter Support"; // Text displayed in the menu and in a notification
		submenu = "";//#USER:CashelosubMenu"; // Submenu opened upon activation
		expression = "ghst_helosupport = [(getmarkerpos ""ghst_player_support""),ghst_attachhelo,30,[400, 150],PARAM_Cooldowns,[false,""ColorRed""],""ghst_helosup""] spawn ghst_fnc_airsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\attack_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class Attackplane
	{
		text = "Attack Aircraft Support"; // Text displayed in the menu and in a notification
		submenu = "";//#USER:CasplanesubMenu"; // Submenu opened upon activation
		expression = "ghst_cassupport = [(getmarkerpos ""ghst_player_support""),ghst_attackplane,30,[600, 600],PARAM_Cooldowns,[false,""ColorRed""],""ghst_cassup""] spawn ghst_fnc_airsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class Gunship
	{
		text = "Gunship Support"; // Text displayed in the menu and in a notification
		submenu = "";//#USER:CasplanesubMenu"; // Submenu opened upon activation
		expression = "ghst_gunshipsup = [(getmarkerpos ""ghst_player_support""),ghst_gunship,60,[800, 500],PARAM_Cooldowns,""ghst_gunship"",player,true] spawn ghst_fnc_gunship;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class RemoteDesignator
	{
		text = "Deploy Remote Designator"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_puavsupport = [""B_Static_Designator_01_F"",5] spawn ghst_fnc_remotedesignator;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "";//"\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class UAV
	{
		text = "Unmanned Support"; // Text displayed in the menu and in a notification
		submenu = "#USER:UavsubMenu"; // Submenu opened upon activation
		expression = ""; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class PUAV
	{
		text = "AR-2 Darter Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_puavsupport = [""B_UAV_01_F"",5] spawn ghst_fnc_puavsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "";//"\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class AMMO
	{
		text = "Ammo Drop"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_ammodrop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,""B_supplyCrate_F"",150,PARAM_Cooldowns] spawn ghst_fnc_ammodrop;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class CARGO
	{
		text = "Cargo Drop"; // Text displayed in the menu and in a notification
		submenu = "#USER:CargodropsubMenu"; // Submenu opened upon activation
		expression = ""; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class RESPAWNTENT
	{
		text = "Deploy Respawn Tent"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_puavsupport = [""Land_TentA_F"",5] spawn ghst_fnc_respawntent;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "";//"\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
    class Artillery
    {
        text = "Artillery Strike"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "player setVariable ['BIS_SUPP_request', ['Artillery', _pos]];"; // Code executed upon activation
        icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class Transport
    {
        text = "Helicopter Airlift"; // Text displayed in the menu and in a notification
        submenu = "#USER:TransportsubMenu"; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = ""; // Code executed upon activation
        icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };	
    class Viewdistance
    {
        text = "View Distance"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "chvd = [] spawn CHVD_fnc_openDialog;"; // Code executed upon activation
        icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };	
    class AdddesBat
    {
        text = "Add Designator Battery"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "player addmagazine 'laserbatteries';"; // Code executed upon activation
        icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };	
	
};