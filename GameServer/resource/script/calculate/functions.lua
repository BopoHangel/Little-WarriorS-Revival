print("‡ Јаг§Є  Functions.lua")

MFRADIX=100 
CRTRADIX=100 
ATKER=0 
DEFER=1 

count_haidao = 0
count_haijun = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0 
create_boss_hj = 0
create_boss_hd = 0


count_haijun2 = 0
count_haidao2 = 0
five_seconds2 = 0
second_five_seconds2 = 0
time_can_setmonster2 = 0
time_can_setnvsheng2 = 0
check_need_show2 = 0
create_boss_hj2 = 0
create_boss_hd2 = 0

function get_repatriate_city_guildwar(role)

  local map_name_role_guildwar = GetChaMapName ( role )
  return map_name_role_guildwar

end

function get_repatriate_city_guildwar2(role)

  local map_name_role_guildwar2 = GetChaMapName ( role )
  return map_name_role_guildwar2

end
---------------------------------------------------	
---------------------------------------------------



atk_statecheck = {} 
def_statecheck = {} 

function Reset_Statecheck () 
	for i = 1 , 100 , 1 do 
		atk_statecheck[i] = 0 
		def_statecheck[i] = 0 
	end 
end 



function EightyLv_ExpAdd ( cha , expadd ) 

	if ValidCha (cha) ==1 then					
		if ChaIsBoat ( cha ) == 0 then		
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "\194\251 \241\235\232\248\234\238\236 \228\224\235\229\234\238 \247\242\238\225 \239\238\235\243\247\232\242\252 \238\239\251\242" )	
				--SystemNotice ( TurnToCha(cha) , "Вы слишком далеко чтоб получить опыт" )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
end 

function CreatChaSkill ( role ) 
end 


function CheckJobLegal ( job ) 
	local check_job = 1 
	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then 
		check_job = 0 
	end 
	return check_job 
end 

function RemoveYS( role )
	RemoveState( role , STATE_YS )					
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )				
	RemoveState( role , STATE_MB )					
	RemoveState( role , STATE_ZZZH )			
	RemoveState( role , STATE_SYNZ)				
	RemoveState( role , STATE_SDBZ )				
	RemoveState( role , STATE_TJ )					
	RemoveState( role , STATE_SJ )					
	RemoveState( role , STATE_JNJZ )				
	RemoveState( role , STATE_GJJZ )				
	RemoveState( role , STATE_BDJ )					
	RemoveState( role , STATE_XN )					
	RemoveState( role , STATE_NT )					
	RemoveState( role , STATE_DIZ )					
	RemoveState( role , STATE_SWCX )				
	RemoveState( role , STATE_JSDD )			
	RemoveState( role , STATE_HYMH )			
	RemoveState( role , STATE_HLKJ )				
	RemoveState( role , STATE_HLLM )				
	RemoveState( role , STATE_CRXSF )				
	RemoveState( role , STATE_BlackHX )				
	RemoveState( role , STATE_HLKJ )				
end 

function Rem_State_StarUnnormal ( role ) 
	RemoveState( role , STATE_KUANGZ )					  
	RemoveState( role , STATE_QUANS )				 
	RemoveState( role , STATE_QINGZ )					
end 
function Rem_State_NOSEA ( role ) 
	RemoveState( role , STATE_KB )					
	RemoveState( role , STATE_XLZH )					
	RemoveState( role , STATE_PKJSYS )				
	RemoveState( role , STATE_PKSFYS)				
	RemoveState( role , STATE_TSHD )				
	RemoveState( role , STATE_FZLZ )					
	RemoveState( role , STATE_PKZDYS )					
	RemoveState( role , STATE_PKKBYS )					
	RemoveState( role , STATE_YSLLQH )				
	RemoveState( role , STATE_YSMJQH )				
	RemoveState( role , STATE_YSLQQH )					
	RemoveState( role , STATE_YSTZQH )					
	RemoveState( role , STATE_YSJSQH )					
	RemoveState( role , STATE_DENGLONG )					
	RemoveState( role , STATE_YSMspd )				
	RemoveState( role , STATE_PKSBYS )				
	RemoveState( role , STATE_KUANGZ )				
	RemoveState( role , STATE_QUANS )				
	RemoveState( role , STATE_QINGZ )				
	RemoveState( role , STATE_CJBBT )				
	RemoveState( role , STATE_JRQKL )				
	RemoveState( role , STATE_KALA )	
	RemoveState( role , STATE_CZZX )
	RemoveState( role , STATE_JLFT1 )				
	RemoveState( role , STATE_JLFT2 )				
	RemoveState( role , STATE_JLFT3 )				
	RemoveState( role , STATE_JLFT4 )				
	RemoveState( role , STATE_JLFT5 )				
	RemoveState( role , STATE_JLFT6 )				
	RemoveState( role , STATE_JLFT7 )				
	RemoveState( role , STATE_JLFT8 )				
end 
function SetCharaAttr(a,b,c) 
	local x,y=b,c 
	local z=math.floor(a) 
	SetChaAttr(x,y,z) 
end 

function Attr_ap(a) 
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a)
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	local exp=GetChaAttr(a,ATTR_CEXP) 
	return exp 
end 

function Lv(a)
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) 
	return lv 
end 

function Hp(a)
	local hp=GetChaAttr(a,ATTR_HP) 
	return hp 
end 

function Mxhp(a)
	local mxhp=GetChaAttr(a,ATTR_MXHP) 
	return mxhp 
end 

function MxhpSa(a)
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX  
	return mxhpsa 
end 

function MxhpSb(a)
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) 
	return mxhpsb 
end 

function MxhpIa(a)
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX 
	return mxhpia 
end 

function MxhpIb(a)
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) 
	return mxhpib 
end 

function Sp(a)
	local sp=GetChaAttr(a,ATTR_SP) 
	return sp 
end 

function Mxsp(a)
	local mxsp=GetChaAttr(a,ATTR_MXSP) 
	return mxsp 
end 

function MxspSa(a)
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  
	return mxspsa 
end 

function MxspSb(a)

	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) 
	return mxspsb 
end 

function MxspIa(a)
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX 
	return mxspia 
end 

function MxspIb(a)
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP)
	return mxspib 
end 

function Mnatk(a)
	local mnatk=GetChaAttr(a,ATTR_MNATK) 
	return mnatk 
end 

function MnatkSa(a)
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX
	return mnatksa 
end 

function MnatkSb(a)
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK)
	return mnatksb 
end 

function MnatkIa(a)
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX
	return mnatkia 
end 

function MnatkIb(a)
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK)
	return mnatkib 
end 

function Mxatk(a)
	local mxatk=GetChaAttr(a,ATTR_MXATK) 
	return mxatk 
end 

function MxatkSa(a)
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX
	return mxatksa 
end 

function MxatkSb(a) 
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) 
	return mxatksb 
end 

function MxatkIa(a)
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX 
	return mxatkia 
end 

function MxatkIb(a)
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) 
	return mxatkib 
end 

function Def(a)
	local def=GetChaAttr(a,ATTR_DEF) 
	return def 
end 

function DefSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  
	return defsa 
end 

function DefSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF) 
	return defsb 
end 

function DefIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX 
	return defia 
end 

function DefIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) 
	return defib 
end 

function Resist(a)
	local def=GetChaAttr(a,ATTR_PDEF) 
	return def 
end 

function ResistSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  
	return defsa 
end 

function ResistSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) 
	return defsb 
end 

function ResistIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX 
	return defia 
end 

function ResistIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) 
	return defib 
end 

function Hit(a)
	local hit=GetChaAttr(a,ATTR_HIT) 
	return hit 
end 

function HitSa(a)
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   
	return hitsa 
end 

function HitSb(a)
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT)
	return hitsb 
end 

function HitIa(a)
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX 
	return hitia 
end 

function HitIb(a)
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) 
	return hitib 
end 

function Flee(a)
	local flee=GetChaAttr(a,ATTR_FLEE) 
	return flee 
end 

function FleeSa(a)
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  
	return fleesa 
end 

function FleeSb(a)
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) 
	return fleesb 
end 

function FleeIa(a)
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX
	return fleeia 
end 

function FleeIb(a)
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE)
	return fleeib 
end 

function Mf(a)
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX 
	return mf 
end 

function MfSa(a)
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX 
	return mfsa 
end 

function MfSb(a)
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF)
	return mfsb 
end 

function MfIa(a)
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX 
	return mfia 
end 

function MfIb(a)
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) 
	return mfib 
end 

function Crt(a)
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX
	return crt 
end 

function CrtSa(a)
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  
	return crtsa 
end 

function CrtSb(a)
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT)
	return crtsb 
end 

function CrtIa(a)
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX 
	return crtia 
end 

function CrtIb(a)
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT)
	return crtib 
end 

function Hrec(a)
	local hrec=GetChaAttr(a,ATTR_HREC) 
	return hrec 
end 

function HrecSa(a)
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX 
	return hrecsa 
end 

function HrecSb(a)
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) 
	return hrecsb 
end 

function HrecIa(a)
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX 
	return hrecia 
end 

function HrecIb(a)
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) 
	return hrecib 
end 

function Srec(a)
	local srec=GetChaAttr(a,ATTR_SREC) 
	return srec 
end 

function SrecSa(a)
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  
	return srecsa 
end 

function SrecSb(a)
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) 
	return srecsb 
end 

function SrecIa(a)
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX 
	return srecia 
end 

function SrecIb(a)
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) 
	return srecib 
end 

function Aspd(a)
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  
	return aspd 
end 

function AspdSa(a)
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    
	return aspdsa 
end 

function AspdSb(a)
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD)
	return aspdsb 
end 

function AspdIa(a)
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX 
	return aspdia 
end 

function AspdIb(a)
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) 
	return aspdib 
end 

function Adis(a)
	local adis=GetChaAttr(a,ATTR_ADIS) 
	return adis 
end 

function AdisSa(a)
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX  
	return adissa 
end 

function AdisSb(a)
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS)
	return adissb 
end 

function AdisIa(a)
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX 
	return adisia 
end 

function AdisIb(a)
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) 
	return adisib 
end 

function Mspd(a) 
	local mspd=GetChaAttr(a,ATTR_MSPD) 
	return mspd 
end 

function MspdSa(a)
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   
	return mspdsa 
end 
function MspdSb(a)
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) 
	return mspdsb 
end 
function MspdIa(a)
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX 
	return mspdia 
end 

function MspdIb(a)
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) 
	return mspdib 
end 

function Col(a)
	local col=GetChaAttr(a,ATTR_COL) 
	return col 
end 

function ColSa(a) 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  
	return colsa 
end 

function ColSb(a) 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) 
	return colsb 
end 

function ColIa(a) 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX 
	return colia 
end 

function ColIb(a) 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) 
	return colib 
end 

function Str(a) 
	local str=GetChaAttr(a,ATTR_STR) 
	return str 
end 

function StrSa(a) 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   
	return strsa 
end 

function StrSb(a) 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR)
	return strsb 
end 

function StrIa(a)
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX 
	return stria 
end 

function StrIb(a) 
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) 
	return strib 
end 

function Dex(a)
	local dex=GetChaAttr(a,ATTR_DEX) 
	return dex 
end 

function DexSa(a)
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  
	return dexsa 
end 

function DexSb(a)
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) 
	return dexsb 
end 

function DexIa(a) 
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX 
	return dexia 
end 

function DexIb(a)
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX)
	return dexib 
end 

function Agi(a) 
	local agi=GetChaAttr(a,ATTR_AGI) 
	return agi 
end 

function AgiSa(a)
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  
	return agisa 
end 

function AgiSb(a)
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI)
	return agisb 
end 

function AgiIa(a)
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX 
	return agiia 
end 

function AgiIb(a)
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) 
	return agiib 
end 

function Con(a)
	local con=GetChaAttr(a,ATTR_CON) 
	return con 
end 

function ConSa(a)
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  
	return consa 
end 

function ConSb(a)
	local consb=GetChaAttr(a, ATTR_STATEV_CON) 
	return consb 
end 

function ConIa(a)
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX 
	return conia 
end 

function ConIb(a)
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) 
	return conib 
end 

function Sta(a)
	local sta=GetChaAttr(a,ATTR_STA) 
	return sta 
end 

function StaSa(a)
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX 
	return stasa 
end 

function StaSb(a)
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) 
	return stasb 
end 

function StaIa(a)
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX 
	return staia 
end 

function StaIb(a)
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) 
	return staib 
end 

function Luk(a)
	local luk=GetChaAttr(a,ATTR_LUK) 
	return luk 
end 

function LukSa(a)
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   
	return luksa 
end 

function LukSb(a)
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) 
	return luksb 
end 

function LukIa(a)
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX 
	return lukia 
end 

function LukIb(a)
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) 
	return lukib 
end 




function BSMxhp(a) 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) 
	return mxhp_final 
end 


function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) 
	return sp_final 
end 

function BSMxsp(a) 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) 
	return mxsp_final 
end 

function BSMnatk(a) 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) 
	return mnatk_final 
end 

function BSMxatk(a) 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) 
	return mxatk_final 
end 

function BSDef(a) 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) 
	return def_final 
end 

function BSResist(a) --[[ИЎ»щ±ѕї№РФ]]--
   --LuaPrint("Obtain player attribute bsresist") 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) 
   return resist_final 
end 


function BSHit(a) 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) 
	return hit_final 
end 

function BSFlee(a) 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  
	return flee_final 
end 

function BSMf(a) 
	local bsmf=GetChaAttr(a,ATTR_BMF) 
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) 
	return mf_final 
end 

function BSCrt(a) 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) 
	return crt_final 
end 

function BSHrec(a) 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) 
	return hrec_final 
end 

function BSSrec(a) 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) 
	return srec_final 
end 

function BSAspd(a) 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final=( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) 
	return aspd_final 
end 

function BSAdis(a) 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a)
	return adis_final 
end 

function BSMspd(a) 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  
	return mspd_final 
end 

function BSCol(a) 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) 
	return col_final 
end 

function BSStr(a) 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) 
	return str_final 
end 

function BSDex(a) 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) 
	return dex_final 
end 

function BSAgi(a) 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a)
	return agi_final 
end 

function BSCon(a) 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) 
	return con_final 
end 

function BSSta(a) 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) 
	return sta_final 
end 

function BSLuk(a) 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a)
	return luk_final 
end 



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Ship_BSMnatk ( ship_role )						
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 
	
function Ship_BSAdis ( ship_role )							
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role ) 							
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 


function Ship_BSResist ( ship_role ) 						
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_MnatkSa ( cha_role )					
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )					
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )							
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 



function Ship_CspdSa ( cha_role )							
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 



function Ship_AspdSa ( cha_role ) 						
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 


function Ship_AspdSb ( cha_role ) 						
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 




function Ship_CrangeSa ( cha_role ) 						
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 




function Ship_DefSa ( cha_role ) 							
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 



function Ship_ResistSa ( cha_role ) 						
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 



function Ship_MxhpSa ( cha_role ) 						
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 



function Ship_HrecSa ( cha_role ) 							
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 



function Ship_SrecSa ( cha_role ) 							
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 



function Ship_MspdSa ( cha_role ) 								
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 							
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 



function Ship_MxspSa ( cha_role ) 									
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

--------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_Mnatk_final ( cha_role , ship_role )							
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 


	
function Ship_Adis_final ( cha_role , ship_role )							
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )									
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 




function Ship_Cspd_final ( cha_role , ship_role )							
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 



function Ship_Aspd_final ( cha_role , ship_role ) 						
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 



function Ship_Crange_final (  cha_role , ship_role ) 							
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 




function Ship_Def_final ( cha_role , ship_role ) 							
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 



function Ship_Resist_final (  cha_role ,ship_role ) 							
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 



function Ship_Mxhp_final (  cha_role ,ship_role ) 							
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 


function Ship_Srec_final (  cha_role ,ship_role ) 							
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 




function Ship_Mspd_final (  cha_role ,ship_role ) 							
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 



function Ship_Mxsp_final (  cha_role ,ship_role ) 									
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 

function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 



function Dis(a,b,c,d) 
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else  
      return 
   end 

	return division 
end 


function Hp_Dmg(role,dmg)

	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.25	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" or map_name_ATKER == "bountypk" or map_name_DEFER == "bountypk" or map_name_ATKER == "darkblue2" or map_name_DEFER == "darkblue2" or map_name_ATKER == "PKmap" or map_name_DEFER == "PKmap" or map_name_ATKER == "starena33" or map_name_DEFER == "starena33" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end	
	
	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "\212\229\255 \224\234\242\232\226\232\240\238\226\224\235\224 \231\224\249\232\242\243. \211\240\238\237 \238\242 \239\240\238\242\232\226\237\232\234\224 \239\238\227\235\238\249\255\229\242\241\255" )
				--SystemNotice ( role , "Фея активировала защиту. Урон от противника поглощяется" )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				  sp_change =  sp_change*1.5
				SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \215\184\240\237\238\227\238 \196\240\224\234\238\237\224")  
				--SystemNotice ( role , "Получен эффект от доспеха Чёрного Дракона")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
		
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
				SystemNotice ( role , "\207\238\235\243\247\229\237\238 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \193\238\227\232\237\232.")
				--SystemNotice ( role , "Получено благославление Богини.")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\207\238\235\243\247\229\237 \253\244\244\229\234\242 \238\242 \228\238\241\239\229\245\224 \213\224\238\241\224. \211\240\238\237 \243\236\229\237\252\248\229\237" )
					--SystemNotice ( role , "Получен эффект от доспеха Хаоса. Урон уменьшен" )
		
				end
			end	
		end
	
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
end 


