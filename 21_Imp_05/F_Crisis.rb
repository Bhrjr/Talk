=begin
#######################################################################################################################
 ●『インプ（緑）』クライシス口上(対パートナー)
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_crisis_05
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            tx["md"] = "3"
#----------------------------------------------------------------------------------------------------------------------
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "User solo"
  tx["tx1"] = "\"Aha, does it feel good?\n #{myname}'m pretty good, right? ♪\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx={"tx1" => "\"Wowie....\\H\n So doing it like that feels nice, huh....\\H\"","md" => "3"}
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
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
  tx["tx1"] = "\"Aieeee\\H\n The guy that's it's over there....mwaahhn\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_bedin_crisis_05
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
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "User solo"
  tx["tx1"] = "\"Aha, does it feel good?\n #{myname}'m pretty good, right? ♪\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx={"tx1" => "\"Wowie....\\H\n So doing it like that feels nice, huh....\\H\"","md" => "3"}
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
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
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "User solo"
  tx["tx1"] = "\"Aha, does it feel good?\n #{myname}'m pretty good, right? ♪\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx={"tx1" => "\"Wowie....\\H\n So doing it like that feels nice, huh....\\H\"","md" => "3"}
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
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
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "User solo"
  tx["tx1"] = "\"Aha, does it feel good?\n #{myname}'m pretty good, right? ♪\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're about to bounce too, #{target}....?\n Can you hold me tight then....?\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n But #{myname}'m not doing anything though♪\n #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx={"tx1" => "\"Wowie....\\H\n So doing it like that feels nice, huh....\\H\"","md" => "3"}
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
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
