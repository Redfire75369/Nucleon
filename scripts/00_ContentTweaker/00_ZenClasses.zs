#loader contenttweaker
#priority -0000
#debug

import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

zenClass CreativeTabBuilder {
	zenConstructor() {}

	function addCreativeTab(name as string) {
		addCreativeTab(name, <item:minecraft:nether_star>);
	}
	
	function addCreativeTab(name as string, icon as IItemStack) {
		val creativeTab = VanillaFactory.createCreativeTab(name, icon) as CreativeTab;
		creativeTab.register();
	}
}

zenClass ItemBuilder {
	zenConstructor() {}

	function addItem(name as string) {
		addItem(name, <creativetab:other>);
	}
	
	function addItem(name as string, creativeTab as CreativeTab) {
		val item = VanillaFactory.createItem(name) as Item;
		item.setCreativeTab(creativeTab);
		item.register();
	}
}

zenClass BlockBuilder {
	zenConstructor() {}
	
	function addBlock(name as string, material as BlockMaterial) {
		addBlock(name, material, <creativetab:other>);
	}

	function addBlock(name as string, material as BlockMaterial, creativeTab as CreativeTab) {
		addBlock(name, material, creativeTab, "pickaxe", 1);
	}

	function addBlock(name as string, material as BlockMaterial, creativeTab as CreativeTab, toolClass as string, toolLevel as int) {
		val block = VanillaFactory.createBlock(name, material) as Block;
		block.setCreativeTab(creativeTab);
		block.setToolClass(toolClass);
		block.setToolLevel(toolLevel);
		block.register();
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
        liquid.setTemperature(temperature);
        liquid.setDensity(density);
        liquid.setLuminosity(luminosity);
        liquid.setGaseous(gaseous);
        liquid.register();
    }
}

global creativeTabBuilder as CreativeTabBuilder = CreativeTabBuilder() as CreativeTabBuilder;
global itemBuilder as ItemBuilder = ItemBuilder() as ItemBuilder;
global blockBuilder as BlockBuilder = BlockBuilder() as BlockBuilder;
global liquidBuilder as LiquidBuilder = LiquidBuilder() as LiquidBuilder;