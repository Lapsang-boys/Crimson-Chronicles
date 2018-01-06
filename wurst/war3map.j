globals
    // Generated
rect gg_rct_A0P0Node1= null
rect gg_rct_A0P0Node2= null
rect gg_rct_A0P0Node3= null
rect gg_rct_A0P0End= null
rect gg_rct_A0P0Spawn= null
rect gg_rct_A0P0Region= null
rect gg_rct_A0P1Node1= null
rect gg_rct_A0P1Node2= null
rect gg_rct_A0P1Node3= null
rect gg_rct_A0P1End= null
rect gg_rct_A0P1Spawn= null
rect gg_rct_A0P1Region= null


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Rex-TD
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Jan 06 09:42:50 2018
//   Map Author: Karlek and Kranx
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_A0P0Node1=Rect(- 2272.0, 8864.0, - 2208.0, 8928.0)
    set gg_rct_A0P0Node2=Rect(- 1376.0, 8832.0, - 1312.0, 8896.0)
    set gg_rct_A0P0Node3=Rect(- 1632.0, 7840.0, - 1568.0, 7904.0)
    set gg_rct_A0P0End=Rect(- 2176.0, 7200.0, - 1824.0, 7360.0)
    set gg_rct_A0P0Spawn=Rect(- 2432.0, 9600.0, - 1792.0, 9984.0)
    set gg_rct_A0P0Region=Rect(- 2624.0, 6976.0, - 960.0, 10208.0)
    set gg_rct_A0P1Node1=Rect(800.0, 5152.0, 864.0, 5216.0)
    set gg_rct_A0P1Node2=Rect(1440.0, 4384.0, 1504.0, 4448.0)
    set gg_rct_A0P1Node3=Rect(800.0, 4000.0, 864.0, 4064.0)
    set gg_rct_A0P1End=Rect(832.0, 3328.0, 1312.0, 3424.0)
    set gg_rct_A0P1Spawn=Rect(512.0, 5824.0, 1664.0, 6144.0)
    set gg_rct_A0P1Region=Rect(480.0, 3104.0, 1728.0, 6176.0)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 2)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_016
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)

    // Force: TRIGSTR_017
    call SetPlayerTeam(Player(11), 1)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call SetTerrainFogEx(0, 3000.0, 5000.0, 0.500, 0.000, 0.000, 0.000)
    call SetWaterBaseColor(255, 255, 255, 255)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call InitBlizzard()


    call InitGlobals()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_008")
    call SetMapDescription("TRIGSTR_018")
    call SetPlayers(3)
    call SetTeams(3)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, - 1408.0, 9472.0)
    call DefineStartLocation(1, 1088.0, 5376.0)
    call DefineStartLocation(2, 9536.0, 4288.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

