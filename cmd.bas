sub scommand(a as string)
	shell a
end sub 
sub sline(ffile as string)
	dim a as string
	a=ffile
		while "" <> a
			print " BLUE> ";
			line input a
			if a="EXIT" then goto escapes
			if a="exit" then goto escapes
			if a="" then goto escapes

                        scommand a
		wend
		escapes:
	close 1
end sub
color 7,1
sline("stdin")
	
