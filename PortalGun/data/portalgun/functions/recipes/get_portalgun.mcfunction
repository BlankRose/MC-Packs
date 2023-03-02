# PORTALGUN
# Gives the portal gun once it has been crafted

# Refresh trigger
recipe take @s portalgun:portalgun
advancement revoke @s only portalgun:recipes/portalgun

# Replace with portal gun
clear @s bow{Damage:0} 1
function portalgun:dev/get_portalgun