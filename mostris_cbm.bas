10 bank 15:gosub 54000:xs=5:xd=10:xn=xs+int(xd/2):gs=16
15 gt=gs:ya=0:po=0:ns=gs:np=0:nc=ns:d0=0:d1=0:d2=0:df=0
20 xp=10:yp=0:sc=53248:wd=80:eb=32:sb=207:sf=160:cb=192:gosub 50000
25 gosub 51000:gosub 63900:bs=bn:gosub 63900:gosub 56020:gosub 56500
30 rt=0:ft=0:cf=0:xf=0:la$="":tt=0:ch=sb:gosub 60000
40 tt=tt+0.15: if tt>=gs then ya=1:tt=0
45 gs=gt:gt=ns
60 fc=0:geta$:if a$="" and ya=0 then 40
70 if a$="" then 110
75 rem
80 if a$="s" and la$<>"s" then ft=rt-1:fc=1:if ft<0 then ft=3
90 if a$="a" then xf=-1
95 if a$=" " then gt=0
100 if a$="d" then xf=1
102 if a$="k" then 63700
110 la$=a$:rm=0
115 if fc=1 or xf<>0 then gt=ns-3:gosub 62000
120 if rm=1 then gosub 63950
125 xp=xp+xf:xf=0:rt=ft
130 if ya>0 then gosub 62200:if cf=1 then gosub 62100:goto 1000
135 gosub 63970
140 ya=0:goto 40
1000 if y<=-1 then 40000
1010 xp=xn:bs=bn:gosub 63900:gosub 56500:goto 40
30000 return
40000 print chr$(19);:kc%=20:gosub 41000:print spc(xs+xd+3)"game over"
40010 get a$:if a$<>"" then 40010
40015 get a$:if a$<>"" then run
40020 goto 40015
41000 rem step kc% down
41010 for kc=1 to kc%:print chr$(17);:next:return
42000 rem step kc% left
42010 for kc=1 to kc%:print chr$(157);:next:return
50000 dim bm%(118):rem setup blocks
50005 rem long one
50010 bm%(0)=0:bm%(1)=1:bm%(2)=2:bm%(3)=3
50020 bm%(4)=-2*wd+2:bm%(5)=-wd+2:bm%(6)=2:bm%(7)=wd+2
50030 bm%(8)=0:bm%(9)=1:bm%(10)=2:bm%(11)=3
50040 bm%(12)=-2*wd+2:bm%(13)=-wd+2:bm%(14)=2:bm%(15)=wd+2
50050 rem l-shape left
50060 bm%(16)=0:bm%(17)=-wd:bm%(18)=1:bm%(19)=2
50070 bm%(20)=0:bm%(21)=-wd:bm%(22)=1-wd:bm%(23)=wd
50080 bm%(24)=0:bm%(25)=1:bm%(26)=2:bm%(27)=2+wd
50090 bm%(28)=1:bm%(29)=1-wd:bm%(30)=1+wd:bm%(31)=wd
50092 rem l-shape right
50093 bm%(32)=0:bm%(33)=1:bm%(34)=2:bm%(35)=2-wd
50094 bm%(36)=0:bm%(37)=-wd:bm%(38)=wd:bm%(39)=1+wd
50095 bm%(40)=0:bm%(41)=wd:bm%(42)=1:bm%(43)=2
50096 bm%(44)=1:bm%(45)=1-wd:bm%(46)=-wd:bm%(47)=1+wd
50100 rem cube
50110 bm%(48)=0:bm%(49)=1:bm%(50)=-wd:bm%(51)=1-wd
50120 bm%(52)=0:bm%(53)=1:bm%(54)=-wd:bm%(55)=1-wd
50130 bm%(56)=0:bm%(57)=1:bm%(58)=-wd:bm%(59)=1-wd
50140 bm%(60)=0:bm%(61)=1:bm%(62)=-wd:bm%(63)=1-wd
50150 rem step right
50160 bm%(64)=0:bm%(65)=1:bm%(66)=1-wd:bm%(67)=2-wd
50170 bm%(68)=0:bm%(69)=-wd:bm%(70)=1:bm%(71)=1+wd
50180 bm%(72)=0:bm%(73)=1:bm%(74)=1-wd:bm%(75)=2-wd
50190 bm%(76)=0:bm%(77)=-wd:bm%(78)=1:bm%(79)=1+wd
50200 rem step center
50210 bm%(80)=0:bm%(81)=1:bm%(82)=1-wd:bm%(83)=2
50220 bm%(84)=0:bm%(85)=-wd:bm%(86)=1:bm%(87)=wd
50230 bm%(88)=1:bm%(89)=-wd:bm%(90)=1-wd:bm%(91)=2-wd
50240 bm%(92)=0:bm%(93)=1:bm%(94)=1-wd:bm%(95)=1+wd
50250 rem step left
50260 bm%(96)=-wd:bm%(97)=1-wd:bm%(98)=1:bm%(99)=2
50270 bm%(100)=0:bm%(101)=1:bm%(102)=wd:bm%(103)=1-wd
50280 bm%(104)=-wd:bm%(105)=1-wd:bm%(106)=1:bm%(107)=2
50290 bm%(108)=0:bm%(109)=1:bm%(110)=wd:bm%(111)=1-wd
50300 bm%(112)=3:bm%(113)=6:bm%(114)=8:bm%(115)=7
50310 bm%(116)=5:bm%(117)=4:bm%(118)=2
50340 return
51000 rem playfield
51010 print chr$(147);:for i=0 to 21
51020 print spc(xs);chr$(221);spc(xd);chr$(221)
51030 next:print spc(xs);chr$(173);:fori=1 to xd:print chr$(cb);:next
51040 print chr$(189):dd=xs+xd+3
51050 print chr$(19);:kc%=10:gosub 41000:print spc(dd)chr$(176);
51055 for i=0 to 6:print chr$(cb);:next:print chr$(174)
51056 print spc(dd)chr$(221)" next: "chr$(221)
51060 for i=1 to 5:print spc(dd)chr$(221)spc(7)chr$(221):next
51080 print spc(dd)chr$(173);:for i=0 to 6:print chr$(cb);:next
51090 print chr$(189);chr$(19);
51100 print chr$(17);
51110 print spc(50);"mostris / egonolsen71"
51120 print spc(50);"ported to cbm 2 in 11/2023":print:print
51130 print spc(50);"controls:"
51135 print spc(50);"---------":print
51140 print spc(50);"a/d - move left/right"
51150 print spc(50);"s   - rotate"
51160 print spc(50);"spc - drop"
51170 print spc(50);"k   - quit"
51200 return
54000 rem
54010 printchr$(147);chr$(142);"mostris..."
54020 gosub 30000
54030 return
55000 gosub 63500:ad=ad-sc:ly=9999:hy=-9999
55010 for i=oo to oo+3:aa=bm%(i)+ad
55030 y=int(aa/wd):if y<ly then ly=y
55040 if y>hy then hy=y
55050 next:yd=0
55060 for i=ly to hy
55070 k=i*wd+xs+1+sc:bc=0:for xx=k to k+xd-1
55080 if peek(xx)=sf then bc=bc+1
55090 next
55100 if bc=xd then gosub 55500:yd=yd+1:i=i-1:hy=hy-1
55110 next:gosub 56000:return
55500 for ii=i to 1 step-1:k=ii*wd+xs+1+sc
55510 f=0:for xx=k to k+xd-1
55520 g=xx-wd:j=peek(g):if j=sf then f=f+1
55530 poke xx,j:next
55540 if f=0 then return
55550 next:return
56000 if yd=0 then return
56010 po=po+int(5^yd)+(23-ly)*2:np=np+yd
56012 if np>=10 then ns=ns-2:np=0:if ns<4 then ns=4
56020 print chr$(19)chr$(17)spc(xs+xd+4)"score:         ";
56025 kc%=9:gosub 42000:print po
56030 print spc(xs+xd+4)"speed:    ";:kc%=4:gosub 42000:print int((nc-ns)/2)
56040 return
56500 t1=yp:t2=xp:t4=ch
56510 yp=15:xp=xs+xd+6:ch=eb:gosub 60000
56520 t3=bs:bs=bn:ch=sb:gosub 60000
56530 bs=t3:yp=t1:xp=t2:ch=t4:return
60000 gosub 63500
60001 rem
60008 rem old basic copy code, slightly more flickery:
60010 for i=oo to oo+3:poke bm%(i)+ad,ch:next
60040 return
61000 gosub 63500:ad=ad+wd*ya
61010 for i=oo to oo+3
61050 a2=peek(bm%(i)+ad):if a2=sf or a2=cb-128 then cf=1:return
61060 next:cf=0:return
62000 gosub 63600
62010 for i=oo to oo+3
62030 a2=peek(bm%(i)+ad):if a2<>eb and a2<>sb then ft=rt:xf=0:return
62040 next:rm=1:return
62100 cf=0:yp=yp-ya:gosub 63000:gosub 55000:return
62200 gosub 63950:gosub 61000:yp=yp+ya:return
63000 ch=sf:gosub 60000:df=0:return
63500 ad=yp*wd+xp+sc:oo=bs*16+rt*4:return
63600 ad=yp*wd+xp+xf+sc:oo=bs*16+ft*4:return
63700 rem 
63710 printchr$(147);"goodbye!":end
63900 bn=int(rnd(0)*7):yp=-1:rt=0:ft=0:xf=0:return
63950 if df=0 then ch=eb:df=1:d0=xp:d1=yp:d2=rt
63960 return
63970 if df=0 then return
63980 ad=d1*wd+d0+sc:oo=bs*16+d2*4:gosub 60001
63990 ch=sb:gosub 60000:df=0
63995 return


