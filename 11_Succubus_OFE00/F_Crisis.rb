=begin
#######################################################################################################################
 ●『サキュバス（桃）』クライシス口上(対パートナー)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgSuccubus_B < MsgBase
 def msg_female_crisis_00
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
  tx["tx1"] = "\"Oh my, you get turned on fairly easily.\n That makes it worth bullying you....\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}\n You shouldn't let your guard down....\\H\n I'll make you cum just like this....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh my....you get turned on fairly easily.\n You need to try a little harder than that....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Can't take it anymore?\n That's fine, can you let me see....more of that face of yours?\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannhh, that it....\\H\n Go harder....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m about to cum too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{giggle}\n How do like\nseeing this right before your eyes....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_l}\n That's it, gimme more....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubus_B < MsgBase
 def msg_female_bedin_crisis_00
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
  tx["tx1"] = "\"Oh my, you get turned on fairly easily.\n That makes it worth bullying you....\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}\n You shouldn't let your guard down....\\H\n I'll make you cum just like this....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh my....you get turned on fairly easily.\n You need to try a little harder than that....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Can't take it anymore?\n That's fine, can you let me see....more of that face of yours?\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannhh, that it....\\H\n Go harder....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m about to cum too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{giggle}\n How do like\nseeing this right before your eyes....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_l}\n That's it, gimme more....\\H\""
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
  tx["tx1"] = "\"Oh my, you get turned on fairly easily.\n That makes it worth bullying you....\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}\n You shouldn't let your guard down....\\H\n I'll make you cum just like this....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh my....you get turned on fairly easily.\n You need to try a little harder than that....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Can't take it anymore?\n That's fine, can you let me see....more of that face of yours?\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannhh, that it....\\H\n Go harder....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m about to cum too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{giggle}\n How do like\nseeing this right before your eyes....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_l}\n That's it, gimme more....\\H\""
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
  tx["tx1"] = "\"Oh my, you get turned on fairly easily.\n That makes it worth bullying you....\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}\n You shouldn't let your guard down....\\H\n I'll make you cum just like this....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh my....you get turned on fairly easily.\n You need to try a little harder than that....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Can't take it anymore?\n That's fine, can you let me see....more of that face of yours?\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannhh, that it....\\H\n Go harder....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m about to cum too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_l}\n #{myname}'m gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{giggle}\n How do like\nseeing this right before your eyes....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_l}\n That's it, gimme more....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
