% paper20.ly

\include "table20.ly";

paper_twenty = \paper {
	staffheight = 20.0\pt;
	linewidth = 17.0 \cm;

	% ugh see table20 for sizes
	quartwidth =  6.61\pt;
	wholewidth = 9.90\pt;

	basicspace = 8.\pt;
	arithmetic_basicspace = 2.;
        arithmetic_multiplier = 6.\pt;
	
	\symboltables { \table_twenty }
	\include "params.ly";
}

