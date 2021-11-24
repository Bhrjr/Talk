=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』クライシス口上(対パートナー)
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/29     仮設定
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_crisis_07
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle_s}, you look happy there\\H\n Not resisting it and yielding your body to it will make it easier....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, what a lovely face\\H Your voice, your skin,\n I'm going to dye it all in euphoria and\n make both your body and mind my captive, #{target}....\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Aren't you at the end of your rope too, #{target}?\n Let's compare and see which of us finishes first\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"*giggle*....what's the matter? Maybe you're not ready yet to continue? \\H\n Aren't you the one that's\\H\n going to pleasure me, #{target}?\n I still haven't had my fill yet....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle_s}, getting all keyed up on your own....\n You should've told me sooner\n if you want me to pick on you....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, that's it, #{target}....\\H\n Like this, don't hold anything back until I finish....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n Even I got pleasured\\H\n Let's keep ascending like this together....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"U-Ufufu\\H Thanks to your cute voice,\n even I ended up like this, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Hey, look\\H\n I ended up like this at the\n thought of doing it with you, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aannhh....\\H\n Go easy on me a little, please....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_bedin_crisis_07
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle_s}, you look happy there\\H\n Not resisting it and yielding your body to it will make it easier....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, what a lovely face\\H Your voice, your skin,\n I'm going to dye it all in euphoria and\n make both your body and mind my captive, #{target}....\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Aren't you at the end of your rope too, #{target}?\n Let's compare and see which of us finishes first\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"*giggle*....what's the matter? Maybe you're not ready yet to continue? \\H\n Aren't you the one that's\\H\n going to pleasure me, #{target}?\n I still haven't had my fill yet....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle_s}, getting all keyed up on your own....\n You should've told me sooner\n if you want me to pick on you....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, that's it, #{target}....\\H\n Like this, don't hold anything back until I finish....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n Even I got pleasured\\H\n Let's keep ascending like this together....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"U-Ufufu\\H Thanks to your cute voice,\n even I ended up like this, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Hey, look\\H\n I ended up like this at the\n thought of doing it with you, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aannhh....\\H\n Go easy on me a little, please....\\H\""
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle_s}, you look happy there\\H\n Not resisting it and yielding your body to it will make it easier....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, what a lovely face\\H Your voice, your skin,\n I'm going to dye it all in euphoria and\n make both your body and mind my captive, #{target}....\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Aren't you at the end of your rope too, #{target}?\n Let's compare and see which of us finishes first\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"*giggle*....what's the matter? Maybe you're not ready yet to continue? \\H\n Aren't you the one that's\\H\n going to pleasure me, #{target}?\n I still haven't had my fill yet....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle_s}, getting all keyed up on your own....\n You should've told me sooner\n if you want me to pick on you....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, that's it, #{target}....\\H\n Like this, don't hold anything back until I finish....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n Even I got pleasured\\H\n Let's keep ascending like this together....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"U-Ufufu\\H Thanks to your cute voice,\n even I ended up like this, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Hey, look\\H\n I ended up like this at the\n thought of doing it with you, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aannhh....\\H\n Go easy on me a little, please....\\H\""
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
  case rand(2)
  when 0
    tx["tx1"] = "\"#{giggle_s}, you look happy there\\H\n Not resisting it and yielding your body to it will make it easier....\\H\""
  when 1
    tx["tx1"] = "\"#{giggle_s}, what a lovely face\\H Your voice, your skin,\n I'm going to dye it all in euphoria and\n make both your body and mind my captive, #{target}....\\H\""
  end
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "Both users"
  tx["tx1"] = "\"Aren't you at the end of your rope too, #{target}?\n Let's compare and see which of us finishes first\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "User rebound harm"
  tx["tx1"] = "\"*giggle*....what's the matter? Maybe you're not ready yet to continue? \\H\n Aren't you the one that's\\H\n going to pleasure me, #{target}?\n I still haven't had my fill yet....\\H\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "User onanism"
  tx["tx1"] = "\"#{giggle_s}, getting all keyed up on your own....\n You should've told me sooner\n if you want me to pick on you....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Aha, that's it, #{target}....\\H\n Like this, don't hold anything back until I finish....\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "Both foes"
  tx["tx1"] = "\"Aha....\\H\n Even I got pleasured\\H\n Let's keep ascending like this together....\\H\""
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "Enemy rebound harm"
  tx["tx1"] = "\"U-Ufufu\\H Thanks to your cute voice,\n even I ended up like this, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "Enemy onanism"
  tx["tx1"] = "\"Aha....\\H Hey, look\\H\n I ended up like this at the\n thought of doing it with you, #{target}....\\H\""
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "Enemy friendly fire"
  tx["tx1"] = "\"Aannhh....\\H\n Go easy on me a little, please....\\H\""
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
