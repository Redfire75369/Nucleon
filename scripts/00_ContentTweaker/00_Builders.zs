#loader contenttweaker
#priority -0000

import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;


global create_item as function(string)void = function (name as string) as void {
	val item = VanillaFactory.createItem(name) as Item;
	item.setCreativeTab(<creativetab:other>);
	item.register();
};

zenClass BlockBuilder {
	zenConstructor() {}

	function add_block(name as string, material as BlockMaterial) {
		add_block(name, material, <creativetab:other>);
	}

	function add_block(name as string, material as BlockMaterial, creativeTab as CreativeTab) {
		add_block(name, material, creativeTab, "pickaxe", 1);
	}

	function add_block(name as string, material as BlockMaterial, creativeTab as CreativeTab, toolClass as string, toolLevel as int) {
		add_block(name, material, creativeTab, "pickaxe", 1, true);
	}

	function add_block(name as string, material as BlockMaterial, creativeTab as CreativeTab, toolClass as string, toolLevel as int, fullBlock as bool) {
		val block = VanillaFactory.createBlock(name, material) as Block;
		block.setCreativeTab(creativeTab);
		block.setToolClass(toolClass);
		block.setToolLevel(toolLevel);
		block.setFullBlock(fullBlock);
		block.register();
	}
}

zenClass FluidBuilder {
    zenConstructor() {}

    function add_fluid(name as string, color as Color) {
        add_fluid(name, color, 295);
    }

    function add_fluid(name as string, color as Color, temperature as int) {
        add_fluid(name, color, temperature, 1000);
    }

    function add_fluid(name as string, color as Color, temperature as int, density as int) {
        add_fluid(name, color, temperature, density, 1000);
    }


    function add_fluid(name as string, color as Color, temperature as int, density as int, luminosity as int) {
        add_fluid(name, color, temperature, density, luminosity, false);
    }

    function add_fluid(name as string, color as Color, temperature as int, density as int, luminosity as int, gaseous as bool) {
        val liquid = VanillaFactory.createFluid(name, color) as Fluid;
        liquid.setTemperature(temperature);
        liquid.setDensity(density);
        liquid.setLuminosity(luminosity);
        liquid.setGaseous(gaseous);
        liquid.register();
    }
}

global block_builder as BlockBuilder = BlockBuilder() as BlockBuilder;
global fluid_builder as FluidBuilder = FluidBuilder() as FluidBuilder;