function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 
	

function Sp_Red(role,sp_reduce) 
	local sp = Sp(role) - sp_reduce 
	SetCharaAttr(sp, role, ATTR_SP ) 
end 

function Coefficientadjust_Steady_atk()	
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a)
	local x,y,m,n = Coefficientadjust_Steady_atk() 
	local sum=1 
	local atkstep={} 
	local atk={}
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end 
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	return atk,sum 
end 
	
	
function CheckSteady_atk(a) 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	return Mnatk_fianl(a) 
end 
	
	
function Lefthand_Atk ( role , atk )												                     
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 
	
function Check_Smyb ( role )													
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 




function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )			
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
			LG ( "getshipid_err" , " get a nil shipid " ) 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				
	if IsPlayer ( role ) == 0 then				
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			
		AttrRecheck ( role ) 
	else								
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

----------------------------------------------------------------------------------------------------------------------------------------------------------
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MNatk","Ship level is lower than 1")
		LG("Boat_plus_MNatk","1")
		return mnatk
	end
	
	if Lv > 100 then
		LG("Boat_plus_MNatk","Ship level higher than 100")
		LG("Boat_plus_MNatk","Ship level lower than 2")

		return mnatk
	end
	
	if Lv < 60 then
		LG ( "Boat_plus_MNatk" , mnatk ) 
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk
		LG("Boat_plus_MNatk","Ship level smaller than 3")

		return mnatk_new
	end
	
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		LG("Boat_plus_MNatk","Ship level lower than 4")

		return mnatk_new
	end
	

end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MXatk","Ship level is lower than 1")
		return mxatk_new
	end
	
	if Lv > 100 then
		LG("Boat_plus_MXatk","Ship level higher than 100")
		return mxatk_new
	end
	
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
	

end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	
	if  Lv < 1 then
		LG("Boat_plus_def","Ship level is lower than 1")
		return def
	end
	
	if Lv > 100 then
		LG("Boat_plus_def","Ship level higher than 100")
		return def
	end
	
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		LG ( "Boat_plus_def","def_new1 = " ,  def_new ) 
		return def_new

	end
	
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		LG ( "Boat_plus_def","def_new2 = " ,  def_new ) 
		return def_new
	end
	

end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_Mxhp","Ship level is lower than 1")
		return Mxhp
	end
	
	if Lv > 100 then
		LG("Boat_plus_Mxhp","Ship level higher than 100")
		return Mxhp
	end
	
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0

	if Lv < 1 then
		LG("Boat_plus_Mspd","Ship level is lower than 1")
		return Mspd
	end
	
	if Lv >100 then
		LG("Boat_plus_Mspd","Ship level higher than 100")
		return Mspd
	end
	
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end

	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end

end


function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then 
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 

end


function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 

    return 0 
end 


function is_friend(cha1, cha2) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 

    end
	   
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 

			end 
		end 

		if Map_type == 4 then									
			if Is_NormalMonster (cha1) == 1 then						
				if Is_NormalMonster (cha2) == 1 then 
					return 1 
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
		end 


	    if  Map_type ==3 then									 
		    local team = is_teammate(cha1, cha2) 

		    if team == 1 then 
		        return 1 
		    else 
			return 0 
		    end
		   
	    end

	    if cha1 == 0 or cha2 == 0 then						
	        return 0 
	    end 
	    if Map_type == 2 then									
		if Is_NormalMonster (cha1) == 1 then						
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end

	    end 
	    if Map_type == 5 then								
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		if guild_side_1 == guild_side_2 then
			return 1 
	        else
		        return 0
		end

	    end 

	    return friend_target 
 end 
 
function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  

  return 1
  
end


function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end


function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )

	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
	
		return MaxDmg
	else
	
		return MinDmg
	end
end


function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end



function after_player_kill_player( ATKER, DEFER )
	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local MGPK_MapNameNum = 16
	local MGPK_MapName = {}
	
	MGPK_MapName[0] = "puzzleworld"
	MGPK_MapName[1] = "puzzleworld2"
	MGPK_MapName[2] = "abandonedcity"
	MGPK_MapName[3] = "abandonedcity2"
	MGPK_MapName[4] = "abandonedcity3"
	MGPK_MapName[5] = "darkswamp"
	MGPK_MapName[6] = "hell"
	MGPK_MapName[7] = "hell2"
	MGPK_MapName[8] = "hell3"
	MGPK_MapName[9] = "hell4"
	MGPK_MapName[10] = "hell5"
	MGPK_MapName[11] = "PKmap"
	MGPK_MapName[12] = "bountypk"
	MGPK_MapName[13] = "07xmas2"
	MGPK_MapName[14] = "darkblue"
	MGPK_MapName[15] = "darkblue2"
	MGPK_MapName[16] = "starena33"

	
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	
	local ATKER_Get1_LD = 0
	local DEFER_Get1_Ry = 0
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 15 and Lv_dif > -15 then
			ATKER_Get1_LD = 1
			DEFER_Get1_Ry = -1
			SystemNotice ( ATKER ,"\194\251 \237\224\237\229\241\235\232 \239\238\240\224\230\229\237\232\229 \239\240\238\242\232\226\237\232\234\243 \232 \239\238\235\243\247\224\229\242\229 1 \245\224\238\241 \239\238\232\237\242 " )
			SystemNotice ( DEFER ,"\194\251 \239\238\242\229\240\239\229\235\232 \239\238\240\224\230\229\237\232\229 \238\242 \239\240\238\242\232\226\237\232\234\224 \232 \242\229\240\255\229\242\229 1 \238\247\234\238 \247\229\241\242\232 " )
			--SystemNotice ( ATKER ,"Вы нанесли поражение противнику и получаете 1 хаос поинт " )
			--SystemNotice ( DEFER ,"Вы потерпели поражение от противника и теряете 1 очко чести " )
		end
		
		if Lv_dif >= 15 then
			ATKER_Get1_LD = 0
			DEFER_Get1_Ry = 0

			SystemNotice ( ATKER , "\211\225\232\235 \237\243\225\224? \213\224\238\241 \239\238\232\237\242\251 \237\229 \239\238\235\243\247\232\235. " )
			SystemNotice ( DEFER , "\211\225\232\235 \225\224\242\252\234\224? \206\247\234\232 \247\229\241\242\232 \237\229 \239\238\242\229\240\255\235. " )			
			--SystemNotice ( ATKER , "Убил нуба? Хаос поинты не получил. " )
			--SystemNotice ( DEFER , "Убил батька? Очки чести не потерял. " )
		end
		
		if Lv_dif <= -14 then
			ATKER_Get1_LD = 2
			DEFER_Get1_Ry = -2
			SystemNotice ( ATKER ,"\211\225\232\235 \225\224\242\255\237\254? \207\238\235\243\247\232\235 2 \245\224\238\241 \239\238\232\237\242\224 " )
			SystemNotice ( DEFER ,"\211\225\232\235 \237\243\225\224\241? \207\238\242\229\240\255\235 2 \238\247\234\224 \247\229\241\242\232 " )
			--SystemNotice ( ATKER ,"Убил батяню? Получил 2 хаос поинта " )
			--SystemNotice ( DEFER ,"Убил нубас? Потерял 2 очка чести " )
		end

		local ATKER_LD = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ1 = GetChaItem2 ( DEFER , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		local	FightingPoint = FightingPoint + ATKER_Get1_LD
		local	HonorPoint = HonorPoint + DEFER_Get1_Ry
		if ATKER == DEFER then
		ATKER_Get1_LD = ATKER_Get1_LD-1
end
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY,FightingPoint)
		SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR,HonorPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )

		MapCopyNotice ( map_copy , Notice_map )
	
	end
	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = " ["..atk_name.."] \243\225\232\235 \237\224\245\240\229\237 ["..def_name.."].["..atk_name.."] \240\243\235\232\242.\206\227\224 "
		--local Notice_all = " ["..atk_name.."] убил нахрен ["..def_name.."].["..atk_name.."] рулит.Ога "
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "darkblue2" or map_name_DEFER == "darkblue2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = " ["..atk_name.."] \231\224\234\232\228\224\235 \241\237\229\230\234\224\236\232 ["..def_name.."]\226 \213\224\238\241\229 \203\229\228\251\237\232.["..atk_name.."] \243\236\251\235 \240\243\234\232 ^_^ "
		--local Notice_all = " ["..atk_name.."] закидал снежками ["..def_name.."]в Хаосе Ледыни.["..atk_name.."] умыл руки ^_^ "
		Notice ( Notice_all )
	end


	if map_name_ATKER == "bountypk" or map_name_DEFER == "bountypk" then
		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		GiveItem ( ATKER , 0 , 7060, 1 , 4 )
	end
	if map_name_ATKER == "starena33" or map_name_DEFER == "starena33" then
		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		GiveItem ( ATKER , 0 , 7818, 1 , 4 )
	end
	
	if map_name_ATKER == "bountypk" or map_name_DEFER == "bountypk" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "\206\239\224\247\234\232 ["..atk_name.."] \241\235\232\235 ["..def_name.."].["..atk_name.."] \243 \240\243\235\255 ,\224 ["..def_name.."] \238\242\228\251\245\224\229\242 . "
		--local Notice_all = "Опачки ["..atk_name.."] слил ["..def_name.."].["..atk_name.."] у руля ,а ["..def_name.."] отдыхает . "
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "\210\243\246 \210\243\246 ["..atk_name.."] \231\224\234\232\228\224\235 \227\240\255\231\252\254 ["..def_name.."]."
		--local Notice_all = "Туц Туц ["..atk_name.."] закидал грязью ["..def_name.."]."
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "abandonedcity" or map_name_DEFER == "abandonedcity" or map_name_ATKER == "abandonedcity2" or map_name_DEFER == "abandonedcity2" or map_name_ATKER == "abandonedcity3" or map_name_DEFER == "abandonedcity3" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] \239\238\239\224\235 \226 \231\224\241\224\228\243 \225\224\237\228\229 \239\232\240\224\242\238\226 \226 \199\224\242\229\240\255\237\237\238\236 \227\238\240\238\228\229 \232 ["..atk_name.."] \229\227\238 \238\247\229\237\252 \231\235\238\241\242\237\238 \237\224\234\224\231\224\235."
		--local Notice_all = "["..def_name.."] попал в засаду банде пиратов в Затерянном городе и ["..atk_name.."] его очень злостно наказал."
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "darkblue" or map_name_DEFER == "darkblue" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "\205\224 \211\228\224\247\229 \234\242\238-\242\238 \234\238\227\238-\242\238 \243\225\232\235.["..atk_name.."] \231\224\239\232\235\232\235 ["..def_name.."] "
		--local Notice_all = "На Удаче кто-то кого-то убил.["..atk_name.."] запилил ["..def_name.."] "
		Notice ( Notice_all )
	end	
	
	if map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..atk_name.."] \231\224\239\232\235\232\235(\224) ["..def_name.."].\213\224\245\224\245\224 ["..def_name.."] \237\243\239\245=) . "
		--local Notice_all = "["..atk_name.."] запилил(а) ["..def_name.."].Хахаха ["..def_name.."] нупх=) . "
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "starena33" or map_name_DEFER == "starena33" then --Если эта карта где нужно захватывать флаг, то...
 		if id_char == DEFER then --Если ID носителя флага равен ID умершего игрока, то...
			local statelv = 1  --Уровень эффекта
			local statetime = 99999  --Время эффекта
			local atk_name = GetChaDefaultName ( ATKER ) --Ник убийцы
			local def_name = GetChaDefaultName ( DEFER ) --Ник убитого игрока
			RemoveState ( DEFER, 204 ) --Сбросить флаг на убитом игроке
			AddState ( ATKER, ATKER, 204, statelv, statetime ) --Добавить флаг убийце 
			Notice ("["..atk_name.."] жестоко покарал ["..def_name.."] и в догонку дал пинка ^^ ") --Вывести сообщение у кого флаг
		end
	end
	
	
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then
		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			SystemNotice ( ATKER ,"\211\225\232\235 \242\232\239\224 \238\247\234\232 \247\229\241\242\232 \237\224: "..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"\207\238\240\224\230\229\237\232\229! \207\238\242\229\240\255\237\238 \238\247\234\238\226 \247\229\241\242\232: "..ATKER_Get_Ry )			
			--SystemNotice ( ATKER ,"Убил типа очки чести на: "..ATKER_Get_Ry )
			--SystemNotice ( DEFER ,"Поражение! Потеряно очков чести: "..ATKER_Get_Ry )
		end
		
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			SystemNotice ( ATKER , "\211\225\232\235 \237\243\225\224? \206\247\234\232 \247\229\241\242\232 \237\229 \239\238\235\243\247\232\235 " )
			SystemNotice ( DEFER , "\211\225\232\235 \239\224\239\234\224? \206\247\234\232 \247\229\241\242\232 \237\229 \239\238\242\229\240\255\235 " )
			--SystemNotice ( ATKER , "Убил нуба? Очки чести не получил " )
			--SystemNotice ( DEFER , "Убил папка? Очки чести не потерял " )

		end
		
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			SystemNotice ( ATKER ,"\211\225\232\235 \239\224\239\234\243?. \207\238\235\243\247\232 \228\238\239\238\235\237\232\242\229\235\252\237\251\229 \238\247\234\232 \247\229\241\242\232: "..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"\211\225\232\235 \237\243\225? \207\238\242\229\240\255\237\238 \226 2 \240\224\231\224 \225\238\235\252\248\229 \238\247\234\238\226 \247\229\241\242\232: "..ATKER_Get_Ry )			
			--SystemNotice ( ATKER ,"Убил папку?. Получи дополнительные очки чести: "..ATKER_Get_Ry )
			--SystemNotice ( DEFER ,"Убил нуб? Потеряно в 2 раза больше очков чести: "..ATKER_Get_Ry )
		end

		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = "["..atk_name.."] \243\225\232\235 ["..def_name.."] \237\224 \224\240\229\237\229.["..atk_name.."] \234\240\243\242."
		--local Notice_map = "["..atk_name.."] убил ["..def_name.."] на арене.["..atk_name.."] крут."
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )


	end
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] \243\225\232\235 ["..atk_name.."] \226 \209\224\228\243 \221\228\229\235\255"
		--local Notice_all = "["..def_name.."] убил ["..atk_name.."] в Саду Эделя"
		Notice ( Notice_all )
	end
	
	local Item_WWZ = GetChaItem2 ( ATKER , 2 , 5803 )
	if ValidCha(Item_WWZ)== 0 then 
		return
	end
	local Kill_WWZ_Num = GetItemAttr ( Item_WWZ , ITEMATTR_VAL_AGI)
	Kill_WWZ_Num = Kill_WWZ_Num + 1
	SetItemAttr( Item_WWZ , ITEMATTR_VAL_AGI , Kill_WWZ_Num )
	if Kill_WWZ_Num >11 then
	end


if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		  SystemNotice ( ATKER , "\214\229\235\252 \237\229 \239\240\232\237\224\228\235\229\230\232\242 \237\229 \244\235\238\242\243 \237\232 \239\232\240\224\242\224\236.\194\224\237 \237\229\243\228\224\235\238\241\252 \239\238\235\243\247\232\242\252 \247\242\238-\237\232\225\243\228\252." )
		  --SystemNotice ( ATKER , "Цель не принадлежит не флоту ни пиратам.Ван неудалось получить что-нибудь." )
	   end
	end
     end

     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		  SystemNotice ( ATKER , "\214\229\235\252 \237\229 \239\240\232\237\224\228\235\229\230\232\242 \237\229 \244\235\238\242\243 \237\232 \239\232\240\224\242\224\236.\194\224\237 \237\229\243\228\224\235\238\241\252 \239\238\235\243\247\232\242\252 \247\242\238-\237\232\225\243\228\252." )
		  --SystemNotice ( ATKER , "Цель не принадлежит не флоту ни пиратам.Ван неудалось получить что-нибудь." )
	   end
	end
     end

        local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." \225\251\235 \239\238\225\229\230\228\184\237 "..atk_name.." "
		--local Notice_map = def_name.." был побеждён "..atk_name.." "
		MapCopyNotice ( map_copy , Notice_map )
		ATKER = TurnToCha ( ATKER )
		DEFER = TurnToCha ( DEFER )
		local Have_TSWW = CheckBagItem( DEFER , 3846 )
		if Have_TSWW <= 0 then
			Dead_Punish_ItemURE ( DEFER )
			MGPK_Dead_Punish_Exp ( DEFER )
		else
			local j = DelBagItem( DEFER , 3846 , 1 )
			if j == 0 then
				LG ( "NewItem" , "Voodoo Doll deletion failed" )
			else
				SystemNotice ( DEFER , "\202\243\234\235\224 \194\243\228\243 \243\225\229\240\229\227\235\224 \226\224\241 \238\242 \248\242\240\224\244\224 \241\236\229\240\242\232" )
				--SystemNotice ( DEFER , "Кукла Вуду уберегла вас от штрафа смерти" )
					end
				end
			end
		end
	end


