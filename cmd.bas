extern "C"
'fbc -static cmd.bas
declare sub runs(a as string)
sub scommand(a as string) export
	shell a
end sub 
sub sline() export
	dim a as string
	color 7,6
	a="stdin"
		while "" <> a
			print " BLUE> ";
			line input a
			if a="EXIT" then goto escapes
			if a="exit" then goto escapes
			if a="" then goto escapes

                        scommand a+chr(0)
		wend
		escapes:
	
end sub
end extern
sline()
	
