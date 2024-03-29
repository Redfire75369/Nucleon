#loader crafttweaker
#priority -8000

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

/*** TechGuns ***/
val farmerZombie = LootTweaker.getTable("techguns:entities/zombiefarmer") as LootTable;
val minerZombie = LootTweaker.getTable("techguns:entities/zombieminer") as LootTable;
val soldierSkeleton = LootTweaker.getTable("techguns:entities/skeletonsoldier") as LootTable;

val farmerGunpowder = farmerZombie.getPool("gunpowder") as LootPool;
farmerGunpowder.removeEntry("minecraft:gunpowder");

val minerCoal =  minerZombie.getPool("coal") as LootPool;
minerCoal.removeEntry("minecraft:coal");
val minerGunpowder = minerZombie.getPool("gunpowder") as LootPool;
minerGunpowder.removeEntry("minecraft:gunpowder");
val minerRedstone = minerZombie.getPool("redstone") as LootPool;
minerRedstone.removeEntry("minecraft:redstone");

val soldierCoal = soldierSkeleton.getPool("coal") as LootPool;
soldierCoal.removeEntry("minecraft:coal");