function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )	
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20								
	end 
	
	if exp_red > exp_per then										
		exp_red = exp_per
	end

	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \206\239\251\242\224 \239\238\242\229\240\255\237\238:"..exp_red_80 ) 
		--SystemNotice (dead , "Штраф Смерти. Опыта потеряно:"..exp_red_80 ) 
	else 
		SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \206\239\251\242\224 \239\238\242\229\240\255\237\238:"..exp_red )
		--SystemNotice (dead , "Штраф Смерти. Опыта потеряно:"..exp_red ) 
	end
	
	exp = Exp(dead) - exp_red

	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	
	local name = GetChaDefaultName ( dead )
	
	LG ( "PKdie_exp" , "Character Name" , name , "Current Lv= ", lv , "Death EXP penalty= " , exp_red )
end 




function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
	if i == 0 then
		LG("RYZ_PK","add Honor attribute failed")
	end
	
end

function Get_ItemAttr_Join ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

function Get_ItemAttr_Win ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end	

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end



function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "\211 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232" )
		--SystemNotice ( role , "У вас нет Медали Отваги" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "\215\229\241\242\252 \243\226\229\235\232\247\232\235\224\241\252 \237\224 "..value )
		--SystemNotice ( role , "Честь увеличилась на "..value )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "\215\229\241\242\252 \243\236\229\237\252\248\232\235\224\241\252 \237\224 "..a )
		--SystemNotice ( role , "Честь уменьшилась на "..a )
	end

	SynChaKitbag ( role , 7 )
	return 1
end


function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "\211 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232" )
		--SystemNotice ( role , "У вас нет Медали Отваги" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role ,"\207\238\235\243\247\229\237\238 \238\247\234\238\226 \238\242\240\255\228\224: "..a )
		--SystemNotice ( role ,"Получено очков отряда: "..a )
	end
	if value > 0 then
		SystemNotice ( role ,"\207\238\242\229\240\255\237\238 \238\247\234\238\226 \238\242\240\255\228\224:"..value )
		--SystemNotice ( role ,"Потеряно очков отряда:"..value )
		LG("RYZ_Take_Zdgx" , " uses Team Contribution points, deducts "..value.."point")
	end
	SynChaKitbag ( role , 7 )
	return 1
end



function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
		LG("RYZ_PK","determine Honor character error")
	end


end


function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then

		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )

		if i == 0 then
			LG("RYZ_PK","Increase Party Contribution value failed")
			return
		end
		SynChaKitbag ( role , 7 )
	
		SystemNotice ( role ,"\207\238\235\243\247\229\237\238 "..add_num.." \238\247\234\238\226 \238\242\240\255\228\224")
		--SystemNotice ( role ,"Получено "..add_num.." очков отряда")
	end
end


function Take_Atk_ItemURE ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then				
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		
		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			
			if b == 1 and Item1_Type == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end


	
end



function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0

		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0

		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end

				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				

				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end


function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	
	Dead_Punish_Item_Num = 5							
	
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9

	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )

	if Player == 1 and boat == 0 then						
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								
		for j = 0 , Dead_Punish_Item_Num , 1 do
				
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					
					if Item_URE < 50 then
						Item_URE = 49
						
					end
					
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end


				end
				
			end
		end
		SystemNotice ( role , "\209\236\229\240\242\252: \221\234\232\239\232\240\238\226\234\224 \239\238\226\240\229\230\228\229\237\224 \237\224 5%" )
		--SystemNotice ( role , "Смерть: Экипировка повреждена на 5%" )
	end

end



function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							
	
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9

	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then						
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
				
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				
				if ItemType_Check == 1 then

					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
						
					end

					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "\216\242\240\224\244 \241\236\229\240\242\232: \207\240\238\247\237\238\241\242\252 \239\240\229\228\236\229\242\238\226 \243\239\224\235\224 \237\224 5%" )
		--SystemNotice ( role , "Штраф смерти: Прочность предметов упала на 5%" )
	end
end




function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end



function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	
	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "\207\240\238\247\237\238\241\242\252 \239\240\229\228\236\229\242\224 \241\235\232\248\234\238\236 \236\224\235\224" )
		--SystemNotice( role_want_repair , "Прочность предмета слишком мала" )
		return 0
	end
	if Item_MAXURE == Item_URE then								
		SystemNotice( role_want_repair , "\207\240\238\247\237\238\241\242\252 \239\240\229\228\236\229\242\224 \239\238\235\237\224.\208\229\236\238\237\242 \237\229 \237\243\230\229\237")
		--SystemNotice( role_want_repair , "Прочность предмета полна.Ремонт не нужен")
		return 0
	end

	if Money_Have < Money_Need then								
		SystemNotice( role_want_repair , "\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \240\229\236\238\237\242\224 ")
		--SystemNotice( role_want_repair , "Нехватает золота для ремонта ")
		return 0
	end


	
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "\207\240\229\228\236\229\242 \237\229 \239\238\228\245\238\228\232\242 \228\235\255 \240\229\236\238\237\242\224")
	--SystemNotice( role_want_repair , "Предмет не подходит для ремонта")

	return 0
end


function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end


function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end


function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end


function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
	local i = 0
	local j = 0

	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
		LG("Item_URE","Repair durability failed")
	end
	SystemNotice( role_want_repair ,"\208\229\236\238\237\242 \239\240\238\248\184\235 \243\241\239\229\248\237\238!" )
	--SystemNotice( role_want_repair ,"Ремонт прошёл успешно!" )
	return 1
end

function Check_Repair_ItemType ( Item )
	local Item_Type = GetItemType ( Item )
	local i = 0
	for i = 0 , Item_CanRepair_Num , 1 do
		if Item_CanRepair_ID [i] == Item_Type then
			return 1
		end
	end
	return 0
end

function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end


function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end


function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end

	if k > MaxHole then
		k = MaxHole
	end
	

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k )
	  
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
	
 	if k > MaxHole then
		k = MaxHole
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end


	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
	
  	if k > MaxHole then
		k = MaxHole
	end

	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end

	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k ) 

	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0


	Num = SetNum_Part1 ( Num , k )
	  
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end

end

function GetFightGuildLevel()
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end

	return Lv
end


function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end


function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end


function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end



function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end

	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end

	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end

	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end

	return 1
end


function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end

	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end

	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end

	return 1
end


function CheckItem_pirate ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end

function CheckItem_Death ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
       if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end	 
	end
	return 1
end


function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 1124 then
	   return 0
        end
	if hand_gem_id ~= 1125 then
	   return 0
	end
	if foot_gem_id ~= 1126  then 
           return 0
	end
	 
	return 1
end


function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			
	if a == 1 then
		SystemNotice ( role , "\203\229\228\232 \211\228\224\247\224 \239\238\236\238\227\235\224 \226\224\236! \194\251 \239\238\235\243\247\232\235\232 \235\243\247\248\232\233 \235\238\242!" )
		--SystemNotice ( role , "Леди Удача помогла вам! Вы получили лучший лот!" )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "\202\224\230\229\242\241\255 \226\224\236 \241\229\227\238\228\237\255 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \245\238\240\238\248\232\233 \235\238\242" )
		--SystemNotice ( role , "Кажется вам сегодня повезло. Вы получили хороший лот" )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	elseif a == 4 then
		SystemNotice ( role , "\194\224\236 \238\247\229\237\252 \237\229 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \239\235\238\245\238\233 \235\238\242" )
		--SystemNotice ( role , "Вам очень не повезло. Вы получили плохой лот" )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "\192\245,\225\238\230\229 \236\238\233! \194\251 \239\238\235\243\247\232\235\232 \241\224\236\251\233 \239\235\238\245\238\233 \235\238\242!" )
		--SystemNotice ( role , "Ах,боже мой! Вы получили самый плохой лот!" )
		XiaXiaQian_Money ( role )
	end
end



function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "\203\229\228\232 \211\228\224\247\224 \239\238\236\238\227\235\224 \226\224\236! \194\251 \239\238\235\243\247\232\235\232 \235\243\247\248\232\233 \235\238\242!" )
		--SystemNotice ( role , "Леди Удача помогла вам! Вы получили лучший лот!" )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "\202\224\230\229\242\241\255 \226\224\236 \241\229\227\238\228\237\255 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \245\238\240\238\248\232\233 \235\238\242" )
		--SystemNotice ( role , "Кажется вам сегодня повезло. Вы получили хороший лот" )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )

	elseif a == 4 then
		SystemNotice ( role , "\194\224\236 \238\247\229\237\252 \237\229 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \239\235\238\245\238\233 \235\238\242" )
		--SystemNotice ( role , "Вам очень не повезло. Вы получили плохой лот" )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "\192\245,\225\238\230\229 \236\238\233! \194\251 \239\238\235\243\247\232\235\232 \241\224\236\251\233 \239\235\238\245\238\233 \235\238\242!" )
		--SystemNotice ( role , "Ах,боже мой! Вы получили самый плохой лот!" )
		XiaXiaQian_Work ( role )
	end
end




function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100

	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end



function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "\194\251 \239\238\235\243\247\232\235\232 "..GiveMoneyNum_Notice.." \228\238\239\238\235\237\232\242\229\235\252\237\238\227\238 \231\238\235\238\242\224!" )
		--SystemNotice ( role , "Вы получили "..GiveMoneyNum_Notice.." дополнительного золота!" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "\194\251 \239\238\235\243\247\232\235\232 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \225\238\227\232\237\232 \202\224\240\251.\194\251 \239\238\235\243\247\232\235\232 "..time_Bei.." \236\232\237\243\242 \243\228\226\238\229\237\237\238\227\238 \238\239\251\242\224" )
		--SystemNotice ( role , "Вы получили благославление богини Кары.Вы получили "..time_Bei.." минут удвоенного опыта" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							
	end
end

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100


	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "\194\251 \239\238\235\243\247\232\235\232 "..GiveMoneyNum_Notice.." \228\238\239\238\235\237\232\242\229\235\252\237\238\227\238 \231\238\235\238\242\224!" )
		--SystemNotice ( role , "Вы получили "..GiveMoneyNum_Notice.." дополнительного золота!" )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
	end
end


function ZhongQian_Money ( role )
	SystemNotice ( role , "\209\229\227\238\228\237\255 \242\224\234 \241\234\243\247\237\238..." )
	--SystemNotice ( role , "Сегодня так скучно..." )
end




function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100


	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "\194\251 \241\235\243\247\224\233\237\238 \239\240\238\232\227\240\251\226\224\229\242\229 "..GiveMoneyNum_Notice.." \231\238\235\238\242\224" )
		--SystemNotice ( role , "Вы случайно проигрываете "..GiveMoneyNum_Notice.." золота" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end



function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "\194\251 \241\235\243\247\224\233\237\238 \239\240\238\232\227\240\251\226\224\229\242\229 "..GiveMoneyNum_Notice.." \231\238\235\238\242\224" )
		--SystemNotice ( role , "Вы случайно проигрываете "..GiveMoneyNum_Notice.." золота" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end


function ShangShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 5 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "\194\251 \226\251\232\227\240\251\226\224\229\242\229 "..GiveExpNum_Notice.." \238\247\234\238\226 \238\239\251\242\224" )
		--SystemNotice ( role , "Вы выигрываете "..GiveExpNum_Notice.." очков опыта" )
		QianAddExp ( role , GiveExpNum , 1 )						
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "\194\251 \239\238\235\243\247\224\229\242\229 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \225\238\227\232\237\232 \202\224\240\251. \194\251 \239\238\235\243\247\232\235\232 "..time_Bei.." \236\232\237\243\242 \228\226\238\233\237\238\227\238 \238\239\251\242\224" )
		--SystemNotice ( role , "Вы получаете благославление богини Кары. Вы получили "..time_Bei.." минут двойного опыта" )
	elseif b == 3 then
		QianAddState ( role , 1 )								
	end
end


function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end


function ZhongQian_Work ( role )
	SystemNotice ( role , "\209\229\227\238\228\237\255 \242\224\234 \241\234\243\247\237\238..." )
	--SystemNotice ( role , "Сегодня так скучно..." )
end


function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	end
end


function XiaXiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 2 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "\194\251 \242\229\240\255\229\242\229 "..GiveExpNum_Notice.."% \238\239\251\242\224" )
		--SystemNotice ( role , "Вы теряете "..GiveExpNum_Notice.."% опыта" )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 1 )							
	elseif b == 2 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 3 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 1.1 )
		Hp_Endure_Dmg ( role , hp_dmg )
	end
end


function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num

		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )

		Money_Have = math.floor ( Money_Have )

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "\193\238\227 \193\238\227\224\242\241\242\226\224 \228\224\235 \226\224\236 "..Num.."% \231\238\235\238\242\224" )
			--SystemNotice ( role , "Бог Богатства дал вам "..Num.."% золота" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." \238\242\234\240\251\226\224\229\242 \235\238\242 \232 \239\238\235\243\247\224\229\242 "..Money_Add.." \231\238\235\238\242\224" )
				--Notice ( cha_name.." открывает лот и получает "..Money_Add.." золота" )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "\193\238\227 \239\238\241\235\224\235 \237\224 \242\229\225\255 \225\229\228\243!\210\251 \242\229\240\255\229\248\252 "..Num.."% \231\238\235\238\242\224" )
			--SystemNotice ( role , "Бог послал на тебя беду!Ты теряешь "..Num.."% золота" )
		end
	
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num

		Money_Have = Money_Have + Money_Add

		if Money_Have < 0 then
			Money_Have = 0
		end

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
		
			SystemNotice ( role , "\205\224\233\228\229\237\238 "..Num.." \231\238\235\238\242\224" )
			--SystemNotice ( role , "Найдено "..Num.." золота" )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." \238\242\234\240\251\226\224\229\242 \235\238\242 \232 \239\238\235\243\247\224\229\242 "..Num.." \231\238\235\238\242\224" )
				--Notice ( cha_name.." открывает лот и получает "..Num.." золота" )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "\193\238\227 \239\238\241\235\224\235 \237\224 \242\229\225\255 \225\229\228\243!\210\251 \242\229\240\255\229\248\252 "..Num.." \231\238\235\238\242\224" )
			--SystemNotice ( role , "Бог послал на тебя беду!Ты теряешь "..Num.." золота" )
		end
	end
end


