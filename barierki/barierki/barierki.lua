barierki = {}

addCommandHandler ( "ustawbarierke", function(plr)
team = getPlayerTeam ( plr )
if getTeamName ( team ) ~= "Policja" then return end
x,y,z = getElementPosition ( plr )
r1,r2,r3 = getElementRotation ( plr )
barierka = createObject ( 1459, x, y, z, r1, r2, r3 )
table.insert ( barierki, barierka )
end)


addCommandHandler ( "usunbarierki", function(plr)
team = getPlayerTeam ( plr )
if getTeamName ( team ) ~= "Policja" then return end
for k,v in ipairs ( barierki ) do
destroyElement ( v )
end
end)