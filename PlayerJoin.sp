#include <sourcemod>

public Plugin:myinfo = {
    name = "Player Join",
    author = "Murtsa",
    description = "This is a plugin for when a player joins they will be announced in chat that they have joined the game."
};

public OnPluginStart()
{

}

public OnClientPutInServer(client)
{
    new String:name[32], String:authid[32];

    GetClientName(client,name,sizeof(name));
    GetClientAuthId(client,AuthId_SteamID64,authid,sizeof(authid));

    PrintToChatAll("\x01[SM] \x04%s\x01 (\x05%s\x01) has joined the game.",name, authid);
}