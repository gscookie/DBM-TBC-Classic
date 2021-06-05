local mod = DBM:NewMod(531, "DBM-Party-BC", 16, 249)

mod:SetRevision("@file-date-integer@")

mod:SetCreatureID(24744)
mod:SetEncounterID(1898)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

local specWarnEnergy	= mod:NewSpecialWarning("warnEnergy", "-Healer", nil, 3, 1, 2)

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if self:AntiSpam(5, 1) then
		specWarnEnergy:Show()
		specWarnEnergy:Play("killmob")
	end
end
