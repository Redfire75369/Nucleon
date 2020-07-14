# Fusion Reactor
The fusion reactor is a 4×4×4 hollow multiblock. 
The interior contains a 2×2×2 chamber where a smal amount of particles are injected and then, used in a controlled fusion reaction. 
The energy released is collected and the complex circuitry in it outputs intense current that can only be withstood by the most electrically conductive of cables. 
The particles are injected into the fusion reactor using either a particle injector or storage. 
Security measures help in ensuring that the excess energy of the reactor is dispersed safely. 
This excess energy is dispersed into the atmosphere or the ground based on the presence of the ground turret. <br/>
**Note: If the reactor is not switched off when editing the multiblock or the security measures fail to activate, the Fusion Reactor will explode.**

## Multiblock Construction
- Reactor Control Panel {2 Tiers}
	- Tier 1:
		- Can handle only the basic form of reactor (Particle Injector and <sup>1</sup>H)
	- Tier 2:
		- Can handle both <sup>2</sup>H and <sup>3</sup>H & <sup>12</sup>C, <sup>15</sup>N and <sup>16</sup>O, 
		  but cannot communicate with the Particle Injector
		- Controls the Fusion Reactor, the reaction status, the security mechanisms and more...
		- Faster than Tier 1 when dealing with reactions
		- Supports upgrades
- Power Controller {1 Tier}
	- Distributes power to the Fusion Reactor
- Particle Injector (0 to 2; Useless if Particle Storage is used)
	- Injects <sup>1</sup>H, Hydrogen from an Atmospheric Collector
		- Base Efficiency: 0.7%
	- Process is slow due to limitations in the motors of the Atmospheric Collector
- Particle Storage {2 Tiers}
	- Tier 1: Uses <sup>2</sup>H, Deuterium and <sup>3</sup>H, Tritium
		- Base Efficiency: 1.9%
	- Tier 2: Uses <sup>12</sup>C, Carbon-12, <sup>15</sup>N, Nitrogen-15 and <sup>16</sup>O, Oxygen-16
		- Base Efficiency: 5.0%
- Cooling Pump (1 to 3){3 Tiers}
	- Tiers vary on efficiency and power requirements
	- The higher the tier, the more power they require, but at the same time the energy produced by the reactor is larger due to better security measures taken
	- Tier 1 works with any coolant
	- Tier 2 works with any coolant with a temperature of 270 K or lower
	- Tier 3 works with any coolant with a temperature of 100 K or lower
- Exhaust Pipes (4) {4 Tiers}
	- They all must be of the same tier.
	- Each tier augments the efficiency of the reactor, by increasing the security measures and thus the energy output
- Ground Turret (0 to 1)
	- It allows to discharge the unused energy into the atmosphere rather than the ground. Useful if you have no sustainable structure under the reactor.
