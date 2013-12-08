circuit
=======

A digital logic circuit simulator for TI calculators
Digital Logic Circuit Simulator
by Clarence Risher
sparr0@gmail.com

version 0.9.2

NOTE: This version is NOT compatible with saved files from earlier versions.

Please take note of any UI changes, buttons have a habit of moving around between versions.

If you use this, especially in school (I am writing it to use in my digital logic class, expect more components (flip flop, tri-state device) to be implemented as i encounter them in class), please let me know what you like, dont like, or would like to see.
I am especially interested in knowing if this program does not work with any particular HW/AMS/Shell/Kernel combination.

The .89z file is a normal asm binary, the .89y file is ExePacked, only use it if your shell supports unpacking.

Components can be wired to between 0 and 4 inputs.  The minimum for the component type is also the default.  Wires that have been connected but then 'discarded' by lowering the input count will be remembered, but not rendered or included in simulation.

The components, in order:

WIRE
 icon: dot
 this is for wire routing
 works line an OR gate, but with a smaller sprite
 4 inputs
Output LED 
 icon: circle with a dot in the middle
 works line an OR gate, and it lights up if its output is on
 1-4 inputs
Input button
 icon: square with a circle in it
 this one stays on/off until you toggle it with F1
 no inputs
AND gate
 icon: square with a rounded top
 this components output is on if all inputs are on
 2-4 inputs
OR gate
 icon: triangle with sides curved out and bottom curved in
 output is on if any input is on
 2-4 inputs
XOR gate
 icon: OR gate with a thick bottom
 output is on if exactly one input is on
 2-4 inputs
NAND gate, NOR gate, XNOR gate
 icon: same as non-N*** counterpart, but with a small circle inside the top of the icon
 these three have the opposite output of their non-N*** counterpart
 2-4 inputs
NOT gate
 icon: triangle with a circle on top
 output is on if input is off
 1 input
Clock
 icon: analog clock face
 this component changes its output every time the simulation 'ticks'
 no inputs
MUX
 icon: box with weird symbol inside
 the output of this component is the same as input 1 if input 3 is off
 or input 2 if input 3 is on
 3 inputs


Controls:
ARROWS    - move the cursor
F1        - toggle output state of selected component (input or clock)
F2        - change the component type under the cursor
F3        - starts a wire on the next pin of the selected component (repeat to cycle)
F5        - end a previously started wire on the output of the selected component
           \ or create a new WIRE component in a blank spot, and end your wire on it
           \ or rotate the inputs on the selected component, used to 'untwist' wiring
F6        - increase the number of inputs on the selected component
STO       - start/stop moving the selected component
CLEAR     - press twice to delete the selected component
ENTER     - quit and save
(         - load a file previously saved
)         - save the current circuit to one of the 10 save slots (0-9), filename will be 'circsavN'
t         - assign and place a one character label for the selected component
|         - display information about the selected component
APPS      - display a help screen summarizing the keys
ESC       - quit

When you start the program it will try to load 'circsav0', ignore the error message the first time you start it.
Any time you load a file the program will attempt to save the current circuit to 'circsav0', if this fails you will be prompted, press y to continue loading.

Source is included with this program.  It requires extgraph 2.00 beta 3, and compiles with tigcc 0.95 beta 17.  newer versions probably work, but i havent tried them.

extgraph can be found here: https://github.com/debrouxl/ExtGraph

I would much rather you submit/suggest improvements to me so that i can put them in the distributed version, but if you feel the need to produce your own version then feel free, just make sure to give me credit for the original somewhere in your version.

Change Log:
0.9
 added #define blocks to source to disable features
 replaced grid[][] system with linked list
 replaced NULL component with WIRE component
 improved drawing, rendering, and cursor motion
 added realtime component dragging
 eliminated F4 as redundant
0.9.1
 added MUX component, 2 to 1 multiplexer
0.9.2
 replaced stdio.h file routines with vat.h routines
 added 'csav' extension to saved circuits, 7 byte overhead
 added dialogs for errors, loading, saving, etc
 changed saved file extension to 'csav'
 severely decreased free memory/handle requirements
 replaced pointers with array

Credits:
Thanks to Kevin_Koffler for his excellent VAT access help!
