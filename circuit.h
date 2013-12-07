// Header File
// Created 9/16/2004; 4:44:31 PM

//enable the startup screen
#define STARTUPSCREEN

//enable the help screen
#define HELPSCREEN

//enable the component info screen
#define INFOSCREEN

//enable the large icon on the component info screen
//#define INFOICON

//enable saving
#define SAVE

//enable loading
#define LOAD

//enable label changing.  display of existing labels NOT affected.
#define LABELING

//enable COMMENT defines for shells to read
#define COMMENTS

//enable screen buffering, makes for a smoother refresh
#define BUFFER

//DISABLE all editing functions
//#define SIMONLY

//SIMONLY forces LOAD, otherwise the program is useless
#ifdef SIMONLY
#define LOAD
#endif

#ifdef COMMENTS
#define COMMENT_STRING         "Digital Logic Circuit Simulator"
#define COMMENT_PROGRAM_NAME   "Circuit"
#define COMMENT_VERSION_STRING "0.9.2.0"
#define COMMENT_BW_ICON \
	{0b0000000010000000, \
	 0b0000000010000000, \
	 0b0000111111111000, \
	 0b0000100000001000, \
	 0b0000100000001000, \
	 0b0001110000001000, \
	 0b0010001000010100, \
	 0b0100000100100010, \
	 0b0100000100100010, \
	 0b0100000101000001, \
	 0b0100000101011101, \
	 0b0111111101100011, \
	 0b0010001001000001, \
	 0b0010001111000001, \
	 0b0010000100000001, \
	 0b0010000100000001}
#endif

#include <tigcclib.h>
#include <sprites.h>
#include "extgraph.h"

#define OUTPUTSPRITES \
	{	\
		{ \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00000000 \
		}, \
		{ \
			0b00000000, \
			0b00111100, \
			0b01111110, \
			0b01111110, \
			0b01111110, \
			0b01111110, \
			0b00111100, \
			0b00000000 \
		} \
	}
	
//which output sprite to use when a component is ON
#define OUTPUTSPRITETYPES 0b0000010000000110

#define COMPONENTSPRITES \
	{ \
		{ \
			0b00000000, \
			0b00000000, \
			0b00000000, \
			0b00011000, \
			0b00011000, \
			0b00000000, \
			0b00000000, \
			0b00000000 \
		}, \
		{ \
			0b00111100, \
			0b01000010, \
			0b10000001, \
			0b10011001, \
			0b10011001, \
			0b10000001, \
			0b01000010, \
			0b00111100 \
		}, \
		{ \
			0b11111111, \
			0b10100101, \
			0b11000011, \
			0b10000001, \
			0b10000001, \
			0b11000011, \
			0b10100101, \
			0b11111111 \
		}, \
		{ \
			0b00111100, \
			0b01000010, \
			0b10000001, \
			0b10000001, \
			0b10000001, \
			0b10000001, \
			0b10000001, \
			0b11111111 \
		}, \
		{ \
			0b00011000, \
			0b00100100, \
			0b01000010, \
			0b01000010, \
			0b10000001, \
			0b10000001, \
			0b10111101, \
			0b11000011 \
		}, \
		{ \
			0b00011000, \
			0b00100100, \
			0b01000010, \
			0b01000010, \
			0b10000001, \
			0b10111101, \
			0b11111111, \
			0b11000011 \
		}, \
		{ \
			0b00111100, \
			0b01100110, \
			0b10011001, \
			0b10000001, \
			0b10000001, \
			0b10000001, \
			0b10000001, \
			0b11111111 \
		}, \
		{ \
			0b00011000, \
			0b00100100, \
			0b01011010, \
			0b01000010, \
			0b10000001, \
			0b10000001, \
			0b10111101, \
			0b11000011 \
		}, \
		{ \
			0b00011000, \
			0b00100100, \
			0b01011010, \
			0b01000010, \
			0b10000001, \
			0b10111101, \
			0b11111111, \
			0b11000011 \
		}, \
		{ \
			0b00010000, \
			0b00010000, \
			0b00101000, \
			0b00010000, \
			0b00101000, \
			0b01000100, \
			0b11111110, \
			0b00010000 \
		}, \
		{ \
			0b00111100, \
			0b01001010, \
			0b10001001, \
			0b10011001, \
			0b10011111, \
			0b10000001, \
			0b01000010, \
			0b00111100 \
		}, \
		{ \
			0b11111111, \
			0b10010001, \
			0b11110001, \
			0b10011001, \
			0b10100101, \
			0b10100101, \
			0b11000011, \
			0b11111111 \
		} \
	}

#define WIRE           0
#define OUTPUTLED      1
#define INPUTBUTTON    2
#define GATEAND        3
#define GATEOR         4
#define GATEXOR        5
#define GATENAND       6
#define GATENOR        7
#define GATEXNOR       8
#define GATENOT        9
#define CLOCK         10
#define MUX           11
#define NUMBEROFTYPES 12

//wire connection points in each sprite
//    OUT   IN1   IN2   IN3   IN4
#define WIREPOINTS \
	{ \
		{{3,3},{3,3},{3,3},{3,3},{3,3}}, \
		{{3,3},{3,3},{3,3},{3,3},{3,3}}, \
		{{3,3},{9,9},{9,9},{9,9},{9,9}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{0,7},{7,7},{3,7},{5,7}}, \
		{{3,0},{3,7},{3,7},{3,7},{5,7}}, \
		{{3,3},{9,9},{9,9},{9,9},{9,9}}, \
		{{3,0},{0,7},{7,7},{0,2},{9,9}}, \
	}

//inputs for each kind of component
// min/default, max
#define INPUTS \
	{ \
		{4,4}, \
		{1,4}, \
		{0,0}, \
		{2,4}, \
		{2,4}, \
		{2,4}, \
		{2,4}, \
		{2,4}, \
		{2,4}, \
		{1,1}, \
		{0,0}, \
		{3,3} \
	}

typedef struct coordstruct
{
	short x,y;
} coord;

//this struct will be used for every component
//components will form trees, linking to anything wired to their inputs.
typedef struct componentstruct component;
struct componentstruct
{
	char output;
	unsigned char ctype;
	unsigned char inputs;
	unsigned char input[4];
  unsigned char thiscycle;
  char label;
  coord labelloc;
  coord loc;
 	unsigned char id;
};

typedef unsigned long __attribute__((may_alias)) hsymlong;

short simulatenode(component*);
void drawcursor();
#ifndef SIMONLY
void drawwireline();
#endif
#ifdef SAVE
short savefile();
#endif
#ifdef LOAD
short loadfile();
#endif
void CLRSCR(const char *);
void cleanup();
void anykey();
component* newnode();
void deletenode(component *);
void startup();

register component *cursor asm("a5");
unsigned char cycle;
component *circuitspace;
component *open;
coord cursorloc;
#ifndef SIMONLY
component *wiretarget;
unsigned char wiretargetinput;
#endif
char componentsprites[NUMBEROFTYPES][8] = COMPONENTSPRITES;
char outputsprites[2][8] = OUTPUTSPRITES;
char solidsprite[8]={0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};
char wirepoints[NUMBEROFTYPES][5][2] = WIREPOINTS;
char inputs[NUMBEROFTYPES][2] = INPUTS;
char redraw;
char simulate;
unsigned char nodecount;
HSYM hsym;
char render;

static unsigned char nodetoid(component *node) {
	return node?((unsigned long)node-(unsigned long)circuitspace)/sizeof(component):255;
}

static component* idtonode(unsigned char id)	 {
	return id!=255?circuitspace+id:0;
}