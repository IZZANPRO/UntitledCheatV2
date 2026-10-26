-- Untitled Cheat v2 loader: 2-layer build for every device
-- NOTE: only ISS_ULTRA.lua is ever public. ISS_OBF.lua stays local/DM-only.
local base = "https://raw.githubusercontent.com/IZZANPRO/UntitledCheatV2/main/"
print("[Untitled Cheat v2] fetching build...")
local ok, src = pcall(game.HttpGet, game, base .. "ISS_ULTRA.lua")
if not ok or not src then
    warn("[Untitled Cheat v2] could not fetch the build - " .. tostring(src))
    return
end
local fn, err = loadstring(src, "UCLoader")
if not fn then
    warn("[Untitled Cheat v2] loader compile error - " .. tostring(err))
    return
end
print("[Untitled Cheat v2] decrypting...")
fn()
