=begin
#######################################################################################################################
 ●『サキュバスロード（桃）』クライシス口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/29     仮設定
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgSuccubuslord_B < MsgBase
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle} Looks like you're at the threshold\\H\n Leave your body to me as\n I make you surrender in pleasure....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, your face is in ecstasy\\H\n I want to see more of that cute expression of yours,\n so hold out as much as possible\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle_s}....\\H Hey, your hand stopped moving, you know?\n If you don't step on it,\n I might even wring you out, #{target}....\\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Looks like I managed to pleasured you\\H\n #{giggle_s}....I'm glad for it and all, but I don't want you to be the only one satisfied.\n Make me moan as well....\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Can't take it anymore, perhaps?\n I would've let you use my body\n anytime you wanted, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannh....\\H That's so great, #{target}....\\H\n Keep going like that until I finish....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"#{giggle}\n aren't you at the threshold too, #{target}?\n Don't you think it'd be nice if the two of us can finish together....? \\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H How persistent of you, #{target}....\\H\n I was going to pleasure you,\n but #{myname} was the one that got pleasured instead....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Would you mind watching me properly? \\H\n I'm ending up like this from you watching me, #{target}....\n Suppress my heated-up passion, please....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Hey, you're going too far....haugh\\H\n No, not when you're here, #{target}\\H\n It'd be a shame for only me to be satisfied....aannhh\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubuslord_B < MsgBase
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle} Looks like you're at the threshold\\H\n Leave your body to me as\n I make you surrender in pleasure....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, your face is in ecstasy\\H\n I want to see more of that cute expression of yours,\n so hold out as much as possible\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}, aren't you at the threshold too, #{target}?\n Don't you think it'd be nice if the two of us can finish together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Looks like I managed to pleasured you\\H\n #{giggle_s}....I'm glad for it and all, but I don't want you to be the only one satisfied.\n Make me moan as well....\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Can't take it anymore, perhaps?\n I would've let you use my body\n anytime you wanted, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannh....\\H That's so great, #{target}....\\H\n Keep going like that until I finish....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle_s}....\\H Hey, your hand stopped moving, you know?\n If you don't step on it,\n I might even wring you out, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H How persistent of you, #{target}....\\H\n I was going to pleasure you,\n but #{myname} was the one that got pleasured instead....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Would you mind watching me properly? \\H\n I'm ending up like this from you watching me, #{target}....\n Suppress my heated-up passion, please....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Hey, you're going too far....haugh\\H\n No, not when you're here, #{target}\\H\n It'd be a shame for only me to be satisfied....aannhh\\H\""
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle} Looks like you're at the threshold\\H\n Leave your body to me as\n I make you surrender in pleasure....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, your face is in ecstasy\\H\n I want to see more of that cute expression of yours,\n so hold out as much as possible\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}, aren't you at the threshold too, #{target}?\n Don't you think it'd be nice if the two of us can finish together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Looks like I managed to pleasured you\\H\n #{giggle_s}....I'm glad for it and all, but I don't want you to be the only one satisfied.\n Make me moan as well....\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Can't take it anymore, perhaps?\n I would've let you use my body\n anytime you wanted, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannh....\\H That's so great, #{target}....\\H\n Keep going like that until I finish....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle_s}....\\H Hey, your hand stopped moving, you know?\n If you don't step on it,\n I might even wring you out, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H How persistent of you, #{target}....\\H\n I was going to pleasure you,\n but #{myname} was the one that got pleasured instead....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Would you mind watching me properly? \\H\n I'm ending up like this from you watching me, #{target}....\n Suppress my heated-up passion, please....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Hey, you're going too far....haugh\\H\n No, not when you're here, #{target}\\H\n It'd be a shame for only me to be satisfied....aannhh\\H\""
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle} Looks like you're at the threshold\\H\n Leave your body to me as\n I make you surrender in pleasure....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, your face is in ecstasy\\H\n I want to see more of that cute expression of yours,\n so hold out as much as possible\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle}, aren't you at the threshold too, #{target}?\n Don't you think it'd be nice if the two of us can finish together....? \\H\""
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"Looks like I managed to pleasured you\\H\n #{giggle_s}....I'm glad for it and all, but I don't want you to be the only one satisfied.\n Make me moan as well....\\H\""
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"Can't take it anymore, perhaps?\n I would've let you use my body\n anytime you wanted, #{target}....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aaannh....\\H That's so great, #{target}....\\H\n Keep going like that until I finish....\\H\""
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "Both users"
  tx["tx1"] = "\"#{giggle_s}....\\H Hey, your hand stopped moving, you know?\n If you don't step on it,\n I might even wring you out, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"Aha....\\H How persistent of you, #{target}....\\H\n I was going to pleasure you,\n but #{myname} was the one that got pleasured instead....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Would you mind watching me properly? \\H\n I'm ending up like this from you watching me, #{target}....\n Suppress my heated-up passion, please....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Hey, you're going too far....haugh\\H\n No, not when you're here, #{target}\\H\n It'd be a shame for only me to be satisfied....aannhh\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
