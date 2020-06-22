#loader contenttweaker
#priority -0000
#debug

import crafttweaker.item.IItemStack;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

zenClass CreativeTabBuilder {
	zenConstructor() {}

	function addCreativeTab(name as string) {
		addCreativeTab(name, <item:minecraft:nether_star>);
	}
	
	function addCreativeTab(name as string, icon as IItemStack) {
		val creativeTab = VanillaFactory.createCreativeTab(name, <item:minecraft:nether_star>) as CreativeTab;
		creativeTab.register();
	}
}

zenClass ItemBuilder {
	zenConstructor() {}

	function addItem(name as string) {
		addItem(name, <creativetab:other>);
	}
	
	function addItem(name as string, creativeTab as CreativeTab) {
		val item = VanillaFactory.createItem(name);
		item.creativeTab = creativeTab;
		item.register();
	}
}

zenClass LiquidBuilder {
    zenConstructor() {}

    function addLiquid(name as string, color as Color) as void {
        addLiquid(name, color, 295);
    }

    function addLiquid(name as string, color as Color, temperature as int) as void {
        addLiquid(name, color, temperature, 1000);
    }

    function addLiquid(name as string, color as Color, temperature as int, density as int) as void {
        addLiquid(name, color, temperature, density, 1000);
    }


    function addLiquid(name as string, color as Color, temperature as int, density as int, luminosity as int) as void {
        addLiquid(name, color, temperature, density, luminosity, false);
    }

    function addLiquid(name as string, color as Color, temperature as int, density as int, luminosity as int, gaseous as bool) as void {
        val liquid = VanillaFactory.createFluid(name, color) as Fluid;
        liquid.temperature = temperature;
        liquid.density = density;
        liquid.luminosity = luminosity;
        liquid.gaseous = gaseous;
        liquid.register();
    }
}

global ct as CreativeTabBuilder = CreativeTabBuilder() as CreativeTabBuilder;
global item as ItemBuilder = ItemBuilder() as ItemBuilder;
global fluid as LiquidBuilder = LiquidBuilder() as LiquidBuilder;