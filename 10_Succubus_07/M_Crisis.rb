=begin
#######################################################################################################################
 ●『サキュバス（橙）』クライシス口上
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_crisis_07
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
  tx["tx1"] = "\"Oh....you're gonna cum soon, right?\n Ufufu, how 'bout I help you with that\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're gonna cum soon as well, #{target}....?\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Ufufu....so adorable\\H\n You need to tough it out a little\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n What are you fidgeting about?\n Lemme get a better look....will you? \\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{pleasure_l}\n You're good, #{target}....\\H\n #{myname}'m gonna....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_s}\n Should be about time for you too, #{myname}....\\H\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_s}\n I'm gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_l}\n You see what I'm doing....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_s}\n Hey, your opponent should be over there....nnnhh\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_bedin_crisis_07
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
  tx["tx1"] = "\"Oh....you're gonna cum soon, right?\n Ufufu, how 'bout I help you with that\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're gonna cum soon as well, #{target}....?\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Ufufu....so adorable\\H\n You need to tough it out a little\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n What are you fidgeting about?\n Lemme get a better look....will you? \\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{pleasure_l}\n You're good, #{target}....\\H\n #{myname}'m gonna....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_s}\n Should be about time for you too, #{myname}....\\H\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_s}\n I'm gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_l}\n You see what I'm doing....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_s}\n Hey, your opponent should be over there....nnnhh\\H\""
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
  tx["tx1"] = "\"Oh....you're gonna cum soon, right?\n Ufufu, how 'bout I help you with that\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're gonna cum soon as well, #{target}....?\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Ufufu....so adorable\\H\n You need to tough it out a little\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n What are you fidgeting about?\n Lemme get a better look....will you? \\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{pleasure_l}\n You're good, #{target}....\\H\n #{myname}'m gonna....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_s}\n Should be about time for you too, #{myname}....\\H\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_s}\n I'm gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_l}\n You see what I'm doing....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_s}\n Hey, your opponent should be over there....nnnhh\\H\""
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
  tx["tx1"] = "\"Oh....you're gonna cum soon, right?\n Ufufu, how 'bout I help you with that\\H\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{pleasure_s}\n You're gonna cum soon as well, #{target}....?\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Ufufu....so adorable\\H\n You need to tough it out a little\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle}\n What are you fidgeting about?\n Lemme get a better look....will you? \\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"#{pleasure_l}\n You're good, #{target}....\\H\n #{myname}'m gonna....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{pleasure_s}\n Should be about time for you too, #{myname}....\\H\n What say we cum like this together....? \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"#{pleasure_s}\n I'm gonna cum soon too....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"#{pleasure_l}\n You see what I'm doing....? \\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"#{pleasure_s}\n Hey, your opponent should be over there....nnnhh\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
