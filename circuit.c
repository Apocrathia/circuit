// C Source File
// Created 9/15/2004; 7:33:56 PM

#include "circuit.h"

// Main Function
void _main(void)
{
	void *a3save = cursor;
	short oldOSInitKeyInitDelay=OSInitKeyInitDelay(96);
	short oldOSInitBetweenKeyDelay=OSInitBetweenKeyDelay(32);

	startup();
	(*(hsymlong*)&hsym)=H_NULL;

	short i,key;
#ifdef BUFFER
	void *virtual;
#endif
#ifndef SIMONLY
	component *tobemoved=0;
	component *tobedeleted=0;
#endif
	component *loop;

#ifdef BUFFER
	if (!(virtual=malloc(LCD_SIZE)))
		ER_throw(ER_MEMORY);
	memset(virtual,0,LCD_SIZE);
#endif
	
#ifdef STARTUPSCREEN
	CLRSCR("Digital Logic\n"
	       "Circuit Simulator\n"
	       "Version 0.9.2\n"
	       "by Clarence Risher\n"
	       "sparr0@gmail.com\n"
	       "\n"
	       "Press [APPS] for help\n");
	anykey();
#else
	ClrScr();
#endif
	
#ifdef LOAD
	loadfile();
#endif
	
	simulate=1;
	
	do{

		cursor=circuitspace;
		while(cursor!=open) {
			if (cursor->loc.x==cursorloc.x&&cursor->loc.y==cursorloc.y) break;
			cursor++;
		}
		if(cursor==open) cursor=0;

		coord cursordelta=(coord){0,0};

		if(simulate) {
			cycle++;
			loop=circuitspace;
			while(loop!=open){
				simulatenode(loop);
				loop++;
			}
			simulate=0;
			render=1;
		}
		if(render
#ifndef SIMONLY
		||tobemoved
#endif
		) {
#ifdef BUFFER
			PortSet (virtual, 239, 127);
#endif
			ClrScr();
			loop=circuitspace;
			while(loop!=open){
				for(i=0;i<4;i++) {
					if(loop->input[i]<255&&loop->inputs>i) {
						component *node = idtonode(loop->input[i]);
						DrawLine(
							loop->loc.x*8+wirepoints[loop->ctype][i+1][0],
							loop->loc.y*8+wirepoints[loop->ctype][i+1][1],
							node->loc.x*8+wirepoints[node->ctype][0][0],
							node->loc.y*8+wirepoints[node->ctype][0][1],
							node->output?A_THICK1:A_NORMAL
						);
						
					}
				}
#ifdef BUFFER
				Sprite8_OR(loop->loc.x*8,loop->loc.y*8,8,componentsprites[loop->ctype],virtual);
				if(loop->output) Sprite8_OR(loop->loc.x*8,loop->loc.y*8,8,outputsprites[(OUTPUTSPRITETYPES>>loop->ctype)&1],virtual);
#else
				Sprite8_OR(loop->loc.x*8,loop->loc.y*8,8,componentsprites[loop->ctype],LCD_MEM);
				if(loop->output) Sprite8_OR(loop->loc.x*8,loop->loc.y*8,8,outputsprites[(OUTPUTSPRITETYPES>>loop->ctype)&1],LCD_MEM);
#endif
				if(loop->label) DrawChar((loop->loc.x+loop->labelloc.x)*8+1,(loop->loc.y+loop->labelloc.y)*8,loop->label,A_NORMAL);
				loop++;
			}
#ifdef BUFFER
			PortRestore();
#endif
			render=0;
			redraw=1;
		}
		if(redraw) {
#ifdef BUFFER
			clrscr();
			LCD_restore(virtual);
#endif
			redraw=0;
		}
		
		drawcursor();
		key=ngetchx()&~((short)2048);
		drawcursor();

#ifdef LOAD
		if(key=='(') {
			loadfile();
		}
		else
#endif
#ifdef SAVE
		if(key==')') {
			savefile();
		}
		else
#endif
		if(key==KEY_UP) {
			cursordelta.y=11;
		}
		else if(key==KEY_DOWN) {
			cursordelta.y=1;
		}
		else if(key==KEY_LEFT) {
			cursordelta.x=19;
		}
		else if(key==KEY_RIGHT) {
			cursordelta.x=1;
		}
		else if(key==KEY_F1&&cursor) {
			cursor->output=!cursor->output;
			simulate=1;
		}
#ifndef SIMONLY
		else if(key==KEY_F2) {
			if(!cursor) {
				cursor=newnode();
			}
			cursor->ctype+=1;
			cursor->ctype%=NUMBEROFTYPES;
			cursor->inputs=max(min(cursor->inputs,inputs[cursor->ctype][1]),inputs[cursor->ctype][0]);
			cursor->thiscycle=cycle-1;
			if(wiretarget==cursor) wiretarget=0;
			simulate=1;
		}
		else if(key==KEY_F3) {
			if(wiretarget==cursor)
				wiretargetinput=(wiretargetinput+1)%(cursor->inputs);
			else if (cursor->inputs){
				wiretarget=cursor;
				wiretargetinput=0;
			} else wiretarget=0;
		}
		else if(key==KEY_F5) {
			if(!cursor) {
				cursor=newnode();
				cursor->ctype=0;
				cursor->inputs=4;
			}
			if(wiretarget) {
				wiretarget->input[wiretargetinput]=cursor?nodetoid(cursor):-1;
				if(wiretarget->inputs<=wiretargetinput) wiretarget->inputs=wiretargetinput+1;
				wiretarget=0;
				wiretargetinput=-1;
				simulate=1;
			} else {
				if((cursor->ctype)&&(cursor->inputs>1)) {
					unsigned char temp;
					temp=cursor->input[0];
					for(i=0;i<cursor->inputs-1;i++)
						cursor->input[i]=cursor->input[i+1];
					cursor->input[cursor->inputs-1]=temp;
					render=1;
				}
			}
		}
		else if(key==KEY_F6&&cursor) {
			cursor->inputs+=1;
			if(cursor->inputs>inputs[cursor->ctype][1]) cursor->inputs=inputs[cursor->ctype][0];
			simulate=1;
		}
		else if(key==KEY_STO) {
			if(tobemoved)
				tobemoved=0;
			else if(cursor)
				tobemoved=cursor;
		}
		else if(key==KEY_CLEAR&&cursor) {
			if(tobedeleted!=cursor) {
				tobedeleted=cursor;
			} else {
				deletenode(tobedeleted);
				tobedeleted=0;
				simulate=1;
			}
		}
#ifdef LABELING
		else if (key=='t'&&cursor) {
			CLRSCR("Old label '");
			putchar(cursor->label);
			printf("'\nNew label?");
			cursor->label=ngetchx();
			if (cursor->label==KEY_ENTER) {
				cursor->label=0;
			} else {
				printf("\nNew label '");
				putchar(cursor->label);
				printf("'\n"
				       "Display where?\n"
				       "7 8 9\n"
				      " \\|/\n"
				       "4-5-6\n"
				       " /|\\\n"
				       "1 2 3");
				while((i=ngetchx())<'1'||i>'9');
				cursor->labelloc.x=-1+(i-'1')%3;
				cursor->labelloc.y=1-(i-'1')/3;
			}
			render=1;
		}
#endif //end #ifdef LABELING
#endif //end #ifndef SIMONLY
#ifdef INFOSCREEN
		else if (key=='|'&&cursor) {
			CLRSCR("");
			printf("Component Info\n"
			       "Loc: (%d,%d)\n"
			       "Type: %02d\n"
			       "Output: %d\n"
			       "Inputs: %d\n"
			       "Label: %c (%d,%d)\n"
			       "\n",
				     cursor->loc.x,cursor->loc.y,
				     cursor->ctype,
				     cursor->output,
				     cursor->inputs,
				     cursor->label,cursor->labelloc.x,cursor->labelloc.y);
#ifdef INFOICON
//draw an enlarged component icon
			int x,y,j,k;
			for(x=0;x<8;x++)
				for(y=0;y<8;y++)
					for(j=0;j<5;j++)
						for(k=0;k<5;k++)
							if((componentsprites[cursor->ctype][y])&(128>>x)) EXT_SETPIX(LCD_MEM,120+x*5+j,y*5+k);
#endif
			anykey();
		}
#endif
#ifdef HELPSCREEN
		else if (key==KEY_APPS) {
			CLRSCR("F1     - Toggle Button\n"
				     "F2     - Change Component\n"
				     "F3/F5  - Start/End Wire\n"
				     "F6     - More Inputs\n"
				     "Clear  - Delete Component\n"
				     "t      - Label Component\n"
				     "|      - Component Info\n"
				     "Sto    - Grab Component\n"
				     "( / )  - Load/Save File\n");
			anykey();
		}
#endif		
		else if (key==KEY_ESC) {
			goto fastquit;
		}
		else {
			simulate=1;
		}
	cursorloc.y=(cursorloc.y+cursordelta.y)%12;
	cursorloc.x=(cursorloc.x+cursordelta.x)%20;
#ifndef SIMONLY
	if(tobemoved)
		tobemoved->loc=cursorloc;
#endif

	}while(key!=KEY_ENTER);
	
#ifdef SAVE
	if(!savefile()) anykey();
#endif

	fastquit:
	cleanup();
	
#ifdef BUFFER
	free(virtual);
#endif

	OSInitKeyInitDelay(oldOSInitKeyInitDelay);
	OSInitBetweenKeyDelay(oldOSInitBetweenKeyDelay);
	cursor=a3save;
}

