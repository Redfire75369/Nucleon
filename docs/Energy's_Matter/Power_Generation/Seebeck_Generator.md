# Seebeck Generator

## Description
- The seebeck generator uses a temperature gradient between heat sources and coolants, in conjunction with the seebeck effect to produce Amperes. The amount of energy produced is dependent on the difference in temperature between coolants and heating elements. The seebeck generator shall gather the total temperature for all heating elements (assuming room temperature if none is present) and subtract from it the total temperature of all the cooling elements (assuming room temperature if none is present).
- Heating elements and coolants can be placed on any face except the top. If a seebeck generator has either heating elements and coolants on all his sides, it will not work due to the lack of a temperature gradient. It is not required to have both heating elements and coolants. However, having both will greatly increase your Ampere generation potential.
- The ambient temperature of the seebeck generator is 295 K. The seebeck generator will only produce Amperes upon reaching a threshold. This is because the seebeck generator requires that some heat is passively transferred from the heating elements to the coolants, producing a small amount of energy, allowing a more efficient transfer of heat between the heating elements and coolants.
- The efficiency of the seebeck generator is 100% by default. If there are no coolants, the efficiency is greatly reduced due to the atmosphere's low electrical conductivity. The efficiency of the seebeck generator will also be reduced if 
- If the heating elements are too hot or the coolants are too cold, the seebeck generator will stop producing energy, to allow heat to disperse between the heating elements and coolants in an attempt to balance their temperatures.
- The internal temperature of the seebeck generator does not affect Ampere production, only the temperature gradient itself affects this value.

## Examples

### 1 Lit Furnace Only
- Individual Heat Values
	- Lit Furnace: 500 K
- Temperature Gradient Calculation
	- Effective Heating: 500 K - 295 K = 205 K
	- Effective Cooling: 295 K - 295 K = 0 K
	- Effective Temperature Gradient: 305 K - 0 K = 305 K * [Efficiency]

### 1 Lit Furnace & 1 Water
- Individual Heat Values
	- Lit Furnace: 500 K
	- Water: 280 K (For illustration purposes)
- Temperature Gradient Calculation
	- Effective Heating: 500 K - 295 K = 205 K
	- Effective Cooling: 280 K - 295 K = -15 K
	- Effective Temperature Gradient: 305 K - (-15 K) = 320 K

### 4 Lit Furnaces & 1 Water
- Individual Heat Values
	- Lit Furnace: 500 K
	- Water: 280 K (For illustration purposes)
- Temperature Gradient Calculation
	- Effective Heating: 4 * (500 K - 295 K) = 820 K
	- Effective Cooling: 280 K - 295 K = -15 K
	- Effective Temperature Gradient: 820 K - (-15 K) = 835 K * [Efficiency] / 2

### 2 Lit Furnaces & 2 Ice
- Individual Heat Values
	- Lit Furnace: 500 K
	- Ice: 268 K
- Temperature Gradient Calculation
	- Effective Heating: 2 * (500 K - 295 K) = 410 K
	- Effective Cooling: 2 * (268 K - 295 K) = -52 K
	- Effective Temperature Gradient: 410 K - (-54 K) = 464 K


### 3 Lit Furnaces & 2 Ice
- Individual Heat Values
	- Lit Furnace: 500 K
	- Ice: 268 K
- Temperature Gradient Calculation
	- Effective Heating: 3 * (500 K - 295 K) = 615 K
	- Effective Cooling: 2 * (268 K - 295 K) = -52 K
	- Effective Temperature Gradient: 615 K - (-54 K) = 669 K

### 2 Pyrotheum & Liquid Helium
- Individual Heat Values
	- Pyrotheum: 4000 K
	- Liquid Helium: 2 K
- Temperature Gradient Calculation
	- Effective Heating: 2 * (4000 K - 295 K) = 7410 K
	- Effective Cooling: 2 K - 295 K = -293 K
	- Effective Temperature Gradient: 7410 K - (-293 K) = 7703 K

## Processses
| Process | Type | Use | Amount |
| ------------- | ------- | ------- | ------------- |
| Generate Amperes | Power | Output | 0.1 A/tK |
| Increase Temperature | Temperature | Output | 1 K/t |
| Lose Temperature to Surrounding | Temperature | Output | 0.5 K/t |

## Scientific Explanation
The [Seebeck Effect](https://en.m.wikipedia.org/wiki/Thermoelectric_effect) is a phenomenon where the temperature gradient between two electrical conductors
produces a charge potential causing a circuit to be formed. 
The cathode wants to gain electrons while the anode wants to lose electrons. 
When the charge potential is produced, the anode loses electrons and the cathode gains them. 
In this process, a flow of electrons is created. 
As electrons are mobile charge carriers, an electric current with a low voltage is generated. 