local a local b,c,d,e,f,g,h,i,j,k,l,n,o,p,q,r,s,t,u,v={[6]=function()local b,c,d=a(6)local e return(function(...)local f
=d(c.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)local g,h,i,j,k=f.import(c,c.Parent.Parent,'components','ui',
'Checkbox').Checkbox,f.import(c,c.Parent.Parent,'components','ui','Menu').Menu,f.import(c,c.Parent.Parent,'components',
'ui','MenuRow').MenuRow,f.import(c,c.Parent.Parent,'components','ui','RowLabel').RowLabel,f.import(c,c.Parent.Parent.
Parent.Parent,'rbxts_include','node_modules','@rbxts','roact','src')local l=function()return k.createElement(h,{},{k.
createElement(i,{},{k.createElement(j,{Text='Hello World'}),k.createElement(g)})})end return{MainUI=l}end)()end,[8]=
function()local b,c,d=a(8)local e return(function(...)local f=d(c.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local g,h,i,j=f.import(c,c.Parent.Parent.Parent.Parent,'rbxts_include','node_modules','@rbxts','roact','src'),f.import(c
,c.Parent.Parent,'utils').Players,f.import(c,c.Parent.Parent,'app','page').MainUI,game:GetService'StarterGui'local k=j:
FindFirstChild'MainUI'if k~=nil then k:Destroy()end pcall(function()if h.LocalPlayer then j=h.LocalPlayer:WaitForChild
'PlayerGui':WaitForChild'ScreenGui'end end)g.mount(g.createFragment{MainUI=g.createElement('ScreenGui',{IgnoreGuiInset=
true},{g.createElement(i)})},j)end)()end,[11]=function()local b,c,d=a(11)local e return(function(...)local f=0.15 return
{Window_Animation_Time=f}end)()end,[12]=function()local b,c,d=a(12)local e return(function(...)local f,g,h=Color3.
fromRGB(33,33,33),Color3.fromRGB(230,230,230),Color3.fromRGB(28,163,255)return{Main_Background=f,Text_Color=g,
Checkbox_Color=h}end)()end,[13]=function()local b,c,d=a(13)local e return(function(...)local f,g=15,15 return{
Small_Padding=f,Window_Corner_Radius=g}end)()end,[15]=function()local b,c,d=a(15)local e return(function(...)local f=d(c
.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)local g,h=f.import(c,c.Parent.Parent.Parent.Parent.Parent,
'rbxts_include','node_modules','@rbxts','roact','src'),f.import(c,c.Parent.Parent.Parent.Parent.Parent,'rbxts_include',
'node_modules','@rbxts','roact-hooked','src')local i,j,k=h.useState,h.withHooks,f.import(c,c.Parent.Parent,'styles',
'Colors')local l,m,n=k.Checkbox_Color,k.Main_Background,k.Text_Color local o=j(function(o)local p=o.Checked if p==nil
then p=false end local q,r=i(p)return g.createElement('TextButton',{Size=UDim2.new(0,15,0,15),BackgroundTransparency=0,
BackgroundColor3=if q then l else m,AutoButtonColor=false,Text='',[g.Event.MouseButton1Click]=function()local s=not q r(
s)local t=o.OnChange if t~=nil then t(s)end end},{g.createElement('UICorner',{CornerRadius=UDim.new(0,2)}),g.
createElement('UIStroke',{Color=if q then l else n,Thickness=2,Transparency=if q then 0 else 0.3,ApplyStrokeMode=Enum.
ApplyStrokeMode.Border})})end)return{Checkbox=o}end)()end,[16]=function()local b,c,d=a(16)local e return(function(...)
local f=d(c.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)local g,h,i=f.import(c,c.Parent.Parent.Parent.
Parent.Parent,'rbxts_include','node_modules','@rbxts','roact','src'),f.import(c,c.Parent.Parent,'styles','Colors').
Main_Background,f.import(c,c.Parent.Parent,'styles','Measurements')local j,k,l=i.Small_Padding,i.Window_Corner_Radius,f.
import(c,c.Parent.Parent.Parent.Parent.Parent,'rbxts_include','node_modules','@rbxts','roact-hooked','src')local m,n,o,p
=l.useEffect,l.withHooks,f.import(c,c.Parent.Parent.Parent,'utils').TweenService,f.import(c,c.Parent.Parent,'styles',
'Animations').Window_Animation_Time local q=n(function(q)local r=g.createRef()m(function()if q.AnimateIn~=false then r:
getValue().BackgroundTransparency=1 r:getValue().Visible=true o:Create(r:getValue(),TweenInfo.new(p),{
BackgroundTransparency=0}):Play()end end,{r})local s,t={[g.Ref]=r,Visible=q.AnimateIn==false,BackgroundColor3=h,Size=q.
Size or UDim2.new(0,200,0,400),Position=UDim2.new(1,-j,0.5,0),AnchorPoint=Vector2.new(1,0.5)},{g.createElement(
'UIListLayout',{FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Center,Padding=
UDim.new(0,j)})}local u,v=#t,q[g.Children]if v then for w,x in v do if type(w)=='number'then t[u+w]=x else t[w]=x end
end end u=#t t[u+1]=g.createElement('UICorner',{CornerRadius=UDim.new(0,k)})return g.createElement('Frame',s,t)end)
return{Menu=q}end)()end,[17]=function()local b,c,d=a(17)local e return(function(...)local f=d(c.Parent.Parent.Parent.
Parent.Parent.rbxts_include.RuntimeLib)local g,h=f.import(c,c.Parent.Parent.Parent.Parent.Parent,'rbxts_include',
'node_modules','@rbxts','roact','src'),f.import(c,c.Parent.Parent,'styles','Measurements').Small_Padding local function
i(j)local k,l={Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,BorderSizePixel=0,AutomaticSize=Enum.AutomaticSize.Y},{g
.createElement('UIListLayout',{HorizontalAlignment=Enum.HorizontalAlignment.Center,VerticalAlignment=Enum.
VerticalAlignment.Center,Padding=UDim.new(0,h),FillDirection=Enum.FillDirection.Horizontal})}local m,n=#l,j[g.Children]
if n then for o,p in n do if type(o)=='number'then l[m+o]=p else l[o]=p end end end return g.createElement('Frame',k,l)
end return{MenuRow=i}end)()end,[18]=function()local b,c,d=a(18)local e return(function(...)local f=d(c.Parent.Parent.
Parent.Parent.Parent.rbxts_include.RuntimeLib)local g,h=f.import(c,c.Parent.Parent.Parent.Parent.Parent,'rbxts_include',
'node_modules','@rbxts','roact','src'),f.import(c,c.Parent.Parent,'styles','Colors').Text_Color local function i(j)
return g.createElement('TextLabel',{Size=UDim2.new(0,0,0,0),AutomaticSize=Enum.AutomaticSize.XY,BackgroundTransparency=1
,TextColor3=h,Text=j.Text,FontFace=Font.new(Font.fromEnum(Enum.Font.SourceSansSemibold).Family,Enum.FontWeight.SemiBold,
Enum.FontStyle.Normal),TextSize=20})end return{RowLabel=i}end)()end,[19]=function()local b,c,d=a(19)local e return(
function(...)local f,g=d(c.Parent.Parent.Parent.rbxts_include.RuntimeLib),{}local h=f.import(c,c,'Services')g.SetTimeout
=h.SetTimeout g.Workspace=h.Workspace g.RunService=h.RunService g.UserInputService=h.UserInputService g.Players=h.
Players g.ReplicatedStorage=h.ReplicatedStorage g.TweenService=h.TweenService g.FindPath=h.FindPath g.YieldPath=h.
YieldPath return g end)()end,[20]=function()local b,c,d=a(20)local e return(function(...)local function f(g)return
Vector3.new(-g.Z,g.Y,g.X)end local function g(h,i,j)local k,l,m=h.Size.Y/2,f(h.CFrame.UpVector),if i then i.
AssemblyLinearVelocity else h.AssemblyLinearVelocity local n,o=m:Dot(l),h.AssemblyAngularVelocity local p=o:Dot(h.CFrame
.UpVector)local q=p*k local r=math.abs(q-n)local s=1-math.clamp(r/j,0,1)return s end local function h(i,j,k,l)if not i
or not i:FindFirstChild'Wheels'then return nil end local m={'FL','FR','RL','RR'}local n,o=table.create(#m),function(n)
return(i:FindFirstChild'Wheels'):FindFirstChild(n)end for p,q in m do n[p]=o(q,p-1,m)end local p=n for q,r in p do if
not r then continue end local s=r:FindFirstChildOfClass'BodyForce'if not s then s=Instance.new'BodyForce'end s.Parent=r
if(k and(r.Name=='FL'or r.Name=='FR'))or(l and(r.Name=='RL'or r.Name=='RR'))then local t,u=Vector3.yAxis,-j s.Force=t*u
else s.Force=Vector3.zero end end end return{rotate90Y=f,getTraction=g,setDownforce=h}end)()end,[21]=function()local b,c
,d=a(21)local e return(function(...)local function f(g,h)if h==nil then h=game end local i,j=string.split(g,'.'),h do
local k,l=0,false while true do if l then k+=1 else l=true end if not(k<#i)then break end if(k==0 and(i[k+1]=='game'or i
[k+1]==`{h}`))or i[k+1]==''then continue else local m=j if m~=nil then m=m:WaitForChild(i[k+1])end j=m end end end
return j end local function g(h,i)if i==nil then i=game end local j,k=string.split(h,'.'),i do local l,m=0,false while
true do if m then l+=1 else m=true end if not(l<#j)then break end if(l==0 and(j[l+1]=='game'or j[l+1]==`{i}`))or j[l+1]
==''then continue else local n=k if n~=nil then n=n:FindFirstChild(j[l+1])end k=n end if not k then return nil end end
end return k end local h,i,j,k,l,m=game:GetService'TweenService',game:GetService'ReplicatedStorage',game:GetService
'Players',game:GetService'UserInputService',game:GetService'RunService',game:GetService'Workspace'local function n(o,p)
local q,r=(tick())r=l.RenderStepped:Connect(function()if tick()-q>p/1000 then o()r:Disconnect()end end)end return{
YieldPath=f,FindPath=g,SetTimeout=n,TweenService=h,ReplicatedStorage=i,Players=j,UserInputService=k,RunService=l,
Workspace=m}end)()end,[23]=function()local b,c,d=a(23)local e return(function(...)local f,g,h,i=
'Non-promise value passed into %s at index %s','Please pass a list of promises to %s',
'Please pass a handler function to %s!',{__mode='k'}local function j(k)if type(k)=='function'then return true end if
type(k)=='table'then local l=getmetatable(k)if l and type(rawget(l,'__call'))=='function'then return true end end return
false end local function k(l,m)local n={}for o,p in ipairs(m)do n[p]=p end return setmetatable(n,{__index=function(o,p)
error(string.format('%s is not in %s!',p,l),2)end,__newindex=function()error(string.format(
'Creating new members in %s is not allowed!',l),2)end})end local l do l={Kind=k('Promise.Error.Kind',{'ExecutionError',
'AlreadyCancelled','NotResolvedInTime','TimedOut'})}l.__index=l function l.new(m,n)m=m or{}return setmetatable({error=
tostring(m.error)or'[This error has no error text.]',trace=m.trace,context=m.context,kind=m.kind,parent=n,createdTick=os
.clock(),createdTrace=debug.traceback()},l)end function l.is(m)if type(m)=='table'then local n=getmetatable(m)if type(n)
=='table'then return rawget(m,'error')~=nil and type(rawget(n,'extend'))=='function'end end return false end function l.
isKind(m,n)assert(n~=nil,'Argument #2 to Promise.Error.isKind must not be nil')return l.is(m)and m.kind==n end function
l.extend(m,n)n=n or{}n.kind=n.kind or m.kind return l.new(n,m)end function l.getErrorChain(m)local n={m}while n[#n].
parent do table.insert(n,n[#n].parent)end return n end function l.__tostring(m)local n={string.format(
'-- Promise.Error(%s) --',m.kind or'?')}for o,p in ipairs(m:getErrorChain())do table.insert(n,table.concat({p.trace or p
.error,p.context},'\n'))end return table.concat(n,'\n')end end local function m(...)return select('#',...),{...}end
local function n(o,...)return o,select('#',...),{...}end local function o(p)assert(p~=nil,'traceback is nil')return
function(q)if type(q)=='table'then return q end return l.new{error=q,kind=l.Kind.ExecutionError,trace=debug.traceback(
tostring(q),2),context='Promise created at:\n\n'..p}end end local function p(q,r,...)return n(xpcall(r,o(q),...))end
local function q(r,s,t,u)return function(...)local v,w,x=p(r,s,...)if v then t(unpack(x,1,w))else u(x[1])end end end
local function r(s)return next(s)==nil end local s={Error=l,Status=k('Promise.Status',{'Started','Resolved','Rejected',
'Cancelled'}),_getTime=os.clock,_timeEvent=game:GetService'RunService'.Heartbeat,_unhandledRejectionCallbacks={}}s.
prototype={}s.__index=s.prototype function s._new(t,u,v)if v~=nil and not s.is(v)then error(
'Argument #2 to Promise.new must be a promise or nil',2)end local w={_source=t,_status=s.Status.Started,_values=nil,
_valuesLength=-1,_unhandledRejection=true,_queuedResolve={},_queuedReject={},_queuedFinally={},_cancellationHook=nil,
_parent=v,_consumers=setmetatable({},i)}if v and v._status==s.Status.Started then v._consumers[w]=true end setmetatable(
w,s)local function x(...)w:_resolve(...)end local function y(...)w:_reject(...)end local function z(A)if A then if w.
_status==s.Status.Cancelled then A()else w._cancellationHook=A end end return w._status==s.Status.Cancelled end
coroutine.wrap(function()local A,B,C=p(w._source,u,x,y,z)if not A then y(C[1])end end)()return w end function s.new(t)
return s._new(debug.traceback(nil,2),t)end function s.__tostring(t)return string.format('Promise(%s)',t._status)end
function s.defer(t)local u,v=(debug.traceback(nil,2))v=s._new(u,function(w,x,y)local z z=s._timeEvent:Connect(function()
z:Disconnect()local A,B,C=p(u,t,w,x,y)if not A then x(C[1])end end)end)return v end s.async=s.defer function s.resolve(
...)local t,u=m(...)return s._new(debug.traceback(nil,2),function(v)v(unpack(u,1,t))end)end function s.reject(...)local
t,u=m(...)return s._new(debug.traceback(nil,2),function(v,w)w(unpack(u,1,t))end)end function s._try(t,u,...)local v,w=m(
...)return s._new(t,function(x)x(u(unpack(w,1,v)))end)end function s.try(t,...)return s._try(debug.traceback(nil,2),t,
...)end function s._all(t,u,v)if type(u)~='table'then error(string.format(g,'Promise.all'),3)end for w,x in pairs(u)do
if not s.is(x)then error(string.format(f,'Promise.all',tostring(w)),3)end end if#u==0 or v==0 then return s.resolve{}end
return s._new(t,function(w,x,y)local z,A,B,C,D={},{},0,0,false local function E()for F,G in ipairs(A)do G:cancel()end
end local function F(G,...)if D then return end B=B+1 if v==nil then z[G]=...else z[B]=...end if B>=(v or#u)then D=true
w(z)E()end end y(E)for G,H in ipairs(u)do A[G]=H:andThen(function(...)F(G,...)end,function(...)C=C+1 if v==nil or#u-C<v
then E()D=true x(...)end end)end if D then E()end end)end function s.all(t)return s._all(debug.traceback(nil,2),t)end
function s.fold(t,u,v)assert(type(t)=='table','Bad argument #1 to Promise.fold: must be a table')assert(j(u),
'Bad argument #2 to Promise.fold: must be a function')local w=s.resolve(v)return s.each(t,function(x,y)w=w:andThen(
function(z)return u(z,x,y)end)end):andThen(function()return w end)end function s.some(t,u)assert(type(u)=='number',
'Bad argument #2 to Promise.some: must be a number')return s._all(debug.traceback(nil,2),t,u)end function s.any(t)return
s._all(debug.traceback(nil,2),t,1):andThen(function(u)return u[1]end)end function s.allSettled(t)if type(t)~='table'then
error(string.format(g,'Promise.allSettled'),2)end for u,v in pairs(t)do if not s.is(v)then error(string.format(f,
'Promise.allSettled',tostring(u)),2)end end if#t==0 then return s.resolve{}end return s._new(debug.traceback(nil,2),
function(u,v,w)local x,y,z={},{},0 local function A(B,...)z=z+1 x[B]=...if z>=#t then u(x)end end w(function()for B,C in
ipairs(y)do C:cancel()end end)for B,C in ipairs(t)do y[B]=C:finally(function(...)A(B,...)end)end end)end function s.race
(t)assert(type(t)=='table',string.format(g,'Promise.race'))for u,v in pairs(t)do assert(s.is(v),string.format(f,
'Promise.race',tostring(u)))end return s._new(debug.traceback(nil,2),function(u,v,w)local x,y={},false local function z(
)for A,B in ipairs(x)do B:cancel()end end local function A(B)return function(...)z()y=true return B(...)end end if w(A(v
))then return end for B,C in ipairs(t)do x[B]=C:andThen(A(u),A(v))end if y then z()end end)end function s.each(t,u)
assert(type(t)=='table',string.format(g,'Promise.each'))assert(j(u),string.format(h,'Promise.each'))return s._new(debug.
traceback(nil,2),function(v,w,x)local y,z,A={},{},false local function B()for C,D in ipairs(z)do D:cancel()end end x(
function()A=true B()end)local C={}for D,E in ipairs(t)do if s.is(E)then if E:getStatus()==s.Status.Cancelled then B()
return w(l.new{error='Promise is cancelled',kind=l.Kind.AlreadyCancelled,context=string.format(
[[The Promise that was part of the array at index %d passed into Promise.each was already cancelled when Promise.each began.

That Promise was created at:

%s]]
,D,E._source)})elseif E:getStatus()==s.Status.Rejected then B()return w(select(2,E:await()))end local F=E:andThen(
function(...)return...end)table.insert(z,F)C[D]=F else C[D]=E end end for D,E in ipairs(C)do if s.is(E)then local F F,E=
E:await()if not F then B()return w(E)end end if A then return end local F=s.resolve(u(E,D))table.insert(z,F)local G,H=F:
await()if not G then B()return w(H)end y[D]=H end v(y)end)end function s.is(t)if type(t)~='table'then return false end
local u=getmetatable(t)if u==s then return true elseif u==nil then return j(t.andThen)elseif type(u)=='table'and type(
rawget(u,'__index'))=='table'and j(rawget(rawget(u,'__index'),'andThen'))then return true end return false end function
s.promisify(t)return function(...)return s._try(debug.traceback(nil,2),t,...)end end do local t,u function s.delay(v)
assert(type(v)=='number','Bad argument #1 to Promise.delay, must be a number.')if not(v>=1.6666666666666665E-2)or v==
math.huge then v=1.6666666666666665E-2 end return s._new(debug.traceback(nil,2),function(w,x,y)local z=s._getTime()local
A=z+v local B={resolve=w,startTime=z,endTime=A}if u==nil then t=B u=s._timeEvent:Connect(function()local C=s._getTime()
while t~=nil and t.endTime<C do local D=t t=D.next if t==nil then u:Disconnect()u=nil else t.previous=nil end D.resolve(
s._getTime()-D.startTime)end end)else if t.endTime<A then local C=t local D=C.next while D~=nil and D.endTime<A do C=D D
=C.next end C.next=B B.previous=C if D~=nil then B.next=D D.previous=B end else B.next=t t.previous=B t=B end end y(
function()local C=B.next if t==B then if C==nil then u:Disconnect()u=nil else C.previous=nil end t=C else local D=B.
previous D.next=C if C~=nil then C.previous=D end end end)end)end end function s.prototype.timeout(t,u,v)local w=debug.
traceback(nil,2)return s.race{s.delay(u):andThen(function()return s.reject(v==nil and l.new{kind=l.Kind.TimedOut,error=
'Timed out',context=string.format('Timeout of %d seconds exceeded.\n:timeout() called at:\n\n%s',u,w)}or v)end),t}end
function s.prototype.getStatus(t)return t._status end function s.prototype._andThen(t,u,v,w)t._unhandledRejection=false
return s._new(u,function(x,y)local z=x if v then z=q(u,v,x,y)end local A=y if w then A=q(u,w,x,y)end if t._status==s.
Status.Started then table.insert(t._queuedResolve,z)table.insert(t._queuedReject,A)elseif t._status==s.Status.Resolved
then z(unpack(t._values,1,t._valuesLength))elseif t._status==s.Status.Rejected then A(unpack(t._values,1,t._valuesLength
))elseif t._status==s.Status.Cancelled then y(l.new{error='Promise is cancelled',kind=l.Kind.AlreadyCancelled,context=
'Promise created at\n\n'..u})end end,t)end function s.prototype.andThen(t,u,v)assert(u==nil or j(u),string.format(h,
'Promise:andThen'))assert(v==nil or j(v),string.format(h,'Promise:andThen'))return t:_andThen(debug.traceback(nil,2),u,v
)end function s.prototype.catch(t,u)assert(u==nil or j(u),string.format(h,'Promise:catch'))return t:_andThen(debug.
traceback(nil,2),nil,u)end function s.prototype.tap(t,u)assert(j(u),string.format(h,'Promise:tap'))return t:_andThen(
debug.traceback(nil,2),function(...)local v=u(...)if s.is(v)then local w,x=m(...)return v:andThen(function()return
unpack(x,1,w)end)end return...end)end function s.prototype.andThenCall(t,u,...)assert(j(u),string.format(h,
'Promise:andThenCall'))local v,w=m(...)return t:_andThen(debug.traceback(nil,2),function()return u(unpack(w,1,v))end)end
function s.prototype.andThenReturn(t,...)local u,v=m(...)return t:_andThen(debug.traceback(nil,2),function()return
unpack(v,1,u)end)end function s.prototype.cancel(t)if t._status~=s.Status.Started then return end t._status=s.Status.
Cancelled if t._cancellationHook then t._cancellationHook()end if t._parent then t._parent:_consumerCancelled(t)end for
u in pairs(t._consumers)do u:cancel()end t:_finalize()end function s.prototype._consumerCancelled(t,u)if t._status~=s.
Status.Started then return end t._consumers[u]=nil if next(t._consumers)==nil then t:cancel()end end function s.
prototype._finally(t,u,v,w)if not w then t._unhandledRejection=false end return s._new(u,function(x,y)local z=x if v
then z=q(u,v,x,y)end if w then local A=z z=function(...)if t._status==s.Status.Rejected then return x(t)end return A(...
)end end if t._status==s.Status.Started then table.insert(t._queuedFinally,z)else z(t._status)end end,t)end function s.
prototype.finally(t,u)assert(u==nil or j(u),string.format(h,'Promise:finally'))return t:_finally(debug.traceback(nil,2),
u)end function s.prototype.finallyCall(t,u,...)assert(j(u),string.format(h,'Promise:finallyCall'))local v,w=m(...)return
t:_finally(debug.traceback(nil,2),function()return u(unpack(w,1,v))end)end function s.prototype.finallyReturn(t,...)
local u,v=m(...)return t:_finally(debug.traceback(nil,2),function()return unpack(v,1,u)end)end function s.prototype.done
(t,u)assert(u==nil or j(u),string.format(h,'Promise:done'))return t:_finally(debug.traceback(nil,2),u,true)end function
s.prototype.doneCall(t,u,...)assert(j(u),string.format(h,'Promise:doneCall'))local v,w=m(...)return t:_finally(debug.
traceback(nil,2),function()return u(unpack(w,1,v))end,true)end function s.prototype.doneReturn(t,...)local u,v=m(...)
return t:_finally(debug.traceback(nil,2),function()return unpack(v,1,u)end,true)end function s.prototype.awaitStatus(t)t
._unhandledRejection=false if t._status==s.Status.Started then local u=Instance.new'BindableEvent't:finally(function()u:
Fire()end)u.Event:Wait()u:Destroy()end if t._status==s.Status.Resolved then return t._status,unpack(t._values,1,t.
_valuesLength)elseif t._status==s.Status.Rejected then return t._status,unpack(t._values,1,t._valuesLength)end return t.
_status end local function t(u,...)return u==s.Status.Resolved,...end function s.prototype.await(u)return t(u:
awaitStatus())end local function u(v,...)if v~=s.Status.Resolved then error((...)==nil and
'Expected Promise rejected with no value.'or(...),3)end return...end function s.prototype.expect(v)return u(v:
awaitStatus())end s.prototype.awaitValue=s.prototype.expect function s.prototype._unwrap(v)if v._status==s.Status.
Started then error('Promise has not resolved or rejected.',2)end local w=v._status==s.Status.Resolved return w,unpack(v.
_values,1,v._valuesLength)end function s.prototype._resolve(v,...)if v._status~=s.Status.Started then if s.is((...))then
(...):_consumerCancelled(v)end return end if s.is((...))then if select('#',...)>1 then local w=string.format(
[[When returning a Promise from andThen, extra arguments are discarded! See:

%s]],v._source)warn(w)end local w=...local
x=w:andThen(function(...)v:_resolve(...)end,function(...)local x=w._values[1]if w._error then x=l.new{error=w._error,
kind=l.Kind.ExecutionError,context=
[=[[No stack trace available as this Promise originated from an older version of the Promise library (< v2)]]=]}end if l
.isKind(x,l.Kind.ExecutionError)then return v:_reject(x:extend{error=
'This Promise was chained to a Promise that errored.',trace='',context=string.format(
[[The Promise at:

%s
...Rejected because it was chained to the following Promise, which encountered an error:
]],v.
_source)})end v:_reject(...)end)if x._status==s.Status.Cancelled then v:cancel()elseif x._status==s.Status.Started then
v._parent=x x._consumers[v]=true end return end v._status=s.Status.Resolved v._valuesLength,v._values=m(...)for w,x in
ipairs(v._queuedResolve)do coroutine.wrap(x)(...)end v:_finalize()end function s.prototype._reject(v,...)if v._status~=s
.Status.Started then return end v._status=s.Status.Rejected v._valuesLength,v._values=m(...)if not r(v._queuedReject)
then for w,x in ipairs(v._queuedReject)do coroutine.wrap(x)(...)end else local w=tostring((...))coroutine.wrap(function(
)s._timeEvent:Wait()if not v._unhandledRejection then return end local x=string.format(
'Unhandled Promise rejection:\n\n%s\n\n%s',w,v._source)for y,z in ipairs(s._unhandledRejectionCallbacks)do task.spawn(z,
v,unpack(v._values,1,v._valuesLength))end if s.TEST then return end warn(x)end)()end v:_finalize()end function s.
prototype._finalize(v)for w,x in ipairs(v._queuedFinally)do coroutine.wrap(x)(v._status)end v._queuedFinally=nil v.
_queuedReject=nil v._queuedResolve=nil if not s.TEST then v._parent=nil v._consumers=nil end end function s.prototype.
now(v,w)local x=debug.traceback(nil,2)if v._status==s.Status.Resolved then return v:_andThen(x,function(...)return...end
)else return s.reject(w==nil and l.new{kind=l.Kind.NotResolvedInTime,error=
'This Promise was not resolved in time for :now()',context=':now() was called at:\n\n'..x}or w)end end function s.retry(
v,w,...)assert(j(v),'Parameter #1 to Promise.retry must be a function')assert(type(w)=='number',
'Parameter #2 to Promise.retry must be a number')local x,y={...},select('#',...)return s.resolve(v(...)):catch(function(
...)if w>0 then return s.retry(v,w-1,unpack(x,1,y))else return s.reject(...)end end)end function s.retryWithDelay(v,w,x,
...)assert(j(v),'Parameter #1 to Promise.retry must be a function')assert(type(w)=='number',
'Parameter #2 (times) to Promise.retry must be a number')assert(type(x)=='number',
'Parameter #3 (seconds) to Promise.retry must be a number')local y,z={...},select('#',...)return s.resolve(v(...)):
catch(function(...)if w>0 then s.delay(x):await()return s.retryWithDelay(v,w-1,x,unpack(y,1,z))else return s.reject(...)
end end)end function s.fromEvent(v,w)w=w or function()return true end return s._new(debug.traceback(nil,2),function(x,y,
z)local A,B=false local function C()B:Disconnect()B=nil end B=v:Connect(function(...)local D=w(...)if D==true then x(...
)if B then C()else A=true end elseif type(D)~='boolean'then error
'Promise.fromEvent predicate should always return a boolean'end end)if A and B then return C()end z(C)end)end function s
.onUnhandledRejection(v)table.insert(s._unhandledRejectionCallbacks,v)return function()local w=table.find(s.
_unhandledRejectionCallbacks,v)if w then table.remove(s._unhandledRejectionCallbacks,w)end end end return s end)()end,[
24]=function()local b,c,d=a(24)local e return(function(...)local f,g,h,i,j,k=d(c.Parent.Promise),game:GetService
'RunService','roblox-ts: ','node_modules','@rbxts',{}k.Promise=f local function l(m)return g:IsStudio()and m:
FindFirstAncestorWhichIsA'Plugin'~=nil end function k.getModule(m,n,o)if o==nil then o=n n=j end if g:IsRunning()and g:
IsClient()and not l(m)and not game:IsLoaded()then game.Loaded:Wait()end local p=m repeat local q=p:FindFirstChild(i)if q
then local r=q:FindFirstChild(n)if r then local s=r:FindFirstChild(o)if s then return s end end end p=p.Parent until p==
nil error(h..'Could not find module: '..o,2)end local m,n={},{}function k.import(o,p,...)for q=1,select('#',...)do p=p:
WaitForChild((select(q,...)))end if p.ClassName~='ModuleScript'then error(h..
'Failed to import! Expected ModuleScript, got '..p.ClassName,2)end m[o]=p local q,r=p,0 while q do r=r+1 q=m[q]if q==p
then local s=q.Name for t=1,r do q=m[q]s=s..'  \u{21d2} '..q.Name end error(h..
'Failed to import! Detected a circular dependency chain: '..s,2)end end if not n[p]then if _G[p]then error(h..
[[Invalid module access! Do you have multiple TS runtimes trying to import this? ]]..p:GetFullName(),2)end _G[p]=k n[p]=
true end local s=d(p)if m[o]==p then m[o]=nil end return s end function k.instanceof(o,p)if type(p)=='table'and type(p.
instanceof)=='function'then return p.instanceof(o)end if type(o)=='table'then o=getmetatable(o)while o~=nil do if o==p
then return true end local q=getmetatable(o)if q then o=q.__index else o=nil end end end return false end function k.
async(o)return function(...)local p,q=select('#',...),{...}return f.new(function(r,s)coroutine.wrap(function()local t,u=
pcall(o,unpack(q,1,p))if t then r(u)else s(u)end end)()end)end end function k.await(o)if not f.is(o)then return o end
local p,q=o:awaitStatus()if p==f.Status.Resolved then return q elseif p==f.Status.Rejected then error(q,2)else error(
'The awaited Promise was cancelled',2)end end local o,p=2147483648,4294967296 local function q(r)if bit32.btest(r,o)then
return r-p else return r end end function k.bit_lrsh(r,s)return q(bit32.arshift(r,s))end k.TRY_RETURN=1 k.TRY_BREAK=2 k.
TRY_CONTINUE=3 function k.try(r,s,t)local u,v local w,x,y=xpcall(r,function(w)u=w v=debug.traceback()end)if not w and s
then local z,A=s(u,v)if z then x,y=z,A end end if t then local z,A=t()if z then x,y=z,A end end return x,y end function
k.generator(r)local s=coroutine.create(r)return{next=function(...)if coroutine.status(s)=='dead'then return{done=true}
else local t,u=coroutine.resume(s,...)if t==false then error(u,2)end return{value=u,done=coroutine.status(s)=='dead'}end
end}end return k end)()end,[30]=function()local b,c,d=a(30)local e return(function(...)local f,g,h,i,j,k=d(c.
GlobalConfig),d(c.createReconciler),d(c.createReconcilerCompat),d(c.RobloxRenderer),d(c.strict),d(c.Binding)local l=g(i)
local m=h(l)local n=j{Component=d(c.Component),createElement=d(c.createElement),createFragment=d(c.createFragment),
oneChild=d(c.oneChild),PureComponent=d(c.PureComponent),None=d(c.None),Portal=d(c.Portal),createRef=d(c.createRef),
forwardRef=d(c.forwardRef),createBinding=k.create,joinBindings=k.join,createContext=d(c.createContext),Change=d(c.
PropMarkers.Change),Children=d(c.PropMarkers.Children),Event=d(c.PropMarkers.Event),Ref=d(c.PropMarkers.Ref),mount=l.
mountVirtualTree,unmount=l.unmountVirtualTree,update=l.updateVirtualTree,reify=m.reify,teardown=m.teardown,reconcile=m.
reconcile,setGlobalConfig=f.set,UNSTABLE={}}return n end)()end,[31]=function()local b,c,d=a(31)local e return(function(
...)local f,g,h,i=d(c.Parent.createSignal),d(c.Parent.Symbol),d(c.Parent.Type),d(c.Parent.GlobalConfig).get()local j,k,l
=g.named'BindingImpl',{},{}function l.getValue(m)return k.getValue(m)end function l.map(m,n)return k.map(m,n)end local m
={__index=l,__tostring=function(m)return string.format('RoactBinding(%s)',tostring(m:getValue()))end}function k.update(n
,o)return n[j].update(o)end function k.subscribe(n,o)return n[j].subscribe(o)end function k.getValue(n)return n[j].
getValue()end function k.create(n)local o={value=n,changeSignal=f()}function o.subscribe(p)return o.changeSignal:
subscribe(p)end function o.update(p)o.value=p o.changeSignal:fire(p)end function o.getValue()return o.value end return
setmetatable({[h]=h.Binding,[j]=o},m),o.update end function k.map(n,o)if i.typeChecks then assert(h.of(n)==h.Binding,
'Expected arg #1 to be a binding')assert(typeof(o)=='function','Expected arg #1 to be a function')end local p={}function
p.subscribe(q)return k.subscribe(n,function(r)q(o(r))end)end function p.update(q)error(
[[Bindings created by Binding:map(fn) cannot be updated directly]],2)end function p.getValue()return o(n:getValue())end
return setmetatable({[h]=h.Binding,[j]=p},m)end function k.join(n)if i.typeChecks then assert(typeof(n)=='table',
'Expected arg #1 to be of type table')for o,p in pairs(n)do if h.of(p)~=h.Binding then local q=(
[[Expected arg #1 to contain only bindings, but key %q had a non-binding value]]):format(tostring(o))error(q,2)end end
end local o={}local function p()local q={}for r,s in pairs(n)do q[r]=s:getValue()end return q end function o.subscribe(q
)local r={}for s,t in pairs(n)do r[s]=k.subscribe(t,function(u)q(p())end)end return function()if r==nil then return end
for s,t in pairs(r)do t()end r=nil::any end end function o.update(q)error(
[[Bindings created by joinBindings(...) cannot be updated directly]],2)end function o.getValue()return p()end return
setmetatable({[h]=h.Binding,[j]=o},m)end return k end)()end,[32]=function()local b,c,d=a(32)local e return(function(...)
local f,g,h,i,j,k,l,m=d(c.Parent.assign),d(c.Parent.ComponentLifecyclePhase),d(c.Parent.Type),d(c.Parent.Symbol),d(c.
Parent.invalidSetStateMessages),d(c.Parent.internalAssert),d(c.Parent.GlobalConfig).get(),100 local n,o,p,q=i.named
'InternalData',
[[The component %q is missing the `render` method.
`render` must be defined when creating a Roact component!]],
[[The component %q has reached the setState update recursion limit.
When using `setState` in `didUpdate`, make sure that it won't repeat infinitely!]]
,{}function q.__tostring(r)return r.__componentName end local r={}setmetatable(r,q)r[h]=h.StatefulComponentClass r.
__index=r r.__componentName='Component'function r.extend(s,t)if l.typeChecks then assert(h.of(s)==h.
StatefulComponentClass,'Invalid `self` argument to `extend`.')assert(typeof(t)=='string',
'Component class name must be a string')end local u={}for v,w in pairs(s)do if v~='extend'then u[v]=w end end u[h]=h.
StatefulComponentClass u.__index=u u.__componentName=t setmetatable(u,q)return u end function r.__getDerivedState(s,t,u)
if l.internalTypeChecks then k(h.of(s)==h.StatefulComponentInstance,'Invalid use of `__getDerivedState`')end local v=s[n
]local w=v.componentClass if w.getDerivedStateFromProps~=nil then local x=w.getDerivedStateFromProps(t,u)if x~=nil then
if l.typeChecks then assert(typeof(x)=='table','getDerivedStateFromProps must return a table!')end return x end end
return nil end function r.setState(s,t)if l.typeChecks then assert(h.of(s)==h.StatefulComponentInstance,
'Invalid `self` argument to `extend`.')end local u=s[n]local v=u.lifecyclePhase if v==g.ShouldUpdate or v==g.WillUpdate
or v==g.Render then local w=j[u.lifecyclePhase]local x=w:format(tostring(u.componentClass))error(x,2)elseif v==g.
WillUnmount then return end local w,x=(u.pendingState)if typeof(t)=='function'then x=t(w or s.state,s.props)if x==nil
then return end elseif typeof(t)=='table'then x=t else error('Invalid argument to setState, expected function or table',
2)end local y if w~=nil then y=f(w,x)else y=f({},s.state,x)end if v==g.Init then local z=s:__getDerivedState(s.props,y)s
.state=f(y,z)elseif v==g.DidMount or v==g.DidUpdate or v==g.ReconcileChildren then local z=s:__getDerivedState(s.props,y
)u.pendingState=f(y,z)elseif v==g.Idle then s:__update(nil,y)else local z=j.default local A=z:format(tostring(u.
componentClass))error(A,2)end end function r.getElementTraceback(s)return s[n].virtualNode.currentElement.source end
function r.render(s)local t=s[n]local u=o:format(tostring(t.componentClass))error(u,0)end function r.__getContext(s,t)if
l.internalTypeChecks then k(h.of(s)==h.StatefulComponentInstance,'Invalid use of `__getContext`')k(t~=nil,
'Context key cannot be nil')end local u=s[n].virtualNode local v=u.context return v[t]end function r.__addContext(s,t,u)
if l.internalTypeChecks then k(h.of(s)==h.StatefulComponentInstance,'Invalid use of `__addContext`')end local v=s[n].
virtualNode if v.originalContext==nil then v.originalContext=v.context end local w=v.context v.context=f({},w,{[t]=u})
end function r.__validateProps(s,t)if not l.propValidation then return end local u=s[n].componentClass.validateProps if
u==nil then return end if typeof(u)~='function'then error((
[[validateProps must be a function, but it is a %s.
Check the definition of the component %q.]]):format(typeof(u),s.
__componentName))end local v,w=u(t)if not v then w=w or'<Validator function did not supply a message>'error((
'Property validation failed in %s: %s\n\n%s'):format(s.__componentName,tostring(w),s:getElementTraceback()or
'<enable element tracebacks>'),0)end end function r.__mount(s,t,u)if l.internalTypeChecks then k(h.of(s)==h.
StatefulComponentClass,'Invalid use of `__mount`')k(h.of(u)==h.VirtualNode,'Expected arg #2 to be of type VirtualNode')
end local v,w,x=u.currentElement,u.hostParent,{reconciler=t,virtualNode=u,componentClass=s,lifecyclePhase=g.Init,
pendingState=nil}local y={[h]=h.StatefulComponentInstance,[n]=x}setmetatable(y,s)u.instance=y local z=v.props if s.
defaultProps~=nil then z=f({},s.defaultProps,z)end y:__validateProps(z)y.props=z local A=f({},u.legacyContext)y._context
=A y.state=f({},y:__getDerivedState(y.props,{}))if y.init~=nil then y:init(y.props)f(y.state,y:__getDerivedState(y.props
,y.state))end u.legacyContext=y._context x.lifecyclePhase=g.Render local B=y:render()x.lifecyclePhase=g.
ReconcileChildren t.updateVirtualNodeWithRenderResult(u,w,B)if y.didMount~=nil then x.lifecyclePhase=g.DidMount y:
didMount()end if x.pendingState~=nil then y:__update(nil,nil)end x.lifecyclePhase=g.Idle end function r.__unmount(s)if l
.internalTypeChecks then k(h.of(s)==h.StatefulComponentInstance,'Invalid use of `__unmount`')end local t=s[n]local u,v=t
.virtualNode,t.reconciler if s.willUnmount~=nil then t.lifecyclePhase=g.WillUnmount s:willUnmount()end for w,x in pairs(
u.children)do v.unmountVirtualNode(x)end end function r.__update(s,t,u)if l.internalTypeChecks then k(h.of(s)==h.
StatefulComponentInstance,'Invalid use of `__update`')k(h.of(t)==h.Element or t==nil,
'Expected arg #1 to be of type Element or nil')k(typeof(u)=='table'or u==nil,
'Expected arg #2 to be of type table or nil')end local v=s[n]local w,x=v.componentClass,s.props if t~=nil then x=t.props
if w.defaultProps~=nil then x=f({},w.defaultProps,x)end s:__validateProps(x)end local y=0 repeat local z,A if v.
pendingState~=nil then A=v.pendingState v.pendingState=nil end if u~=nil or x~=s.props then if A==nil then z=u or s.
state else z=f(A,u)end local B=s:__getDerivedState(x,z)if B~=nil then z=f({},z,B)end u=nil else z=A end if not s:
__resolveUpdate(x,z)then return false end y=y+1 if y>m then error(p:format(tostring(v.componentClass)),3)end until v.
pendingState==nil return true end function r.__resolveUpdate(s,t,u)if l.internalTypeChecks then k(h.of(s)==h.
StatefulComponentInstance,'Invalid use of `__resolveUpdate`')end local v=s[n]local w,x,y,z=v.virtualNode,v.reconciler,s.
props,s.state if t==nil then t=y end if u==nil then u=z end if s.shouldUpdate~=nil then v.lifecyclePhase=g.ShouldUpdate
local A=s:shouldUpdate(t,u)if not A then v.lifecyclePhase=g.Idle return false end end if s.willUpdate~=nil then v.
lifecyclePhase=g.WillUpdate s:willUpdate(t,u)end v.lifecyclePhase=g.Render s.props=t s.state=u local A=w.instance:
render()v.lifecyclePhase=g.ReconcileChildren x.updateVirtualNodeWithRenderResult(w,w.hostParent,A)if s.didUpdate~=nil
then v.lifecyclePhase=g.DidUpdate s:didUpdate(y,z)end v.lifecyclePhase=g.Idle return true end return r end)()end,[33]=
function()local b,c,d=a(33)local e return(function(...)local f,g=d(c.Parent.Symbol),d(c.Parent.strict)local h=g({Init=f.
named'init',Render=f.named'render',ShouldUpdate=f.named'shouldUpdate',WillUpdate=f.named'willUpdate',DidMount=f.named
'didMount',DidUpdate=f.named'didUpdate',WillUnmount=f.named'willUnmount',ReconcileChildren=f.named'reconcileChildren',
Idle=f.named'idle'},'ComponentLifecyclePhase')return h end)()end,[34]=function()local b,c,d=a(34)local e return(function
(...)local f,g={internalTypeChecks=false,typeChecks=false,elementTracing=false,propValidation=false},{}for h in pairs(f)
do table.insert(g,h)end local h={}function h.new()local i={}i._currentConfig=setmetatable({},{__index=function(j,k)local
l=([[Invalid global configuration key %q. Valid configuration keys are: %s]]):format(tostring(k),table.concat(g,', '))
error(l,3)end})i.set=function(...)return h.set(i,...)end i.get=function(...)return h.get(i,...)end i.scoped=function(...
)return h.scoped(i,...)end i.set(f)return i end function h.set(i,j)for k,l in pairs(j)do if f[k]==nil then local m=(
[[Invalid global configuration key %q (type %s). Valid configuration keys are: %s]]):format(tostring(k),typeof(k),table.
concat(g,', '))error(m,3)end if typeof(l)~='boolean'then local m=(
[[Invalid value %q (type %s) for global configuration key %q. Valid values are: true, false]]):format(tostring(l),
typeof(l),tostring(k))error(m,3)end i._currentConfig[k]=l end end function h.get(i)return i._currentConfig end function
h.scoped(i,j,k)local l={}for m,n in pairs(i._currentConfig)do l[m]=n end i.set(j)local m,n=pcall(k)i.set(l)assert(m,n)
end return h end)()end,[35]=function()local b,c,d=a(35)local e return(function(...)local f,g,h,i=d(c.Parent.Symbol),d(c.
Parent.strict),d(c.Parent.Portal),newproxy(true)local j={Portal=f.named'Portal',Host=f.named'Host',Function=f.named
'Function',Stateful=f.named'Stateful',Fragment=f.named'Fragment'}function j.of(k)if typeof(k)~='table'then return nil
end return k[i]end local k={string=j.Host,['function']=j.Function,table=j.Stateful}function j.fromComponent(l)if l==h
then return i.Portal else return k[typeof(l)]end end getmetatable(i).__index=j g(j,'ElementKind')return i end)()end,[36]
=function()local b,c,d=a(36)local e return(function(...)local f,g=d(c.Parent.Type),d(c.Parent.Symbol)local function h()
return nil end local i={}i.UseParentKey=g.named'UseParentKey'type Iterator<K,V> =({[K]:V},K?)->(K?,V?)type Element={[any
]:any}function i.iterateElements<K>(j):(Iterator<K,Element>,any,nil)local k=f.of(j)if k==f.Element then local l=false
return function(m,n)if l then return nil else l=true return i.UseParentKey,j end end end local l=typeof(j)if j==nil or l
=='boolean'then return(h::any)::Iterator<K,Element>end if l=='table'then return pairs(j)end error'Invalid elements'end
function i.getElementByKey(j,k)if j==nil or typeof(j)=='boolean'then return nil end if f.of(j)==f.Element then if k==i.
UseParentKey then return j end return nil end if typeof(j)=='table'then return j[k]end error'Invalid elements'end return
i end)()end,[37]=function()local b,c,d=a(37)local e return(function(...)local f=d(c.Parent.Config)return f.new()end)()
end,[38]=function()local b,c,d=a(38)local e return(function(...)local f,g,h=true,{},{}local function i(j,k)local l=('\t'
):rep(k)return l..j:gsub('\n','\n'..l)end local function j(k,l)local n={}for o,p in ipairs(k)do table.insert(n,i(p,l))
end return table.concat(n,'\n')end local k={}function k.__tostring(l)local n,o,p,q={'LogInfo {'},#l.errors,#l.warnings,#
l.infos if o+p+q==0 then table.insert(n,'\t(no messages)')end if o>0 then table.insert(n,('\tErrors (%d) {'):format(o))
table.insert(n,j(l.errors,2))table.insert(n,'\t}')end if p>0 then table.insert(n,('\tWarnings (%d) {'):format(p))table.
insert(n,j(l.warnings,2))table.insert(n,'\t}')end if q>0 then table.insert(n,('\tInfos (%d) {'):format(q))table.insert(n
,j(l.infos,2))table.insert(n,'\t}')end table.insert(n,'}')return table.concat(n,'\n')end local function l()local n={
errors={},warnings={},infos={}}setmetatable(n,k)return n end local n={}function n.capture(o)local p,q=l(),f f=false g[p]
=true local r,s=pcall(o)g[p]=nil f=q assert(r,s)return p end function n.warn(o,...)local p=o:format(...)for q in pairs(g
)do table.insert(q.warnings,p)end local q=debug.traceback('',2):sub(2)local r=('%s\n%s'):format(p,i(q,1))if f then warn(
r)end end function n.warnOnce(o,...)local p=debug.traceback()if h[p]then return end h[p]=true n.warn(o,...)end return n
end)()end,[39]=function()local b,c,d=a(39)local e return(function(...)local f=d(c.Parent.Symbol)local g=f.named'None'
return g end)()end,[40]=function()local b,c,d=a(40)local e return(function(...)local f={}function f.isHostObject(g)
return g==nil end function f.mountHostNode(g,h)end function f.unmountHostNode(g,h)end function f.updateHostNode(g,h,i)
return h end return f end)()end,[41]=function()local b,c,d=a(41)local e return(function(...)local f=d(c.Parent.Symbol)
local g=f.named'Portal'return g end)()end,[43]=function()local b,c,d=a(43)local e return(function(...)local f,g,h=d(c.
Parent.Parent.Type),{},{__tostring=function(f)return('RoactHostChangeEvent(%s)'):format(f.name)end}setmetatable(g,{
__index=function(i,j)local k={[f]=f.HostChangeEvent,name=j}setmetatable(k,h)g[j]=k return k end})return g end)()end,[44]
=function()local b,c,d=a(44)local e return(function(...)local f=d(c.Parent.Parent.Symbol)local g=f.named'Children'return
g end)()end,[45]=function()local b,c,d=a(45)local e return(function(...)local f,g,h=d(c.Parent.Parent.Type),{},{
__tostring=function(f)return('RoactHostEvent(%s)'):format(f.name)end}setmetatable(g,{__index=function(i,j)local k={[f]=f
.HostEvent,name=j}setmetatable(k,h)g[j]=k return k end})return g end)()end,[46]=function()local b,c,d=a(46)local e
return(function(...)local f=d(c.Parent.Parent.Symbol)local g=f.named'Ref'return g end)()end,[47]=function()local b,c,d=
a(47)local e return(function(...)local f=d(c.Parent.Component)local g=f:extend'PureComponent'g.extend=f.extend function
g.shouldUpdate(h,i,j)if j~=h.state then return true end if i==h.props then return false end for k,l in pairs(i)do if h.
props[k]~=l then return true end end for k,l in pairs(h.props)do if i[k]~=l then return true end end return false end
return g end)()end,[48]=function()local b,c,d=a(48)local e return(function(...)local f,g,h,i,j,k,l,n,o,p,q=d(c.Parent.
Binding),d(c.Parent.PropMarkers.Children),d(c.Parent.ElementKind),d(c.Parent.SingleEventManager),d(c.Parent.
getDefaultInstanceProperty),d(c.Parent.PropMarkers.Ref),d(c.Parent.Type),d(c.Parent.internalAssert),d(c.Parent.
GlobalConfig).get(),'Error applying props:\n\t%s\nIn element:\n%s\n','Error updating props:\n\t%s\nIn element:\n%s\n'
local function r(...)return...end local function s(t,u)if t==nil then return end if typeof(t)=='function'then t(u)elseif
l.of(t)==l.Binding then f.update(t,u)else error(('Invalid ref: Expected type Binding but got %s'):format(typeof(t)))end
end local function t(u,v,w)if w==nil then local x=u.ClassName local y,z=j(x,v)w=z end u[v]=w return end local function u
(v,w)local x=v.bindings[w]x()v.bindings[w]=nil end local function v(w,x,y)local function z(A)local B,C=xpcall(function()
t(w.hostObject,x,A)end,r)if not B then local D=w.currentElement.source if D==nil then D='<enable element tracebacks>'end
local E=q:format(C,D)error(E,0)end end if w.bindings==nil then w.bindings={}end w.bindings[x]=f.subscribe(y,z)z(y:
getValue())end local function w(x)if x.bindings~=nil then for y,z in pairs(x.bindings)do z()end x.bindings=nil end end
local function x(y,z,A,B)if A==B then return end if z==k or z==g then return end local C=l.of(z)if C==l.HostEvent or C==
l.HostChangeEvent then if y.eventManager==nil then y.eventManager=i.new(y.hostObject)end local D=z.name if C==l.
HostChangeEvent then y.eventManager:connectPropertyChange(D,A)else y.eventManager:connectEvent(D,A)end return end local
D,E=l.of(A)==l.Binding,l.of(B)==l.Binding if E then u(y,z)end if D then v(y,z,A)else t(y.hostObject,z,A)end end
local function y(z,A)for B,C in pairs(A)do x(z,B,C,nil)end end local function z(A,B,C)for D,E in pairs(C)do local F=B[D]
x(A,D,E,F)end for D,E in pairs(B)do local F=C[D]if F==nil then x(A,D,nil,E)end end end local A={}function A.isHostObject
(B)return typeof(B)=='Instance'end function A.mountHostNode(B,C)local D,E,F=C.currentElement,C.hostParent,C.hostKey if o
.internalTypeChecks then n(h.of(D)==h.Host,'Element at given node is not a host Element')end if o.typeChecks then
assert(D.props.Name==nil,[[Name can not be specified as a prop to a host component in Roact.]])assert(D.props.Parent==
nil,[[Parent can not be specified as a prop to a host component in Roact.]])end local G=Instance.new(D.component)C.
hostObject=G local H,I=xpcall(function()y(C,D.props)end,r)if not H then local J=D.source if J==nil then J=
'<enable element tracebacks>'end local K=p:format(I,J)error(K,0)end G.Name=tostring(F)local J=D.props[g]if J~=nil then B
.updateVirtualNodeWithChildren(C,C.hostObject,J)end G.Parent=E C.hostObject=G s(D.props[k],G)if C.eventManager~=nil then
C.eventManager:resume()end end function A.unmountHostNode(B,C)local D=C.currentElement s(D.props[k],nil)for E,F in
pairs(C.children)do B.unmountVirtualNode(F)end w(C)C.hostObject:Destroy()end function A.updateHostNode(B,C,D)local E,F=C
.currentElement.props,D.props if C.eventManager~=nil then C.eventManager:suspend()end if E[k]~=F[k]then s(E[k],nil)s(F[k
],C.hostObject)end local G,H=xpcall(function()z(C,E,F)end,r)if not G then local I=D.source if I==nil then I=
'<enable element tracebacks>'end local J=q:format(H,I)error(J,0)end local I=D.props[g]if I~=nil or E[g]~=nil then B.
updateVirtualNodeWithChildren(C,C.hostObject,I)end if C.eventManager~=nil then C.eventManager:resume()end return C end
return A end)()end,[49]=function()local b,c,d=a(49)local e return(function(...)local f,g,h,i=d(c.Parent.Logging),
'Change.',{Disabled='Disabled',Suspended='Suspended',Enabled='Enabled'},{}i.__index=i function i.new(j)local k=
setmetatable({_suspendedEventQueue={},_connections={},_listeners={},_status=h.Disabled,_isResuming=false,_instance=j},i)
return k end function i.connectEvent(j,k,l)j:_connect(k,j._instance[k],l)end function i.connectPropertyChange(j,k,l)
local n,o=pcall(function()return j._instance:GetPropertyChangedSignal(k)end)if not n then error((
'Cannot get changed signal on property %q: %s'):format(tostring(k),o),0)end j:_connect(g..k,o,l)end function i._connect(
j,k,l,n)if n==nil then if j._connections[k]~=nil then j._connections[k]:Disconnect()j._connections[k]=nil end j.
_listeners[k]=nil else if j._connections[k]==nil then j._connections[k]=l:Connect(function(...)if j._status==h.Enabled
then j._listeners[k](j._instance,...)elseif j._status==h.Suspended then local o=select('#',...)table.insert(j.
_suspendedEventQueue,{k,o,...})end end)end j._listeners[k]=n end end function i.suspend(j)j._status=h.Suspended end
function i.resume(j)if j._isResuming then return end j._isResuming=true local k=1 while k<=#j._suspendedEventQueue do
local l=j._suspendedEventQueue[k]local n,o=j._listeners[l[1] ],l[2]if n~=nil then local p=coroutine.create(n)local q,r=
coroutine.resume(p,j._instance,unpack(l,3,2+o))if not q then f.warn('%s',r)end end k=k+1 end j._isResuming=false j.
_status=h.Enabled j._suspendedEventQueue={}end return i end)()end,[50]=function()local b,c,d=a(50)local e return(
function(...)local f={}function f.named(g)assert(type(g)=='string','Symbols must be created using a string name!')local
h,i=newproxy(true),('Symbol(%s)'):format(g)getmetatable(h).__tostring=function()return i end return h end return f end)(
)end,[51]=function()local b,c,d=a(51)local e return(function(...)local f,g,h,i=d(c.Parent.Symbol),d(c.Parent.strict),
newproxy(true),{}local function j(k)i[k]=f.named('Roact'..k)end j'Binding'j'Element'j'HostChangeEvent'j'HostEvent'j
'StatefulComponentClass'j'StatefulComponentInstance'j'VirtualNode'j'VirtualTree'function i.of(k)if typeof(k)~='table'
then return nil end return k[h]end getmetatable(h).__index=i getmetatable(h).__tostring=function()return'RoactType'end
g(i,'Type')return h end)()end,[52]=function()local b,c,d=a(52)local e return(function(...)local function f(g:any,h:any):
(boolean,string?)if typeof(g)~=typeof(h)then local i=('{1} is of type %s, but {2} is of type %s'):format(typeof(g),
typeof(h))return false,i end if typeof(g)=='table'then local i={}for j,k in pairs(g)do i[j]=true local l,n=f(k,h[j])if
not l and n then local o=n:gsub('{1}',('{1}[%s]'):format(tostring(j))):gsub('{2}',('{2}[%s]'):format(tostring(j)))return
false,o end end for j,k in pairs(h)do if not i[j]then local l,n=f(k,g[j])if not l and n then local o=n:gsub('{1}',(
'{1}[%s]'):format(tostring(j))):gsub('{2}',('{2}[%s]'):format(tostring(j)))return false,o end end end return true,nil
end if g==h then return true,nil end local i='{1} ~= {2}'return false,i end local function g(h,i)local j,k=f(h,i)if not
j and k then local l=k:gsub('{1}','first'):gsub('{2}','second')local n=('Values were not deep-equal.\n%s'):format(l)
error(n,2)end end return g end)()end,[53]=function()local b,c,d=a(53)local e return(function(...)local f=d(c.Parent.None
)local function g(h,...)for i=1,select('#',...)do local j=select(i,...)if j~=nil then for k,l in pairs(j)do if l==f then
h[k]=nil else h[k]=l end end end end return h end return g end)()end,[54]=function()local b,c,d=a(54)local e return(
function(...)local f,g,h,i,j=d(c.Parent.Symbol),d(c.Parent.createFragment),d(c.Parent.createSignal),d(c.Parent.
PropMarkers.Children),d(c.Parent.Component)local function k(l)return{value=l,onUpdate=h()}end local function l(n)local o
=j:extend'Provider'function o.init(p,q)p.contextEntry=k(q.value)p:__addContext(n.key,p.contextEntry)end function o.
willUpdate(p,q)if q.value~=p.props.value then p.contextEntry.value=q.value end end function o.didUpdate(p,q)if q.value~=
p.props.value then p.contextEntry.onUpdate:fire(p.props.value)end end function o.render(p)return g(p.props[i])end return
o end local function n(o)local p=j:extend'Consumer'function p.validateProps(q)if type(q.render)~='function'then return
false,'Consumer expects a `render` function'else return true end end function p.init(q,r)q.contextEntry=q:__getContext(o
.key)end function p.render(q)local r if q.contextEntry~=nil then r=q.contextEntry.value else r=o.defaultValue end return
q.props.render(r)end function p.didUpdate(q)if q.contextEntry~=nil then q.lastValue=q.contextEntry.value end end
function p.didMount(q)if q.contextEntry~=nil then q.disconnect=q.contextEntry.onUpdate:subscribe(function(r)if r~=q.
lastValue then q:setState{}end end)end end function p.willUnmount(q)if q.disconnect~=nil then q.disconnect()q.disconnect
=nil end end return p end local o={}o.__index=o function o.new(p)return setmetatable({defaultValue=p,key=f.named
'ContextKey'},o)end function o.__tostring(p)return'RoactContext'end local function p(q)local r=o.new(q)return{Provider=
l(r),Consumer=n(r)}end return p end)()end,[55]=function()local b,c,d=a(55)local e return(function(...)local f,g,h,i,j,k=
d(c.Parent.PropMarkers.Children),d(c.Parent.ElementKind),d(c.Parent.Logging),d(c.Parent.Type),d(c.Parent.GlobalConfig).
get(),
'The prop `Roact.Children` was defined but was overridden by the third parameter to createElement!\nThis can happen when a component passes props through to a child element but also uses the `children` argument:\n\n\tRoact.createElement("Frame", passedProps, {\n\t\tchild = ...\n\t})\n\nInstead, consider using a utility function to merge tables of children together:\n\n\tlocal children = mergeTables(passedProps[Roact.Children], {\n\t\tchild = ...\n\t})\n\n\tlocal fullProps = mergeTables(passedProps, {\n\t\t[Roact.Children] = children\n\t})\n\n\tRoact.createElement("Frame", fullProps)'
local function l(n,o,p)if j.typeChecks then assert(n~=nil,'`component` is required')assert(typeof(o)=='table'or o==nil,
'`props` must be a table or nil')assert(typeof(p)=='table'or p==nil,'`children` must be a table or nil')end if o==nil
then o={}end if p~=nil then if o[f]~=nil then h.warnOnce(k)end o[f]=p end local q=g.fromComponent(n)local r={[i]=i.
Element,[g]=q,component=n,props=o}if j.elementTracing then r.source=debug.traceback('',2):sub(2)end return r end return
l end)()end,[56]=function()local b,c,d=a(56)local e return(function(...)local f,g=d(c.Parent.ElementKind),d(c.Parent.
Type)local function h(i)return{[g]=g.Element,[f]=f.Fragment,elements=i}end return h end)()end,[57]=function()local b,c,d
=a(57)local e return(function(...)local f,g,h,i,j,k,l=d(c.Parent.Type),d(c.Parent.ElementKind),d(c.Parent.ElementUtils),
d(c.Parent.PropMarkers.Children),d(c.Parent.Symbol),d(c.Parent.internalAssert),d(c.Parent.GlobalConfig).get()local n=j.
named'InternalData'local function o(p)local q,r,s,t local function u(v,w)local x,y,z,A,B,C=v.hostParent,v.hostKey,v.
depth,v.parent,v.originalContext or v.context,v.parentLegacyContext if not v.wasUnmounted then t(v)end local D=r(w,x,y,B
,C)if D~=nil then D.depth=z D.parent=A end return D end local function v(w,x,y)if l.internalTypeChecks then k(f.of(w)==f
.VirtualNode,'Expected arg #1 to be of type VirtualNode')end w.updateChildrenCount=w.updateChildrenCount+1 local z,A=w.
updateChildrenCount,{}for B,C in pairs(w.children)do local D=h.getElementByKey(y,B)local E=s(C,D)if w.
updateChildrenCount~=z then if E and E~=w.children[B]then t(E)end return end if E~=nil then w.children[B]=E else A[B]=
true end end for B in pairs(A)do w.children[B]=nil end for B,C in h.iterateElements(y)do local D=B if B==h.UseParentKey
then D=w.hostKey end if w.children[B]==nil then local E=r(C,x,D,w.context,w.legacyContext)if w.updateChildrenCount~=z
then if E then t(E)end return end if E~=nil then E.depth=w.depth+1 E.parent=w w.children[B]=E end end end end
local function w(x,y,z)v(x,y,z)end local function x(y,z,A)if f.of(A)==f.Element or A==nil or typeof(A)=='boolean'then v(
y,z,A)else error(('%s\n%s'):format('Component returned invalid children:',y.currentElement.source or
'<enable element tracebacks>'),0)end end function t(y)if l.internalTypeChecks then k(f.of(y)==f.VirtualNode,
'Expected arg #1 to be of type VirtualNode')end y.wasUnmounted=true local z=g.of(y.currentElement)if z==g.Host then p.
unmountHostNode(q,y)elseif z==g.Function then for A,B in pairs(y.children)do t(B)end elseif z==g.Stateful then y.
instance:__unmount()elseif z==g.Portal then for A,B in pairs(y.children)do t(B)end elseif z==g.Fragment then for A,B in
pairs(y.children)do t(B)end else error(('Unknown ElementKind %q'):format(tostring(z)),2)end end local function y(z,A)
local B=A.component(A.props)x(z,z.hostParent,B)return z end local function z(A,B)local C=A.currentElement local D,E=C.
props.target,B.props.target assert(p.isHostObject(E),'Expected target to be host object')if E~=D then return u(A,B)end
local F=B.props[i]w(A,E,F)return A end local function A(B,C)w(B,B.hostParent,C.elements)return B end function s(B,C,D:{[
any]:any}?):{[any]:any}?if l.internalTypeChecks then k(f.of(B)==f.VirtualNode,
'Expected arg #1 to be of type VirtualNode')end if l.typeChecks then assert(f.of(C)==f.Element or typeof(C)=='boolean'or
C==nil,'Expected arg #2 to be of type Element, boolean, or nil')end if B.currentElement==C and D==nil then return B end
if typeof(C)=='boolean'or C==nil then t(B)return nil end if B.currentElement.component~=C.component then return u(B,C)
end local E,F=g.of(C),true if E==g.Host then B=p.updateHostNode(q,B,C)elseif E==g.Function then B=y(B,C)elseif E==g.
Stateful then F=B.instance:__update(C,D)elseif E==g.Portal then B=z(B,C)elseif E==g.Fragment then B=A(B,C)else error((
'Unknown ElementKind %q'):format(tostring(E)),2)end if not F then return B end B.currentElement=C return B end
local function B(C,D,E,F,G)if l.internalTypeChecks then k(p.isHostObject(D)or D==nil,
'Expected arg #2 to be a host object')k(typeof(F)=='table'or F==nil,'Expected arg #4 to be of type table or nil')k(
typeof(G)=='table'or G==nil,'Expected arg #5 to be of type table or nil')end if l.typeChecks then assert(E~=nil,
'Expected arg #3 to be non-nil')assert(f.of(C)==f.Element or typeof(C)=='boolean',
'Expected arg #1 to be of type Element or boolean')end return{[f]=f.VirtualNode,currentElement=C,depth=1,parent=nil,
children={},hostParent=D,hostKey=E,updateChildrenCount=0,wasUnmounted=false,legacyContext=G,parentLegacyContext=G,
context=F or{},originalContext=nil}end local function C(D)local E=D.currentElement local F=E.component(E.props)x(D,D.
hostParent,F)end local function D(E)local F=E.currentElement local G,H=F.props.target,F.props[i]assert(p.isHostObject(G)
,'Expected target to be host object')w(E,G,H)end local function E(F)local G=F.currentElement local H=G.elements w(F,F.
hostParent,H)end function r(F,G,H,I,J)if l.internalTypeChecks then k(p.isHostObject(G)or G==nil,
'Expected arg #2 to be a host object')k(typeof(J)=='table'or J==nil,'Expected arg #5 to be of type table or nil')end if
l.typeChecks then assert(H~=nil,'Expected arg #3 to be non-nil')assert(f.of(F)==f.Element or typeof(F)=='boolean',
'Expected arg #1 to be of type Element or boolean')end if typeof(F)=='boolean'then return nil end local K,L=g.of(F),B(F,
G,H,I,J)if K==g.Host then p.mountHostNode(q,L)elseif K==g.Function then C(L)elseif K==g.Stateful then F.component:
__mount(q,L)elseif K==g.Portal then D(L)elseif K==g.Fragment then E(L)else error(('Unknown ElementKind %q'):format(
tostring(K)),2)end return L end local function F(G,H,I)if l.typeChecks then assert(f.of(G)==f.Element,
'Expected arg #1 to be of type Element')assert(p.isHostObject(H)or H==nil,'Expected arg #2 to be a host object')end if I
==nil then I='RoactTree'end local J={[f]=f.VirtualTree,[n]={rootNode=nil,mounted=true}}J[n].rootNode=r(G,H,I)return J
end local function G(H)local I=H[n]if l.typeChecks then assert(f.of(H)==f.VirtualTree,
'Expected arg #1 to be a Roact handle')assert(I.mounted,
[[Cannot unmounted a Roact tree that has already been unmounted]])end I.mounted=false if I.rootNode~=nil then t(I.
rootNode)end end local function H(I,J)local K=I[n]if l.typeChecks then assert(f.of(I)==f.VirtualTree,
'Expected arg #1 to be a Roact handle')assert(f.of(J)==f.Element,'Expected arg #2 to be a Roact Element')end K.rootNode=
s(K.rootNode,J)return I end q={mountVirtualTree=F,unmountVirtualTree=G,updateVirtualTree=H,createVirtualNode=B,
mountVirtualNode=r,unmountVirtualNode=t,updateVirtualNode=s,updateVirtualNodeWithChildren=w,
updateVirtualNodeWithRenderResult=x}return q end return o end)()end,[58]=function()local b,c,d=a(58)local e return(
function(...)local f,g,h,i=d(c.Parent.Logging),
[[Roact.reify has been renamed to Roact.mount and will be removed in a future release.
Check the call to Roact.reify at:
]]
,
[[Roact.teardown has been renamed to Roact.unmount and will be removed in a future release.
Check the call to Roact.teardown at:
]]
,
[[Roact.reconcile has been renamed to Roact.update and will be removed in a future release.
Check the call to Roact.reconcile at:
]]
local function j(k)local l={}function l.reify(...)f.warnOnce(g)return k.mountVirtualTree(...)end function l.teardown(...
)f.warnOnce(h)return k.unmountVirtualTree(...)end function l.reconcile(...)f.warnOnce(i)return k.updateVirtualTree(...)
end return l end return j end)()end,[59]=function()local b,c,d=a(59)local e return(function(...)local f=d(c.Parent.
Binding)local function g()local h,i=f.create(nil)local j={}setmetatable(j,{__index=function(k,l)if l=='current'then
return h:getValue()else return h[l]end end,__newindex=function(k,l,n)if l=='current'then error(
"Cannot assign to the 'current' property of refs",2)end h[l]=n end,__tostring=function(k)return('RoactRef(%s)'):format(
tostring(h:getValue()))end})return j end return g end)()end,[60]=function()local b,c,d=a(60)local e return(function(...)
local function f()local g,h,i={},{},false local function j(k,l)assert(typeof(l)=='function',
'Can only subscribe to signals with a function.')local n={callback=l,disconnected=false}if i and not g[l]then h[l]=n end
g[l]=n local function o()assert(not n.disconnected,'Listeners can only be disconnected once.')n.disconnected=true g[l]=
nil h[l]=nil end return o end local function k(l,...)i=true for n,o in pairs(g)do if not o.disconnected and not h[n]then
n(...)end end i=false for n,o in pairs(h)do h[n]=nil end end return{subscribe=j,fire=k}end return f end)()end,[61]=
function()local b,c,d=a(61)local e return(function(...)local f=d(c.Parent.assertDeepEqual)local function g(h)local i={}i
.callCount=0 i.values={}i.valuesLength=0 i.value=function(...)i.callCount=i.callCount+1 i.values={...}i.valuesLength=
select('#',...)if h~=nil then return h(...)end return nil end i.assertCalledWith=function(j,...)local k=select('#',...)
if i.valuesLength~=k then error(('Expected %d arguments, but was called with %d arguments'):format(i.valuesLength,k),2)
end for l=1,k do local n=select(l,...)assert(i.values[l]==n,'value differs')end end i.assertCalledWithDeepEqual=function
(j,...)local k=select('#',...)if i.valuesLength~=k then error(('Expected %d arguments, but was called with %d arguments'
):format(i.valuesLength,k),2)end for l=1,k do local n=select(l,...)f(i.values[l],n)end end i.captureValues=function(j,
...)local k,l=select('#',...),{}assert(i.valuesLength==k,'length of expected values differs from stored values')for n=1,
k do local o=select(n,...)l[o]=i.values[n]end return l end setmetatable(i,{__index=function(j,k)error((
'%q is not a valid member of spy'):format(k))end})return i end return g end)()end,[62]=function()local b,c,d=a(62)local
e return(function(...)local f,g,h,i=d(c.Parent.assign),d(c.Parent.None),d(c.Parent.PropMarkers.Ref),d(c.Parent.
GlobalConfig).get()local j={[h]=g}local function k(l)if i.typeChecks then assert(typeof(l)=='function',
'Expected arg #1 to be a function')end return function(n)local o,p=n[h],f({},n,j)return l(p,o)end end return k end)()end
,[63]=function()local b,c,d=a(63)local e return(function(...)local f=d(c.Parent.Symbol)local g,h=f.named'Nil',{}
local function i(j,k)local l=h[j]if l then local n=l[k]if n==g then return true,nil end if n~=nil then return true,n end
else l={}h[j]=l end local n=Instance.new(j)local o,p=pcall(function()return n[k]end)n:Destroy()if o then if p==nil then
l[k]=g else l[k]=p end end return o,p end return i end)()end,[64]=function()local b,c,d=a(64)local e return(function(...
)local function f(g,h)if not g then error(h..' (This is probably a bug in Roact!)',3)end end return f end)()end,[65]=
function()local b,c,d=a(65)local e return(function(...)local f,g=d(c.Parent.ComponentLifecyclePhase),{}g[f.WillUpdate]=
[[setState cannot be used in the willUpdate lifecycle method.
Consider using the didUpdate method instead, or using getDerivedStateFromProps.

Check the definition of willUpdate in the component %q.]]
g[f.ShouldUpdate]=
[[setState cannot be used in the shouldUpdate lifecycle method.
shouldUpdate must be a pure function that only depends on props and state.

Check the definition of shouldUpdate in the component %q.]]
g[f.Render]=
[[setState cannot be used in the render method.
render must be a pure function that only depends on props and state.

Check the definition of render in the component %q.]]
g.default=
[[setState can not be used in the current situation, because Roact doesn't know
which part of the lifecycle this component is in.

This is a bug in Roact.
It was triggered by the component %q.
]]
return g end)()end,[66]=function()local b,c,d=a(66)local e return(function(...)local function f(g)if not g then return
nil end local h,i=next(g)if not i then return nil end local j=next(g,h)if j then error(
'Expected at most child, had more than one child.',2)end return i end return f end)()end,[67]=function()local b,c,d=a(67
)local e return(function(...)local function f(g:{[any]:any},h:string?)local i=h or tostring(g)return setmetatable(g,{
__index=function(j,k)local l=('%q (%s) is not a valid member of %s'):format(tostring(k),typeof(k),i)error(l,2)end,
__newindex=function(j,k,l)local n=('%q (%s) is not a valid member of %s'):format(tostring(k),typeof(k),i)error(n,2)end})
end return f end)()end,[69]=function()local b,c,d=a(69)local e return(function(...)local f,g,h,i=d(c.hoc),d(c.hooks),d(c
.withHookDetection),d(c.pureComponent)return{withHooks=f.withHooks,withHooksPure=f.withHooksPure,withHookDetection=h,
markPureComponent=i.markPureComponent,useBinding=g.useBinding,useCallback=g.useCallback,useContext=g.useContext,
useEffect=g.useEffect,useMemo=g.useMemo,useMutable=g.useMutable,useReducer=g.useReducer,useRef=g.useRef,useState=g.
useState}end)()end,[70]=function()local b,c,d=a(70)local e return(function(...)local function f(g:thread,h:boolean,...)
if not h then local i=(...)if typeof(i)=='string'then error(debug.traceback(g,i),2)else error(tostring(i),2)end end if
coroutine.status(g)~='dead'then error(debug.traceback(g,'Attempted to yield inside useEffect!'),2)end return...end
local function g(h,...)local i=coroutine.create(h)return f(i,coroutine.resume(i,...))end return g end)()end,[71]=
function()local b,c,d=a(71)local e return(function(...)local f=c:FindFirstAncestor'node_modules'if f:FindFirstChild
'roact'then return d(f.roact.src)elseif f:FindFirstChild'@rbxts'then return d(f['@rbxts'].roact.src)elseif c.Parent.
Parent:FindFirstChild'Roact'then return d(c.Parent.Parent.Roact)else error
[[Could not find Roact or @rbxts/roact in the parent hierarchy.]]end end)()end,[72]=function()local b,c,d=a(72)local e
return(function(...)local f,g=d(c.Parent.Roact),d(c.Parent.hooks)local h,i,j,k=g.prepareToUseHooks,g.finishHooks,g.
commitHookEffectListUpdate,g.commitHookEffectListUnmount local function l(n,o,p)local q=debug.info(n,'n')or'Component'if
q==''then q='Component'end local r=o:extend(q..' (roact-hooked)')r._name=q function r.render(s)h(s)local t=n(s.props)i()
return t end function r.didMount(s)j(s)end function r.didUpdate(s)j(s)end function r.willUnmount(s)k(s)end if p and
type(p)=='table'then for s,t in pairs(p)do r[s]=t end end return r end local function n(o,p)return l(o,f.Component,p)end
local function o(p,q)return l(p,f.PureComponent,q)end return{withHooks=n,withHooksPure=o}end)()end,[73]=function()local
b,c,d=a(73)local e return(function(...)local f,g,h,i,j,k,l,n=d(c.Parent.Roact),d(c.Parent.NoYield),0,false,false
local function o()j=false return i end local function p()i=false j=true end local function q()k=nil h=0 l=nil end
local function r(s)if l~=nil then local t,u=k._name,s._name warn(`The component '{t}' did not finish rendering before '{
u}' started rendering. Did the former yield or fail to run?`)q()end k=s end local function s()i=true if j or not k then
error
[[Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might be using hooks outside of the withHooks() HOC
2. You might be breaking the Rules of Hooks
3. A hooked component may have yielded or thrown an error
]]
end return k end local function t(u,v)if not v then return false end if type(u)~=type(v)then return false end if type(u)
=='table'then for w,x in pairs(u)do if v[w]~=x then return false end end for w,x in pairs(v)do if u[w]~=x then return
false end end return true end return u==v end local function u()return{memoizedState=nil,next=nil,index=h}end
local function v()h+=1 if not l then if not k.firstHook then n=false local w=u()k.firstHook=w l=w else n=true l=k.
firstHook end else if not l.next then n=false local w=u()l.next=w l=w else n=true l=l.next end end return l end
local function w(x)local y=x.lastEffect if not y then return end local z=y.next local A=z repeat if A.prevDeps and t(A.
deps,A.prevDeps)then A=A.next continue end local B=A.destroy A.destroy=nil if type(B)=='function'then g(B)end g(function
()A.destroy=A.create()end)A=A.next until A==z end local function x(y)local z=y.lastEffect if not z then return end local
A=z.next local B=A repeat local C=B.destroy B.destroy=nil if type(C)=='function'then g(C)end B=B.next until B==A end
local function y(z,A,B)s()local C,D={create=z,destroy=A,deps=B,prevDeps=nil,next=nil},k.lastEffect if D then local E=D.
next D.next=C C.next=E k.lastEffect=C else C.next=C k.lastEffect=C end return C end local function z(A,B)s()local C=v()
if not n then C.memoizedState=y(A,nil,B)else C.memoizedState.prevDeps=C.memoizedState.deps C.memoizedState.deps=B C.
memoizedState.create=A end end local function A(B,C)if type(C)=='function'then return C(B)else return C end end
local function B(C,D,E)local F,G=s(),v()if not n then local H if C==A then if type(D)=='function'then H=D()else H=D end
else if E then H=E(D)else H=D end end local function I(J)local K=C(G.memoizedState.state,J)if K==G.memoizedState.state
then return end G.memoizedState.state=K F:setState{[G.index]=K}end G.memoizedState={dispatch=I,state=H}end return G.
memoizedState.state,G.memoizedState.dispatch end local function C(D)return B(A,D)end local function D(E,F)s()local G=v()
local H=G.memoizedState if H~=nil and F~=nil and t(F,H.deps)then return H.value end local I=E()G.memoizedState={value=I,
deps=F}return I end local function E(F,G)return D(function()return F end,G)end local function F(G)s()local H=v()if not n
then H.memoizedState={current=G}end return H.memoizedState end local function G()s()local H=v()if not n then H.
memoizedState=f.createRef()end return H.memoizedState end local function H(I)s()local J=v()if not n then local K,L=f.
createBinding(I)J.memoizedState={binding=K,setValue=L}end return J.memoizedState.binding,J.memoizedState.setValue end
local function I(J)s()local K=v()if not n then local L,M={fakeConsumer=setmetatable({},{__index=k}),initialValue=nil}L.
fakeConsumer.props={render=function(N)M=N end}J.Consumer.render(L.fakeConsumer)L.initialValue=M K.memoizedState=L end J.
Consumer.init(K.memoizedState.fakeConsumer)local L,M=K.memoizedState.fakeConsumer.contextEntry,K.memoizedState.
initialValue local N,O=C(if L==nil then M else L.value)z(function()if L==nil then if N~=M then O(M)end return end if N~=
L.value then O(L.value)end return L.onUpdate:subscribe(O)end,{L})return N end return{useBinding=H,useCallback=E,
useContext=I,useEffect=z,useMemo=D,useMutable=F,useReducer=B,useRef=G,useState=C,prepareHookTest=p,finishHookTest=o,
commitHookEffectListUpdate=w,commitHookEffectListUnmount=x,prepareToUseHooks=r,finishHooks=q}end)()end,[74]=function()
local b,c,d=a(74)local e return(function(...)local f={}local function g(h)f[h]=true return h end local function h(i)
return f[i]end return{markPureComponent=g,isPureComponent=h}end)()end,[75]=function()local b,c,d=a(75)local e return(
function(...)local f,g,h,i,j,k=d(c.Parent.hoc),d(c.Parent.hooks),d(c.Parent.pureComponent),{},{},{}local function l(n,o)
o=o or{}local p,q,r,s=tostring(n),n.createElement,if o.forcePureComponent~=nil then o.forcePureComponent else false,if o
.debug~=nil then o.debug else false if k[p]then return end k[p]=true function n.createElement(t,u,v)if type(t)~=
'function'or j[t]then return q(t,u,v)end if i[t]then return q(i[t],u,v)end g.prepareHookTest()pcall(t,if u~=nil then u
else{})local w=g.finishHookTest()if w then local x if h.isPureComponent(t)or r then x=f.withHooksPure(t)else x=f.
withHooks(t)end if s then local y=x.render function x.render(z,...)debug.profilebegin(z._name)local A,B=pcall(y,z,...)
debug.profileend()if not A then error(B,2)end return B end end i[t]=x return q(x,u,v)else j[t]=true return q(t,u,v)end
end return n end return l end)()end,[77]=function()local b,c,d=a(77)local e return(function(...)local f,g,h,i,j,k,l,n,o,
p=d(c.createUseBinding),d(c.createUseCallback),d(c.createUseContext),d(c.createUseEffect),d(c.createUseMemo),d(c.
createUseReducer),d(c.createUseState),d(c.createUseValue),d(c.dependenciesDifferent),{}local function q(r,s)local t,u,v=
i(s),l(s),n(s)local w,x,y=f(r,v),h(s,t,u),j(v)local z=g(y)local A=k(z,u)return{Roact=r,useBinding=w,useCallback=z,
useContext=x,useEffect=t,useMemo=y,useReducer=A,useState=u,useValue=v}end function p.new(r)return function(s,t)assert(
typeof(s)=='function','Hooked components must be functions.')if t==nil then t={}end local u,v,w=t.componentType,t.name
or debug.info(s,'n')if u==nil or u=='Component'then w=r.Component:extend(v)elseif u=='PureComponent'then w=r.
PureComponent:extend(v)else error(string.format(
[['%s' is not a valid componentType. componentType must either be nil, 'Component', or 'PureComponent']],tostring(u)))
end w.defaultProps=t.defaultProps w.validateProps=t.validateProps function w.init(x)x.defaultStateValues={}x.
effectDependencies={}x.effects={}x.unmountEffects={}x.hooks=q(r,x)end function w.runEffects(x)for y=1,x.hookCounter do
local z=x.effects[y]if z==nil then continue end local A,B=unpack(z)if B~=nil then local C=x.effectDependencies[y]if C~=
nil and not o(B,C)then continue end x.effectDependencies[y]=B end local C=x.unmountEffects[y]if C~=nil then C()end x.
unmountEffects[y]=A()end end function w.didMount(x)x:runEffects()end function w.didUpdate(x)x:runEffects()end function w
.willUnmount(x)for y=1,x.hookCounter do local z=x.unmountEffects[y]if z~=nil then z()end end end function w.render(x)x.
hookCounter=0 return s(x.props,x.hooks)end return w end end return p end)()end,[78]=function()local b,c,d=a(78)local e
return(function(...)local function f(g,h)return function(i)return unpack(h{g.createBinding(i)}.value)end end return f
end)()end,[79]=function()local b,c,d=a(79)local e return(function(...)local function f(g)return function(h,i)return g(
function()return h end,i)end end return f end)()end,[80]=function()local b,c,d=a(80)local e return(function(...)
local function f(g,h,i)local j=setmetatable({},{__index=g})return function(k)k.Consumer.init(j)local l=j.contextEntry
local n,o=i(if l==nil then nil else l.value)h(function()if l==nil then return end if n~=l.value then o(l.value)end
return l.onUpdate:subscribe(o)end,{l})return n end end return f end)()end,[81]=function()local b,c,d=a(81)local e return
(function(...)local function f(g)return function(h,i)assert(typeof(h)=='function','useEffect callback is not a function'
)g.hookCounter+=1 local j=g.hookCounter g.effects[j]={h,i}end end return f end)()end,[82]=function()local b,c,d=a(82)
local e return(function(...)local f=d(c.Parent.dependenciesDifferent)local function g(h)return function(i,j)local k,l=h(
nil),j==nil if k.value==nil or f(j,k.value.dependencies)then l=true end if l then k.value={dependencies=j,memoizedValue=
{i()}}end return unpack(k.value.memoizedValue)end end return g end)()end,[83]=function()local b,c,d=a(83)local e return(
function(...)local function f(g,h)return function(i,j)local k,l=h(j)local n=g(function(n)l(i(k,n))end,{k})return k,n end
end return f end)()end,[84]=function()local b,c,d=a(84)local e return(function(...)local f={}local function g(h,i)if
type(h)=='function'then return h(i)else return h end end local function h(i)local j={}return function(k)i.hookCounter+=1
local l=i.hookCounter local n=i.state[l]if n==nil then local o=i.defaultStateValues[l]if o==f then n=nil elseif o~=nil
then n=o elseif type(k)=='function'then n=k()if n==nil then i.defaultStateValues[l]=f else i.defaultStateValues[l]=n end
else n=k i.defaultStateValues[l]=n end elseif n==f then n=nil end local o=j[l]if o==nil then o=function(p)local q=i.
state[l]if q==nil then q=i.defaultStateValues[l]end if q==f then q=nil end p=g(p,q)if p==nil then p=f end i:setState{[l]
=p}end j[l]=o end return n,o end end return h end)()end,[85]=function()local b,c,d=a(85)local e return(function(...)
local function f(g)return function(h)g.hookCounter+=1 local i=g.hookCounter if g.values==nil then g.values={}end if g.
values[i]==nil then g.values[i]={value=h}end return g.values[i]end end return f end)()end,[86]=function()local b,c,d=a(
86)local e return(function(...)local function f(g,h)local i=0 for j,k in pairs(g)do i+=1 if k~=h[j]then return true end
end for j in pairs(h)do i-=1 end if i~=0 then return true end return false end return f end)()end},{{1,1,{'roblox-ts-ui'
},{{2,1,{'StarterPlayer'},{{22,1,{'rbxts_include'},{{23,2,{'Promise'}},{25,1,{'node_modules'},{{26,1,{'@rbxts'},{{87,1,{
'types'},{{88,1,{'include'},{{89,1,{'generated'}}}}}},{68,1,{'roact-hooked'},{{69,2,{'src'},{{74,2,{'pureComponent'}},{
73,2,{'hooks'}},{75,2,{'withHookDetection'}},{72,2,{'hoc'}},{71,2,{'Roact'}},{70,2,{'NoYield'}}}}}},{27,1,{
'compiler-types'},{{28,1,{'types'}}}},{29,1,{'roact'},{{30,2,{'src'},{{40,2,{'NoopRenderer'}},{49,2,{
'SingleEventManager'}},{54,2,{'createContext'}},{37,2,{'GlobalConfig'}},{61,2,{'createSpy'}},{36,2,{'ElementUtils'}},{52
,2,{'assertDeepEqual'}},{66,2,{'oneChild'}},{31,2,{'Binding'}},{47,2,{'PureComponent'}},{63,2,{
'getDefaultInstanceProperty'}},{39,2,{'None'}},{41,2,{'Portal'}},{56,2,{'createFragment'}},{32,2,{'Component'}},{34,2,{
'Config'}},{59,2,{'createRef'}},{58,2,{'createReconcilerCompat'}},{53,2,{'assign'}},{38,2,{'Logging'}},{57,2,{
'createReconciler'}},{50,2,{'Symbol'}},{42,1,{'PropMarkers'},{{46,2,{'Ref'}},{45,2,{'Event'}},{44,2,{'Children'}},{43,2,
{'Change'}}}},{67,2,{'strict'}},{48,2,{'RobloxRenderer'}},{62,2,{'forwardRef'}},{35,2,{'ElementKind'}},{65,2,{
'invalidSetStateMessages'}},{51,2,{'Type'}},{64,2,{'internalAssert'}},{33,2,{'ComponentLifecyclePhase'}},{60,2,{
'createSignal'}},{55,2,{'createElement'}}}}}},{76,1,{'roact-hooks'},{{77,2,{'src'},{{80,2,{'createUseContext'}},{85,2,{
'createUseValue'}},{83,2,{'createUseReducer'}},{79,2,{'createUseCallback'}},{86,2,{'dependenciesDifferent'}},{82,2,{
'createUseMemo'}},{84,2,{'createUseState'}},{78,2,{'createUseBinding'}},{81,2,{'createUseEffect'}}}}}}}}}},{24,2,{
'RuntimeLib'}}}},{3,1,{'StarterPlayerScripts'},{{4,1,{'TS'},{{7,1,{'client'},{{8,4,{'main'}}}},{19,2,{'utils'},{{21,2,{
'Services'}},{20,2,{'CarTools'}}}},{5,1,{'app'},{{6,2,{'page'}}}},{9,1,{'components'},{{10,1,{'styles'},{{13,2,{
'Measurements'}},{11,2,{'Animations'}},{12,2,{'Colors'}}}},{14,1,{'ui'},{{15,2,{'Checkbox'}},{16,2,{'Menu'}},{17,2,{
'MenuRow'}},{18,2,{'RowLabel'}}}}}}}}}}}}}}},'0.4.1','WaxRuntime',string,task,setmetatable,error,next,table,unpack,
coroutine,script,type,require,pcall,tostring,tonumber,_VERSION local w,x,y,z,A,B,C=k.insert,k.remove,k.freeze or
function(w)return w end,n.wrap,f.sub,f.match,f.gmatch if u and A(u,1,4)=='Lune'then local D,E=r(q,'@lune/task')if D and
E then g=E end end local D=g and g.defer local E,F,G,H,I,J,K,L,M=D or function(E,...)z(E)(...)end,{[1]='Folder',[2]=
'ModuleScript',[3]='Script',[4]='LocalScript',[5]='StringValue'},{},{},{},{},{},{},{}local N,O={GetFullName={{},function
(N)local O,P=N.Name,N.Parent while P do O=P.Name..'.'..O P=P.Parent end return O end},GetChildren={{},function(N)local O
={}for P in j,M[N]do w(O,P)end return O end},GetDescendants={{},function(N)local O={}for P in j,M[N]do w(O,P)for Q,R in
j,P:GetDescendants()do w(O,R)end end return O end},FindFirstChild={{'string','boolean?'},function(N,O,P)local Q=M[N]for
R in j,Q do if R.Name==O then return R end end if P then for R in j,Q do return R:FindFirstChild(O,true)end end end},
FindFirstAncestor={{'string'},function(N,O)local P=N.Parent while P do if P.Name==O then return P end P=P.Parent end end
},WaitForChild={{'string','number?'},function(N,O)return N:FindFirstChild(O)end}},{}for P,Q in j,N do local R,S,T=Q[1],Q
[2],{}for U,V in j,R do local W,X=B(V,'^([^%?]+)(%??)')T[U]={W,X}end O[P]=function(U,...)if not M[U]then i(
"Expected ':' not '.' calling member function "..P,2)end local V={...}for W,X in j,T do local Y=V[W]local Z,_,aa=p(Y),X[
1],X[2]if Y==nil and not aa then i('Argument '..Y..' missing or nil',3)end if _~='any'and Z~=_ and not(Z=='nil'and aa)
then i('Argument '..W..' expects type "'.._..'", got "'..Z..'"',2)end end return S(U,...)end end local function aa(P,Q,R
)local S,T=(h({},{__mode='k'}))local function U(V)i(V..' is not a valid (virtual) member of '..P..' "'..Q..'"',3)end
local function V(W)i('Unable to assign (virtual) property '..W..'. Property is read only',3)end local W,X={},{}X.
__metatable=false X.__index=function(Y,Z)if Z=='ClassName'then return P elseif Z=='Name'then return Q elseif Z=='Parent'
then return R elseif P=='StringValue'and Z=='Value'then return T else local _=O[Z]if _ then return _ end end for _ in j,
S do if _.Name==Z then return _ end end U(Z)end X.__newindex=function(Y,Z,_)if Z=='ClassName'then V(Z)elseif Z=='Name'
then Q=_ elseif Z=='Parent'then if _==W then return end if R~=nil then M[R][W]=nil end R=_ if _~=nil then M[_][W]=true
end elseif P=='StringValue'and Z=='Value'then T=_ else U(Z)end end X.__tostring=function()return Q end h(W,X)M[W]=S if R
~=nil then M[R][W]=true end return W end local function P(Q,R)local S,T,U,V=Q[1],Q[2],Q[3],Q[4]local W=F[T]local X=U and
x(U,1)or W local Y=aa(W,X,R)G[S]=Y if U then for Z,_ in j,U do Y[Z]=_ end end if V then for Z,_ in j,V do P(_,Y)end end
return Y end local Q=aa('Folder','['..e..']')for R,S in j,c do P(S,Q)end for R,S in j,b do local T=G[R]H[T]=S I[T]=R
local U=T.ClassName if U=='LocalScript'or U=='Script'then w(K,T)end end local function R(S)local T,U=S.ClassName,J[S]if
U and T=='ModuleScript'then return l(U)end local V=H[S]local function W(X)X=s(X)local Y,Z,_=S:GetFullName(),B(X,
'[^:]+:(%d+): (.+)')if not Z or not v then return Y..':*: '..(_ or X)end Z=t(Z)local ab=I[S]local ac=v[ab]local ad=Z-ac+
1 if ad<0 then ad='?'end return Y..':'..ad..': '.._ end if T=='LocalScript'or T=='Script'then local ab,ac=r(V)if not ab
then i(W(ac),0)end else local ab={r(V)}local ac=x(ab,1)if not ac then local ad=x(ab,1)i(W(ad),0)end J[S]=ab return l(ab)
end end function a(ab)local ac=G[ab]local function ad(S,...)local T={r(S,...)}local U=x(T,1)if not U then i(T[1],3)end
return l(T)end local S=y(h({},{__index=L,__newindex=function(S,T,U)L[T]=U end,__len=function()return#L end,__iter=
function()return j,L end}))local T,U=y{version=d,envname=e,shared=S,script=o,require=q},ac local function V(W,...)local
X,Y,Z=p(W),'Attempted to call require with a non-ModuleScript','Attempted to call require with self'if X=='table'and M[W
]then if W.ClassName~='ModuleScript'then i(Y,2)elseif W==ac then i(Z,2)end return R(W)elseif X=='string'and A(W,1,1)~=
'@'then if#W==0 then i('Attempted to call require with empty string',2)end local _=ac if A(W,1,1)=='/'then _=Q elseif A(
W,1,2)=='./'then W=A(W,3)end local ae for af in C(W,'([^/]*)/?')do local ag=af if af=='..'then ag='Parent'end if ag~=''
then local ah=_:FindFirstChild(ag)if not ah then local ai=_.Parent if ai then ah=ai:FindFirstChild(ag)end end if ah then
_=ah elseif af~=ae and af~='init'and af~='init.server'and af~='init.client'then i('Virtual script path "'..W..
'" not found',2)end end ae=af end if _.ClassName~='ModuleScript'then i(Y,2)elseif _==ac then i(Z,2)end return R(_)end
return ad(q,W,...)end return T,U,V end for ab,ac in j,K do E(R,ac)end