short simulatenode(component *node){
	short i;
	if (!node) return 0;
	if (node->thiscycle==cycle) return node->output;
	node->thiscycle=cycle;
	short output=0;
	for(i=0;i<node->inputs;i++) {
		output+=simulatenode(idtonode(node->input[i]));
	}
	switch (node->ctype) {
		case WIRE:
		case OUTPUTLED:
		case GATEOR:
			node->output=(output>0);
			break;
		case GATEAND:
			node->output=(output==node->inputs);
			break;
		case GATEXOR:
			node->output=(output==1);
			break;
		case GATENAND:
			node->output=(output!=node->inputs);
			break;
		case GATEXNOR:
			node->output=(output!=1);
			break;
		case GATENOR:
		case GATENOT:
			node->output=!output;
			break;
		case CLOCK:
			node->output=!(node->output);
			break;
		case MUX:
			node->output=idtonode(node->input[idtonode(node->input[2])->output])->output;
			break;
	}
	return node->output;
}

void drawcursor() {
	Sprite8_XOR(cursorloc.x*8,cursorloc.y*8,8,solidsprite,LCD_MEM);
#ifndef SIMONLY
	if (wiretarget) drawwireline();
#endif
}

#ifndef SIMONLY
void drawwireline() {
	DrawLine(
	cursorloc.x*8+wirepoints[cursor?cursor->ctype:0][0][0],
	cursorloc.y*8+wirepoints[cursor?cursor->ctype:0][0][1],
	wiretarget->loc.x*8+wirepoints[wiretarget->ctype][wiretargetinput+1][0],
	wiretarget->loc.y*8+wirepoints[wiretarget->ctype][wiretargetinput+1][1],	
	A_XOR);
}
#endif

