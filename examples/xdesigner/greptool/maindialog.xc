/*
** Generated by X-Designer
*/


extern void rungrep() ;
extern void setcommand() ;
Widget mainshell = (Widget) NULL;
Widget command = (Widget) NULL;
Widget commandline = (Widget) NULL;
Widget pattern = (Widget) NULL;
Widget searchfiles = (Widget) NULL;
Widget hitstring = (Widget) NULL;
Widget ignore_case = (Widget) NULL;
Widget show_files = (Widget) NULL;
Widget show_lines = (Widget) NULL;
Widget invert = (Widget) NULL;
Widget count_lines = (Widget) NULL;
Widget show_block = (Widget) NULL;



void create_mainshell (display, app_name, app_argc, app_argv)
Display *display;
char *app_name;
int app_argc;
char **app_argv;
{
	Widget children[7];      /* Children to manage */
	Arg al[64];                    /* Arg List */
	register int ac = 0;           /* Arg Count */
	XtPointer tmp_value;             /* ditto */
	XmString xmstrings[16];    /* temporary storage for XmStrings */
	Widget scrolledList1 = (Widget)NULL;
	Widget scrollbar1 = (Widget)NULL;
	Widget scrollbar2 = (Widget)NULL;
	Widget list1 = (Widget)NULL;
	Widget form1 = (Widget)NULL;
	Widget label2 = (Widget)NULL;
	Widget label3 = (Widget)NULL;
	Widget label4 = (Widget)NULL;
	Widget scrolledText1 = (Widget)NULL;
	Widget scrollbar3 = (Widget)NULL;
	Widget scrollbar4 = (Widget)NULL;
	Widget rowcol1 = (Widget)NULL;
/* Pre-manage prelude for main dialog shell */
/* Define and initialise client data structure for setcommand calback */
static ccdata_t ccdata= {
	&searchfiles,
	&pattern,
	&ignore_case,
	&show_lines,
	&show_files,
	&invert,
	&count_lines,
	&show_block,
	&command
};

/* Define and initialise client data for the rungrep callback */
static rcdata_t rcdata = {
	&hitstring,
	&errorshell,
	&errorform,
	&errortext,
	&mainshell
};

/* End of shell pre-manage prelude */

	XtSetArg(al[ac], XmNallowShellResize, TRUE); ac++;
	XtSetArg(al[ac], XmNtitle, "greptool"); ac++;
	XtSetArg(al[ac], XmNargc, app_argc); ac++;
	XtSetArg(al[ac], XmNargv, app_argv); ac++;
	mainshell = XtAppCreateShell(app_name, (char *) "greptool", sessionShellWidgetClass, display, al, ac);

	ac = 0;
	XtSetArg(al[ac], XmNwidth, 480); ac++;
	XtSetArg(al[ac], XmNtextColumns, 62); ac++;
	xmstrings[0] = XmStringGenerate ( "/bin/grep", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNcommand, xmstrings[0]); ac++;
	command = XmCreateCommand ( mainshell, (char *) "command", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	list1 = XtNameToWidget ( command, "*ItemsList" );
	commandline = XtNameToWidget ( command, "Text" );
	scrolledList1 = XtParent ( list1 );

	XtSetArg(al[ac], XmNhorizontalScrollBar, &scrollbar1); ac++;
	XtSetArg(al[ac], XmNverticalScrollBar, &scrollbar2); ac++;
	XtGetValues(scrolledList1, al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNlistSpacing, 0); ac++;
	XtSetValues ( list1, al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNautoUnmanage, FALSE); ac++;
	form1 = XmCreateForm ( command, (char *) "form1", al, ac );
	ac = 0;
	xmstrings[0] = XmStringGenerate ( "Search for", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	label2 = XmCreateLabelGadget ( form1, (char *) "label2", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	pattern = XmCreateText ( form1, (char *) "pattern", al, ac );
	xmstrings[0] = XmStringGenerate ( "File filter", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	label3 = XmCreateLabelGadget ( form1, (char *) "label3", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	searchfiles = XmCreateText ( form1, (char *) "searchfiles", al, ac );
	xmstrings[0] = XmStringGenerate ( "Hits", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	label4 = XmCreateLabelGadget ( form1, (char *) "label4", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	XtSetArg(al[ac], XmNeditable, FALSE); ac++;
	XtSetArg(al[ac], XmNresizeWidth, TRUE); ac++;
	XtSetArg(al[ac], XmNeditMode, XmMULTI_LINE_EDIT); ac++;
	XtSetArg(al[ac], XmNrows, 16); ac++;
	hitstring = XmCreateScrolledText ( form1, (char *) "hitstring", al, ac );
	ac = 0;
	scrolledText1 = XtParent ( hitstring );

	XtSetArg(al[ac], XmNhorizontalScrollBar, &scrollbar3); ac++;
	XtSetArg(al[ac], XmNverticalScrollBar, &scrollbar4); ac++;
	XtGetValues(scrolledText1, al, ac );
	ac = 0;
	rowcol1 = XmCreateRowColumn ( form1, (char *) "rowcol1", al, ac );
	xmstrings[0] = XmStringGenerate ( "Ignore case", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	ignore_case = XmCreateToggleButton ( rowcol1, (char *) "ignore_case", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	xmstrings[0] = XmStringGenerate ( "Show file names", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	show_files = XmCreateToggleButton ( rowcol1, (char *) "show_files", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	xmstrings[0] = XmStringGenerate ( "Show line numbers", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	show_lines = XmCreateToggleButton ( rowcol1, (char *) "show_lines", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	xmstrings[0] = XmStringGenerate ( "Invert search", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	invert = XmCreateToggleButton ( rowcol1, (char *) "invert", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	xmstrings[0] = XmStringGenerate ( "Count lines only", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	count_lines = XmCreateToggleButton ( rowcol1, (char *) "count_lines", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	xmstrings[0] = XmStringGenerate ( "Show block numbers", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	show_block = XmCreateToggleButton ( rowcol1, (char *) "show_block", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );

	if (command)
		XtAddCallback( command, XmNcommandEnteredCallback, rungrep, (XtPointer) &rcdata );

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( label2,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 10); ac++;
	XtSetArg(al[ac], XmNtopWidget, label2); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNrightOffset, 20); ac++;
	XtSetArg(al[ac], XmNrightWidget, rowcol1); ac++;
	XtSetValues ( pattern,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 20); ac++;
	XtSetArg(al[ac], XmNtopWidget, pattern); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( label3,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 10); ac++;
	XtSetArg(al[ac], XmNtopWidget, label3); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNrightOffset, 20); ac++;
	XtSetArg(al[ac], XmNrightWidget, rowcol1); ac++;
	XtSetValues ( searchfiles,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 20); ac++;
	XtSetArg(al[ac], XmNtopWidget, searchfiles); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( label4,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 20); ac++;
	XtSetArg(al[ac], XmNtopWidget, label4); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightOffset, 0); ac++;
	XtSetValues ( scrolledText1,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_NONE); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightOffset, 0); ac++;
	XtSetValues ( rowcol1,al, ac );
	ac = 0;
	if (pattern)
		XtAddCallback( pattern, XmNactivateCallback, setcommand, (XtPointer) &ccdata );
	if (searchfiles)
		XtAddCallback( searchfiles, XmNactivateCallback, setcommand, (XtPointer) &ccdata );
	if (hitstring != (Widget) 0) { XtManageChild(hitstring); }
	if (ignore_case)
		XtAddCallback( ignore_case, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if (show_files)
		XtAddCallback( show_files, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if (show_lines)
		XtAddCallback( show_lines, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if (invert)
		XtAddCallback( invert, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if (count_lines)
		XtAddCallback( count_lines, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if (show_block)
		XtAddCallback( show_block, XmNvalueChangedCallback, setcommand, (XtPointer) &ccdata );
	if ((children[ac] = ignore_case) != (Widget) 0) { ac++; }
	if ((children[ac] = show_files) != (Widget) 0) { ac++; }
	if ((children[ac] = show_lines) != (Widget) 0) { ac++; }
	if ((children[ac] = invert) != (Widget) 0) { ac++; }
	if ((children[ac] = count_lines) != (Widget) 0) { ac++; }
	if ((children[ac] = show_block) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if ((children[ac] = label2) != (Widget) 0) { ac++; }
	if ((children[ac] = pattern) != (Widget) 0) { ac++; }
	if ((children[ac] = label3) != (Widget) 0) { ac++; }
	if ((children[ac] = searchfiles) != (Widget) 0) { ac++; }
	if ((children[ac] = label4) != (Widget) 0) { ac++; }
	if ((children[ac] = rowcol1) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if ((children[ac] = form1) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if (command != (Widget) 0) { XtManageChild ( command); }
}

