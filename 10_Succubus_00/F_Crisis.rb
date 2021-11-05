=begin
#######################################################################################################################
 ●『サキュバス（橙）』クライシス口上(対パートナー)
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
class MsgSuccubus_A < MsgBase
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
when "アクター単独"
  tx["tx1"] = "「#{giggle}\n　そろそろイっちゃいそうね……\\H」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}もイきそうなのね……？\n　ふふっ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　ほらほら、もう少しがんばって\\H」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　我慢できなくなっちゃった？」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「あぁん……上手よ#{target}……\\H\n　早くイかせてぇ……\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「あはぁ……#{myname}もそろそろ……\\H\n　うふふ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{pleasure_s}\n　#{myname}もイきそうになっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……\\H\n　ねぇ、もっと近くで#{myname}を見てぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「#{pleasure_s}\n　ふふ、アナタも我慢できなくなっちゃったの……？\\H」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
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
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "アクター単独"
  tx["tx1"] = "「#{giggle}\n　そろそろイっちゃいそうね……\\H」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}もイきそうなのね……？\n　ふふっ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　ほらほら、もう少しがんばって\\H」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　我慢できなくなっちゃった？」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「あぁん……上手よ#{target}……\\H\n　早くイかせてぇ……\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「あはぁ……#{myname}もそろそろ……\\H\n　うふふ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{pleasure_s}\n　#{myname}もイきそうになっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……\\H\n　ねぇ、もっと近くで#{myname}を見てぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「#{pleasure_s}\n　ふふ、アナタも我慢できなくなっちゃったの……？\\H」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "アクター単独"
  tx["tx1"] = "「#{giggle}\n　そろそろイっちゃいそうね……\\H」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}もイきそうなのね……？\n　ふふっ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　ほらほら、もう少しがんばって\\H」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　我慢できなくなっちゃった？」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「あぁん……上手よ#{target}……\\H\n　早くイかせてぇ……\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「あはぁ……#{myname}もそろそろ……\\H\n　うふふ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{pleasure_s}\n　#{myname}もイきそうになっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……\\H\n　ねぇ、もっと近くで#{myname}を見てぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「#{pleasure_s}\n　ふふ、アナタも我慢できなくなっちゃったの……？\\H」"
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
when "アクター単独"
  tx["tx1"] = "「#{giggle}\n　そろそろイっちゃいそうね……\\H」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}もイきそうなのね……？\n　ふふっ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　ほらほら、もう少しがんばって\\H」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「うふふっ……可愛い\\H\n　我慢できなくなっちゃった？」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「あぁん……上手よ#{target}……\\H\n　早くイかせてぇ……\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「あはぁ……#{myname}もそろそろ……\\H\n　うふふ……このまま一緒に……ね？\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{pleasure_s}\n　#{myname}もイきそうになっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……\\H\n　ねぇ、もっと近くで#{myname}を見てぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「#{pleasure_s}\n　ふふ、アナタも我慢できなくなっちゃったの……？\\H」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class