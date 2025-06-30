local a local b,c,d,e,f,g,h,i,j,k,l,n,o,p,q,r,s,t,u,v={[59]=function()local b,c,d=a(59)local e return(function(...)
local function f(g)if not g then return nil end local h,i=next(g)if not i then return nil end local j=next(g,h)if j then
error('Expected at most child, had more than one child.',2)end return i end return f end)()end,[72]=function()local b,c,
d=a(72)local e return(function(...)local function f(g)return function(h,i)return g(function()return h end,i)end end
return f end)()end,[13]=function()local b,c,d=a(13)local e return(function(...)local function f(g)return Vector3.new(-g.
Z,g.Y,g.X)end local function g(h,i,j)local k,l,m=h.Size.Y/2,f(h.CFrame.UpVector),if i then i.AssemblyLinearVelocity else
h.AssemblyLinearVelocity local n,o=m:Dot(l),h.AssemblyAngularVelocity local p=o:Dot(h.CFrame.UpVector)local q=p*k local
r=math.abs(q-n)local s=1-math.clamp(r/j,0,1)return s end local function h(i,j,k,l)if not i or not i:FindFirstChild
'Wheels'then return nil end local m={'FL','FR','RL','RR'}local n,o=table.create(#m),function(n)return(i:FindFirstChild
'Wheels'):FindFirstChild(n)end for p,q in m do n[p]=o(q,p-1,m)end local p=n for q,r in p do if not r then continue end
local s=r:FindFirstChildOfClass'BodyForce'if not s then s=Instance.new'BodyForce'end s.Parent=r if(k and(r.Name=='FL'or
r.Name=='FR'))or(l and(r.Name=='RL'or r.Name=='RR'))then local t,u=Vector3.yAxis,-j s.Force=t*u else s.Force=Vector3.
zero end end end return{rotate90Y=f,getTraction=g,setDownforce=h}end)()end,[73]=function()local b,c,d=a(73)local e
return(function(...)local function f(g,h,i)local j=setmetatable({},{__index=g})return function(k)k.Consumer.init(j)local
l=j.contextEntry local m,n=i(if l==nil then nil else l.value)h(function()if l==nil then return end if m~=l.value then n(
l.value)end return l.onUpdate:subscribe(n)end,{l})return m end end return f end)()end,[36]=function()local b,c,d=a(36)
local e return(function(...)local f,g,h=d(c.Parent.Parent.Type),{},{__tostring=function(f)return(
'RoactHostChangeEvent(%s)'):format(f.name)end}setmetatable(g,{__index=function(i,j)local k={[f]=f.HostChangeEvent,name=j
}setmetatable(k,h)g[j]=k return k end})return g end)()end,[14]=function()local b,c,d=a(14)local e return(function(...)
local function f(g,h)if h==nil then h=game end local i,j=string.split(g,'.'),h do local k,l=0,false while true do if l
then k+=1 else l=true end if not(k<#i)then break end if(k==0 and(i[k+1]=='game'or i[k+1]==`{h}`))or i[k+1]==''then
continue else local m=j if m~=nil then m=m:WaitForChild(i[k+1])end j=m end end end return j end local function g(h,i)if
i==nil then i=game end local j,k=string.split(h,'.'),i do local l,m=0,false while true do if m then l+=1 else m=true end
if not(l<#j)then break end if(l==0 and(j[l+1]=='game'or j[l+1]==`{i}`))or j[l+1]==''then continue else local n=k if n~=
nil then n=n:FindFirstChild(j[l+1])end k=n end if not k then return nil end end end return k end local h,i,j,k,l,m=game:
GetService'TweenService',game:GetService'ReplicatedStorage',game:GetService'Players',game:GetService'UserInputService',
game:GetService'RunService',game:GetService'Workspace'local function n(o,p)local q,r=(tick())r=l.RenderStepped:Connect(
function()if tick()-q>p/1000 then o()r:Disconnect()end end)end return{YieldPath=f,FindPath=g,SetTimeout=n,TweenService=h
,ReplicatedStorage=i,Players=j,UserInputService=k,RunService=l,Workspace=m}end)()end,[32]=function()local b,c,d=a(32)
local e return(function(...)local f=d(c.Parent.Symbol)local g=f.named'None'return g end)()end,[64]=function()local b,c,d
=a(64)local e return(function(...)local f=c:FindFirstAncestor'node_modules'if f:FindFirstChild'roact'then return d(f.
roact.src)elseif f:FindFirstChild'@rbxts'then return d(f['@rbxts'].roact.src)elseif c.Parent.Parent:FindFirstChild
'Roact'then return d(c.Parent.Parent.Roact)else error[[Could not find Roact or @rbxts/roact in the parent hierarchy.]]
end end)()end,[53]=function()local b,c,d=a(53)local e return(function(...)local function f()local g,h,i={},{},false
local function j(k,l)assert(typeof(l)=='function','Can only subscribe to signals with a function.')local m={callback=l,
disconnected=false}if i and not g[l]then h[l]=m end g[l]=m local function n()assert(not m.disconnected,
'Listeners can only be disconnected once.')m.disconnected=true g[l]=nil h[l]=nil end return n end local function k(l,...
)i=true for m,n in pairs(g)do if not n.disconnected and not h[m]then m(...)end end i=false for m,n in pairs(h)do h[m]=
nil end end return{subscribe=j,fire=k}end return f end)()end,[54]=function()local b,c,d=a(54)local e return(function(...
)local f=d(c.Parent.assertDeepEqual)local function g(h)local i={}i.callCount=0 i.values={}i.valuesLength=0 i.value=
function(...)i.callCount=i.callCount+1 i.values={...}i.valuesLength=select('#',...)if h~=nil then return h(...)end
return nil end i.assertCalledWith=function(j,...)local k=select('#',...)if i.valuesLength~=k then error((
'Expected %d arguments, but was called with %d arguments'):format(i.valuesLength,k),2)end for l=1,k do local m=select(l,
...)assert(i.values[l]==m,'value differs')end end i.assertCalledWithDeepEqual=function(j,...)local k=select('#',...)if i
.valuesLength~=k then error(('Expected %d arguments, but was called with %d arguments'):format(i.valuesLength,k),2)end
for l=1,k do local m=select(l,...)f(i.values[l],m)end end i.captureValues=function(j,...)local k,l=select('#',...),{}
assert(i.valuesLength==k,'length of expected values differs from stored values')for m=1,k do local n=select(m,...)l[n]=i
.values[m]end return l end setmetatable(i,{__index=function(j,k)error(('%q is not a valid member of spy'):format(k))end}
)return i end return g end)()end,[79]=function()local b,c,d=a(79)local e return(function(...)local function f(g,h)local
i=0 for j,k in pairs(g)do i+=1 if k~=h[j]then return true end end for j in pairs(h)do i-=1 end if i~=0 then return true
end return false end return f end)()end,[67]=function()local b,c,d=a(67)local e return(function(...)local f={}
local function g(h)f[h]=true return h end local function h(i)return f[i]end return{markPureComponent=g,isPureComponent=h
}end)()end,[41]=function()local b,c,d=a(41)local e return(function(...)local f,g,h,i,j,k,l,m,n,o,p=d(c.Parent.Binding),
d(c.Parent.PropMarkers.Children),d(c.Parent.ElementKind),d(c.Parent.SingleEventManager),d(c.Parent.
getDefaultInstanceProperty),d(c.Parent.PropMarkers.Ref),d(c.Parent.Type),d(c.Parent.internalAssert),d(c.Parent.
GlobalConfig).get(),'Error applying props:\n\t%s\nIn element:\n%s\n','Error updating props:\n\t%s\nIn element:\n%s\n'
local function q(...)return...end local function r(s,t)if s==nil then return end if typeof(s)=='function'then s(t)elseif
l.of(s)==l.Binding then f.update(s,t)else error(('Invalid ref: Expected type Binding but got %s'):format(typeof(s)))end
end local function s(t,u,v)if v==nil then local w=t.ClassName local x,y=j(w,u)v=y end t[u]=v return end local function t
(u,v)local w=u.bindings[v]w()u.bindings[v]=nil end local function u(v,w,x)local function y(z)local A,B=xpcall(function()
s(v.hostObject,w,z)end,q)if not A then local C=v.currentElement.source if C==nil then C='<enable element tracebacks>'end
local D=p:format(B,C)error(D,0)end end if v.bindings==nil then v.bindings={}end v.bindings[w]=f.subscribe(x,y)y(x:
getValue())end local function v(w)if w.bindings~=nil then for x,y in pairs(w.bindings)do y()end w.bindings=nil end end
local function w(x,y,z,A)if z==A then return end if y==k or y==g then return end local B=l.of(y)if B==l.HostEvent or B==
l.HostChangeEvent then if x.eventManager==nil then x.eventManager=i.new(x.hostObject)end local C=y.name if B==l.
HostChangeEvent then x.eventManager:connectPropertyChange(C,z)else x.eventManager:connectEvent(C,z)end return end local
C,D=l.of(z)==l.Binding,l.of(A)==l.Binding if D then t(x,y)end if C then u(x,y,z)else s(x.hostObject,y,z)end end
local function x(y,z)for A,B in pairs(z)do w(y,A,B,nil)end end local function y(z,A,B)for C,D in pairs(B)do local E=A[C]
w(z,C,D,E)end for C,D in pairs(A)do local E=B[C]if E==nil then w(z,C,nil,D)end end end local z={}function z.isHostObject
(A)return typeof(A)=='Instance'end function z.mountHostNode(A,B)local C,D,E=B.currentElement,B.hostParent,B.hostKey if n
.internalTypeChecks then m(h.of(C)==h.Host,'Element at given node is not a host Element')end if n.typeChecks then
assert(C.props.Name==nil,[[Name can not be specified as a prop to a host component in Roact.]])assert(C.props.Parent==
nil,[[Parent can not be specified as a prop to a host component in Roact.]])end local F=Instance.new(C.component)B.
hostObject=F local G,H=xpcall(function()x(B,C.props)end,q)if not G then local I=C.source if I==nil then I=
'<enable element tracebacks>'end local J=o:format(H,I)error(J,0)end F.Name=tostring(E)local I=C.props[g]if I~=nil then A
.updateVirtualNodeWithChildren(B,B.hostObject,I)end F.Parent=D B.hostObject=F r(C.props[k],F)if B.eventManager~=nil then
B.eventManager:resume()end end function z.unmountHostNode(A,B)local C=B.currentElement r(C.props[k],nil)for D,E in
pairs(B.children)do A.unmountVirtualNode(E)end v(B)B.hostObject:Destroy()end function z.updateHostNode(A,B,C)local D,E=B
.currentElement.props,C.props if B.eventManager~=nil then B.eventManager:suspend()end if D[k]~=E[k]then r(D[k],nil)r(E[k
],B.hostObject)end local F,G=xpcall(function()y(B,D,E)end,q)if not F then local H=C.source if H==nil then H=
'<enable element tracebacks>'end local I=p:format(G,H)error(I,0)end local H=C.props[g]if H~=nil or D[g]~=nil then A.
updateVirtualNodeWithChildren(B,B.hostObject,H)end if B.eventManager~=nil then B.eventManager:resume()end return B end
return z end)()end,[6]=function()local b,c,d=a(6)local e return(function(...)local f=d(c.Parent.Parent.Parent.Parent.
rbxts_include.RuntimeLib)local g,h,i=f.import(c,c.Parent.Parent,'components','ui','MyComponent').MyComponent,f.import(c,
c.Parent.Parent.Parent.Parent,'rbxts_include','node_modules','@rbxts','roact','src'),f.import(c,c.Parent.Parent.Parent.
Parent,'rbxts_include','node_modules','@rbxts','roact-hooked','src').withHooks local j=i(function()return h.
createElement('Frame',{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1},{h.createElement(g,{label='Hello World'})})end)
return{MainUI=j}end)()end,[12]=function()local b,c,d=a(12)local e return(function(...)local f,g=d(c.Parent.Parent.Parent
.rbxts_include.RuntimeLib),{}local h=f.import(c,c,'Services')g.SetTimeout=h.SetTimeout g.Workspace=h.Workspace g.
RunService=h.RunService g.UserInputService=h.UserInputService g.Players=h.Players g.ReplicatedStorage=h.
ReplicatedStorage g.TweenService=h.TweenService g.FindPath=h.FindPath g.YieldPath=h.YieldPath return g end)()end,[8]=
function()local b,c,d=a(8)local e return(function(...)local f=d(c.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local g,h,i,j=f.import(c,c.Parent.Parent.Parent.Parent,'rbxts_include','node_modules','@rbxts','roact','src'),f.import(c
,c.Parent.Parent,'utils').Players,f.import(c,c.Parent.Parent,'app','page').MainUI,game:GetService'StarterGui'pcall(
function()if h.LocalPlayer then j=h.LocalPlayer:WaitForChild'PlayerGui':WaitForChild'ScreenGui'end end)g.mount(g.
createElement('ScreenGui',{IgnoreGuiInset=true},{g.createElement(i)}),j)end)()end,[34]=function()local b,c,d=a(34)local
e return(function(...)local f=d(c.Parent.Symbol)local g=f.named'Portal'return g end)()end,[63]=function()local b,c,d=a(
63)local e return(function(...)local function f(g:thread,h:boolean,...)if not h then local i=(...)if typeof(i)=='string'
then error(debug.traceback(g,i),2)else error(tostring(i),2)end end if coroutine.status(g)~='dead'then error(debug.
traceback(g,'Attempted to yield inside useEffect!'),2)end return...end local function g(h,...)local i=coroutine.create(h
)return f(i,coroutine.resume(i,...))end return g end)()end,[26]=function()local b,c,d=a(26)local e return(function(...)
local f,g=d(c.Parent.Symbol),d(c.Parent.strict)local h=g({Init=f.named'init',Render=f.named'render',ShouldUpdate=f.named
'shouldUpdate',WillUpdate=f.named'willUpdate',DidMount=f.named'didMount',DidUpdate=f.named'didUpdate',WillUnmount=f.
named'willUnmount',ReconcileChildren=f.named'reconcileChildren',Idle=f.named'idle'},'ComponentLifecyclePhase')return h
end)()end,[52]=function()local b,c,d=a(52)local e return(function(...)local f=d(c.Parent.Binding)local function g()local
h,i=f.create(nil)local j={}setmetatable(j,{__index=function(k,l)if l=='current'then return h:getValue()else return h[l]
end end,__newindex=function(k,l,m)if l=='current'then error("Cannot assign to the 'current' property of refs",2)end h[l]
=m end,__tostring=function(k)return('RoactRef(%s)'):format(tostring(h:getValue()))end})return j end return g end)()end,[
66]=function()local b,c,d=a(66)local e return(function(...)local f,g,h,i,j,k,l,m=d(c.Parent.Roact),d(c.Parent.NoYield),0
,false,false local function n()j=false return i end local function o()i=false j=true end local function p()k=nil h=0 l=
nil end local function q(r)if l~=nil then local s,t=k._name,r._name warn(`The component '{s}' did not finish rendering before '{
t}' started rendering. Did the former yield or fail to run?`)p()end k=r end local function r()i=true if j or not k then
error
[[Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might be using hooks outside of the withHooks() HOC
2. You might be breaking the Rules of Hooks
3. A hooked component may have yielded or thrown an error
]]
end return k end local function s(t,u)if not u then return false end if type(t)~=type(u)then return false end if type(t)
=='table'then for v,w in pairs(t)do if u[v]~=w then return false end end for v,w in pairs(u)do if t[v]~=w then return
false end end return true end return t==u end local function t()return{memoizedState=nil,next=nil,index=h}end
local function u()h+=1 if not l then if not k.firstHook then m=false local v=t()k.firstHook=v l=v else m=true l=k.
firstHook end else if not l.next then m=false local v=t()l.next=v l=v else m=true l=l.next end end return l end
local function v(w)local x=w.lastEffect if not x then return end local y=x.next local z=y repeat if z.prevDeps and s(z.
deps,z.prevDeps)then z=z.next continue end local A=z.destroy z.destroy=nil if type(A)=='function'then g(A)end g(function
()z.destroy=z.create()end)z=z.next until z==y end local function w(x)local y=x.lastEffect if not y then return end local
z=y.next local A=z repeat local B=A.destroy A.destroy=nil if type(B)=='function'then g(B)end A=A.next until A==z end
local function x(y,z,A)r()local B,C={create=y,destroy=z,deps=A,prevDeps=nil,next=nil},k.lastEffect if C then local D=C.
next C.next=B B.next=D k.lastEffect=B else B.next=B k.lastEffect=B end return B end local function y(z,A)r()local B=u()
if not m then B.memoizedState=x(z,nil,A)else B.memoizedState.prevDeps=B.memoizedState.deps B.memoizedState.deps=A B.
memoizedState.create=z end end local function z(A,B)if type(B)=='function'then return B(A)else return B end end
local function A(B,C,D)local E,F=r(),u()if not m then local G if B==z then if type(C)=='function'then G=C()else G=C end
else if D then G=D(C)else G=C end end local function H(I)local J=B(F.memoizedState.state,I)if J==F.memoizedState.state
then return end F.memoizedState.state=J E:setState{[F.index]=J}end F.memoizedState={dispatch=H,state=G}end return F.
memoizedState.state,F.memoizedState.dispatch end local function B(C)return A(z,C)end local function C(D,E)r()local F=u()
local G=F.memoizedState if G~=nil and E~=nil and s(E,G.deps)then return G.value end local H=D()F.memoizedState={value=H,
deps=E}return H end local function D(E,F)return C(function()return E end,F)end local function E(F)r()local G=u()if not m
then G.memoizedState={current=F}end return G.memoizedState end local function F()r()local G=u()if not m then G.
memoizedState=f.createRef()end return G.memoizedState end local function G(H)r()local I=u()if not m then local J,K=f.
createBinding(H)I.memoizedState={binding=J,setValue=K}end return I.memoizedState.binding,I.memoizedState.setValue end
local function H(I)r()local J=u()if not m then local K,L={fakeConsumer=setmetatable({},{__index=k}),initialValue=nil}K.
fakeConsumer.props={render=function(M)L=M end}I.Consumer.render(K.fakeConsumer)K.initialValue=L J.memoizedState=K end I.
Consumer.init(J.memoizedState.fakeConsumer)local K,L=J.memoizedState.fakeConsumer.contextEntry,J.memoizedState.
initialValue local M,N=B(if K==nil then L else K.value)y(function()if K==nil then if M~=L then N(L)end return end if M~=
K.value then N(K.value)end return K.onUpdate:subscribe(N)end,{K})return M end return{useBinding=G,useCallback=D,
useContext=H,useEffect=y,useMemo=C,useMutable=E,useReducer=A,useRef=F,useState=B,prepareHookTest=o,finishHookTest=n,
commitHookEffectListUpdate=v,commitHookEffectListUnmount=w,prepareToUseHooks=q,finishHooks=p}end)()end,[43]=function()
local b,c,d=a(43)local e return(function(...)local f={}function f.named(g)assert(type(g)=='string',
'Symbols must be created using a string name!')local h,i=newproxy(true),('Symbol(%s)'):format(g)getmetatable(h).
__tostring=function()return i end return h end return f end)()end,[78]=function()local b,c,d=a(78)local e return(
function(...)local function f(g)return function(h)g.hookCounter+=1 local i=g.hookCounter if g.values==nil then g.values=
{}end if g.values[i]==nil then g.values[i]={value=h}end return g.values[i]end end return f end)()end,[60]=function()
local b,c,d=a(60)local e return(function(...)local function f(g:{[any]:any},h:string?)local i=h or tostring(g)return
setmetatable(g,{__index=function(j,k)local l=('%q (%s) is not a valid member of %s'):format(tostring(k),typeof(k),i)
error(l,2)end,__newindex=function(j,k,l)local m=('%q (%s) is not a valid member of %s'):format(tostring(k),typeof(k),i)
error(m,2)end})end return f end)()end,[23]=function()local b,c,d=a(23)local e return(function(...)local f,g,h,i,j,k=d(c.
GlobalConfig),d(c.createReconciler),d(c.createReconcilerCompat),d(c.RobloxRenderer),d(c.strict),d(c.Binding)local l=g(i)
local m=h(l)local n=j{Component=d(c.Component),createElement=d(c.createElement),createFragment=d(c.createFragment),
oneChild=d(c.oneChild),PureComponent=d(c.PureComponent),None=d(c.None),Portal=d(c.Portal),createRef=d(c.createRef),
forwardRef=d(c.forwardRef),createBinding=k.create,joinBindings=k.join,createContext=d(c.createContext),Change=d(c.
PropMarkers.Change),Children=d(c.PropMarkers.Children),Event=d(c.PropMarkers.Event),Ref=d(c.PropMarkers.Ref),mount=l.
mountVirtualTree,unmount=l.unmountVirtualTree,update=l.updateVirtualTree,reify=m.reify,teardown=m.teardown,reconcile=m.
reconcile,setGlobalConfig=f.set,UNSTABLE={}}return n end)()end,[25]=function()local b,c,d=a(25)local e return(function(
...)local f,g,h,i,j,k,l,m=d(c.Parent.assign),d(c.Parent.ComponentLifecyclePhase),d(c.Parent.Type),d(c.Parent.Symbol),d(c
.Parent.invalidSetStateMessages),d(c.Parent.internalAssert),d(c.Parent.GlobalConfig).get(),100 local n,o,p,q=i.named
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
then v.lifecyclePhase=g.DidUpdate s:didUpdate(y,z)end v.lifecyclePhase=g.Idle return true end return r end)()end,[71]=
function()local b,c,d=a(71)local e return(function(...)local function f(g,h)return function(i)return unpack(h{g.
createBinding(i)}.value)end end return f end)()end,[33]=function()local b,c,d=a(33)local e return(function(...)local f={
}function f.isHostObject(g)return g==nil end function f.mountHostNode(g,h)end function f.unmountHostNode(g,h)end
function f.updateHostNode(g,h,i)return h end return f end)()end,[30]=function()local b,c,d=a(30)local e return(function(
...)local f=d(c.Parent.Config)return f.new()end)()end,[16]=function()local b,c,d=a(16)local e return(function(...)local
f,g,h,i='Non-promise value passed into %s at index %s','Please pass a list of promises to %s',
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
17]=function()local b,c,d=a(17)local e return(function(...)local f,g,h,i,j,k=d(c.Parent.Promise),game:GetService
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
end}end return k end)()end,[40]=function()local b,c,d=a(40)local e return(function(...)local f=d(c.Parent.Component)
local g=f:extend'PureComponent'g.extend=f.extend function g.shouldUpdate(h,i,j)if j~=h.state then return true end if i==
h.props then return false end for k,l in pairs(i)do if h.props[k]~=l then return true end end for k,l in pairs(h.props)
do if i[k]~=l then return true end end return false end return g end)()end,[75]=function()local b,c,d=a(75)local e
return(function(...)local f=d(c.Parent.dependenciesDifferent)local function g(h)return function(i,j)local k,l=h(nil),j==
nil if k.value==nil or f(j,k.value.dependencies)then l=true end if l then k.value={dependencies=j,memoizedValue={i()}}
end return unpack(k.value.memoizedValue)end end return g end)()end,[39]=function()local b,c,d=a(39)local e return(
function(...)local f=d(c.Parent.Parent.Symbol)local g=f.named'Ref'return g end)()end,[38]=function()local b,c,d=a(38)
local e return(function(...)local f,g,h=d(c.Parent.Parent.Type),{},{__tostring=function(f)return('RoactHostEvent(%s)'):
format(f.name)end}setmetatable(g,{__index=function(i,j)local k={[f]=f.HostEvent,name=j}setmetatable(k,h)g[j]=k return k
end})return g end)()end,[65]=function()local b,c,d=a(65)local e return(function(...)local f,g=d(c.Parent.Roact),d(c.
Parent.hooks)local h,i,j,k=g.prepareToUseHooks,g.finishHooks,g.commitHookEffectListUpdate,g.commitHookEffectListUnmount
local function l(m,n,o)local p=debug.info(m,'n')or'Component'if p==''then p='Component'end local q=n:extend(p..
' (roact-hooked)')q._name=p function q.render(r)h(r)local s=m(r.props)i()return s end function q.didMount(r)j(r)end
function q.didUpdate(r)j(r)end function q.willUnmount(r)k(r)end if o and type(o)=='table'then for r,s in pairs(o)do q[r]
=s end end return q end local function m(n,o)return l(n,f.Component,o)end local function n(o,p)return l(o,f.
PureComponent,p)end return{withHooks=m,withHooksPure=n}end)()end,[55]=function()local b,c,d=a(55)local e return(function
(...)local f,g,h,i=d(c.Parent.assign),d(c.Parent.None),d(c.Parent.PropMarkers.Ref),d(c.Parent.GlobalConfig).get()local j
={[h]=g}local function k(l)if i.typeChecks then assert(typeof(l)=='function','Expected arg #1 to be a function')end
return function(m)local n,o=m[h],f({},m,j)return l(o,n)end end return k end)()end,[49]=function()local b,c,d=a(49)local
e return(function(...)local f,g=d(c.Parent.ElementKind),d(c.Parent.Type)local function h(i)return{[g]=g.Element,[f]=f.
Fragment,elements=i}end return h end)()end,[28]=function()local b,c,d=a(28)local e return(function(...)local f,g,h,i=d(c
.Parent.Symbol),d(c.Parent.strict),d(c.Parent.Portal),newproxy(true)local j={Portal=f.named'Portal',Host=f.named'Host',
Function=f.named'Function',Stateful=f.named'Stateful',Fragment=f.named'Fragment'}function j.of(k)if typeof(k)~='table'
then return nil end return k[i]end local k={string=j.Host,['function']=j.Function,table=j.Stateful}function j.
fromComponent(l)if l==h then return i.Portal else return k[typeof(l)]end end getmetatable(i).__index=j g(j,'ElementKind'
)return i end)()end,[56]=function()local b,c,d=a(56)local e return(function(...)local f=d(c.Parent.Symbol)local g,h=f.
named'Nil',{}local function i(j,k)local l=h[j]if l then local m=l[k]if m==g then return true,nil end if m~=nil then
return true,m end else l={}h[j]=l end local m=Instance.new(j)local n,o=pcall(function()return m[k]end)m:Destroy()if n
then if o==nil then l[k]=g else l[k]=o end end return n,o end return i end)()end,[48]=function()local b,c,d=a(48)local e
return(function(...)local f,g,h,i,j,k=d(c.Parent.PropMarkers.Children),d(c.Parent.ElementKind),d(c.Parent.Logging),d(c.
Parent.Type),d(c.Parent.GlobalConfig).get(),
'The prop `Roact.Children` was defined but was overridden by the third parameter to createElement!\nThis can happen when a component passes props through to a child element but also uses the `children` argument:\n\n\tRoact.createElement("Frame", passedProps, {\n\t\tchild = ...\n\t})\n\nInstead, consider using a utility function to merge tables of children together:\n\n\tlocal children = mergeTables(passedProps[Roact.Children], {\n\t\tchild = ...\n\t})\n\n\tlocal fullProps = mergeTables(passedProps, {\n\t\t[Roact.Children] = children\n\t})\n\n\tRoact.createElement("Frame", fullProps)'
local function l(m,n,o)if j.typeChecks then assert(m~=nil,'`component` is required')assert(typeof(n)=='table'or n==nil,
'`props` must be a table or nil')assert(typeof(o)=='table'or o==nil,'`children` must be a table or nil')end if n==nil
then n={}end if o~=nil then if n[f]~=nil then h.warnOnce(k)end n[f]=o end local p=g.fromComponent(m)local q={[i]=i.
Element,[g]=p,component=m,props=n}if j.elementTracing then q.source=debug.traceback('',2):sub(2)end return q end return
l end)()end,[62]=function()local b,c,d=a(62)local e return(function(...)local f,g,h,i=d(c.hoc),d(c.hooks),d(c.
withHookDetection),d(c.pureComponent)return{withHooks=f.withHooks,withHooksPure=f.withHooksPure,withHookDetection=h,
markPureComponent=i.markPureComponent,useBinding=g.useBinding,useCallback=g.useCallback,useContext=g.useContext,
useEffect=g.useEffect,useMemo=g.useMemo,useMutable=g.useMutable,useReducer=g.useReducer,useRef=g.useRef,useState=g.
useState}end)()end,[70]=function()local b,c,d=a(70)local e return(function(...)local f,g,h,i,j,k,l,m,n,o=d(c.
createUseBinding),d(c.createUseCallback),d(c.createUseContext),d(c.createUseEffect),d(c.createUseMemo),d(c.
createUseReducer),d(c.createUseState),d(c.createUseValue),d(c.dependenciesDifferent),{}local function p(q,r)local s,t,u=
i(r),l(r),m(r)local v,w,x=f(q,u),h(r,s,t),j(u)local y=g(x)local z=k(y,t)return{Roact=q,useBinding=v,useCallback=y,
useContext=w,useEffect=s,useMemo=x,useReducer=z,useState=t,useValue=u}end function o.new(q)return function(r,s)assert(
typeof(r)=='function','Hooked components must be functions.')if s==nil then s={}end local t,u,v=s.componentType,s.name
or debug.info(r,'n')if t==nil or t=='Component'then v=q.Component:extend(u)elseif t=='PureComponent'then v=q.
PureComponent:extend(u)else error(string.format(
[['%s' is not a valid componentType. componentType must either be nil, 'Component', or 'PureComponent']],tostring(t)))
end v.defaultProps=s.defaultProps v.validateProps=s.validateProps function v.init(w)w.defaultStateValues={}w.
effectDependencies={}w.effects={}w.unmountEffects={}w.hooks=p(q,w)end function v.runEffects(w)for x=1,w.hookCounter do
local y=w.effects[x]if y==nil then continue end local z,A=unpack(y)if A~=nil then local B=w.effectDependencies[x]if B~=
nil and not n(A,B)then continue end w.effectDependencies[x]=A end local B=w.unmountEffects[x]if B~=nil then B()end w.
unmountEffects[x]=z()end end function v.didMount(w)w:runEffects()end function v.didUpdate(w)w:runEffects()end function v
.willUnmount(w)for x=1,w.hookCounter do local y=w.unmountEffects[x]if y~=nil then y()end end end function v.render(w)w.
hookCounter=0 return r(w.props,w.hooks)end return v end end return o end)()end,[50]=function()local b,c,d=a(50)local e
return(function(...)local f,g,h,i,j,k,l=d(c.Parent.Type),d(c.Parent.ElementKind),d(c.Parent.ElementUtils),d(c.Parent.
PropMarkers.Children),d(c.Parent.Symbol),d(c.Parent.internalAssert),d(c.Parent.GlobalConfig).get()local m=j.named
'InternalData'local function n(o)local p,q,r,s local function t(u,v)local w,x,y,z,A,B=u.hostParent,u.hostKey,u.depth,u.
parent,u.originalContext or u.context,u.parentLegacyContext if not u.wasUnmounted then s(u)end local C=q(v,w,x,A,B)if C
~=nil then C.depth=y C.parent=z end return C end local function u(v,w,x)if l.internalTypeChecks then k(f.of(v)==f.
VirtualNode,'Expected arg #1 to be of type VirtualNode')end v.updateChildrenCount=v.updateChildrenCount+1 local y,z=v.
updateChildrenCount,{}for A,B in pairs(v.children)do local C=h.getElementByKey(x,A)local D=r(B,C)if v.
updateChildrenCount~=y then if D and D~=v.children[A]then s(D)end return end if D~=nil then v.children[A]=D else z[A]=
true end end for A in pairs(z)do v.children[A]=nil end for A,B in h.iterateElements(x)do local C=A if A==h.UseParentKey
then C=v.hostKey end if v.children[A]==nil then local D=q(B,w,C,v.context,v.legacyContext)if v.updateChildrenCount~=y
then if D then s(D)end return end if D~=nil then D.depth=v.depth+1 D.parent=v v.children[A]=D end end end end
local function v(w,x,y)u(w,x,y)end local function w(x,y,z)if f.of(z)==f.Element or z==nil or typeof(z)=='boolean'then u(
x,y,z)else error(('%s\n%s'):format('Component returned invalid children:',x.currentElement.source or
'<enable element tracebacks>'),0)end end function s(x)if l.internalTypeChecks then k(f.of(x)==f.VirtualNode,
'Expected arg #1 to be of type VirtualNode')end x.wasUnmounted=true local y=g.of(x.currentElement)if y==g.Host then o.
unmountHostNode(p,x)elseif y==g.Function then for z,A in pairs(x.children)do s(A)end elseif y==g.Stateful then x.
instance:__unmount()elseif y==g.Portal then for z,A in pairs(x.children)do s(A)end elseif y==g.Fragment then for z,A in
pairs(x.children)do s(A)end else error(('Unknown ElementKind %q'):format(tostring(y)),2)end end local function x(y,z)
local A=z.component(z.props)w(y,y.hostParent,A)return y end local function y(z,A)local B=z.currentElement local C,D=B.
props.target,A.props.target assert(o.isHostObject(D),'Expected target to be host object')if D~=C then return t(z,A)end
local E=A.props[i]v(z,D,E)return z end local function z(A,B)v(A,A.hostParent,B.elements)return A end function r(A,B,C:{[
any]:any}?):{[any]:any}?if l.internalTypeChecks then k(f.of(A)==f.VirtualNode,
'Expected arg #1 to be of type VirtualNode')end if l.typeChecks then assert(f.of(B)==f.Element or typeof(B)=='boolean'or
B==nil,'Expected arg #2 to be of type Element, boolean, or nil')end if A.currentElement==B and C==nil then return A end
if typeof(B)=='boolean'or B==nil then s(A)return nil end if A.currentElement.component~=B.component then return t(A,B)
end local D,E=g.of(B),true if D==g.Host then A=o.updateHostNode(p,A,B)elseif D==g.Function then A=x(A,B)elseif D==g.
Stateful then E=A.instance:__update(B,C)elseif D==g.Portal then A=y(A,B)elseif D==g.Fragment then A=z(A,B)else error((
'Unknown ElementKind %q'):format(tostring(D)),2)end if not E then return A end A.currentElement=B return A end
local function A(B,C,D,E,F)if l.internalTypeChecks then k(o.isHostObject(C)or C==nil,
'Expected arg #2 to be a host object')k(typeof(E)=='table'or E==nil,'Expected arg #4 to be of type table or nil')k(
typeof(F)=='table'or F==nil,'Expected arg #5 to be of type table or nil')end if l.typeChecks then assert(D~=nil,
'Expected arg #3 to be non-nil')assert(f.of(B)==f.Element or typeof(B)=='boolean',
'Expected arg #1 to be of type Element or boolean')end return{[f]=f.VirtualNode,currentElement=B,depth=1,parent=nil,
children={},hostParent=C,hostKey=D,updateChildrenCount=0,wasUnmounted=false,legacyContext=F,parentLegacyContext=F,
context=E or{},originalContext=nil}end local function B(C)local D=C.currentElement local E=D.component(D.props)w(C,C.
hostParent,E)end local function C(D)local E=D.currentElement local F,G=E.props.target,E.props[i]assert(o.isHostObject(F)
,'Expected target to be host object')v(D,F,G)end local function D(E)local F=E.currentElement local G=F.elements v(E,E.
hostParent,G)end function q(E,F,G,H,I)if l.internalTypeChecks then k(o.isHostObject(F)or F==nil,
'Expected arg #2 to be a host object')k(typeof(I)=='table'or I==nil,'Expected arg #5 to be of type table or nil')end if
l.typeChecks then assert(G~=nil,'Expected arg #3 to be non-nil')assert(f.of(E)==f.Element or typeof(E)=='boolean',
'Expected arg #1 to be of type Element or boolean')end if typeof(E)=='boolean'then return nil end local J,K=g.of(E),A(E,
F,G,H,I)if J==g.Host then o.mountHostNode(p,K)elseif J==g.Function then B(K)elseif J==g.Stateful then E.component:
__mount(p,K)elseif J==g.Portal then C(K)elseif J==g.Fragment then D(K)else error(('Unknown ElementKind %q'):format(
tostring(J)),2)end return K end local function E(F,G,H)if l.typeChecks then assert(f.of(F)==f.Element,
'Expected arg #1 to be of type Element')assert(o.isHostObject(G)or G==nil,'Expected arg #2 to be a host object')end if H
==nil then H='RoactTree'end local I={[f]=f.VirtualTree,[m]={rootNode=nil,mounted=true}}I[m].rootNode=q(F,G,H)return I
end local function F(G)local H=G[m]if l.typeChecks then assert(f.of(G)==f.VirtualTree,
'Expected arg #1 to be a Roact handle')assert(H.mounted,
[[Cannot unmounted a Roact tree that has already been unmounted]])end H.mounted=false if H.rootNode~=nil then s(H.
rootNode)end end local function G(H,I)local J=H[m]if l.typeChecks then assert(f.of(H)==f.VirtualTree,
'Expected arg #1 to be a Roact handle')assert(f.of(I)==f.Element,'Expected arg #2 to be a Roact Element')end J.rootNode=
r(J.rootNode,I)return H end p={mountVirtualTree=E,unmountVirtualTree=F,updateVirtualTree=G,createVirtualNode=A,
mountVirtualNode=q,unmountVirtualNode=s,updateVirtualNode=r,updateVirtualNodeWithChildren=v,
updateVirtualNodeWithRenderResult=w}return p end return n end)()end,[77]=function()local b,c,d=a(77)local e return(
function(...)local f={}local function g(h,i)if type(h)=='function'then return h(i)else return h end end local function h
(i)local j={}return function(k)i.hookCounter+=1 local l=i.hookCounter local m=i.state[l]if m==nil then local n=i.
defaultStateValues[l]if n==f then m=nil elseif n~=nil then m=n elseif type(k)=='function'then m=k()if m==nil then i.
defaultStateValues[l]=f else i.defaultStateValues[l]=m end else m=k i.defaultStateValues[l]=m end elseif m==f then m=nil
end local n=j[l]if n==nil then n=function(o)local p=i.state[l]if p==nil then p=i.defaultStateValues[l]end if p==f then p
=nil end o=g(o,p)if o==nil then o=f end i:setState{[l]=o}end j[l]=n end return m,n end end return h end)()end,[51]=
function()local b,c,d=a(51)local e return(function(...)local f,g,h,i=d(c.Parent.Logging),
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
end return l end return j end)()end,[58]=function()local b,c,d=a(58)local e return(function(...)local f,g=d(c.Parent.
ComponentLifecyclePhase),{}g[f.WillUpdate]=
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
return g end)()end,[31]=function()local b,c,d=a(31)local e return(function(...)local f,g,h=true,{},{}local function i(j,
k)local l=('\t'):rep(k)return l..j:gsub('\n','\n'..l)end local function j(k,l)local m={}for n,o in ipairs(k)do table.
insert(m,i(o,l))end return table.concat(m,'\n')end local k={}function k.__tostring(l)local m,n,o,p={'LogInfo {'},#l.
errors,#l.warnings,#l.infos if n+o+p==0 then table.insert(m,'\t(no messages)')end if n>0 then table.insert(m,(
'\tErrors (%d) {'):format(n))table.insert(m,j(l.errors,2))table.insert(m,'\t}')end if o>0 then table.insert(m,(
'\tWarnings (%d) {'):format(o))table.insert(m,j(l.warnings,2))table.insert(m,'\t}')end if p>0 then table.insert(m,(
'\tInfos (%d) {'):format(p))table.insert(m,j(l.infos,2))table.insert(m,'\t}')end table.insert(m,'}')return table.concat(
m,'\n')end local function l()local m={errors={},warnings={},infos={}}setmetatable(m,k)return m end local m={}function m.
capture(n)local o,p=l(),f f=false g[o]=true local q,r=pcall(n)g[o]=nil f=p assert(q,r)return o end function m.warn(n,...
)local o=n:format(...)for p in pairs(g)do table.insert(p.warnings,o)end local p=debug.traceback('',2):sub(2)local q=(
'%s\n%s'):format(o,i(p,1))if f then warn(q)end end function m.warnOnce(n,...)local o=debug.traceback()if h[o]then return
end h[o]=true m.warn(n,...)end return m end)()end,[29]=function()local b,c,d=a(29)local e return(function(...)local f,g=
d(c.Parent.Type),d(c.Parent.Symbol)local function h()return nil end local i={}i.UseParentKey=g.named'UseParentKey'type
Iterator<K,V> =({[K]:V},K?)->(K?,V?)type Element={[any]:any}function i.iterateElements<K>(j):(Iterator<K,Element>,any,
nil)local k=f.of(j)if k==f.Element then local l=false return function(m,n)if l then return nil else l=true return i.
UseParentKey,j end end end local l=typeof(j)if j==nil or l=='boolean'then return(h::any)::Iterator<K,Element>end if l==
'table'then return pairs(j)end error'Invalid elements'end function i.getElementByKey(j,k)if j==nil or typeof(j)==
'boolean'then return nil end if f.of(j)==f.Element then if k==i.UseParentKey then return j end return nil end if typeof(
j)=='table'then return j[k]end error'Invalid elements'end return i end)()end,[24]=function()local b,c,d=a(24)local e
return(function(...)local f,g,h,i=d(c.Parent.createSignal),d(c.Parent.Symbol),d(c.Parent.Type),d(c.Parent.GlobalConfig).
get()local j,k,l=g.named'BindingImpl',{},{}function l.getValue(n)return k.getValue(n)end function l.map(n,o)return k.
map(n,o)end local n={__index=l,__tostring=function(n)return string.format('RoactBinding(%s)',tostring(n:getValue()))end}
function k.update(o,p)return o[j].update(p)end function k.subscribe(o,p)return o[j].subscribe(p)end function k.getValue(
o)return o[j].getValue()end function k.create(o)local p={value=o,changeSignal=f()}function p.subscribe(q)return p.
changeSignal:subscribe(q)end function p.update(q)p.value=q p.changeSignal:fire(q)end function p.getValue()return p.value
end return setmetatable({[h]=h.Binding,[j]=p},n),p.update end function k.map(o,p)if i.typeChecks then assert(h.of(o)==h.
Binding,'Expected arg #1 to be a binding')assert(typeof(p)=='function','Expected arg #1 to be a function')end local q={}
function q.subscribe(r)return k.subscribe(o,function(s)r(p(s))end)end function q.update(r)error(
[[Bindings created by Binding:map(fn) cannot be updated directly]],2)end function q.getValue()return p(o:getValue())end
return setmetatable({[h]=h.Binding,[j]=q},n)end function k.join(o)if i.typeChecks then assert(typeof(o)=='table',
'Expected arg #1 to be of type table')for p,q in pairs(o)do if h.of(q)~=h.Binding then local r=(
[[Expected arg #1 to contain only bindings, but key %q had a non-binding value]]):format(tostring(p))error(r,2)end end
end local p={}local function q()local r={}for s,t in pairs(o)do r[s]=t:getValue()end return r end function p.subscribe(r
)local s={}for t,u in pairs(o)do s[t]=k.subscribe(u,function(v)r(q())end)end return function()if s==nil then return end
for t,u in pairs(s)do u()end s=nil::any end end function p.update(r)error(
[[Bindings created by joinBindings(...) cannot be updated directly]],2)end function p.getValue()return q()end return
setmetatable({[h]=h.Binding,[j]=p},n)end return k end)()end,[47]=function()local b,c,d=a(47)local e return(function(...)
local f,g,h,i,j=d(c.Parent.Symbol),d(c.Parent.createFragment),d(c.Parent.createSignal),d(c.Parent.PropMarkers.Children),
d(c.Parent.Component)local function k(l)return{value=l,onUpdate=h()}end local function l(n)local o=j:extend'Provider'
function o.init(p,q)p.contextEntry=k(q.value)p:__addContext(n.key,p.contextEntry)end function o.willUpdate(p,q)if q.
value~=p.props.value then p.contextEntry.value=q.value end end function o.didUpdate(p,q)if q.value~=p.props.value then p
.contextEntry.onUpdate:fire(p.props.value)end end function o.render(p)return g(p.props[i])end return o end
local function n(o)local p=j:extend'Consumer'function p.validateProps(q)if type(q.render)~='function'then return false,
'Consumer expects a `render` function'else return true end end function p.init(q,r)q.contextEntry=q:__getContext(o.key)
end function p.render(q)local r if q.contextEntry~=nil then r=q.contextEntry.value else r=o.defaultValue end return q.
props.render(r)end function p.didUpdate(q)if q.contextEntry~=nil then q.lastValue=q.contextEntry.value end end function
p.didMount(q)if q.contextEntry~=nil then q.disconnect=q.contextEntry.onUpdate:subscribe(function(r)if r~=q.lastValue
then q:setState{}end end)end end function p.willUnmount(q)if q.disconnect~=nil then q.disconnect()q.disconnect=nil end
end return p end local o={}o.__index=o function o.new(p)return setmetatable({defaultValue=p,key=f.named'ContextKey'},o)
end function o.__tostring(p)return'RoactContext'end local function p(q)local r=o.new(q)return{Provider=l(r),Consumer=n(r
)}end return p end)()end,[11]=function()local b,c,d=a(11)local e return(function(...)local f=d(c.Parent.Parent.Parent.
Parent.Parent.rbxts_include.RuntimeLib)local g=f.import(c,c.Parent.Parent.Parent.Parent.Parent,'rbxts_include',
'node_modules','@rbxts','roact','src')local function h(i)return g.createElement('TextLabel',{Size=UDim2.new(0,200,0,50),
Text=i.label})end return{MyComponent=h}end)()end,[37]=function()local b,c,d=a(37)local e return(function(...)local f=d(c
.Parent.Parent.Symbol)local g=f.named'Children'return g end)()end,[74]=function()local b,c,d=a(74)local e return(
function(...)local function f(g)return function(h,i)assert(typeof(h)=='function','useEffect callback is not a function')
g.hookCounter+=1 local j=g.hookCounter g.effects[j]={h,i}end end return f end)()end,[45]=function()local b,c,d=a(45)
local e return(function(...)local function f(g:any,h:any):(boolean,string?)if typeof(g)~=typeof(h)then local i=(
'{1} is of type %s, but {2} is of type %s'):format(typeof(g),typeof(h))return false,i end if typeof(g)=='table'then
local i={}for j,k in pairs(g)do i[j]=true local l,n=f(k,h[j])if not l and n then local o=n:gsub('{1}',('{1}[%s]'):
format(tostring(j))):gsub('{2}',('{2}[%s]'):format(tostring(j)))return false,o end end for j,k in pairs(h)do if not i[j]
then local l,n=f(k,g[j])if not l and n then local o=n:gsub('{1}',('{1}[%s]'):format(tostring(j))):gsub('{2}',('{2}[%s]')
:format(tostring(j)))return false,o end end end return true,nil end if g==h then return true,nil end local i=
'{1} ~= {2}'return false,i end local function g(h,i)local j,k=f(h,i)if not j and k then local l=k:gsub('{1}','first'):
gsub('{2}','second')local n=('Values were not deep-equal.\n%s'):format(l)error(n,2)end end return g end)()end,[42]=
function()local b,c,d=a(42)local e return(function(...)local f,g,h,i=d(c.Parent.Logging),'Change.',{Disabled='Disabled',
Suspended='Suspended',Enabled='Enabled'},{}i.__index=i function i.new(j)local k=setmetatable({_suspendedEventQueue={},
_connections={},_listeners={},_status=h.Disabled,_isResuming=false,_instance=j},i)return k end function i.connectEvent(j
,k,l)j:_connect(k,j._instance[k],l)end function i.connectPropertyChange(j,k,l)local n,o=pcall(function()return j.
_instance:GetPropertyChangedSignal(k)end)if not n then error(('Cannot get changed signal on property %q: %s'):format(
tostring(k),o),0)end j:_connect(g..k,o,l)end function i._connect(j,k,l,n)if n==nil then if j._connections[k]~=nil then j
._connections[k]:Disconnect()j._connections[k]=nil end j._listeners[k]=nil else if j._connections[k]==nil then j.
_connections[k]=l:Connect(function(...)if j._status==h.Enabled then j._listeners[k](j._instance,...)elseif j._status==h.
Suspended then local o=select('#',...)table.insert(j._suspendedEventQueue,{k,o,...})end end)end j._listeners[k]=n end
end function i.suspend(j)j._status=h.Suspended end function i.resume(j)if j._isResuming then return end j._isResuming=
true local k=1 while k<=#j._suspendedEventQueue do local l=j._suspendedEventQueue[k]local n,o=j._listeners[l[1] ],l[2]if
n~=nil then local p=coroutine.create(n)local q,r=coroutine.resume(p,j._instance,unpack(l,3,2+o))if not q then f.warn(
'%s',r)end end k=k+1 end j._isResuming=false j._status=h.Enabled j._suspendedEventQueue={}end return i end)()end,[57]=
function()local b,c,d=a(57)local e return(function(...)local function f(g,h)if not g then error(h..
' (This is probably a bug in Roact!)',3)end end return f end)()end,[68]=function()local b,c,d=a(68)local e return(
function(...)local f,g,h,i,j,k=d(c.Parent.hoc),d(c.Parent.hooks),d(c.Parent.pureComponent),{},{},{}local function l(n,o)
o=o or{}local p,q,r,s=tostring(n),n.createElement,if o.forcePureComponent~=nil then o.forcePureComponent else false,if o
.debug~=nil then o.debug else false if k[p]then return end k[p]=true function n.createElement(t,u,v)if type(t)~=
'function'or j[t]then return q(t,u,v)end if i[t]then return q(i[t],u,v)end g.prepareHookTest()pcall(t,if u~=nil then u
else{})local w=g.finishHookTest()if w then local x if h.isPureComponent(t)or r then x=f.withHooksPure(t)else x=f.
withHooks(t)end if s then local y=x.render function x.render(z,...)debug.profilebegin(z._name)local A,B=pcall(y,z,...)
debug.profileend()if not A then error(B,2)end return B end end i[t]=x return q(x,u,v)else j[t]=true return q(t,u,v)end
end return n end return l end)()end,[44]=function()local b,c,d=a(44)local e return(function(...)local f,g,h,i=d(c.Parent
.Symbol),d(c.Parent.strict),newproxy(true),{}local function j(k)i[k]=f.named('Roact'..k)end j'Binding'j'Element'j
'HostChangeEvent'j'HostEvent'j'StatefulComponentClass'j'StatefulComponentInstance'j'VirtualNode'j'VirtualTree'function i
.of(k)if typeof(k)~='table'then return nil end return k[h]end getmetatable(h).__index=i getmetatable(h).__tostring=
function()return'RoactType'end g(i,'Type')return h end)()end,[46]=function()local b,c,d=a(46)local e return(function(...
)local f=d(c.Parent.None)local function g(h,...)for i=1,select('#',...)do local j=select(i,...)if j~=nil then for k,l in
pairs(j)do if l==f then h[k]=nil else h[k]=l end end end end return h end return g end)()end,[76]=function()local b,c,d=
a(76)local e return(function(...)local function f(g,h)return function(i,j)local k,l=h(j)local n=g(function(n)l(i(k,n))
end,{k})return k,n end end return f end)()end,[27]=function()local b,c,d=a(27)local e return(function(...)local f,g={
internalTypeChecks=false,typeChecks=false,elementTracing=false,propValidation=false},{}for h in pairs(f)do table.insert(
g,h)end local h={}function h.new()local i={}i._currentConfig=setmetatable({},{__index=function(j,k)local l=(
[[Invalid global configuration key %q. Valid configuration keys are: %s]]):format(tostring(k),table.concat(g,', '))
error(l,3)end})i.set=function(...)return h.set(i,...)end i.get=function(...)return h.get(i,...)end i.scoped=function(...
)return h.scoped(i,...)end i.set(f)return i end function h.set(i,j)for k,l in pairs(j)do if f[k]==nil then local n=(
[[Invalid global configuration key %q (type %s). Valid configuration keys are: %s]]):format(tostring(k),typeof(k),table.
concat(g,', '))error(n,3)end if typeof(l)~='boolean'then local n=(
[[Invalid value %q (type %s) for global configuration key %q. Valid values are: true, false]]):format(tostring(l),
typeof(l),tostring(k))error(n,3)end i._currentConfig[k]=l end end function h.get(i)return i._currentConfig end function
h.scoped(i,j,k)local l={}for n,o in pairs(i._currentConfig)do l[n]=o end i.set(j)local n,o=pcall(k)i.set(l)assert(n,o)
end return h end)()end},{{1,1,{'roblox-ts-ui'},{{2,1,{'StarterPlayer'},{{15,1,{'rbxts_include'},{{17,2,{'RuntimeLib'}},{
16,2,{'Promise'}},{18,1,{'node_modules'},{{19,1,{'@rbxts'},{{69,1,{'roact-hooks'},{{70,2,{'src'},{{71,2,{
'createUseBinding'}},{73,2,{'createUseContext'}},{75,2,{'createUseMemo'}},{74,2,{'createUseEffect'}},{76,2,{
'createUseReducer'}},{77,2,{'createUseState'}},{79,2,{'dependenciesDifferent'}},{78,2,{'createUseValue'}},{72,2,{
'createUseCallback'}}}}}},{61,1,{'roact-hooked'},{{62,2,{'src'},{{68,2,{'withHookDetection'}},{66,2,{'hooks'}},{63,2,{
'NoYield'}},{64,2,{'Roact'}},{65,2,{'hoc'}},{67,2,{'pureComponent'}}}}}},{80,1,{'types'},{{81,1,{'include'},{{82,1,{
'generated'}}}}}},{22,1,{'roact'},{{23,2,{'src'},{{24,2,{'Binding'}},{52,2,{'createRef'}},{35,1,{'PropMarkers'},{{37,2,{
'Children'}},{36,2,{'Change'}},{39,2,{'Ref'}},{38,2,{'Event'}}}},{40,2,{'PureComponent'}},{44,2,{'Type'}},{25,2,{
'Component'}},{57,2,{'internalAssert'}},{31,2,{'Logging'}},{47,2,{'createContext'}},{53,2,{'createSignal'}},{45,2,{
'assertDeepEqual'}},{29,2,{'ElementUtils'}},{56,2,{'getDefaultInstanceProperty'}},{42,2,{'SingleEventManager'}},{51,2,{
'createReconcilerCompat'}},{54,2,{'createSpy'}},{41,2,{'RobloxRenderer'}},{58,2,{'invalidSetStateMessages'}},{50,2,{
'createReconciler'}},{32,2,{'None'}},{48,2,{'createElement'}},{60,2,{'strict'}},{59,2,{'oneChild'}},{49,2,{
'createFragment'}},{55,2,{'forwardRef'}},{46,2,{'assign'}},{30,2,{'GlobalConfig'}},{33,2,{'NoopRenderer'}},{28,2,{
'ElementKind'}},{43,2,{'Symbol'}},{27,2,{'Config'}},{26,2,{'ComponentLifecyclePhase'}},{34,2,{'Portal'}}}}}},{20,1,{
'compiler-types'},{{21,1,{'types'}}}}}}}}}},{3,1,{'StarterPlayerScripts'},{{4,1,{'TS'},{{7,1,{'client'},{{8,4,{'main'}}}
},{5,1,{'app'},{{6,2,{'page'}}}},{12,2,{'utils'},{{14,2,{'Services'}},{13,2,{'CarTools'}}}},{9,1,{'components'},{{10,1,{
'ui'},{{11,2,{'MyComponent'}}}}}}}}}}}}}}},'0.4.1','WaxRuntime',string,task,setmetatable,error,next,table,unpack,
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