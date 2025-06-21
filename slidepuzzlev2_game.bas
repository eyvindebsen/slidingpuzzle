!-Original name "15 puzzle" 
!-https://en.wikipedia.org/wiki/15_puzzle
!-CBM Studio used for this project. Many REM statements are too long.
!-To avoid this, set CBM studio 
!-Options->Basic Code Generation->Remove Rem statements
!-Todo: Make a cooler winner screen
!-
1 rem tile numbers game v2 by Eyvind Ebsen 2025 jun
2 a$="123456789abcdef":b$="{left*6}{down}":l=782:m=781:p=65520
3 dimb(3,3):n=15:fory=.to3:forx=.to3:b(x,y)=n:n=n-1:next:next
4 b(3,3)=0:poke53280,11:poke53281,0
5 gosub1100:rem init the screen
6 gosub900:ti$="000000":rem show board and reset time
10 gosub500:rem did we win?
20 gosub700:rem figure out possible moves
30 gosub600:rem get user input and move
50 goto10
98 rem print"{white}{home}";
99 end
499 rem check for win
500 c=0:n=1:fory=.to3:forx=.to3:ifb(x,y)=nthenc=c+1
510 n=n+1:next:next
520 rem print"{home}{down*4}{green}"spc(25)c"  correct "
525 pokel,30:pokem,7:sysp:print"{green}"c"{left} "
530 if c=15thenprint"you win!":end
540 return
599 rem get user input and move
600 pokel,30:pokem,12:sysp:print"{light blue}"p$"   ";
605 pokel,30:pokem,17:sysp:print"{light gray}"mv" ";
610 k=0:getz$:rem while waiting for user, update time
612 pokel,29:pokem,22:sysp:print"{cyan}"mid$(ti$,3,2)":"right$(ti$,2);
615 ifz$=""then610
620 forq=1tolen(p$):ifmid$(p$,q,1)=z$thenk=1
630 next
640 ifk=0then610
650 rem we got a valid move
655 mv=mv+1
660 forq=1tolen(a$):ifmid$(a$,q,1)=z$then c=q
670 next:rem print"you choose "c
675 fory=.to3:forx=.to3:ifb(x,y)=cthenxx=x:yy=y
680 next:next
685 rem print"swap "xx;yy"with "nx;ny
690 s=b(xx,yy):b(xx,yy)=b(nx,ny):b(nx,ny)=s:rem swap data
691 rem speed up the swap, only redraw tiles changed
692 pokel,xx*6:pokem,yy*6:sysp:rem position cursor
693 forq=.to5:print"      "b$;:next:rem clear square
694 ifb(nx,ny)=1+(ny*4+nx)thenprint"{reverse on}";:rem if correct place, go reverse
696 pokel,nx*6:pokem,ny*6:sysp:rem position cursor
697 n$=mid$(a$,b(nx,ny),1):poke646,b(nx,ny):gosub1000
698 print"{reverse off}";:return:rem disable reverse in any case
699 rem figure out possible moves
700 p$="":fory=.to3:forx=.to3
710 ifx>0then if b(x-1,y)=0thenp$=p$+mid$(a$,b(x,y),1):goto730
720 ifx<3then if b(x+1,y)=0thenp$=p$+mid$(a$,b(x,y),1)
730 ify>0then if b(x,y-1)=0thenp$=p$+mid$(a$,b(x,y),1):goto742
740 ify<3then if b(x,y+1)=0thenp$=p$+mid$(a$,b(x,y),1)
742 ifb(x,y)=0thennx=x:ny=y:rem note the space square
745 next:next
750 rem print"{home}{down*24}pos moves "p$" end is at "nx;ny;
760 return
899 rem show entire board
900 fory=.to3:forx=.to3
902 pokel,x*6:pokem,y*6:sysp:rem position cursor
905 if b(x,y)=0thenforq=.to5:print"      "b$;:next:goto920:rem draw blank
908 ifb(x,y)=1+(y*4+x)thenprint"{reverse on}";
910 n$=mid$(a$,b(x,y),1)
915 poke646,b(x,y):gosub1000:print"{reverse off}";
920 next:next
930 return
999 rem draw a square
1000 PRINT "UCCCCI"b$;
1002 PRINT "{125}    {125}"b$;
1004 PRINT "{125}  "n$" {125}"b$;
1006 PRINT "{125}    {125}"b$;
1007 PRINT "{125}    {125}"b$;
1008 PRINT "JCCCCK";
1010 return
1099 rem init the screen
1100 print"{clear}{light green}{down}"spc(25)" put the tiles"
1105 printspc(25)"in order (1-f)"
1120 printspc(25)"{green}{down*2} correct tiles"
1130 printspc(25)"{light blue}{down*4}possible moves"
1140 printspc(25)"{light gray}{down*4}  moves used"
1150 printspc(25)"{cyan}{down*4}  time spend"
1198 return
