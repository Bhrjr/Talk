=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』クライシス口上(対パートナー)
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
class MsgLessersuccubus_A < MsgBase
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
  tx["tx1"] = "\"Aha, you get turned on so easily\\H\n Does that you're also a quick climaxer?\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Hey....you're about to cum too, right?\n Let's cum together....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Lemme get a better look, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Nooo....\\H\n I'm gonna cum....!\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_s}\n Hey....#{target}....\\H\n Keep looking at me....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"H....Hang on a sec....!\n Why me.... #{pleasure_s}\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
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
  tx["tx1"] = "\"Aha, you get turned on so easily\\H\n Does that you're also a quick climaxer?\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Hey....you're about to cum too, right?\n Let's cum together....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Lemme get a better look, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Nooo....\\H\n I'm gonna cum....!\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_s}\n Hey....#{target}....\\H\n Keep looking at me....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"H....Hang on a sec....!\n Why me.... #{pleasure_s}\""
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
  tx["tx1"] = "\"Aha, you get turned on so easily\\H\n Does that you're also a quick climaxer?\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Hey....you're about to cum too, right?\n Let's cum together....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Lemme get a better look, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Nooo....\\H\n I'm gonna cum....!\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_s}\n Hey....#{target}....\\H\n Keep looking at me....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"H....Hang on a sec....!\n Why me.... #{pleasure_s}\""
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
  tx["tx1"] = "\"Aha, you get turned on so easily\\H\n Does that you're also a quick climaxer?\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Hey....you're about to cum too, right?\n Let's cum together....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n Lemme get a better look, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Nooo....\\H\n I'm gonna cum....!\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H\n I'm 'bout to come too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_s}\n Hey....#{target}....\\H\n Keep looking at me....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"H....Hang on a sec....!\n Why me.... #{pleasure_s}\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