function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end

	ExpGet = math.floor ( ExpGet )

	exp = exp + ExpGet
	
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	
	if exp < 0 then
		exp = 0
	end

	
	SetChaAttrI( role , ATTR_CEXP , exp )

	if lv >= 80 then
			ExpGet = ExpGet * 50
	end

	if ExpGet > 0 then
		
		SystemNotice ( role , "\209\235\243\247\224\233\237\238 \239\238\235\243\247\229\237\238 "..ExpGet.." \238\239\251\242\224" )
		--SystemNotice ( role , "Случайно получено "..ExpGet.." опыта" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				
				Notice ( cha_name.." \238\242\234\240\251\226\224\229\242 \235\238\242 \232 \239\238\235\243\247\224\229\242"..ExpGet.." \238\239\251\242\224" )
				--Notice ( cha_name.." открывает лот и получает"..ExpGet.." опыта" )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		
		SystemNotice ( role , "\207\238\242\229\240\255\237\238: "..ExpGet.." \238\239\251\242\224" )
		--SystemNotice ( role , "Потеряно: "..ExpGet.." опыта" )
	end

end


function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "\192\242\224\234\224"
	StateName [1] = "\199\224\249\232\242\224"
	StateName [2] = "\204\224\234\241\232\236\224\235\252\237\238\229 \231\228\238\240\238\226\252\229"
	StateName [3] = "\216\224\237\241 \239\238\239\238\228\224\237\232\255"
	StateName [4] = "\209\234\238\240\238\241\242\252 \224\242\224\234\232"
	--StateName [0] = "Атака"
	--StateName [1] = "Защита"
	--StateName [2] = "Максимальное здоровье"
	--StateName [3] = "Шанс поподания"
	--StateName [4] = "Скорость атаки"

	local i = math.random ( 0 , 4 )
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( 	role , "\194\251 \247\243\226\241\242\226\243\229\242\229 \247\242\238 \226\224\248\224(\229) "..StateName[i].." \243\226\229\235\232\247\232\235\238\241\252" )
	--SystemNotice ( 	role , "Вы чувствуете что ваша(е) "..StateName[i].." увеличилось" )
	
end


function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "\194\251 \226\251\234\238\239\224\235\232 \234\235\224\228 \239\232\240\224\242\238\226. \207\238\235\243\247\229\237\238 "..GiveMoney.." \231\238\235\238\242\224" )
		--SystemNotice ( role , "Вы выкопали клад пиратов. Получено "..GiveMoney.." золота" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 28 then
		XianJing ( role , 1 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		XianJing ( role , 2 )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "\209\229\227\238\228\237\255 \242\229\225\229 \237\229 \239\238\226\229\231\235\238. \207\240\232\245\238\228\232 \226 \241\235\229\228\243\254\249\232\233 \240\224\231..." )
		--SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	else
		--SystemNotice ( role , " dug out a hidden pirate treasure" )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount						
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							
		for k = 1 , maxitem , 1 do				

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 

		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." \237\224\245\238\228\232\242 \239\232\240\224\242\241\234\238\229 \241\238\234\240\238\226\232\249\229 \232 \239\238\235\243\247\224\229\242 "..itemname  
				--local message = cha_name.." находит пиратское сокровище и получает "..itemname  
				Notice ( message )
			end
		end
	end
				

end

function GiveGoldenMapItem_JLB ( role )
	local CheckRandom = math.random ( 1,100 )
	local x, y = GetChaPos(role)
	local lv= GetChaAttr(role, ATTR_LV) 
	local a=math.floor ( lv / 5 ) + 826
	local b=math.floor ( lv / 5 ) + 828
	local monserID=math.random(a,b)				
	if CheckRandom >= 1 and CheckRandom <= 20 then
		local GiveMoney = 10000 * math.random ( 1, 20 )
		SystemNotice ( role , "\194\251 \226\251\234\238\239\224\235\232 \241\238\234\240\238\226\232\249\224 \237\224 \202\224\240\232\225\241\234\238\236 \238\241\242\240\238\226\229 \232 \239\238\235\243\247\232\235\232 "..GiveMoney.." \231\238\235\238\242\224" )
		--SystemNotice ( role , "Вы выкопали сокровища на Карибском острове и получили "..GiveMoney.." золота" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 24 then
		XianJing ( role , 1 )
	elseif CheckRandom > 24 and CheckRandom <= 28 then
		XianJing ( role , 2 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		SystemNotice ( role , "\209\229\227\238\228\237\255 \242\229\225\229 \237\229 \239\238\226\229\231\235\238. \207\240\232\245\238\228\232 \226 \241\235\229\228\243\254\249\232\233 \240\224\231..." )
		--SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "\206, \237\229\242! \202\242\238 \226\251\239\243\241\242\232\235 \241\238\225\224\234? \207\238\236\238\227\232\242\229..." )
		--SystemNotice ( role , "О, нет! Кто выпустил собак? Помогите..." )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		--SystemNotice ( role , " dug out a hidden pirate treasure" )
		local item_type = BaoXiang_JLBCBTBOX
		local item_type_rad = BaoXiang_JLBCBTBOX_Rad 
		local item_type_count = BaoXiang_JLBCBTBOX_Count 
		local maxitem = BaoXiang_JLBCBTBOX_Mxcount						
		local item_quality = BaoXiang_JLBCBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							
		for k = 1 , maxitem , 1 do			

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." \226\251\234\238\239\224\235 \234\235\224\228 \232 \239\238\235\243\247\232\235 "..itemname  
				--local message = cha_name.." выкопал клад и получил "..itemname  
				Notice ( message )
			end
		end
	end
				

end


function CheckGetMapPos ( role , pos_x , pos_y , MapName )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )

	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400

	if map_name ~= MapName then
		return 0 
	end 

	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
	
		return 0
	end

	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end

	return 1
end
	

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )	
	if a == 1 then
		SystemNotice ( role , "\203\229\228\232 \211\228\224\247\224 \239\238\236\238\227\235\224 \226\224\236! \194\251 \239\238\235\243\247\232\235\232 \237\224\232\235\243\247\248\232\233 \235\238\242!" )
		--SystemNotice ( role , "Леди Удача помогла вам! Вы получили наилучший лот!" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "\194\224\236 \241\229\227\238\228\237\255 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \245\238\240\238\248\232\233 \235\238\242" )
		--SystemNotice ( role , "Вам сегодня повезло. Вы получили хороший лот" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )

	end
end


function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "\203\229\228\232 \211\228\224\247\224 \239\238\236\238\227\235\224 \226\224\236! \194\251 \239\238\235\243\247\232\235\232 \237\224\232\235\243\247\248\232\233 \235\238\242!" )
		--SystemNotice ( role , "Леди Удача помогла вам! Вы получили наилучший лот!" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "\194\224\236 \241\229\227\238\228\237\255 \239\238\226\229\231\235\238. \194\251 \239\238\235\243\247\232\235\232 \245\238\240\238\248\232\233 \235\238\242" )
		--SystemNotice ( role , "Вам сегодня повезло. Вы получили хороший лот" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	end
end


function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 80
	qian [2] = 100
	
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end


function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
	qian [1] = 60
	qian [2] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "\194\251 \239\238\235\243\247\232\235\232 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \225\238\227\232\237\232 \202\224\240\251. \194\251 \239\238\235\243\247\232\235\232 "..time_Bei.." \236\232\237\243\242 \243\228\226\238\229\237\238\227\238 \248\224\237\241\224 \226\251\239\224\228\229\237\232\255" )
		--SystemNotice ( role , "Вы получили благославление богини Кары. Вы получили "..time_Bei.." минут удвоеного шанса выпадения" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							
	end
end


function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
	qian [1] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "\196\238\225\224\226\235\229\237\238 \237\229\241\234\238\235\252\234\238 \231\238\235\238\242\251\245 \236\238\237\229\242. \202\242\238 \225\240\238\241\232\235 \253\242\232 \236\238\237\229\242\251? \194\251 \247\243\242\252 \237\229 \239\238\227\232\225\235\232!" )
		--SystemNotice ( role , "Добавлено несколько золотых монет. Кто бросил эти монеты? Вы чуть не погибли!" )
	end
end


function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 60
	qian [2] = 90
	qian [3] = 100

	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "\194\251 \239\238\235\243\247\232\235\232 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \225\238\227\232\237\232 \202\224\240\251. \194\251 \239\238\235\243\247\232\235\232 "..time_Bei.." \236\232\237\243\242 \243\228\226\238\229\237\238\227\238 \238\239\251\242\224" )
		--SystemNotice ( role , "Вы получили благославление богини Кары. Вы получили "..time_Bei.." минут удвоеного опыта" )
	elseif b == 3 then
		QianAddState ( role , 1 )								
	elseif b == 4 then
		QianAddState ( role , 1 )								
	end
end


function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		Notice ( cha_name.." \238\242\234\240\251\226\224\229\242 \235\238\242 \232 \239\238\235\243\247\224\229\242 1 \238\247\234\238 \245\224\240\224\234\242\229\240\232\241\242\232\234" )
		--Notice ( cha_name.." открывает лот и получает 1 очко характеристик" )
		LG ( "Add_StatePoint" , cha_name.."Obtained Attributes point:"..Num.."point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end


function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end


function GetTheMapPos ( role , type )
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1

	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614

	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514

	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695

	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615


	local PosDateGet = math.random ( 0 , PosDateNum )

	local Pos_Map = PosDateMap[ PosDateGet ]

	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	
	return Pos_X , Pos_Y , Pos_Map
end

function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"

	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1

	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 

	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470

	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048

	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 


	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end


function XianJing ( role ,type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "\194\251 \241\229\240\252\184\231\237\238 \240\224\237\229\237\251 \238\242 \235\238\226\243\248\234\232 \239\232\240\224\242\238\226" ) 
		--SystemNotice ( role , "Вы серьёзно ранены от ловушки пиратов" ) 
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "\194\251 \238\242\240\224\226\235\229\237\251 \238\242 \235\238\226\243\248\234\232 \239\232\240\224\242\238\226" )
		--SystemNotice ( role , "Вы отравлены от ловушки пиратов" )
	end
end

function MapRandomtele ( role )

	local Birth ={}
	Birth[0]	=	"\192\240\227\229\237\242"
	Birth[1]	=	"\195\240\238\236\238\227\240\224\228"
	Birth[2]	=	"\216\224\233\242\224\237"
	Birth[3]	=	"\203\229\228\251\237\252"
	Birth[4]	=	"\213\224\235\228\229\233\241\234\224\255 \227\224\226\224\237\252"
	Birth[5]	=	"\192\237\228\232\233\241\234\232\233 \235\229\241"
	Birth[6]	=	"\199\224\225\240\238\248\229\237\237\251\229 \248\224\245\242\251"
	Birth[7]	=	"\209\234\224\235\232\241\242\251\233 \243\228\229\235"
	Birth[8]	=	"\194\224\235\227\224\235\235\224"
	Birth[9]	=	"\206\225\232\242\229\235\252 \208\224\228\238\241\242\232"
	Birth[10]	=	"\195\224\226\224\237\252 \206\224\231\232\241\224"
	Birth[11]	=	"\207\238\241\229\235\229\237\232\229 \226 \239\243\241\242\251\237\232"
	Birth[12]	=	"\203\229\228\255\237\224\255 \227\224\226\224\237\252"
	Birth[13]	=	"\193\243\245\242\224 \192\242\235\224\237\242\232\241"
	Birth[14]	=	"\193\229\240\229\227 \209\234\229\235\229\242\238\226"
	Birth[15]	=	"\203\229\228\255\237\238\233 \248\232\239"
	Birth[16]	=	"\206\241\242\240\238\226 \199\229\244\232\240\224"
	Birth[17]	=	"\203\229\228\255\237\238\233 \238\241\242\240\238\226"
	Birth[18]	=	"\206\241\242\240\238\226 \206\242\226\229\240\230\229\237\237\251\245"
	Birth[19]	=	"\206\241\242\240\238\226 \209\242\243\230\232"
	Birth[20]	=	"\206\241\242\240\238\226 \202\224\237\224\240\229\229\234"
	Birth[21]	=	"\206\241\242\240\238\226 \202\243\239\232\228\238\237\224"
	Birth[22]	=	"\206\241\242\240\238\226 \211\228\224\247\232"
	Birth[23]	=	"\195\224\226\224\237\252 \195\240\238\236\238\227\240\224\228\224"
	Birth[23]	=	"\194\238\229\237\237\251\233 \239\238\240\242 \195\240\238\236\238\227\240\224\228\224"
	Birth[24]	=	"\209\226\255\249\229\237\237\224\255 \241\237\229\230\237\224\255 \227\238\240\224"
	Birth[25]	=	"\192\237\228\232\233\241\234\232\233 \235\229\241"
	Birth[26]	=	"\195\224\226\224\237\252 \206\224\231\232\241\224"
	Birth[27]	=	"\203\229\228\255\237\238\233 \248\232\239"
	Birth[28]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 (\241\237\224\240\243\230\232)"
	Birth[29]	=	"\207\229\249\229\240\224 \242\229\240\240\224\237\246\229\226"
	Birth[30]	=	"\199\224\225\240\238\248\229\237\237\251\229 \248\224\245\242\251 2"
	Birth[31]	=	"\209\229\240\229\225\240\255\237\237\251\229 \248\224\245\242\251 2"
	Birth[32]	=	"\209\229\240\229\225\240\255\237\237\251\229 \248\224\245\242\251 3"
	Birth[33]	=	"\199\224\225\240\238\248\229\237\237\251\229 \248\224\245\242\251 1"
	Birth[34]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 2"
	Birth[35]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 3"
	Birth[36]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 4"
	Birth[37]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 5"
	Birth[38]	=	"\206\228\232\237\238\234\224\255 \225\224\248\237\255 6"
	Birth[39]	=	"\193\224\240 \192\240\227\229\237\242\224"	
--	Birth[0]	=	"Аргент"
--	Birth[1]	=	"Громоград"
--	Birth[2]	=	"Шайтан"
--	Birth[3]	=	"Ледынь"
--	Birth[4]	=	"Халдейская гавань"
--	Birth[5]	=	"Андийский лес"
--	Birth[6]	=	"Заброшенные шахты"
--	Birth[7]	=	"Скалистый удел"
--	Birth[8]	=	"Валгалла"
--	Birth[9]	=	"Обитель Радости"
--	Birth[10]	=	"Гавань Оазиса"
--	Birth[11]	=	"Поселение в пустыни"
--	Birth[12]	=	"Ледяная гавань"
--	Birth[13]	=	"Бухта Атлантис"
--	Birth[14]	=	"Берег Скелетов"
--	Birth[15]	=	"Ледяной шип"
--	Birth[16]	=	"Остров Зефира"
--	Birth[17]	=	"Ледяной остров"
--	Birth[18]	=	"Остров Отверженных"
--	Birth[19]	=	"Остров Стужи"
--	Birth[20]	=	"Остров Канареек"
--	Birth[21]	=	"Остров Купидона"
--	Birth[22]	=	"Остров Удачи"
--	Birth[23]	=	"Гавань Громограда"
--	Birth[23]	=	"Военный порт Громограда"
--	Birth[24]	=	"Священная снежная гора"
--	Birth[25]	=	"Андийский лес"
--	Birth[26]	=	"Гавань Оазиса"
--	Birth[27]	=	"Ледяной шип"
--	Birth[28]	=	"Одинокая башня (снаружи)"
--	Birth[29]	=	"Пещера терранцев"
--	Birth[30]	=	"Заброшенные шахты 2"
--	Birth[31]	=	"Серебрянные шахты 2"
--	Birth[32]	=	"Серебрянные шахты 3"
--	Birth[33]	=	"Заброшенные шахты 1"
--	Birth[34]	=	"Одинокая башня 2"
--	Birth[35]	=	"Одинокая башня 3"
--	Birth[36]	=	"Одинокая башня 4"
--	Birth[37]	=	"Одинокая башня 5"
--	Birth[38]	=	"Одинокая башня 6"
--	Birth[39]	=	"Бар Аргента"

	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )

end



function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )

	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end


-- Роль функции: Таймер,отсчёт времени
-- Параметры: функции выполняются раз в секунду

function cha_timer(role, freq, time)
 
	local resume_freq = 5 
	local now_tick = GetChaParam(role, 1) 
	
    local cha_name = GetChaDefaultName (role)
 
    if _G[cha_name.."_goto"] ~= nil then
		if(_G[cha_name.."_goto"].x ~= nil and _G[cha_name.."_goto"].y ~= nil) then
            BickerNotice(role,"Пожалуйста подождите,идёт телепорт...")
            local delay = math.random(3,5) -- Время в секундах, рандом
        if math.mod(now_tick, delay) == 0 and now_tick > 0 then
            GoTo(role,_G[cha_name.."_goto"].x,_G[cha_name.."_goto"].y,_G[cha_name.."_goto"].map)
            _G[cha_name.."_goto"] = nil
                      end
                end
        end	
	
	local is_role_living = -1

	SetChaParam(role, 1, now_tick + freq * time) 

-- Восстановление ЖЗ
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then 
			Resume(role)
		end 
	end
-- Восстановление ЖЗ (конец)

-- Свечение 95 ансилов
local mxhp = GetChaAttr (role, ATTR_MXHP)
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then
                        ZhongShenTaoZhuang(role, now_tick)
                end
-- Свечение 95 ансилов(конец)

-- Свечение 85 колец 
		local Dina_xl = GetEquipItemP(role,8)
		local Dina_xl_ID= GetItemID (Dina_xl)
		local Dina_x2 = GetEquipItemP(role,2)
		local Dina_x2_ID= GetItemID (Dina_x2)

		if Dina_xl_ID==2577 and Dina_x2_ID==2817 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING1 , statelv , statetime ) 
		elseif Dina_xl_ID==2578 and Dina_x2_ID==2820 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING2 , statelv , statetime ) 
		elseif Dina_xl_ID==2579 and Dina_x2_ID==2823 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING3 , statelv , statetime ) 
		elseif Dina_xl_ID==2580 and Dina_x2_ID==2826 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING4 , statelv , statetime ) 
		elseif Dina_xl_ID==2581 and Dina_x2_ID==2832 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING5 , statelv , statetime ) 
		elseif Dina_xl_ID==2582 and Dina_x2_ID==2829 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING6 , statelv , statetime ) 
		else
			local statelv_bbring1 = GetChaStateLv ( role , STATE_BBRING1 )
				if statelv_bbring1~=0 then
					RemoveState ( role , STATE_BBRING1 ) 
				end
			local statelv_bbring2 = GetChaStateLv ( role , STATE_BBRING2 )
				if statelv_bbring2~=0 then
					RemoveState ( role , STATE_BBRING2 ) 
				end
			local statelv_bbring3 = GetChaStateLv ( role , STATE_BBRING3 )
				if statelv_bbring3~=0 then
					RemoveState ( role , STATE_BBRING3 ) 
				end
			local statelv_bbring4 = GetChaStateLv ( role , STATE_BBRING4 )
				if statelv_bbring4~=0 then
					RemoveState ( role , STATE_BBRING4 ) 
				end
			local statelv_bbring5 = GetChaStateLv ( role , STATE_BBRING5 )
				if statelv_bbring5~=0 then
					RemoveState ( role , STATE_BBRING5 ) 
				end
			local statelv_bbring6 = GetChaStateLv ( role , STATE_BBRING6 )
				if statelv_bbring6~=0 then
					RemoveState ( role , STATE_BBRING6 ) 
				end	
		end
