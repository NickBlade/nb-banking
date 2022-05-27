usingESX =  GetResourceState('es_extended') == 'started' or GetResourceState('extendedmode') == 'started'
usingQBUS =  GetResourceState('qb-core') == 'started'

local usingESX = usingESX
local usingQBUS = usingQBUS

if usingESX then
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

if usingQBUS then
    QBCore = nil
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
end