#ifdef LOAD
//read in a saved file
short loadfile() {
	component *loop;
	short i,id=1;
	unsigned char o;
	render=1;
	hsym=VarOpen ((const ESQ[]){OTH_TAG,EQ_TAG,0},(const char*[]){"csav",""}); 
	SYM_ENTRY *load=DerefSym(hsym);
	if (load) {
		cleanup();
		startup();
		CLRSCR("Loading");
    HANDLE handle=load->handle;
    if (!handle) goto loadfail;
    char *fptr=HeapDeref(handle);
		unsigned short filesize=*(((unsigned short*)fptr)++);
		char *eofile=fptr+filesize-7;
		while(fptr<eofile) {
			printf(".");
			loop=newnode();
			loop->id=id++;
			o=*(fptr++);
			loop->ctype=o&15;
			loop->inputs=(o>>4)&7;
			loop->output=o>>7;
			for(i=0;i<4;i++)
				loop->input[i]=*(fptr++);
			o=*(fptr++);
			loop->loc.y=o/20;
			loop->loc.x=o%20;
			loop->label=*(fptr++);
			o=*(fptr++);
			loop->labelloc.x=(o&15)-1;
			loop->labelloc.y=((o>>4)&15)-1;
		}
	} else {
		loadfail:
		DlgMessage("ERROR","Can't open file to load.",BT_NONE,BT_CANCEL);
		return 0;
	}
	printf("\n");
	simulate=1;
	return 1;
}
#endif