-- Свечение 85 колец (конец)

-- Сила в сердце
		local Eric_XZDLL = GetEquipItemP(role,8)
		local Eric_XZDLL_ID = GetItemID (Eric_XZDLL)
		if Eric_XZDLL_ID == 5827 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_XZDLL , statelv , statetime )
		else
			local statelv_XZDLL = GetChaStateLv ( role , STATE_XZDLL )
				if statelv_XZDLL~=0 then
					RemoveState ( role , STATE_XZDLL ) 
				end
		end
-- Сила в цердце (конец)

--Бонус за удержание порта в фс\дс
	local map_cha = GetChaMapName(role) --Карта, на которой находится персонаж
	local bonus_type = ATTR_GD --Репутация (ATTR_GD - золото; ATTR_FAME - репутация)
	local character = GetChaAttr(role, bonus_type) --Кол-во выбранного атрибута у персонажа
	local bonus_add = 150 --Сколько очков добавить
	local bonus_calc = character + bonus_add
	if map_cha == "darkswamp" then
		local x,y = GetChaPos(role)
			x = math.floor(x/100)
			y = math.floor(y/100)
		if x >= 290 and x <= 330 and y >= 325 and y <= 350 then
			SystemNotice(role, "Получено золота: ("..bonus_add..")") --Сообщение "Получены очки чести..."
			SetChaAttrI(role, bonus_type, bonus_calc)
		end
	end
	if map_cha == "abandonedcity" then
		local x,y = GetChaPos(role)
			x = math.floor(x/100)
			y = math.floor(y/100)
		if x >= 300 and x <= 315 and y >= 305 and y <= 320 then
			SystemNotice(role, "Получено золота: ("..bonus_add..")") --Сообщение "Получены очки чести..."
			SetChaAttrI(role, bonus_type, bonus_calc)
		end
	end


-- Функция обратного отсчета времени Тюремного протокола
	local juluka_freq = 60
	local energy_resume = 60
	if math.mod(now_tick, juluka_freq) == 0 and now_tick > 0 then 
		local map_name = GetChaMapName ( role )
		if map_name == "prisonisland" then
			local item_jiluka = GetChaItem( role, 2, 2)
			local item_id = GetItemID( item_jiluka )
			if item_id == 5724 then			
				local energy = GetItemAttr(item_jiluka, ITEMATTR_ENERGY)			
				if energy < 0 then
					energy = 0
				elseif energy ==0 then			
					SystemNotice ( role , "\209\240\238\234 \194\224\248\229\227\238 \242\254\240\229\236\237\238\227\238 \231\224\234\235\254\247\229\237\232\255 \231\224\234\238\237\247\232\235\241\255. \207\238\227\238\226\238\240\232\242\229 \241 \237\224\247\224\235\252\237\232\234\238\236 \242\254\240\252\236\251." )
					--SystemNotice ( role , "Срок Вашего тюремного заключения закончился. Поговорите с начальником тюрьмы." )
				else 					
					energy = energy - energy_resume  		
					SetItemAttr(item_jiluka, ITEMATTR_ENERGY, energy )			
				end
			end
		end
	end
-- Функция обратного отсчета времени Тюремного протокола (конец)

-- Функция Священного Факела
	local one_minite=60									-- Устанавливаем one_minite как 60 секунд
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            
		local num_huoju=0                                          
		local item_huoju=0	
		num_huoju = CheckBagItem( role, 5825 )
		if num_huoju==1 then
			item_huoju = GetChaItem2 ( role , 2 , 5825 )
			local item_huoju_ure=GetItemAttr(item_huoju,ITEMATTR_URE)							
			if item_huoju_ure>=50 then
				item_huoju_ure=item_huoju_ure-50
				SetItemAttr(item_huoju,ITEMATTR_URE,item_huoju_ure)
			end
		end		
	end
-- Функция Священного Факела (конец)


-- Неизвестная функция (Fireworks Durable)
		local el_nj = GetEquipItemP(role,9)
		local el_nj_ID= GetItemID (el_nj)
--		SystemNotice ( role , "el_nj_ID=="..el_nj_ID )
		if el_nj_ID==3669 then
			local ure = GetItemAttr(el_nj, ITEMATTR_URE)
--			SystemNotice ( role , "ure=="..ure )
			local ure_resume = 1000 
			ure = ure - ure_resume 
--			SystemNotice ( role , "ure1=="..ure )
			SetItemAttr(el_nj, ITEMATTR_URE, ure )
			SynChaKitbag(role,13)
			if ure <1000 then 
				RemoveChaItem ( role , 3669 , 1 , 1 , -1, 2 , 1  )
			end 
		end
		local Max_xl = GetEquipItemP(role,5)
		local Max_xl_ID= GetItemID (Max_xl)
--		SystemNotice ( role , "Max_xl_ID=="..Max_xl_ID )
		if Max_xl_ID==2980 then
			local statelv = 1
			local statetime = 1
			AddState ( role , role , STATE_ILOVEDAD , statelv , statetime ) 
--			SystemNotice ( role , "You love my father, I also love!" )
		end
-- Неизвестная функция (Fireworks Durable)(конец)


--Функция свадебного бонуса
        local cha = TurnToCha ( role )
        local now_tick = GetChaParam(role, 1)
        local ring_bg = CheckBagItem ( cha , 2520 )

        if ring_bg ~= 0 then
                local ring = GetChaItem2 ( cha , 2 , 2520 )
                local mate_id = GetItemForgeParam ( ring , 1 )
                if IsInTeam(cha) == 1 then
                        local Role_ID = GetRoleID(cha)
                        local t = {}
                                t[0] = cha 
                                t[1] = GetTeamCha(cha, 0 )  
                                t[2] = GetTeamCha(cha, 1 )   
                                t[3] = GetTeamCha(cha, 2 )    
                                t[4] = GetTeamCha(cha, 3 )
                        for i = 1 , 4 do
                                if t[i] ~= nil then
                                        local Have_Ring = CheckBagItem(  t[i] , 2520 )  
                                        if Have_Ring == 1 then
                                                local Item = GetChaItem2 ( t[i] , 2 , 2520 )
                                                local party_mate_id = GetItemForgeParam ( Item , 1 )
                                                if Role_ID == party_mate_id  then
                                                        local party_ID = GetRoleID(t[i])
                                                        if mate_id==party_ID then
                                                                local pos_cha_x, pos_cha_y = GetChaPos(cha)
                                                                local mate = TurnToCha ( t[i] )
                                                                local pos_mate_x, pos_mate_y = GetChaPos(mate)
                                                                local distance = Distance( pos_cha_x , pos_cha_y , pos_mate_x , pos_mate_y ) 
                                                                if distance <= 500 then 
                                                                        AddState ( role , role , 234 , 1 , 3600 )
                                                                        RefreshCha(role)
                                                                elseif distance >= 500 then
                                                                        RemoveState ( role , 234 )
                                                                end 
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
--Функция свадебного бонуса(конец)		

-- Автоматический Фрукт роста
	local Item_bg = GetChaItem ( role , 2 , 1  ) 					-- Получение содержимого 2ой ячейки рюкзака
	local Get_Item_Type = GetItemType ( Item_bg )
	local Item_AutoSpeed = GetChaItem ( role , 2 , 2  ) 				-- Получение содержимого 3ей ячейки рюкзака
	local Item_AutoSpeed_ID = GetItemID ( Item_AutoSpeed )
	if Get_Item_Type == 59 then
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
		if ChaStateLv > 1 then
			SystemNotice ( role , "\200\241\239\238\235\252\231\243\229\242\241\255 \225\238\235\229\229 \236\238\249\237\251\233 \243\241\232\235\229\242\232\229\235\252. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229." )
				--SystemNotice ( role , "Используется более мощный усилетиель. Попробуйте позже." )
			UseItemFailed ( role )
		end
		if ChaStateLv == 1 then
			SystemNotice ( role , "\200\241\239\238\235\252\231\243\229\242\241\255 \225\238\235\229\229 \236\238\249\237\251\233 \243\241\232\235\232\242\232\229\235\252. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229." )
				--SystemNotice ( role , "Используется более мощный усилитиель. Попробуйте позже." )
			UseItemFailed ( role )
		end
		if ChaStateLv == 0 and Item_AutoSpeed_ID ==5643 then			
		local k = TakeItem(  role,0,5643,1)
			if k==0 then
				SystemNotice ( role , "\205\229 \243\228\224\235\238\241\252 \232\241\239\238\235\252\231\238\226\224\242\252 \192\226\242\238\236\224\242\232\247\229\241\234\232\233 \212\240\243\234\242 \240\238\241\242\224!" )
					--SystemNotice ( role , "Не удалось использовать Автоматический Фрукт роста!" )
			else
			local statetime = 900
			local statelv =1
			AddState( role , role , STATE_JLJSGZ , statelv , statetime )
				SystemNotice ( role , "\200\241\239\238\235\252\231\238\226\224\237 \192\226\242\238\236\224\242\232\247\229\241\234\232\233 \212\240\243\234\242 \240\238\241\242\224! \211\228\226\238\229\237 \242\229\236\239 \240\238\241\242\224 \244\229\232." )		
					--SystemNotice ( role , "Использован Автоматический Фрукт роста! Удвоен темп роста феи." )
			end
		end
	end
-- Автоматический Фрукт роста(конец)

-- Феи
	local pet_freq = 60 

	local Item_Elf = GetChaItem ( role , 2 , 1  )
	local Get_Elf_Type = GetItemType ( Item_Elf )

	if Get_Elf_Type == 59 then
		local ure_type = GetItemAttr( Item_Elf ,ITEMATTR_URE )       
		if ure_type<=49 then
			SetChaKbItemValid2(role , Item_Elf , 0 , 1)			
		else
			SetChaKbItemValid2(role , Item_Elf , 1 , 1)			
		end
		local str = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STR )       -- Сила
        	local con = GetItemAttr( Item_Elf ,ITEMATTR_VAL_CON )       -- Телосложение
        	local agi = GetItemAttr( Item_Elf ,ITEMATTR_VAL_AGI )       -- Ловкость
        	local dex = GetItemAttr( Item_Elf ,ITEMATTR_VAL_DEX )       -- Точность
        	local sta = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STA )       -- Дух
		local Lv = str + agi + dex + con + sta				-- Уровень феи
		if Lv > 27 then
			pet_freq = pet_freq + ( Lv - 27 ) * 5			-- Если уровень феи выше 27, то время увеличивается
		end
	end

	local sklv = GetChaStateLv ( role , STATE_JLJSGZ ) 			-- Если применен Фрукт роста феи, время сокращается в 2 раза
	if  sklv~=0 then
		pet_freq =math.floor( pet_freq*0.5 )
	end	

	if math.mod(now_tick, pet_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then   
			local Item_bg = GetChaItem ( role , 2 , 1  )     
			local Get_Item_Type = GetItemType ( Item_bg ) 
			local Item_siliao = GetChaItem ( role , 2 , 2  ) 
			local Item_siliao_ID = GetItemID ( Item_siliao ) 
			if Get_Item_Type == 59 then
				local Elf_URE = GetItemAttr( Item_bg ,ITEMATTR_URE )       
				local Num_JLone = GetItemForgeParam ( Item_bg , 1 )
				local Part1_JLone = GetNum_Part1 ( Num_JLone )	

-- Стандартный паек / Большой Авто-Рацион
					if Elf_URE<=2550 and ItemUse_siliao_ID==2312 then
							local j = TakeItem(  role,0,2312,1)
							if j==0 then
								SystemNotice ( role , "\209\242\224\237\228\224\240\242\237\251\233 \239\224\229\234 \237\229 \232\241\239\238\235\252\231\238\226\224\237!" )
									--SystemNotice ( role , "Стандартный паек не использован!" )
							else
								Elf_URE = Elf_URE + 2500
								SystemNotice ( role , "\212\229\255 \224\226\242\238\236\224\242\232\247\229\241\234\232 \237\224\234\238\240\236\235\229\237\224." )
									--SystemNotice ( role , "Фея автоматически накормлена." )
								SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
							end
					elseif  Elf_URE<=5000 and Item_numeneat_ID==5645 then 
							local j = TakeItem(  role,0,5645,1)
							if j==0 then
								SystemNotice ( role , "\193\238\235\252\248\238\233 \192\226\242\238-\240\224\246\232\238\237 \237\229 \232\241\239\238\235\252\231\238\226\224\237!" )
									--SystemNotice ( role , "Большой Авто-рацион не использован!" )
							else
								Elf_URE = Elf_URE + 5000
								SystemNotice ( role , "\212\229\255 \224\226\242\238\236\224\242\232\247\229\241\234\232 \237\224\234\238\240\236\235\229\237\224." )
									--SystemNotice ( role , "Фея автоматически накормлена." )
								SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
							end
					end
-- Стандартный паек / Большой Авто-Рацион (конец)

-- Получение Монет фей, Эльф. печаток, Кор.эльф.печаток
				local star_num = GetItemAttr( Item_bg ,ITEMATTR_VAL_FUSIONID )       
				star_num=star_num+1
				if math.mod( star_num , 1) == 0 and Elf_URE>=50 and Part1_JLone==1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )							
				end
				if math.mod( star_num , 2) == 0 and Elf_URE>=50 and Part1_JLone~=1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )							
				end
				if math.mod( star_num , 30) == 0  and Elf_URE>=50 and Part1_JLone==1 then			
					GiveItemX ( role , 0 , 2588 , 1 , 4 )							
				end
				if math.mod( star_num , 60) == 0  and Elf_URE>=50 and Part1_JLone~=1 then	
					GiveItemX ( role , 0 , 2588 , 1 , 4 )							
				end
				if math.mod( star_num , 120) == 0  and Elf_URE>=50  then				
					GiveItemX ( role , 0 , 2588 , 1 , 4 )										
				end
				if math.mod( star_num , 1200) == 0  and Elf_URE>=50 then				
					GiveItemX ( role , 0 , 2589 , 1 , 4 )							
				end

				if star_num==1200 then
					star_num=0
				end

				SetItemAttr ( Item_bg , ITEMATTR_VAL_FUSIONID , star_num )
				
				Take_ElfURE ( role , Item_bg , 1 , 0 )
				
				Give_ElfEXP ( role , Item_bg , 1 , 0 )  
-- Получение Монет фей, Эльф. печаток, Кор.эльф.печаток (конец)
			end 
		end 
	end
-- Феи (конец)
	local map = GetChaMapName ( role ) --Получаем название карты где находяться игроки
	if map == "starena33" then --Если игрок на карте захвата флага, то...
		local flag = GetChaStateLv ( role , 204 ) --Переменная хранящая значение флага
		if flag > 0 then --Если на игроке флаг есть, то...
			id_char = role --Записать его ID в переменную "носитель флага"
			AddMoney ( role , 0 , 400 )
		end
	end
	local cha_map = GetChaMapName ( id_char ) --Получаем карту нахождения носителя флага
	if cha_map ~= "starena33" then --Если он находиться не на карте захвата флага, то...
		local name_char = GetChaDefaultName ( id_char ) --Получаем его ник
		Notice("["..name_char.."] убежал что аж пятки засверкали и выбросил флаг. Первый вошедший на локацию получит его." ) --Выводим сообщение, о потери флага
		id_char = 0 --Удаляем его ID из переменной "носитель флага"
	end

end


function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	if Type == 1 then
			if Elf_URE >49 then
                                    Elf_URE = math.max ( ( Elf_URE - 50 ) , 49 )
		                    SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
			else 
				SetChaKbItemValid2(role , Item , 0 , 1)
			end

	end
	if Type == 2 then
		if Elf_URE > 49 then
			 Elf_URE = math.max ( ( Elf_URE - Num ) , 49 )
			 SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else
			SetChaKbItemValid2(role , Item , 0 , 1)
		end

	end


end


function Give_ElfEXP ( role , Item ,Type , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 

	if Type == 1 then
			 if Elf_URE > 49 then
			   Elf_EXP = Elf_EXP + ELEEXP_GETRAD 
			    if Elf_EXP >= Elf_MaxEXP then
                               Elf_EXP = Elf_MaxEXP
			    end
			   SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
			  end
                        
        end 

end



function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	--local Num = 10
        if Elf_URE<=49 then
	SetChaKbItemValid2(role , Item , 1 , 0)
	end

	Elf_URE = Elf_URE + Num

	if Elf_URE >= Elf_MaxURE  then
		
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )


end


