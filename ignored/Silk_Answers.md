> > the player chooses an item out of a variety of output items
> Hmmm, multiple recipes with the same input? Feasible, but how do we want to this to work? As in, in terms of User Experience. What about for displaying in JEI? Also, what defines the connection between inputs and outputs?

UX: I think that it should use the item on an item frame attached to the MT as the expected output.
JEI: I think it should show the inputs on one page and the outputs on another.
Connection: Some kind of mole system is what we agreed on, where you use CT/JSON/Config to configure an items' moles (All items with no specified mole value have 0)

> > The Molecular Transmutator can materialise items that have already been scanned
> Define scanned. How do we obtain this scanning thing? In the context of pure survival, how should this work? Is it related to the QCE? If so, this means that the usage of the Molecular Transmutator is locked behind the QCE, which is more advanced tech. This may need some rethinking of the tech tree

Scanning: On second thought, this is a bad idea and we should use the item frame idea. No need for the QCE


> > can only materialise raw and basic materials, not complex items or machinery.
> Should items that can be materialized tagged? If yes, wouldn't that be a huge tag? If not, how do we distinguish items?

Some kind of mole system as I said earlier


> > 10 item input -> 1 item output over 80 ticks
> This is 10% efficiency, over a total of 4 seconds. Considering efficiency upgrades (mentioned later), how efficient do we want this to become?

Firstly, time is probably going to be at least doubled
Instead of exact number of item input/output, it should use the mole system at an efficiency of 10%
The upgrades should increase it to about 40%


> > 4 power upgrades
> What do these do?

The 3 upgrade types are efficiency, speed and buffer
Efficiency: Increase input:output ratio of MT, increase power cost and time
Speed: Decreases time while increasing time
Buffer: Increases power storage so it can transmute more items before running out of Amperes