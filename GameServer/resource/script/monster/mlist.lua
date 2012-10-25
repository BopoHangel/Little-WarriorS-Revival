--此文件在GameServer全部地图初始化完成后, 执行一次


function PM(monster)
    local filename = "script/monster/"..monster..".lua"
    LG("init", "execute monster placement", filename)
    dofile(GetResPath(filename))
end

local m = SetCurMap("garner")

if m==1 then --如果此服务器上地图存在

    PM("baiyinlinqu")
    PM("lietinglinqu")
    PM("baiyinyuchang")
    PM("jianazuixiayuchang")
    PM("haifengyuchang")
    PM("jianayunshi")
    PM("bycduizhang")
    PM("bycdaoguai")
--    PM("baiyinhuoji")
--    PM("baiyinxieemilu")
--    PM("xuerenbaiyin")

    LG("init", "garnerscript release monster ended!")
end


m = SetCurMap("magicsea")
if m==1 then --如果此服务器上地图存在
    
    PM("mingshapaota")
    PM("monv480")
    PM("shalanyuchang")
    PM("mingshayuchang")
    PM("shalanlinqu")
    PM("shalanmingshaxian")
    PM("shaxie")
    PM("shalanyunshi")
    PM("slcdaoguai")
    PM("slcduizhang")
    PM("WriteSheepKiper")
    PM("JinNiuKiper")
    PM("ShuangZiKiper")
    PM("juxieKiper")
--    PM("shalanhuoji")
--    PM("shalanxieemilu")
--    PM("xuerenshalan")
--    PM("huojishalan")

    LG("init", "magicseascript release monster ended!")
end

m = SetCurMap("darkblue")
if m==1 then --如果此服务器上地图存在

    PM("binglanglinqu")
    PM("binglangyuchang")
    PM("binglangyunshi")
    PM("chundaoguai")
    PM("qiudaoguai")
    PM("xiadaoguai")
    PM("blbdaoguai")
    PM("blbduizhang")
   -- PM("qiuxiang")
--    PM("binglanghuoji")
--    PM("binglangxieemilu")
--    PM("xuerenbinglang")
  
    LG("init", "darkbluescript release monster ended!")
end

m = SetCurMap("lonetower")
if m==1 then --如果此服务器上地图存在

    PM("jimozhita")

    LG("init", "lonetowerscript release monster ended!")
end

m = SetCurMap("secretgarden")
if m==1 then --如果此服务器上地图存在

    PM("HY_RedSide")

    LG("init" , "secretgarden red team script release monster ended!")
end

m = SetCurMap("secretgarden")
if m==1 then --如果此服务器上地图存在

    PM("HY_BlueSide")

    LG("init" , "secretgarden blue team script release monster ended!")
end

m = SetCurMap("secretgarden")
if m==1 then --如果此服务器上地图存在

    PM("PK_Monsters")

    LG("init" , "secretgarden neutral script release monster ended!")
end

m = SetCurMap("eastgoaf")
if m==1 then --如果此服务器上地图存在
    PM("haidisuidao")
    PM("xiashuidao")
    PM("heilong1")
    PM("heilong2")
    LG("init", "Eastgoafscript release monster ended!")
end

m = SetCurMap("guildwar")
if m==1 then --如果此服务器上地图存在
    PM("haidaohaijun_side")
    
    LG("init", "haidaohaijun_side script monster spawn end!")
end


m = SetCurMap("guildwar2")
if m==1 then --如果此服务器上地图存在
    PM("haidaohaijun_side2")
    
    LG("init", "haidaohaijun_side2 script monster spawn ended!")
end

m = SetCurMap("guildwar")
if m==1 then --如果此服务器上地图存在
    PM("yeguai_guildwar")
    
    LG("init", "yeguai_guildwar script monster spawn end!")
end

m = SetCurMap("guildwar2")
if m==1 then --如果此服务器上地图存在
    PM("yeguai_guildwar2")
    
    LG("init", "yeguai_guildwar2 script monster spawn ended!")
end

m = SetCurMap("07xmas2")
if m==1 then --如果此服务器上地图存在
    PM("xieeshengdan")
    
    LG("init", "xieeshengdan脚本放怪结束!")
end