function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP =  GetItemAttr( Item ,ITEMATTR_MAXENERGY )


	if Elf_EXP >= Elf_MaxEXP then
	        return 1
	else
		return 0
	end
end

--Функция фрукта на силу +1
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на телосложение +1
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на ловкость +1
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на точность +1
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на дух +1
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на силу +2
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR

	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на телосложение +2
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на ловкость +2
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на точность +2
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Функция фрукта на дух +2
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 



function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )    
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 50 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
   
	if b == 1 then						
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "\212\229\255 \243\241\239\229\248\237\238 \226\251\240\238\241\235\224 \226 \243\240\238\226\237\229!")
		--SystemNotice (role , "Фея успешно выросла в уровне!")	
		
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 1 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 1000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "\207\238\228\237\255\242\232\229 \243\240\238\226\237\255 \244\229\232 \239\240\238\226\224\235\232\235\238\241\252! \208\238\241\242 \241\225\240\238\248\229\237 \237\224 \239\238\235\238\226\232\237\243")
		--SystemNotice (role , "Поднятие уровня феи провалилось! Рост сброшен на половину")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end

function Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type )       
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )      
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )      
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )     
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 50 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY )
   
	if b == 1 then					
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "\212\229\255 \243\241\239\229\248\237\238 \226\251\240\238\241\235\224 \226 \243\240\238\226\237\229!")
		--SystemNotice (role , "Фея успешно выросла в уровне!")	
		
                attr_type_num = attr_type_num + 2
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 2 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 2000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "\207\238\228\237\255\242\232\229 \243\240\238\226\237\255 \244\229\232 \239\240\238\226\224\235\232\235\238\241\252! \208\238\241\242 \241\225\240\238\248\229\237 \237\224 \239\238\235\238\226\232\237\243")
		--SystemNotice (role , "Поднятие уровня феи провалилось! Рост сброшен на половину")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end
----------------------------------------
function Give_ElfEXP_MISSION ( role , num )						

	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			
	if Elf_URE <= 50 then									
		SystemNotice (role , "\212\229\255 \237\229 \236\238\230\229\242 \240\238\241\242\232 \242.\234 \243 \237\229\184 \236\224\235\238 \226\251\237\238\241\235\232\226\238\241\242\232")	
		--SystemNotice (role , "Фея не может рости т.к у неё мало выносливости")			
		return 0 
	else 
		Elf_URE = Elf_URE - 40								
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 


-----------------------------------------------
function CheckElfHaveSkill ( Num , SkillType , SkillNum )

	local Part2 = GetNum_Part2 ( Num )	
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )


	if Part3 == SkillType and Part2 == SkillNum then
		return 1

	elseif Part2 == SkillNum then
		return 2
	end
	
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	
	return 0

end

----------------------------------------------------------

function AddElfSkill ( Item , SkillType , SkillNum )
	

	local Num = GetItemForgeParam ( Item , 1 )
	local Part1 = GetNum_Part1 ( Num )	
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )

	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	local rad = math.random( 1 , 100 )                              
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then	
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return

		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return

		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end

------------------------------------------------------------------

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) 
	if Item == nil then             
		return 0
	end
	
	local Item_Type =  GetItemType ( Item ) 
	
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  

		if ELf_URE <= 49 then
			return 0
		end
	end
	return Item

end

function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 

	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "\212\229\255 \239\238\227\235\238\242\232\235\224 \243\240\238\237\224: "..dmg)
		--SystemNotice ( role , "Фея поглотила урона: "..dmg)
		return dmg
	else
		SystemNotice ( role , "\212\229\232 \237\229\245\226\224\242\224\229\242 \226\251\237\238\241\235\232\226\238\241\242\232 \247\242\238\225 \224\234\242\232\226\232\240\238\226\224\242\252 \237\224\226\251\234 \199\224\249\232\242\224" )
		--SystemNotice ( role , "Феи нехватает выносливости чтоб активировать навык Защита" )
		return 0
	end
end

function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end


function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "\212\229\232 \237\229\245\226\224\242\224\229\242 \226\251\237\238\241\235\232\226\238\241\242\232 \247\242\238\225 \224\234\242\232\226\232\240\238\226\224\242\252 \237\224\226\251\234 \193\229\240\241\229\240\234" )
		--SystemNotice ( role , "Феи нехватает выносливости чтоб активировать навык Берсерк" )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end


function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "\212\229\232 \237\229\245\226\224\242\224\229\242 \226\251\237\238\241\235\232\226\238\241\242\232 \247\242\238\225 \224\234\242\232\226\232\240\238\226\224\242\252 \237\224\226\251\234!" )
				--SystemNotice ( role , "Феи нехватает выносливости чтоб активировать навык!" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end



function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "\212\229\232 \237\229\245\226\224\242\224\229\242 \226\251\237\238\241\235\232\226\238\241\242\232 \247\242\238\225 \224\234\242\232\226\232\240\238\226\224\242\252 \237\224\226\251\234!" )
				--SystemNotice ( role , "Феи нехватает выносливости чтоб активировать навык!" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end


function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "\212\229\232 \237\229\245\226\224\242\224\229\242 \226\251\237\238\241\235\232\226\238\241\242\232 \247\242\238\225 \224\234\242\232\226\232\240\238\226\224\242\252 \237\224\226\251\234!" )
				--SystemNotice ( role , "Феи нехватает выносливости чтоб активировать навык!" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end
---------------------------------------
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "\194\251 \237\229 \225\243\228\229\242\229 \239\238\235\243\247\224\242\252 \225\235\224\227\238\241\235\224\226\235\229\237\232\229 \241 \238\242\240\232\246\224\242\229\235\252\237\238\233 \247\229\241\242\252\254!")
			--SystemNotice ( role , "Вы не будете получать благославление с отрицательной честью!")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		LG( "star_rongyuzhichange_lg" ,cha_namea, tp , lv , exp_star , job , cha_type)
		if tp==0 or tp==1 or tp==2 then 
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*200
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*250
			elseif lv>=61 then
				money_num=rongyu_num*300
			end
			AddMoney ( role , 0 , money_num ) 
		LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==0 or tp==1 or tp==2 obtain gold"..money_num)
		elseif tp==3 or tp==4 or tp==5 then 
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
			local lg_exp=exp_num-exp_star
			LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==3 or tp==4 or tp==5 obtain experience"..lg_exp)
		elseif tp==6 or tp==7 or tp==8 then 
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>=15 and Lv<=40 will obtained equipment ID="..3458)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					local Lg_ID=787
					if rad1==1 then
						Lg_ID=787
					elseif rad1==2 then
						Lg_ID=791
					elseif rad1==3 then
						Lg_ID=794
					elseif rad1==4 then
						Lg_ID=801
					elseif rad1==5 then
						Lg_ID=805
					elseif rad1==6 then
						Lg_ID=797
					elseif rad1==7 then
						Lg_ID=765
					elseif rad1==8 then
						Lg_ID=768
					elseif rad1==9 then
						Lg_ID=772
					elseif rad1==10 then
						Lg_ID=775
					elseif rad1==11 then
						Lg_ID=779
					elseif rad1==12 then
						Lg_ID=783
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=41 and lv<=60receive apparelID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then --ѕЮЅЈ
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then 
						if rad2==1 then
							Lg_ID=2536
						elseif rad2==2 then
							Lg_ID=2537
						elseif rad2==3 then
							Lg_ID=2538
						end
					elseif job == 16 then 
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2539
							elseif rad2==2 then
								Lg_ID=2540
							elseif rad2==3 then
								Lg_ID=2541
							end
						else
							if rad3==1 then
								Lg_ID=2539
							elseif rad3==2 then
								Lg_ID=2540
							elseif rad3==3 then
								Lg_ID=2541
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 13 then   
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2542
							elseif rad2==2 then
								Lg_ID=2543
							elseif rad2==3 then
								Lg_ID=2544
							end
						else
							if rad3==1 then
								Lg_ID=2542
							elseif rad3==2 then
								Lg_ID=2543
							elseif rad3==3 then
								Lg_ID=2544
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 14 then    
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2545
							elseif rad2==2 then
								Lg_ID=2546
							elseif rad2==3 then
								Lg_ID=2547
							end
						else
							if rad3==1 then
								Lg_ID=2545
							elseif rad3==2 then
								Lg_ID=2546
							elseif rad3==3 then
								Lg_ID=2547
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>61 obtain equipment ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "\207\238\235\243\247\229\237\238 \238\239\251\242\224 "..a1 )
					--SystemNotice ( role , "Получено опыта "..a1 )
				end
			end			
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
-----------------------------
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}

	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	

	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	

	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end

	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end

	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	

	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end
