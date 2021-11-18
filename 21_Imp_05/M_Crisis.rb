=begin
#######################################################################################################################
 ●『インプ（緑）』クライシス口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_crisis_05
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            tx["md"] = "3"
#----------------------------------------------------------------------------------------------------------------------
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n Then let me help you with that♪\n #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Oh wow, so that's how a guy does it....\\H\n Hey, show me more♪\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Hold me tight, #{target}....!\n I feel like I'm gonna bounce....! \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Anngh....that feels so good....\\H\n Touch me down here....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aieeee\\H\n The guy that's it's over there....mwaahhn\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_bedin_crisis_05
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            tx["md"] = "3"
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n Then let me help you with that♪\n #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa, looking at it makes my heart race....\\H\n Hey, show me more♪\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Hold me tight, #{target}....!\n I feel like I'm gonna bounce....! \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Anngh....that feels so good....\\H\n Touch me down here....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aieeee\\H\n Oh, you won't get away with that....\n　#{pleasure_s}\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n Then let me help you with that♪\n #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa, looking at it makes my heart race....\\H\n Hey, show me more♪\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Hold me tight, #{target}....!\n I feel like I'm gonna bounce....! \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Anngh....that feels so good....\\H\n Touch me down here....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aieeee\\H\n Oh, you won't get away with that....\n　#{pleasure_s}\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n Then let me help you with that♪\n #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa, looking at it makes my heart race....\\H\n Hey, show me more♪\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Hold me tight, #{target}....!\n I feel like I'm gonna bounce....! \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{target}, I....\n My body feels kinda light and fluffy....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Anngh....that feels so good....\\H\n Touch me down here....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aieeee\\H\n Oh, you won't get away with that....\n　#{pleasure_s}\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