#ifdef SAVE
//save the circuit state
short savefile() {
	component *loop;
	short i=0;
	HANDLE handle;
	if(open==circuitspace) return 0;
	render=1;
	if((*(hsymlong*)&hsym))
		if(DlgMessage("Overwrite?",DerefSym(hsym)->name,BT_YES,BT_NO)==KEY_ESC)
			(*(hsymlong*)&hsym)=0;
	if(!(*(hsymlong*)&hsym))
		hsym=VarNew((const ESQ[]){OTH_TAG,0},(const char*[]){"csav"}); 
	SYM_ENTRY *save=DerefSym(hsym);
	if (!save) goto savefail;

	if(!(handle=HeapRealloc(save->handle,nodecount*8+9))) goto savefail;
	
	save->handle=handle;

	unsigned char *fptr=HeapDeref(handle);

  *(((short*)fptr)++)=(nodecount*8)+7;

	loop=circuitspace;
	while(loop!=open) {
		*(fptr++)=(loop->ctype)|((loop->inputs)<<4)|((loop->output)<<7);
		for(i=0;i<4;i++)
			*(fptr++)=loop->input[i];
		*(fptr++)=(loop->loc.y)*20+(loop->loc.x);
		*(fptr++)=loop->label;
		*(fptr++)=(loop->labelloc.x+1)|(loop->labelloc.y+1)<<4;
		loop++;
	}

  memcpy(fptr,(char []){0,'c','s','a','v',0,OTH_TAG},7);

	return 1;

	savefail:
	DlgMessage("ERROR","Can't open file to save.",BT_NONE,BT_CANCEL);
	return 0;
}
#endif

void CLRSCR(const char *text) {
	clrscr();
	printf(text);
	redraw=1;
}

void cleanup() {
	free(circuitspace);
	nodecount=0;
}

void anykey() {
	printf("Press any key");
	ngetchx();
}

component* newnode() {
	component *temp=open;
	short i;
	open++;
	nodecount++;
	memset(temp,0,sizeof(component));
	temp->ctype=-1;
	temp->thiscycle=cycle;
	temp->loc=cursorloc;
	for(i=0;i<4;i++)
		temp->input[i]=-1;
	return temp;
}

void deletenode(component *node) {
	short i;
	open--;
	component *loop=circuitspace;
	while(loop!=open){
		for(i=0;i<4;i++) {
			if (idtonode(loop->input[i])==node) loop->input[i]=-1;
			else if (idtonode(loop->input[i])==open) loop->input[i]=nodetoid(node);
		}
		loop++;
	}
	memcpy(node,open,sizeof(component));
	nodecount--;
}

void startup() {
	if(!(circuitspace=malloc(256*sizeof(component))))
		ER_throw(ER_MEMORY);
	memset(circuitspace,0,256*sizeof(component));
	open=circuitspace;
	cursorloc=(coord){0,0};
#ifndef SIMONLY
	wiretarget=0;
	wiretargetinput=0;
#endif
	cycle=0;
	nodecount=0;
}

