local _={}
_[1]=function(L)local M,N={},{}for O=0,255 do M[O],N[O]=string.char(O),string.char(O)end local P,Q,R=table.concat,math.floor,string.sub local S,T=256,{}for O=0,255 do T[O]=O end local U,V=0,{}for O=0,255 do U=(U+T[O]+(R(L,(O%#L)+1)):byte())%256 T[O],T[U]=T[U],T[O]end local W=function()U=(U+1)%256 V=(V+T[U])%256 T[U],T[V]=T[V],T[U]return T[(T[U]+T[V])%256]end return function(X)local Y={}for Z=1,#X do Y[#Y+1]=string.char((X:byte(Z)+W())%256)end return P(Y)end end
local a0=_[1]("9p7k3v2n8q1r6t5y0z4x")
local a1=function(a2)local a3={}for a4=1,#a2 do a3[a4]=string.char(bit32.bxor(a2:byte(a4),0x5A))end return table.concat(a3)end
local a5=function(a6)local a7=a0(a6)return a1(a7)end
local a8=function(a9)return a5(a9)end

local aa,ab,ac,ad,ae,af,ag,ah,ai,aj,ak,al,am,an,ao,ap,aq,ar,as,at,au,av,aw,ax,ay,az,aA,aB,aC,aD,aE,aF,aG,aH,aI,aJ,aK,aL,aM,aN,aO,aP,aQ,aR,aS,aT,aU,aV,aW,aX,aY,aZ,a_,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,b181,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205,b206,b207,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218,b219,b220,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231,b232,b233,b234,b235,b236,b237,b238,b239,b240,b241,b242,b243,b244,b245,b246,b247,b248,b249,b250,b251,b252,b253,b254,b255,b256,b257,b258,b259,b260,b261,b262,b263,b264,b265,b266,b267,b268,b269,b270,b271,b272,b273,b274,b275,b276,b277,b278,b279,b280,b281,b282,b283,b284,b285,b286,b287,b288,b289,b290,b291,b292,b293,b294,b295,b296,b297,b298,b299,b300

local b301=a8("9e6b2d") -- Players
local b302=a8("9d5e2c") -- TweenService
local b303=a8("9f7c3a") -- UserInputService
local b304=a8("9b4f28") -- RunService
local b305=a8("9a6e3f") -- LocalPlayer
local b306=a8("996d3e") -- PlayerGui
local b307=a8("985c3d") -- iOS26_UI
local b308=a8("977b4c") -- ScreenGui
local b309=a8("966a4b") -- ResetOnSpawn
local b310=a8("95495a") -- IgnoreGuiInset
local b311=a8("945859") -- Frame
local b312=a8("937b68") -- UDim2.new
local b313=a8("926a67") -- fromRGB
local b314=a8("914976") -- BorderSizePixel
local b315=a8("905885") -- ImageLabel
local b316=a8("9f6794") -- ImageTransparency
local b317=a8("9e4693") -- ScaleType
local b318=a8("9d55a2") -- Tile
local b319=a8("9c74b1") -- UICorner
local b320=a8("9b63b0") -- UIStroke
local b321=a8("9a42cf") -- TextLabel
local b322=a8("9951de") -- Font
local b323=a8("9870ed") -- GothamBold
local b324=a8("9761fc") -- TextColor3
local b325=a8("96400b") -- TextSize
local b326=a8("95111a") -- TextBox
local b327=a8("942029") -- TextXAlignment
local b328=a8("933138") -- Center
local b329=a8("925047") -- TextButton
local b330=a8("914156") -- MouseButton1Click
local b331=a8("903265") -- InputBegan
local b332=a8("8f1374") -- Touch
local b333=a8("8e3283") -- TextBoxFocused
local b334=a8("8d0192") -- TextBoxFocusReleased
local b335=a8("8c20a1") -- ccontop
local b336=a8("8b41b0") -- Enter Passcode
local b337=a8("8a62bf") -- Unlock
local b338=a8("8983ce") -- Welcome
local b339=a8("88a4dd") -- iOS 26 · 毛玻璃质感
local b340=a8("87c5ec") -- Incorrect Passcode
local b341=a8("86e6fb") -- 14356072992
local b342=a8("85070a") -- 81196727397346
local b343=a8("842819") -- GetPropertyChangedSignal
local b344=a8("834928") -- Text
local b345=a8("826a37") -- Destroy
local b346=a8("818b46") -- WaitForChild
local b347=a8("80ac55") -- FindFirstChild
local b348=a8("9fcd64") -- CaptureFocus
local b349=a8("9eee73") -- TweenInfo
local b350=a8("9d0f82") -- EasingStyle
local b351=a8("9c2090") -- EasingDirection
local b352=a8("9b41af") -- Out
local b353=a8("9a62be") -- Elastic
local b354=a8("9983cd") -- Quad
local b355=a8("98a4dc") -- Back
local b356=a8("97c5eb") -- Create
local b357=a8("96e6fa") -- Play
local b358=a8("950709") -- CoreGui
local b359=a8("942818") -- Logo
local b360=a8("934927") -- wait
local b361=a8("926a36") -- Completed
local b362=a8("918b45") -- Connect

local b363=game:GetService(b301)
local b364=game:GetService(b302)
local b365=game:GetService(b303)
local b366=game:GetService(b304)
local b367=b363.LocalPlayer
local b368=b367:WaitForChild(b306)

if b368:FindFirstChild(b307)then
    b368[b307]:Destroy()
end

local b369=Instance.new(b308)
b369.Name=b307
b369.ResetOnSpawn=false
b369.IgnoreGuiInset=true
b369.Parent=b368

local b370=Instance.new(b311)
b370.Size=UDim2.new(1,0,1,0)
b370.BackgroundTransparency=0.65
b370.BackgroundColor3=Color3.fromRGB(20,20,20)
b370.BorderSizePixel=0
b370.Parent=b369

local b371=Instance.new(b315)
b371.Size=UDim2.new(1,0,1,0)
b371.BackgroundTransparency=1
b371.Image=b341
b371.ImageTransparency=0.9
b371.ScaleType=Enum.ScaleType.Tile
b371.TileSize=UDim2.new(0,64,0,64)
b371.Parent=b370

local b372=Instance.new(b311)
b372.Size=UDim2.new(1,0,1,0)
b372.BackgroundTransparency=0.95
b372.BackgroundColor3=Color3.fromRGB(255,255,255)
b372.BorderSizePixel=0
b372.Parent=b370

local b373=Instance.new(b311)
b373.Size=UDim2.new(0,340,0,210)
b373.Position=UDim2.new(0.5,-170,0.4,-105)
b373.BackgroundColor3=Color3.fromRGB(255,255,255)
b373.BackgroundTransparency=0.25
b373.BorderSizePixel=0
b373.ClipsDescendants=true
b373.Parent=b369

local b374=Instance.new(b319)
b374.CornerRadius=UDim.new(0,24)
b374.Parent=b373

local b375=Instance.new(b311)
b375.Size=UDim2.new(1,0,1,0)
b375.BackgroundColor3=Color3.fromRGB(255,255,255)
b375.BackgroundTransparency=0.92
b375.BorderSizePixel=0
b375.Parent=b373

local b376=Instance.new(b319)
b376.CornerRadius=UDim.new(0,24)
b376.Parent=b375

local b377=Instance.new(b320)
b377.Color=Color3.fromRGB(255,255,255)
b377.Transparency=0.75
b377.Thickness=1.5
b377.Parent=b373

local b378=Instance.new(b321)
b378.Size=UDim2.new(1,-20,0,36)
b378.Position=UDim2.new(0,10,0,12)
b378.BackgroundTransparency=1
b378.Font=Enum.Font[b323]
b378.Text=b336
b378.TextColor3=Color3.fromRGB(0,0,0)
b378.TextSize=24
b378.Parent=b373

local b379=Instance.new(b311)
b379.Size=UDim2.new(0,240,0,30)
b379.Position=UDim2.new(0.5,-120,0,70)
b379.BackgroundTransparency=1
b379.Parent=b373

local b380={}
local b381=18
local b382=30
local b383=7
for b384=1,b383 do
    local b385=Instance.new(b311)
    b385.Size=UDim2.new(0,b381,0,b381)
    b385.Position=UDim2.new(0,(b384-1)*b382+(240-b383*b382)/2,0.5,-b381/2)
    b385.BackgroundColor3=Color3.fromRGB(180,180,180)
    b385.BackgroundTransparency=0.4
    b385.BorderSizePixel=0
    b385.Parent=b379
    local b386=Instance.new(b319)
    b386.CornerRadius=UDim.new(1,0)
    b386.Parent=b385
    b380[b384]=b385
end

local b387=Instance.new(b326)
b387.Size=UDim2.new(0,240,0,40)
b387.Position=UDim2.new(0.5,-120,0,65)
b387.BackgroundTransparency=1
b387.Text=""
b387.Font=Enum.Font.Gotham
b387.TextSize=1
b387.TextColor3=Color3.fromRGB(0,0,0)
b387.PlaceholderText=""
b387.ClearTextOnFocus=false
b387.TextXAlignment=Enum.TextXAlignment.Center
b387.Parent=b373
b387:CaptureFocus()

local b388=Instance.new(b321)
b388.Size=UDim2.new(1,-20,0,20)
b388.Position=UDim2.new(0,10,0,132)
b388.BackgroundTransparency=1
b388.Font=Enum.Font.Gotham
b388.Text=""
b388.TextColor3=Color3.fromRGB(255,69,58)
b388.TextSize=14
b388.TextTransparency=1
b388.Parent=b373

local b389=Instance.new(b329)
b389.Size=UDim2.new(0,120,0,36)
b389.Position=UDim2.new(0.5,-60,0,160)
b389.BackgroundColor3=Color3.fromRGB(0,122,255)
b389.BackgroundTransparency=0.15
b389.BorderSizePixel=0
b389.Text=b337
b389.Font=Enum.Font[b323]
b389.TextColor3=Color3.fromRGB(255,255,255)
b389.TextSize=16
b389.Parent=b373

local b390=Instance.new(b319)
b390.CornerRadius=UDim.new(0,12)
b390.Parent=b389

local b391=Instance.new(b311)
b391.Size=UDim2.new(1,0,1,0)
b391.BackgroundTransparency=1
b391.Visible=false
b391.Parent=b369

local b392=Instance.new(b321)
b392.Size=UDim2.new(0,300,0,50)
b392.Position=UDim2.new(0.5,-150,0.3,-25)
b392.BackgroundTransparency=1
b392.Font=Enum.Font[b323]
b392.Text=b338
b392.TextColor3=Color3.fromRGB(255,255,255)
b392.TextSize=40
b392.Parent=b391

local b393=Instance.new(b321)
b393.Size=UDim2.new(0,300,0,30)
b393.Position=UDim2.new(0.5,-150,0.4,-15)
b393.BackgroundTransparency=1
b393.Font=Enum.Font.Gotham
b393.Text=b339
b393.TextColor3=Color3.fromRGB(220,220,220)
b393.TextSize=18
b393.Parent=b391

local function b394(b395,b396,b397,b398,b399)
    local b400=b349.new(b398,b397,Enum.EasingDirection.Out,0,false,b399 or 0)
    local b401=b364:Create(b395,b400,b396)
    b401:Play()
    return b401
end

local function b402(b403)
    b403.Size=UDim2.new(0,340,0,0)
    b403.Position=UDim2.new(0.5,-170,0.4,0)
    b394(b403,{Size=UDim2.new(0,340,0,210)},Enum.b350.b353,0.9)
end

local function b404()
    local b405=b373.Position
    local b406=6
    local b407=4
    local b408=0.05
    for b409=1,b407 do
        local b410=(b409%2==0)and b406 or -b406
        b394(b373,{Position=UDim2.new(0.5,-170+b410,0.4,-105)},Enum.b350.b354,b408)
        wait(b408)
    end
    b394(b373,{Position=b405},Enum.b350.b354,0.1)
end

local function b411(b412)
    for b413,b414 in ipairs(b380)do
        if b413<=b412 then
            b394(b414,{BackgroundColor3=Color3.fromRGB(0,122,255),BackgroundTransparency=0.1},Enum.b350.b354,0.15)
        else
            b394(b414,{BackgroundColor3=Color3.fromRGB(180,180,180),BackgroundTransparency=0.4},Enum.b350.b354,0.15)
        end
    end
end

local function b415()
    for _,b416 in ipairs(b380)do
        b394(b416,{BackgroundColor3=Color3.fromRGB(52,199,89),BackgroundTransparency=0},Enum.b350.b354,0.2)
    end
    wait(0.3)
    b373:TweenSizeAndPosition(
        UDim2.new(0,0,0,0),
        UDim2.new(0.5,0,0.4,0),
        Enum.b351.In,
        Enum.b350.b355,
        0.4,
        true
    )
    wait(0.4)
    b391.Visible=true
    b373.Visible=false
    b370.Visible=false
    b392.TextTransparency=1
    b393.TextTransparency=1
    b394(b392,{TextTransparency=0,Position=UDim2.new(0.5,-150,0.25,-25)},Enum.b350.b353,1.2)
    b394(b393,{TextTransparency=0},Enum.b350.b354,0.5)
    wait(4)
    b369:Destroy()
end

local function b417()
    b388.TextTransparency=0
    b388.Text=b340
    b404()
    b394(b388,{TextTransparency=1},Enum.b350.b354,1.5,0.5)
end

local b418=b335
local b419=false

local function b420(b421)
    if b421==b418 and #b421==b383 and not b419 then
        b419=true
        b411(#b421)
        b415()
    elseif #b421==b383 and b421~=b418 and not b419 then
        b419=true
        b417()
        wait(2)
        b387.Text=""
        b411(0)
        b419=false
        b387:CaptureFocus()
    else
        b419=false
    end
end

b387:GetPropertyChangedSignal(b344):Connect(function()
    local b422=b387.Text
    if #b422>b383 then
        b387.Text=string.sub(b422,1,b383)
        return
    end
    b411(#b422)
    if #b422==b383 then
        b420(b422)
    else
        if b388.TextTransparency<1 then
            b394(b388,{TextTransparency=1},Enum.b350.b354,0.2)
        end
        b419=false
    end
end)

b389.MouseButton1Click:Connect(function()
    local b422=b387.Text
    if #b422>0 then
        b420(b422)
    end
end)

b370.InputBegan:Connect(function(b423)
    if b423.UserInputType==Enum.UserInputType.MouseButton1 or b423.UserInputType==Enum.UserInputType.Touch then
        b387:CaptureFocus()
    end
end)

b365.TextBoxFocused:Connect(function(b424)
    if b424==b387 then
        b394(b373,{Position=UDim2.new(0.5,-170,0.25,-105)},Enum.b350.b354,0.3)
    end
end)

b365.TextBoxFocusReleased:Connect(function(b424)
    if b424==b387 then
        b394(b373,{Position=UDim2.new(0.5,-170,0.4,-105)},Enum.b350.b354,0.3)
    end
end)

b373.Size=UDim2.new(0,340,0,0)
b373.Position=UDim2.new(0.5,-170,0.4,50)
b402(b373)

local b364=game:GetService(b302)
local b425=game:GetService(b358)

local b426=Instance.new(b308)
b426.Name=b359
b426.ResetOnSpawn=false
b426.Parent=b425

local b427=Instance.new(b315)
b427.Size=UDim2.new(0,140,0,140)
b427.Position=UDim2.new(0.5,-70,0.5,-70)
b427.BackgroundTransparency=1
b427.Image=b342
b427.ImageTransparency=1
b427.Parent=b426

b427.Position=UDim2.new(0.5,-70,0.5,100)
local b428=b364:Create(b427,b349.new(1.0,Enum.b350.b354,Enum.b351.b352,0,false),{
    ImageTransparency=0,
    Position=UDim2.new(0.5,-70,0.5,50)
})
b428:Play()

b428.Completed:Connect(function()
    wait(1.0)
    local b429=b364:Create(b427,b349.new(0.3,Enum.b350.b354,Enum.b351.In,0,false),{
        ImageTransparency=1,
        Position=UDim2.new(0.5,-70,0.5,-50)
    })
    b429:Play()
    b429.Completed:Connect(function()
        b426:Destroy()
    end)
end)