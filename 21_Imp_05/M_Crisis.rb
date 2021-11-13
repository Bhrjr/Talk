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
when "アクター単独"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　それじゃ#{myname}が手伝ってあげるよ♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}も飛んじゃいそう……？\n　ね、#{myname}をぎゅーってしてくれる……？\\H」"
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　#{myname}は何もしてないんだけどな～？♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「わ～、男の子ってそうやるんだぁ……\\H\n　ね、もっとやって見せて♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「#{target}、#{myname}をぎゅってして……！\n　なんだか飛んでっちゃいそう……！\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……気持ちいいよぉ……\\H\n　#{myname}のここ、触ってぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「やぁ～ん\\H\n　鬼さんはあっちだよぉ……ふあぁん\\H」"
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
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "アクター単独"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　それじゃ#{myname}が手伝ってあげるよ♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}も飛んじゃいそう……？\n　ね、#{myname}をぎゅーってしてくれる……？\\H」"
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　#{myname}は何もしてないんだけどな～？♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「わ～、見てたらどきどきしてきた……\\H\n　ね、もっとやって見せて♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「#{target}、#{myname}をぎゅってして……！\n　なんだか飛んでっちゃいそう……！\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……気持ちいいよぉ……\\H\n　#{myname}のここ、触ってぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「やぁ～ん\\H\n　んもぉ、後でひどいんだから……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#■主人公がクライシス状態になる
case $msg.tag
#夢魔の攻めで主人公がクライシス
when "アクター単独"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　それじゃ#{myname}が手伝ってあげるよ♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}も飛んじゃいそう……？\n　ね、#{myname}をぎゅーってしてくれる……？\\H」"
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　#{myname}は何もしてないんだけどな～？♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「わ～、見てたらどきどきしてきた……\\H\n　ね、もっとやって見せて♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「#{target}、#{myname}をぎゅってして……！\n　なんだか飛んでっちゃいそう……！\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……気持ちいいよぉ……\\H\n　#{myname}のここ、触ってぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「やぁ～ん\\H\n　んもぉ、後でひどいんだから……\n　#{pleasure_s}」"
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
when "アクター単独"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　それじゃ#{myname}が手伝ってあげるよ♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受け主人公もクライシス
when "アクター両者"
  tx["tx1"] = "「#{pleasure_s}\n　#{target}も飛んじゃいそう……？\n　ね、#{myname}をぎゅーってしてくれる……？\\H」"
  #格納
  ms.push(tx)
#主人公がホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　#{myname}は何もしてないんだけどな～？♪\n　#{giggle}」"
  #格納
  ms.push(tx)
#主人公が自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「わ～、見てたらどきどきしてきた……\\H\n　ね、もっとやって見せて♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#主人公の攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#主人公が既にクライシス、その主人公から攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「#{target}、#{myname}をぎゅってして……！\n　なんだか飛んでっちゃいそう……！\\H」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「あぁん……気持ちいいよぉ……\\H\n　#{myname}のここ、触ってぇ……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「やぁ～ん\\H\n　んもぉ、後でひどいんだから……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
