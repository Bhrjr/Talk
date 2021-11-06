=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』クライシス口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end







#######################################################################################################################
######################################★クライシス：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_crisis_00
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
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"Aha....\\H\n 'bout time for you too……I guess?\n Hold me tight, please....\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa....\\H\n Turn this way....#{target}\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, you're amazing, #{target}....\\H\n Make me cum just like that....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
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
##################################★クライシス：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_bedin_crisis_00
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
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"Aha....\\H\n 'bout time for you too……I guess?\n Hold me tight, please....\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa....\\H\n Turn this way....#{target}\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, you're amazing, #{target}....\\H\n Make me cum just like that....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
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
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"Aha....\\H\n 'bout time for you too……I guess?\n Hold me tight, please....\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa....\\H\n Turn this way....#{target}\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, you're amazing, #{target}....\\H\n Make me cum just like that....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
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
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "User solo"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"Aha....\\H\n 'bout time for you too……I guess?\n Hold me tight, please....\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Oh, reaching your limits already?\n Can't you hang on a bit more? #{giggle}\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Whoa....\\H\n Turn this way....#{target}\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, you're amazing, #{target}....\\H\n Make me cum just like that....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
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
