10 dimds(17):dimn(143):dimcc(143):dimci(682):dimic(682):dimcj(682):dimjc(682)
15 dimtr(682):dimsc(682):dimaa(682):dimdd(682):dimoo(682):dimss(682):n$=chr$(0)
20 a=1024:b=1060:poke646,15:v=53280:pokev,0:pokev+1,15:printchr$(147):pokev+1,0
25 pokea,112:pokea+22*40,109:fori=1to35:pokea+i,67:pokea+22*40+i,67:next
30 pokeb,110:fori=1to21:pokea+40*i,66:pokeb+40*i,66:next:pokeb+22*40,125
35 j=1:fori=0to143:cc(i)=j:j=j+1:ifj=16thenj=1
40 next
45 open1,8,15,"i":fori=0to682:ci(i)=-1:ic(i)=-1:next:s=1:open2,8,2,"#"
50 ds(di)=s:ci(357+s)=-2:di=di+1:print#1,"u1 2 0 18"s:get#2,t$,s$:t1=asc(t$+n$)
55 s1=asc(s$+n$):fori=0to255step32:print#1,"u1 2 0 18"s:poke1082+s*40,4
60 print#1,"b-p 2"i+2:get#2,f$:f=asc(f$+n$):iff<>129andf<>130goto105
65 get#2,t$,s$:t2=asc(t$+n$):s2=asc(s$+n$):ift2=0goto105
70 print#1,"u1 2 0"t2;s2:poke1064+t2+s2*40,81
75 poke55336+t2+s2*40,cc(ni):ift2<18thena=s2+(t2-1)*21:goto95
80 ift2<25thena=s2+(t2-18)*19+357:goto95
85 ift2<31thena=s2+(t2-25)*18+490:goto95
90 a=s2+(t2-31)*17+598
95 ci(a)=cd:ic(cd)=a:n(ni)=n(ni)+1
100 cd=cd+1:goto65
105 ni=ni+1:next:s=s1:on-(t1<>0)goto50:ci(357)=-2
110 poke1944,27:poke1980,29
115 i=0:fort=1to35:readns:fors=0tons:tr(i)=t:sc(i)=s:aa(i)=1064+t+s*40:i=i+1
120 next:poke1944+t,46:next:data20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20
125 data20,18,18,18,18,18,18,18,17,17,17,17,17,17,16,16,16,16,16
130 ford=0to143:ifn(d)<>0theno=0:forj=1ton(d):dd(l)=d:oo(l)=o:l=l+1:o=o+1:next
135 poke1945+int(d/4.2),81:next
140 fori=0to682:cj(i)=-1:jc(i)=-1:next:c=0:b=0:fori=0to143:ifn(i)=0goto155
145 forj=1ton(i):ifc>=357andc<376thenc=376
150 cj(c)=b:jc(b)=c:c=c+1:b=b+1:next
155 poke1945+int(i/4.2),160:next:fori=357to375:cj(i)=ci(i):next
160 fori=0to34:poke1945+i,32:next:poke1944,32:poke1980,32:sl=0:i=0
165 on-(ci(i)=cj(i))goto190:on-(ci(i)=-1)goto185:on-(sl=0orss(0)<>i)goto180
170 forj=0to682:ifci(j)<>-1thennext
175 i1=i:i2=j:gosub205:goto165
180 ss(sl)=i:sl=sl+1:i=jc(ci(i)):goto165
185 i1=ic(cj(i)):i2=i:gosub205
190 ifci(i)>=0thenpokeaa(i),160
195 ifsl<>0thensl=sl-1:i=ss(sl):goto165
200 i=i+1:on-(i<683)goto165:close2:close1:open1,8,15,"v":end
205 pokeaa(i1),18:print#1,"u1 2 0"tr(i1)sc(i1):pokeaa(i2),23
210 pokeaa(i2)+54272,cc(dd(i2)):print#1,"u2 2 0"tr(i2)sc(i2)
215 pokeaa(i1),32:pokeaa(i2),160
220 c=ci(i1):o=oo(c):t=tr(i2):s=sc(i2):ifo<>0goto240
225 d=dd(c):s1=ds(int(d/8)):pp=peek(aa(357+s1)):pokeaa(357+s1),0
230 print#1,"u1 2 0"18;s1:print#1,"b-p 2"(dand7)*32+3
235 print#2,chr$(t)chr$(s);:print#1,"u2 2 0"18;s1:pokeaa(357+s1),pp:goto250
240 a=ic(c-1):tt=tr(a):ss=sc(a):print#1,"u1 2 0"tt;ss:pp=peek(aa(a))
245 pokeaa(a),0:print#2,chr$(t)chr$(s);:print#1,"u2 2 0"tt;ss:pokeaa(a),pp
250 v=ci(i1):ic(v)=i2:ci(i2)=v:ci(i1)=-1:return
 
run