function  TigerStart( ... )
	if arg.n ~= 4 then
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do 
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "\194\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice( arg[1] , "Ваш инвентарь заблокирован")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"\211 \226\224\241 \237\229\242 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice( arg[1] ,"У вас нет 5 свободных слотов в инвентаре")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (arg[1], "\194\251 \237\229 \236\238\230\229\242\229 \239\240\238\237\229\241\242\232 19 \236\232\235\235\232\224\240\228\238\226 \231\238\235\238\242\224 . \221\242\238 \237\229 \225\229\231\238\239\224\241\237\238")
		--SystemNotice (arg[1], "Вы не можете пронести 19 миллиардов золота . Это не безопасно")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"\205\229 \243\228\224\235\238\241\252 \243\228\224\235\232\242\252 \204\238\237\229\242\243 \212\229\233")
			--SystemNotice ( arg[1] ,"Не удалось удалить Монету Фей")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"\205\229 \243\228\224\235\238\241\252 \243\228\224\235\232\242\252 \204\238\237\229\242\243 \212\229\233")
			--SystemNotice ( arg[1] ,"Не удалось удалить Монету Фей")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"\205\229 \243\228\224\235\238\241\252 \243\228\224\235\232\242\252 \204\238\237\229\242\243 \212\229\233")
			--SystemNotice ( arg[1] ,"Не удалось удалить Монету Фей")
			return
		end		
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		    
	local now_hour= os.date("%H")		     
	local now_miniute= os.date("%M")	       
	local now_scend=  os.date("%S")		
	now_day= tonumber(now_day)			
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)	 
	now_scend= tonumber(now_scend)		
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
		lhj_te_flg=1
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
		lhj_yi_flg=1
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
		lhj_hei_flg=1
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then
			num[j]=3360 
		end
		if num[j]>=845 and num[j]<=847 then
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 	
			end
		end
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id 
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 
			else
				num[j]=194 
			end
		end
	end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3936 and num[p]<=3942 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==457 or num[p]==458 or num[p]==459 or num[p]==464 or num[p]==640 or num[p]==816  or num[p]==822 or num[p]==823 or num[p]==3115 or num[p]==18 or num[p]==19 or num[p]==43 or num[p]==109 or num[p]==111 or num[p]==113 or num[p]==115 or num[p]==117 or num[p]==119  or num[p]==127 or num[p]==150 or num[p]==308 or num[p]==309 or num[p]==348 or num[p]==349 then
			local new_id1 = math.random ( 3850 , 3875 )
			num[p]= new_id1 
		end
	end
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	if arg.n ~= 13 then
		return 
	end	
	local flag=0
	if arg[11]==1 and arg[12]==1 and arg[13]==1 then
		flag=1
	end
	local flag_myp=1
	if arg[2]==0 or arg[3]==0 or arg[4]==0 or arg[5]==0 or arg[6]==0 or arg[7]==0 or arg[8]==0 or  arg[9]==0 or arg[10]==0 or arg[2]==nil or arg[3]==nil or arg[4]==nil or arg[5]==nil or arg[6]==nil or arg[7]==nil or arg[8]==nil or  arg[9]==0 or arg[10]==nil then
		 flag_myp=0
		return 	
	end
	local new_id = math.random ( 3850 , 3875 )
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad==1 then
			item_rad_id=862
		elseif item_rad==2 then
			item_rad_id=863
		elseif item_rad>=3 or  item_rad<=8 then
			item_rad_id=271
		else
			item_rad_id=1012
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.." \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000000 \231\238\235\238\242\224 \232 \240\224\241\239\232\241\234\243 \237\224 \239\240\232\231 \232 "..itemname12
		--local message4 = cha_name4.." вы получили приз и 10000000 золота и расписку на приз и "..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000000 \231\238\235\238\242\224 \232 "..itemname12)
		--SynTigerString ( arg[1] ,"Поздравляем вы получили приз и 10000000 золота и "..itemname12)
		AddMoney ( arg[1] , 0 , 10000000 )
		GiveItem ( arg[1] , 0 ,2665  , 1 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s12=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s12  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1  and flag_myp==1  then 
		local item_rad = math.random ( 1 , 8 )
		if item_rad==1 then
			item_rad_id=878
		elseif item_rad==2 then
			item_rad_id=879
		elseif item_rad==3 then
			item_rad_id=880
		elseif item_rad==4 then
			item_rad_id=881
		elseif item_rad==5 then
			item_rad_id=882
		elseif item_rad==6 then
			item_rad_id=883
		elseif item_rad==7 then
			item_rad_id=884
		else
			item_rad_id=887
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.." \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 3000000 \231\238\235\238\242\224 \232 "..itemname11
		--local message3 = cha_name3.." вы получили приз и 3000000 золота и "..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 3000000 \231\238\235\238\242\224 \232 "..itemname11)
		--SynTigerString ( arg[1] ,"Поздравляем вы получили приз и 3000000 золота и "..itemname11)
		AddMoney ( arg[1] , 0 , 3000000 )
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s11=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s11  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])

	end
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1  and flag_myp==1 then 
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.." \239\238\235\243\247\232\235 \239\240\232\231 \232 500000 \231\238\235\238\242\224 \232 99 \239\224\234\229\242\238\226."  
		--local message2 = cha_name2.." получил приз и 500000 золота и 99 пакетов."  
		Notice ( message2 )
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 500000 \231\238\235\238\242\224 \232 99 \239\224\234\229\242\238\226.")
		--SynTigerString( arg[1] ,"Поздравляем вы получили приз и 500000 золота и 99 пакетов.")
		AddMoney ( arg[1] , 0 , 500000 )
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )
		GiveItem ( arg[1] , 0 , 1095  , 1 , 4  )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s10=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s10  )
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1  then 
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.." \207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 300000 \231\238\235\238\242\224 \232 \240\224\241\239\232\241\234\243 \237\224 \239\240\232\231." 
		--local message1 = cha_name1.." Поздравляем вы получили приз и 300000 золота и расписку на приз." 
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 300000 \231\238\235\238\242\224 \232 \240\224\241\239\232\241\234\243 \237\224 \239\240\232\231.")
		--SynTigerString  ( arg[1] ,"Поздравляем вы получили приз и 300000 золота и расписку на приз.")
		AddMoney ( arg[1] , 0 , 300000 )
		GiveItem ( arg[1] , 0 ,2667  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s9=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s9  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 50000 \231\238\235\238\242\224 \232 \253\234\232\239\232\240\238\226\234\243 \247\184\240\237\238\227\238 \240\251\237\234\224.")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 50000 \231\238\235\238\242\224 \232 \253\234\232\239\232\240\238\226\234\243 \247\184\240\237\238\227\238 \240\251\237\234\224.")		
		--SystemNotice ( arg[1] ,"Поздравляем вы получили приз и 50000 золота и экипировку чёрного рынка.")
		--SynTigerString  ( arg[1] ,"Поздравляем вы получили приз и 50000 золота и экипировку чёрного рынка.")
		AddMoney ( arg[1] , 0 , 50000 )
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )
		GiveItem ( arg[1] , 0 , 3323  , 1 , 4  )
		if arg[2] ~= 3360 then
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s8=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s8  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 30000 \231\238\235\238\242\224 \232 \253\234\232\239\232\240\238\226\234\243 \247\184\240\237\238\227\238 \240\251\237\234\224")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 30000 \231\238\235\238\242\224 \232 \253\234\232\239\232\240\238\226\234\243 \247\184\240\237\238\227\238 \240\251\237\234\224")		
		--SystemNotice ( arg[1] ,"Поздравляем вы получили приз и 30000 золота и экипировку чёрного рынка")
		--SynTigerString  ( arg[1] ,"Поздравляем вы получили приз и 30000 золота и экипировку чёрного рынка")
		AddMoney ( arg[1] , 0 , 30000 )
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )
		local rad_heishi=math.random ( 1 , 2 )
		if rad_heishi==1 then
			GiveItem ( arg[1] , 0 , 3326  , 1 , 4  )
		else
			GiveItem ( arg[1] , 0 , 3328  , 1 , 4  )			
		end
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s7=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s7  )
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000 \231\238\235\238\242\224")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000 \231\238\235\238\242\224")		
		--SystemNotice ( arg[1] ,"Поздравляем вы получили приз и 10000 золота")
		--SynTigerString  ( arg[1] ,"Поздравляем вы получили приз и 10000 золота")
		AddMoney ( arg[1] , 0 , 10000 )
		GiveItem ( arg[1] , 0 , 3096  , 1 , 4  )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s5=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s5  )
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000 \231\238\235\238\242\224")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 10000 \231\238\235\238\242\224")		
		--SystemNotice ( arg[1] ,"Поздравляем вы получили приз и 10000 золота")
		--SynTigerString  ( arg[1] ,"Поздравляем вы получили приз и 10000 золота")
		AddMoney ( arg[1] , 0 , 10000 )
		GiveItem ( arg[1] , 0 , 3094  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s6=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s6  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 8000 \231\238\235\238\242\224")
		SynTigerString ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \239\238\235\243\247\232\235\232 \239\240\232\231 \232 8000 \231\238\235\238\242\224")
		--SystemNotice ( arg[1] ,"Поздравляем вы получили приз и 8000 золота")
		--SynTigerString ( arg[1] ,"Поздравляем вы получили приз и 8000 золота")
		AddMoney ( arg[1] , 0 , 8000 )
		if arg[5] ~= 3360 then 
			if arg[5] == 845 or arg[5] == 846 or arg[5] == 847 then
				local s4=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , s4  )
			else 
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11]==1 and arg[2]~=new_id and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		--SystemNotice ( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых")
		--SynTigerString( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых"")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s1=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 ,arg[2]  , 1 , s1  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12]==1 and arg[3]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		--SystemNotice ( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых")
		--SynTigerString( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых"")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s2=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s2  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end	
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13]==1 and arg[4]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \209\247\224\241\242\235\232\226\251\233 \238\242\228\251\245 \232 2000 \231\238\235\238\242\251\245")
		--SystemNotice ( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых")
		--SynTigerString( arg[1] ,"Поздравляем вы выбили Счастливый отдых и 2000 золотых"")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s3=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s3  )
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	local star = 0
	local eleven = 0
	for star=2,8,3 do
		if arg[star] ==194 and arg[11] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=3,9,3 do
		if arg[star] ==194 and arg[12] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=4,10,3 do
		if arg[star] ==194 and arg[13] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	if eleven==0 then
		SynTigerString( arg[1] ,"\194\224\236 \237\243\230\237\238 \225\238\235\252\248\229 \240\224\225\238\242\224\242\252.")
		--SynTigerString( arg[1] ,"Вам нужно больше работать.")
	else 
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236,\226\251 \239\238\235\243\247\232\235\232 "..eleven.." \234\243\239\254\240 \237\224 \236\232\235\235\232\238\237")
		--SynTigerString( arg[1] ,"Поздравляем,вы получили "..eleven.." купюр на миллион")
		GiveItem ( arg[1] , 0 , 854  , eleven , 4  )
	end
end


function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "\194\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
		 
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "\211 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice( character , "У вас нет Медали Отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 200 then
			SystemNotice( character , "\211 \226\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \238\247\234\238\226 \247\229\241\242\232")
			--SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-200
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"\194\224\236 \237\229\245\226\224\242\224\229\242 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
			--SystemNotice(character ,"Вам нехватает слотов в инвентаре")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "\194\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "\211 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice( character , "У вас нет Медали Отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 2000 then
			SystemNotice( character , "\211 \226\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \238\247\234\238\226 \247\229\241\242\232")
			--SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-2000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"\194\224\236 \237\229\245\226\224\242\224\229\242 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
			--SystemNotice(character ,"Вам нехватает слотов в инвентаре")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "\194\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "\211 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice( character , "У вас нет Медали Отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 20000 then
			SystemNotice( character , "\211 \226\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \238\247\234\238\226 \247\229\241\242\232")
			--SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-20000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"\194\224\236 \237\229\245\226\224\242\224\229\242 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
			--SystemNotice(character ,"Вам нехватает слотов в инвентаре")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end
function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
end
function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
end
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
		end
	else
		SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\251 \237\229 \226\251\232\227\240\224\235\232 \237\229\234\224\234\238\227\238 \239\240\232\231\224" )
		--SystemNotice( role , "Правильно! Вы не выиграли некакого приза" )
	end
end
function WGprize_1( role ) 
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\251 \239\238\235\243\247\232\235\232 " .. lvNow*10 .. " \238\247\234\238\226 \238\239\251\242\224")
	--SystemNotice( role , "Правильно! Вы получили " .. lvNow*10 .. " очков опыта")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\224\248\229 \231\228\238\240\238\226\252\229 \226\238\241\241\242\224\237\238\226\235\229\237\238")
	--SystemNotice( role , "Правильно! Ваше здоровье восстановлено")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , " \207\240\224\226\232\235\252\237\251\233 \238\242\226\229\242 \226\238\241\241\242\224\237\238\226\232\242 \239\238\235\237\238\241\242\252\254 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
	--SystemNotice( role , " Правильный ответ восстановит полностью здоровье и ману")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role)
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\251\233 \238\242\226\229\242 \228\224\241\242  " .. lvNow .. " \234\229\234\241\238\226")
	--SystemNotice( role , "Правильный ответ даст  " .. lvNow .. " кексов")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\251\233 \238\242\226\229\242 \228\224\241\242 1 \225\232\235\229\242 \226\238\231\226\240\224\249\229\237\232\255")
	--SystemNotice( role , "Правильный ответ даст 1 билет возвращения")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "\207\240\224\226\232\235\252\237\251\233 \238\242\226\229\242 \225\243\228\229\242 \226\238\241\241\242\224\237\224\226\235\232\226\224\242\252 \226\224\236 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
	--SystemNotice( role , "Правильный ответ будет восстанавливать вам здоровье и ману")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

	GetExp	=	{}		
	GetExp[1]	=	0
	GetExp[2]	=	5
	GetExp[3]	=	15
	GetExp[4]	=	35
	GetExp[5]	=	101
	GetExp[6]	=	250
	GetExp[7]	=	500
	GetExp[8]	=	1000
	GetExp[9]	=	1974
	GetExp[10]	=	3208
	GetExp[11]	=	4986
	GetExp[12]	=	7468
	GetExp[13]	=	10844
	GetExp[14]	=	15338
	GetExp[15]	=	21210
	GetExp[16]	=	28766
	GetExp[17]	=	38356
	GetExp[18]	=	50382
	GetExp[19]	=	65306
	GetExp[20]	=	83656
	GetExp[21]	=	106032
	GetExp[22]	=	133112
	GetExp[23]	=	165668
	GetExp[24]	=	204564
	GetExp[25]	=	250780
	GetExp[26]	=	305412
	GetExp[27]	=	369692
	GetExp[28]	=	444998
	GetExp[29]	=	532870
	GetExp[30]	=	635026
	GetExp[31]	=	753378
	GetExp[32]	=	890062
	GetExp[33]	=	1047438
	GetExp[34]	=	1228138
	GetExp[35]	=	1435074
	GetExp[36]	=	1671470
	GetExp[37]	=	1940892
	GetExp[38]	=	2247288
	GetExp[39]	=	2595010
	GetExp[40]	=	2988860
	GetExp[41]	=	3434132
	GetExp[42]	=	3936658
	GetExp[43]	=	4502856
	GetExp[44]	=	5139778
	GetExp[45]	=	5855180
	GetExp[46]	=	6657576
	GetExp[47]	=	7556310
	GetExp[48]	=	8561630
	GetExp[49]	=	9684764
	GetExp[50]	=	10938016
	GetExp[51]	=	12334856
	GetExp[52]	=	13890020
	GetExp[53]	=	15619622
	GetExp[54]	=	17541282
	GetExp[55]	=	19674240
	GetExp[56]	=	22039516
	GetExp[57]	=	24660044
	GetExp[58]	=	27560852
	GetExp[59]	=	30769230
	GetExp[60]	=	37746418
	GetExp[61]	=	45876427
	GetExp[62]	=	59571153
	GetExp[63]	=	75703638
	GetExp[64]	=	94615279
	GetExp[65]	=	116688304
	GetExp[66]	=	155291059
	GetExp[67]	=	186418013
	GetExp[68]	=	238159614
	GetExp[69]	=	298622278
	GetExp[70]	=	368975850
	GetExp[71]	=	450525549
	GetExp[72]	=	568409779
	GetExp[73]	=	679324744
	GetExp[74]	=	806544569
	GetExp[75]	=	952091724
	GetExp[76]	=	1188099236
	GetExp[77]	=	1480429211
	GetExp[78]	=	1776125584
	GetExp[79]	=	2091634902
	GetExp[80]	=	2425349810
	GetExp[81]	=	2440895086
	GetExp[82]	=	2458896515
	GetExp[83]	=	2479742169
	GetExp[84]	=	2503881436
	GetExp[85]	=	2531834707
	GetExp[86]	=	2564204594
	GetExp[87]	=	2601688923
	GetExp[88]	=	2645095775
	GetExp[89]	=	2695360909
	GetExp[90]	=	2753567934
	GetExp[91]	=	2820971668
	GetExp[92]	=	2899025191
	GetExp[93]	=	2989411170
	GetExp[94]	=	3094078133
	GetExp[95]	=	3215282476
	GetExp[96]	=	3355637105
	GetExp[97]	=	3518167765
	GetExp[98]	=	3706378269
	GetExp[99]	=	3924326032
	GetExp[100]	=	4176709541
	
function AddExp_1 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_1 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_1 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_1 = math.floor(exp_up * 0.8)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_1 = math.floor(exp_up * 0.1)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_1 = math.floor(exp_up * 0.05)
	else
		exp_1 = math.floor(exp_up * 0.03)
	end
	AddExp ( role, npc, exp_1, exp_1)
	return LUA_TRUE
end

function AddExp_2 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_2 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_2 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_2 = math.floor(exp_up * 0.9)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_2 = math.floor(exp_up * 0.3)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_2 = math.floor(exp_up * 0.22)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_2 = math.floor(exp_up * 0.11)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_2 = math.floor(exp_up * 0.055)
	else
		exp_2 = math.floor(exp_up * 0.033)
	end
	AddExp ( role, npc, exp_2, exp_2)
	return LUA_TRUE
end

function AddExp_3 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_3 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_3 = math.floor(exp_up * 1.2)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_3 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_3 = math.floor(exp_up * 0.5)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_3 = math.floor(exp_up * 0.24)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_3 = math.floor(exp_up * 0.078)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_3 = math.floor(exp_up * 0.0083)
	else
		exp_3 = math.floor(exp_up * 0.0045)
	end
	AddExp ( role, npc, exp_3, exp_3)
end

function AddExp_4 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_4 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_4 = math.floor(exp_up * 1.4)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_4 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_4 = math.floor(exp_up * 0.8)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_4 = math.floor(exp_up * 0.4)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_4 = math.floor(exp_up * 0.2)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_4 = math.floor(exp_up * 0.10)
	else
		exp_4 = math.floor(exp_up * 0.06)
	end
	AddExp ( role, npc, exp_4, exp_4)
	return LUA_TRUE
end

function AddExp_5 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_5 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_5 = math.floor(exp_up * 1.6)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_5 = math.floor(exp_up * 1.1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_5 = math.floor(exp_up * 1)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_5 = math.floor(exp_up * 0.44)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_5 = math.floor(exp_up * 0.22)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_5 = math.floor(exp_up * 0.11)
	else
		exp_5 = math.floor(exp_up * 0.066)
	end
	AddExp ( role, npc, exp_5, exp_5)
	return LUA_TRUE
end

function AddExp_6 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_6 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_6 = math.floor(exp_up * 1.8)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_6 = math.floor(exp_up * 0.5)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_6 = math.floor(exp_up * 0.25)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_6 = math.floor(exp_up * 0.125)
	else
		exp_6 = math.floor(exp_up * 0.075)
	end
	AddExp ( role, npc, exp_6, exp_6)
	return LUA_TRUE
end

function CheckTeam ( role )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )
	local n1 = 0
	local n2 = 0
	local n3 = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					
			local lv_p = GetChaAttr ( player[j] , ATTR_LV )

			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end

	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end

function CheckTime ( role )
	local now_week= os.date("%w")		
	local now_hour= os.date("%H")		
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
	if now_week == 6 then
		if now_hour >= 9 and now_hour < 12 then
			return LUA_TRUE
		elseif now_hour >= 21 then
			return LUA_TRUE
		end
	end
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
			SystemNotice( role , "\206\248\232\225\234\224")
			--SystemNotice( role , "Ошибка")
		end
	else
		SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\251 \237\229 \226\251\232\227\240\224\235\232 \239\240\232\231\224" )
		--SystemNotice( role , "Правильно! Вы не выиграли приза" )
	end
end
function WGprize_1( role ) --јУѕ­Сй LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\251 \239\238\235\243\247\232\235\232 " .. lvNow*10 .. " \238\247\234\238\226 \238\239\251\242\224")
	--SystemNotice( role , "Правильно! Вы получили " .. lvNow*10 .. " очков опыта")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role )
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\224\248\232 \230\232\231\237\232 \226\238\241\241\242\224\237\224\226\235\232\226\224\229\242\241\255")
	--SystemNotice( role , "Правильно! Ваши жизни восстанавливается")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) 
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\224\248\224 \236\224\237\224 \226\238\241\241\242\224\237\224\226\235\232\226\224\229\242\241\255")
	--SystemNotice( role , "Правильно! Ваша мана восстанавливается")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) 
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\251 \239\238\235\243\247\232\235\232 " .. lvNow .. " \234\229\234\241\238\226")
	--SystemNotice( role , "Правильно! Вы получили " .. lvNow .. " кексов")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) 
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\224\236 \226\251\228\224\237 1 \225\232\235\229\242 \226\238\231\226\240\224\249\229\237\232\255")
	--SystemNotice( role , "Правильно! Вам выдан 1 билет возвращения")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "\207\240\224\226\232\235\252\237\238! \194\224\248\232 \230\232\231\237\232 \232 \236\224\237\224 \226\238\241\241\242\224\237\224\226\235\232\226\224\254\242\241\255")
	--SystemNotice( role , "Правильно! Ваши жизни и мана восстанавливаются")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end

function Can_Exchange(sSrcItem,sSrcNum,sTagItem,sTagNum)
	local Data
	for Data in ChangeItemList do
		 if ChangeItemList[Data][1] == sSrcItem and  ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		 end
	end
	return LUA_FALSE
end

function Distance(a,b,c,d)
        local x1,y1,x2,y2=a,b,c,d 
        local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
        return dis 
end 

--[[Функция проверки 
полного комплекта 95BB Ансилов.]]--
function CheckItem_ZHONGSHEN ( role )

	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local head = GetChaItem ( role , 1 , 0 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Head_ID = GetItemID ( head )
            local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
            local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )

		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		head_gem_id=Head_ID
	if body_gem_id ~= 6105 and body_gem_id ~= 6109 and body_gem_id ~= 6113 and body_gem_id ~= 6117 and body_gem_id ~= 6121 and body_gem_id ~= 6125 then
	   return 0
	end
	if hand_gem_id ~= 6106 and hand_gem_id ~= 6110 and hand_gem_id ~= 6114 and hand_gem_id ~= 6118 and hand_gem_id ~= 6122 and hand_gem_id ~= 6126 then
	   return 0
	end
	if foot_gem_id ~= 6107 and foot_gem_id ~= 6111 and foot_gem_id ~= 6115 and foot_gem_id ~= 6119 and foot_gem_id ~= 6123 and foot_gem_id ~= 6127 then 
	   return 0
	end
	if head_gem_id ~= 6104 and head_gem_id ~= 6108 and head_gem_id ~= 6112 and head_gem_id ~= 6116 and head_gem_id ~= 6120 and head_gem_id ~= 6124 then
	   return 0
	end
	return 1
end

--Свечение 95BB
function ZhongShenTaoZhuang(role,now_tick)
	local ZhongShen_Value = CheckItem_ZHONGSHEN (role)
	if ZhongShen_Value ~= 0 then
		local statelv = 1
		local statetime = 3600
		AddState ( role , role , STATE_zhongshen , statelv , statetime )
		return
	else
		local statelv_ZhongShen = GetChaStateLv ( role , STATE_zhongshen )
		if statelv_ZhongShen~=0 then
				RemoveState ( role ,STATE_zhongshen ) 
			return
			end
		return
	end
end



--Возвращает количество персонажей, которые в отряде с игроком.
function GetPlayerCountInPartyWithRole(role)

	local count = 0
	
	for i = 0, 4, 1 do
		if ValidCha(GetTeamCha(role , i)) == 1 then
			count = count + 1
		end
	end
	
	return count

end

--Проверяет расы персонажей.
function CheckChaType(player1, player2)

	local TypeFirstPlayer  = GetChaTypeID(player1)
	local TypeSecondPlayer = GetChaTypeID(player2)
	
	--Раса + раса
	if TypeFirstPlayer == TypeSecondPlayer then
		return 0
	end
	
	--Ланс + Карциз или Карциз + Ланс
	if TypeFirstPlayer == 1 and TypeSecondPlayer == 2 or
	   TypeFirstPlayer == 2 and TypeSecondPlayer == 1 then
		return 0
	end
	
	--Филисс + Ами или Ами + Филисс
	if TypeFirstPlayer == 3 and TypeSecondPlayer == 4 or
	   TypeFirstPlayer == 4 and TypeSecondPlayer == 3 then
		return 0
	end
	
	return 1
	
