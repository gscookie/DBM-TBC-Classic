local mod	= DBM:NewMod(572, "DBM-Party-BC", 4, 260)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(17942)
mod:SetEncounterID(1940)
mod:SetModelID(18224)
mod:SetModelOffset(-2, 0.4, -1)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
)
