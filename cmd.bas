extern "C"
declare function fgetss() as zstring ptr
end extern
sub scommand(a as string)
	shell a
end sub 
function inputs(a as string)as string
print a;
inputs=>*fgetss()
end function
sub sline(ffile as string)
	dim a as string
	dim count as integer=0
	
	
		while 1
			
			a=inputs (" BLUE> ")
			if a=""+chr(10) then goto escapes
			if a="exit"+chr(10) then goto escapes
			if a="EXIT"+chr(10) then goto escapes
			scommand a
			
		wend
		escapes:
	close 1
end sub
color 7,6
sline(" BLUE> ")
	