end

--Проверяет свадебные наряды
function CheckWeddingDress(role)

	local ChaType = GetChaTypeID(role)              --Раса персонажа
	local Body  = GetItemID(GetEquipItemP(role, 2)) --Тело
	local Glove = GetItemID(GetEquipItemP(role, 3)) --Перчатки
	local Shoes = GetItemID(GetEquipItemP(role, 4)) --Ботинки
	
	--Ланс
	if ChaType == 1 then
		if Body  ~= 5221 or
		   Glove ~= 5222 or
           Shoes ~= 5223 then
		   
			return 0
		end
		
	--Карциз
	elseif ChaType == 2 then
		if Body  ~= 5238 or
		   Glove ~= 5239 or
           Shoes ~= 5240 then
		   
			return 0
		end
	
	--Филлис
	elseif ChaType == 3 then
		if Body  ~= 5245 or
		   Glove ~= 5246 or
           Shoes ~= 5247 then
		   
			return 0
		end
		
	--Ами
	elseif ChaType == 4 then
		if Body  ~= 5253 or
		   Glove ~= 5254 or
           Shoes ~= 5255 then
		   
			return 0
		end
	
	--Неизвестно :) Вряд ли мы сюда попадем, но все равно вернем 0.
	else
		return 0
	end
	
	return 1
end

--Проверяет поженен персонаж или нет
function CheckIsMarried(role)
	
	local sc = CheckBagItem(role, 2520)
	if sc > 0 then
		return 0
	end
	
	return 1

end

--Выдача Свадебного сертификата
function GiveWeddingCertificate(role)


	
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы получить Свадебный Сертификат молодожены должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	
	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--Проверим, может из персонажей уже кто-то поженился
	if CheckIsMarried(player[1]) == 1 then
		SystemNotice(player[1], "Вы уже поженены!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." уже поженился на другом человеке!")
		
		return 0
	end
	
	if CheckIsMarried(player[2]) == 1 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." уже поженился на другом человеке!")
		SystemNotice(player[2], "Вы уже поженены!")
		
		return 0
	end
	
	--Проверим расы персонажей
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." неподоходящая для Вас пара!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." неподоходящая для Вас пара!")
		
		return 0
	end
	
	--Проверим свадебные наряды у обеих сторон
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "Наденьте свадебный наряд!")
		SystemNotice(player[2], "Ваша половинка должна надеть свадбеный наряд!")
		
		return 0
	end
	
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "Ваша половинка должна надеть свадбеный наряд!")
		SystemNotice(player[2], "Наденьте свадебный наряд!")
		
		return 0
	end
	
	--Проверим Кольцо Св. Валентина у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У Вас нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вашей половинки нет Кольца Св. Валентина!")
		
		return 0
	end
	
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingSecondPlayer  == 0 then
		SystemNotice(player[1], "У Вашей половинки нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вас нет Кольца Св. Валентина!")
		
		return 0
	end
	
	--Проверим наличие 10 000 000
	local MoneyPlayer = GetChaAttr(player[1] , ATTR_GD)
	if MoneyPlayer < WD_GOLD then
		SystemNotice(player[1], "У Вас недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы получить Свадебный сертификат!")
		SystemNotice(player[2], "У Вашей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		
		return 0
	end
	
	--Проверим наличие Свадебного Сертификата.
	local CertificatePlayer = CheckBagItem(player[1], 2913)
	if CertificatePlayer == 1 then
		SystemNotice(player[1], "У Вас уже есть Свадебный сертификат! Очередь Вашей половинки!")
		SystemNotice(player[2], "Ваша очередь получать Свадебный сертификат!")
		
		return 0
	end
	
	--Проверим свободную ячейку в инвентаре
	local FreeSlots = GetChaFreeBagGridNum(player[1])
	if FreeSlots < 1 then 
		SystemNotice(player[1], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		SystemNotice(player[2], "У Вашей половинки нет свободных ячеек в инвентаре!")
		
		return 0
	end
	
	

	
	--1. Заберем деньги
	TakeMoney(player[1], nil, WD_GOLD)
	
	--2. Дадим  Свадебный Сертификат
	GiveItem(player[1], 0, 2913, 1, 1)
	
	--3. Обновим персонажа
	RefreshCha(player[1])
	
	--4. Скажем об этом второй половине
	if CheckBagItem(player[2], 2913) == 0 then
		SystemNotice(player[2], "Ваша половинка получила свадебный сертификат! Теперь Ваша очередь!")
	else
		SystemNotice(player[2], "Ваша половинка получила свадебный сертификат!")
	end

	
	return 1
	
end

--Конец аукциона
function AuctionEnd(role)


	--Проверки


	--Проверка наличия Ставочной карты
	local sc = CheckBagItem(role, 3025)	
	if sc <= 0 then
		SystemNotice(role, "\207\238\230\224\235\243\233\241\242\224, \239\238\228\242\226\229\240\228\232\242\229, \247\242\238 \243 \194\224\241 \241 \241\238\225\238\233 \229\241\242\252 \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224")
		return 0
	end
	
	--Проверка наличия Разрешительного Церковного Буклета
	local item_number = CheckBagItem(role, 3066)		
	if item_number >= 1 then
		SystemNotice(role, "\211 \194\224\241 \243\230\229 \229\241\242\252 \208\224\231\240\229\248\232\242\229\235\252\237\251\233 \214\229\240\234\238\226\237\251\233 \193\243\234\235\229\242!")
		return 0
	end
	
	--Проверка наличия 2-ух свободных ячеек в инвентаре
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet < 2 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229")
		return 0
	end
	

	
	--1. Выдаем 10 х Гостевой Сундук
	GiveItem (role, 0, 3666, 10, 4)
	--2. Забираем Ставочную карту
	DelBagItem(role, 3025, 1)
	
	--3. Настройка и выдача Разрешительного Церковного Буклета
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem(role, 3066, 1, 4)
	local Item_new = GetChaItem(role, 2, r2)
	
	
	local now_month    = os.date("%m")
	local now_day      = os.date("%d")
	local now_hour     = os.date("%H") 
	local now_miniute  = os.date("%M")
	local now_day1     = 0
	local now_month1   = 0
	local now_hour1    = 0
	local now_miniute1 = 0
	    
	now_month   = tonumber(now_month)   
	now_day     = tonumber(now_day)  
	now_hour    = tonumber(now_hour)		
	now_miniute = tonumber(now_miniute)
	
	local CheckDateNum = now_hour * 100 + now_miniute

	--18:00
	if CheckDateNum == 1830 then 
		now_hour1    = 18
		now_miniute1 = 0
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 26 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 26 then 
				now_day1   = (now_day + 5) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 25 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 5) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 23 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 23 then 
				now_day1   = (now_day + 5) - 28
				now_month1 = now_month + 1 	
			end 
		end
	--19:10
	elseif CheckDateNum == 1910 then 
		now_hour1    = 20
		now_miniute1 = 10	
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 26 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 26 then 
				now_day1   = (now_day + 5) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 25 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 5) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 23 then 
				now_day1 = now_day + 5
				now_month1 = now_month
			elseif now_day > 23 then 
				now_day1   = (now_day + 5) - 28
				now_month1 = now_month + 1
			end 
		end
	--19:50
	elseif CheckDateNum == 1950 then 
		now_hour1    = 18
		now_miniute1 = 0  
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 25 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 6) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 24 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 24 then 
				now_day1   = (now_day + 6) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 22 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 22 then 
				now_day1   = (now_day + 6) - 28
				now_month1 = now_month + 1
			end 
		end
	--20:30
	elseif CheckDateNum == 2030 then 
		 now_hour1    = 20
		 now_miniute1 = 10
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 25 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 6) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 24 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 24 then 
				now_day1   = (now_day + 6) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 22 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 22 then 
				now_day1   = (now_day + 6) - 28
				now_month1 = now_month + 1
			end 
		end
	end

	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month1)	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day1)
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour1)
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute1)
	
	SynChaKitbag(role, 13)
end

--Проверка для участия на аукционе
function YORN(role)

	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet < 2 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229")
		return  0
	end

	local item_number1 = CheckBagItem(role, 3066)		
	if item_number1 >= 1 then
		SystemNotice(role, "\211 \194\224\241 \243\230\229 \229\241\242\252 \208\224\231\240\229\248\232\242\229\235\252\237\251\233 \214\229\240\234\238\226\237\251\233 \193\243\234\235\229\242!")
		return 0
	end
	
	local item_number2 = CheckBagItem(role, 3078)		
	if item_number2 >= 1 then
		SystemNotice( role ,"\211 \194\224\241 \243\230\229 \229\241\242\252 \207\240\232\227\235\224\241\232\242\229\235\252\237\251\233 \225\232\235\229\242\251!")
		return  0
	end
	
	local item_number3 = CheckBagItem(role, 3025)		
	if item_number3 < 1 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\228\242\226\229\240\228\232\242\229, \247\242\238 \243 \194\224\241 \241 \241\238\225\238\233 \229\241\242\252 \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224")
		return  0
	end
	
	return  1
end

--Получение Гостевого Сундука (Пригласительных билетов)
function ChangeItem(character, npc)
	local Item_CanGet = GetChaFreeBagGridNum(character)
	if Item_CanGet < 1 then
		SystemNotice(character, "Требуется 1 свободная ячейка в инвентаре, чтобы получить Гостевой Сундук")
		return 0
	end
	
	local am1 = CheckBagItem(character, 3066 )			
	if am1 < 1 then
		SystemNotice(character, "У Вас нет Разрешительного Церковного Буклета!")
		return 0
	end
	
	local Money_Need = 50000
	local Money_Have = GetChaAttr(character, ATTR_GD)
	if Money_Need > Money_Have then
		SystemNotice(character, "Недостаточно денег! Нужно "..Money_Need.." монет.")
		return 0
	else
		TakeMoney(character, nil, Money_Need)
	end

	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem(character, 3666, 10 , 4)
	local Item_el = GetChaItem(character, 2, r2)

	local item_old    = GetChaItem2(character, 2, 3066)
	local old_month   = GetItemAttr(item_old, ITEMATTR_VAL_STA)	
	local old_day     = GetItemAttr(item_old, ITEMATTR_VAL_STR)
	local old_hour    = GetItemAttr(item_old, ITEMATTR_VAL_CON)  
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)
	

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )

	SynChaKitbag(character, 13)
end

--Запуск фейерверков свидетелей
function LaunchFirework(role, npc)
	PlayEffect(npc, math.random(1, WD_FIREWORK_COUNT))
end

--Свадьба
function Wedding(role)


	--Проверки и инициализация

	
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы начать церемонию бракосочетания, Вы, вместе со своей половинкой, должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	
	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	
	--Проверим расы персонажей
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." неподоходящая для Вас пара!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." неподоходящая для Вас пара!")
		
		return 0
	end
	
	--Проверим свадебные наряды у обеих сторон
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "Наденьте свадебный наряд!")
		SystemNotice(player[2], "Ваша половинка должна надеть свадбеный наряд!")
		
		return 0
	end
	
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "Ваша половинка должна надеть свадбеный наряд!")
		SystemNotice(player[2], "Наденьте свадебный наряд!")
		
		return 0
	end
	
	--Проверим Кольцо Св. Валентина у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У Вас нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вашей половинки нет Кольца Св. Валентина!")
		
		return 0
	end
	
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingSecondPlayer  == 0 then
		SystemNotice(player[1], "У Вашей половинки нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вас нет Кольца Св. Валентина!")
		
		return 0
	end
	
	--Проверим наличие Свадебного Сертификата у обеих сторон
	local CertificateFirstPlayer = CheckBagItem(player[1], 2913)
	if CertificateFirstPlayer == 1 then
		SystemNotice(player[1], "У Вас нет Свадебного сертификата!")
		SystemNotice(player[2], "У Вашей половинки нет Свадебного сертификата!")
		
		return 0
	end
	
	local CertificateSecondPlayer = CheckBagItem(player[2], 2913)
	if CertificateSecondPlayer == 1 then
		SystemNotice(player[1], "У Вашей половинки нет Свадебного сертификата!")
		SystemNotice(player[2], "У Вас нет Свадебного сертификата!")
		
		return 0
	end
	
	--Проверим свободную ячейку в инвентаре
	local FreeSlotsFirstPlayer = GetChaFreeBagGridNum(player[1])
	if FreeSlotsFirstPlayer < 1 then 
		SystemNotice(player[1], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		SystemNotice(player[2], "У Вашей половинки нет свободных ячеек в инвентаре!")
		
		return 0
	end
	
	local FreeSlotsSecondPlayer = GetChaFreeBagGridNum(player[2])
	if FreeSlotsFirstSecondPlayer < 1 then
		SystemNotice(player[1], "У Вашей половинки нет свободных ячеек в инвентаре!")
		SystemNotice(player[2], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		
		return 0
	end

	

	--Действие

	
	
	--1. Забираем Кольца Дня Св. Валентина
	TakeItem(player[1], 0, 2521, 1)
	TakeItem(player[2], 0, 2521, 1)
	
	--2. Забираем Свадебные сертификаты
	TakeItem(player[1], 0, 2913, 1)
	TakeItem(player[2], 0, 2913, 1)
	
	--3. Проиграем эффект сердечек на поженившихся персонажах
	PlayEffect(player[1], 370)
	PlayEffect(player[2], 370)
	
	--4. Учим скилл "Узы любви"
	AddChaSkill(player[1], SK_QLZX, 1, 1, 0)
	AddChaSkill(player[2], SK_QLZX, 1, 1, 0)
	
	--5. Выдаем и настраиваем кольца
	GiveItem(player[1], 0, 2520, 1, 4)
	GiveItem(player[2], 0, 2520, 1, 4)
	
	local FirstPlayerID  = GetRoleID(player[1]) 
	local SecondPlayerID = GetRoleID(player[2])
	
	local FirstPlayerRing  = GetChaItem2(player[1], 2, 2520)
	local SecondPlayerRing = GetChaItem2(player[2], 2, 2520)
	
	SetItemForgeParam(FirstPlayerRing, 1, SecondPlayerID) 
	SetItemForgeParam(SecondPlayerRing, 1, FirstPlayerID)
	
	--6. Выводим глобальное сообщение о свадьбе.
	local msg = "Поздравляем "..GetChaDefaultName(player[1]).. " и "..GetChaDefaultName(player[2]).." со свадьбой! Желаем им самого лучшего и т.п."
	Notice(msg)
	
	
	
	return 1
	
end

--Включает свадебный диалог NPC в церкви
function CheckWeddingTime()

	local week   = tonumber(os.date("%w"))
	local hour   = tonumber(os.date("%H"))
	local minute = tonumber(os.date("%M"))
	local check  = hour * 100 + minute
	
	if week == 6 or week == 0 then
		if check >= 1810 and check <= 2010 or
		   check >= 2010 and check <= 2210 then
		   
		   return LUA_TRUE
		end
	end
	
	return LUA_FALSE

end

--[[Функция проверки 
полного комплекта 95BB Ансилов.]]--
function CheckItem_ZHONGSHEN ( role )

	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local head = GetChaItem ( role , 1 , 0 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Head_ID = GetItemID ( head )
            local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
            local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )

		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		head_gem_id=Head_ID
	if body_gem_id ~= 6105 and body_gem_id ~= 6505 and body_gem_id ~= 6113 and body_gem_id ~= 6117 and body_gem_id ~= 6121 and body_gem_id ~= 6125 then
	   return 0
	end
	if hand_gem_id ~= 6106 and hand_gem_id ~= 6510 and hand_gem_id ~= 6114 and hand_gem_id ~= 6118 and hand_gem_id ~= 6122 and hand_gem_id ~= 6126 then
	   return 0
	end
	if foot_gem_id ~= 6107 and foot_gem_id ~= 6512 and foot_gem_id ~= 6115 and foot_gem_id ~= 6119 and foot_gem_id ~= 6123 and foot_gem_id ~= 6127 then 
	   return 0
	end
	if head_gem_id ~= 6104 and head_gem_id ~= 6108 and head_gem_id ~= 6511 and head_gem_id ~= 6116 and head_gem_id ~= 6120 and head_gem_id ~= 6124 then
	   return 0
	end
	return 1
end

--Свечение 95BB
function ZhongShenTaoZhuang(role,now_tick)
	local ZhongShen_Value = CheckItem_ZHONGSHEN (role)
	if ZhongShen_Value ~= 0 then
		local statelv = 1
		local statetime = 3600
		AddState ( role , role , STATE_zhongshen , statelv , statetime )
		return
	else
		local statelv_ZhongShen = GetChaStateLv ( role , STATE_zhongshen )
		if statelv_ZhongShen~=0 then
				RemoveState ( role ,STATE_zhongshen ) 
			return
			end
		return
	end
end



function GetRoleID(role)
	return GetPlayerID(GetChaPlayer(role))
end