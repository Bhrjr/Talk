=begin
#######################################################################################################################
 ●『サキュバス（橙）』トーク口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_talk_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....nn....\\H\n That was fantastic, #{target}....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Oh my....you can't wait for it?\n *Giggle....dunno what to do about that\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ah....ha....a....\\H\n Hey....stop teasing me and hurry....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Nnn....fu....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"You don't hafta do anything, #{target}....\n #{myname}'ll take care of everything....#{giggle}\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"#{giggle}\n No need for words anymore.\n As for everything else....your attitude will tell me\\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....that makes me happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Oh my, is it alright for you to say that? \\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle}\n Oh wow, that makes me feel better, even for a flattery....\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"You do know there's a price to pay for being earnest with a succubus?\n #{giggle}\""
  tx["tx1"] = "\"#{giggle}\n You're great, #{target}\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, if what you're saying's not a lie,\n you'll hear my request, right?\""
    tx["tx2"] = "\"Right....\n I wanna see #{target} up-close withouts any clothes.\n Can you show it for me? \\H\"" 
    tx["tx2"] = "\"Right....\n Can't you take your clothes off for me, #{target}?\n We can't make progress if #{myname}'m the only one naked\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, that's a shame....\n #{myname} was being serious though.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Boys that know what they want are my favorite\\H\""
    tx["tx1"] = "\"My....\\H\n You look so tasty....ufufu\\H\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"Can you watch me from there?\n As I get undressed....\\H」" 
    tx["tx2"] = "\"Can you watch me from there?\n As I get undressed....\\H\n It's not like I feel better if only #{target}'s naked\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of that stuff?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n How was it?\n This isn't too bad either, right?\\H\""
    tx["tx1"] = "\"#{giggle}\n Did that excite you?\n No need to hide your crotch\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, if what you're saying's not a lie,\n you'll hear my request, right?\""
    tx["tx2"] = "\"Can I have some of #{target}'s energy?\\H\n It's fine, leave everything to me....\\H\"" 
    tx["tx2"] = "\"Can I have some of #{target}'s energy?\\H\n It's fine, leave everything to me....\n I'll leave you moaning....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Augh, there's nothing to be scared about, you know?\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu....Just as I figured....♪\n Your taste is my favorite....\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"Lemme give you something to squeal about....\\H\n You just need to make yourself comfortable....\\H\"" 
    tx["tx2"] = "\"Lemme give you something to squeal about....\\H\n I know you're looking forward to it.\n #{giggle}\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of it?\n I'd rather that you were more honest....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Ufufu, you don't have to fight it.\n I know all of #{target}'s weak spots\\H\"" 
        tx["tx1"] = "\"#{pleasure_s}\n I like that face....so thrilling....\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"You want more?\n Then you better beg for it.\n #{giggle}\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"How does this feel?\n ....You're more honest down here, #{target}. #{giggle}\"" 
        tx["tx1"] = "\"My....to push yourself like that.\n You should be honest with how it feels.\n #{giggle}\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Nfufu, I can see you're trying your best♪\n How long can you endure, I wonder....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n So this is your weak spot, got it\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I see, so you like it when I'm doing it like now.\n What do you say? You want me to keep going? \\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Aha....did that feel good just now?\n Then next up....what do you want me to do with it? \\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{giggle}\n I wonder how this will feel\\H\"" 
        tx["tx1"] = "\"#{giggle}\n You've got a cute face, while down here is....*giggle\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"#{giggle}\n You want me to keep going?\n Dunno if I should though....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n I'll leave it at that for now\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "Caress - intercourse"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"You just make yourself comfortable, #{target}.\n I'll do the moving myself....\\H\"" 
    tx["tx2"] = "\"You just make yourself comfortable, #{target}.\n I'll do the moving myself....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of that stuff?\n #{myname}'m a fan of it though.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"Aha....you're amazing, #{target}\\H\n You keep on going wild inside me....\\H\"" 
      tx["tx1"] = "\"No need to fight it\\H\n Keep tasting....my insides....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n I really adore the face you're making\\H\n I want you let go of it all inside me\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"No need to fight it\\H\n Keep tasting....my insides....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n I'm sure you can see where we're connected....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aaaah....it's going all the way in....\\H\n You're great, #{target}....#{pleasure_s}\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{giggle}\n You like this position?n I can get a full view of your cute face, #{target}....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n Feel free to cum whenever you feel like it\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Ufufu, this is where we get serious\\H\n I'll make sure you get a good taste taste of me....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"Aaaaa....that's good\\H\n It's getting harder and harder inside me....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n Feel free to cum whenever you feel like it\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n You should be more honest with how it feels.\n Just stop fighting it....\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n I'll leave it at that for now\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "Show love"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, if what you're saying's not a lie,\n you'll hear my request, right?\""
    tx["tx2"] = "\"I wanna see #{target}'s skill for myself....\\H\n I'll let you do whatever you like with my body\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of that stuff?\n #{myname}'m a fan of it though.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_cr}\n That's good, you're so good at it....\\H\n Go harder! \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n　That's it....good....!\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n Ahh, I'm getting aroused....\\H\n That's great....keep going....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s}\n ....That's it, you're good....\\H\n Can you put more strength to it? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n That feels nice....can you keep it up? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you like it that much?\n You've been hung up on there for a good while....nnnn\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Stopping already....?\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n That was nice\\H\n Now it's my turn to pay you back.\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "Leer"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"You ever seen a girl\n jerking off from up close?\n ....I'll show you\\H\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of that stuff?\n #{myname}'m a fan of it though.\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"Aha....keep your eyes on it, will you....?\n From up-close that I can feel your breath....\\H\n　#{pleasure_l}\"" 
      tx["tx1"] = "\"#{giggle}\n You can only look; no touching....♪\n #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"Ufufu, can you see it....?\n You can arouse a girl by\n putting your finger in and out like this....\\H\"" 
      tx["tx1"] = "\"Aaaah....you can see it....\\H\n Nfufu, I don't mind you looking at close up\\H\""  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_s}\n Since this spot is more intimate, you better be more careful with it....\\H\n #{pleasure_l}\"" 
      tx["tx1"] = "\"*Giggle....are you looking at it?\n I know this arouses you too\\H\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Did you enjoy that?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n What did you think?\n ....Don't think I have to ask\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "Mingle"
  case $msg.at_parts
  when "Inserted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say....wanna fuck me?\""
      tx["tx2"] = "\"Feel free to....\\H\n #{target}'s desires....\n Thrust it all the way inside me....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Feel free to....\\H\n #{target}'s desires....\n #{myname}'ll take all of it in....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hmph....\n Didn't know what a sissy you were.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aha....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say....wanna fuck my mouth?\""
      tx["tx2"] = "\"I want you to shove your robust cock\n violently against my mouth....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hmph....\n Didn't know what a sissy you were.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmmph....\\H\n Mfufu....\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n Hey, about my breasts....what's your thought on it?\n I'm fairly confident of it.」"
      tx["tx2"] = "\"This breast....\n Wanna fuck it with your robust cock?\n I'm fine with it. Do what you want....\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh dear....\nnot a fan of that stuff?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say, could you hear my request for me?\""
      tx["tx2"] = "\"See, just from hearing #{target}'s voice....\\H\n My pussy's dripping wet\\H\n Would you lick it for me....?\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh dear....\nnot a fan of that stuff?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n I'm asking you here....#{giggle}\""
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #msg.tag
end #def
end #class




#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase 
 def msg_bedin_talk_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....nn....\\H\n That was fantastic, #{target}....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Oh my....you can't wait for it?\n *Giggle....dunno what to do about that\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ah....ha....a....\\H\n Hey....stop teasing me and hurry....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Nnn....fu....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"You don't hafta do anything, #{target}....\n #{myname}'ll take care of everything....#{giggle}\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"#{giggle}\n No need for words anymore.\n As for everything else....your attitude will tell me\\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....that makes me happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ufufu....\n Could you tell me more of it? \\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle}\n As sincere as ever, #{target}\\H\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"I'm not letting you sleep tonight, you hear....?\n Hope you're ready for it....\\H\""
  tx["tx1"] = "\"#{giggle}\n That's fantastic, #{target}\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Say, could you hear my request for me?\""
    tx["tx2"] = "\"#{giggle}\n I wanna see #{target} without any clothes\\H\n I know you can do it.\"" 
    tx["tx2"] = "\"#{giggle}\n Can you also take your clothes off, #{target}?\n Not like I'm wearing clothes either, you see\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Man, what a shame....\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n You always look so wonderful....\\H\""
    tx["tx1"] = "\"#{giggle}\n You look so tasty....\\H\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"Can you watch me from there?\n As I get undressed....\\H」" 
    tx["tx2"] = "\"Can you watch me from there?\n As I get undressed....\\H\n It's not like I feel better if only #{target}'s naked\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of that stuff?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n How was it?\n This isn't too bad either, right?\\H\""
    tx["tx1"] = "\"#{giggle}\n Did that excite you?\n No need to hide your crotch\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, if what you're saying's not a lie,\n you'll hear my request, right?\""
    tx["tx2"] = "\"Can I have some of #{target}'s energy?\\H\n It's fine, leave everything to me....\\H\"" 
    tx["tx2"] = "\"Can I have some of #{target}'s energy?\\H\n It's fine, leave everything to me....\n I'll leave you moaning....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Augh, there's nothing to be scared about, you know?\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu....Just as I figured....♪\n Your taste is my favorite....\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Why don't I give you a little treat? \\H\""
    tx["tx2"] = "\"Lemme give you something to squeal about....\\H\n You just need to make yourself comfortable....\\H\"" 
    tx["tx2"] = "\"Lemme give you something to squeal about....\\H\n I know you're looking forward to it.\n #{giggle}\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh my, not a fan of it?\n I'd rather that you were more honest....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Ufufu, you don't have to fight it.\n I know all of #{target}'s weak spots\\H\"" 
        tx["tx1"] = "\"#{pleasure_s}\n I like that face....so thrilling....\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"You want more?\n Then you better beg for it.\n #{giggle}\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"How does this feel?\n ....You're more honest down here, #{target}. #{giggle}\"" 
        tx["tx1"] = "\"My....to push yourself like that.\n You should be honest with how it feels.\n #{giggle}\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Nfufu, I can see you're trying your best♪\n How long can you endure, I wonder....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n So this is your weak spot, got it\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I see, so you like it when I'm doing it like now.\n What do you say? You want me to keep going? \\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Aha....did that feel good just now?\n Then next up....what do you want me to do with it? \\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{giggle}\n I wonder how this will feel\\H\"" 
        tx["tx1"] = "\"#{giggle}\n You've got a cute face, while down here is....*giggle\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"#{giggle}\n You want me to keep going?\n Dunno if I should though....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu,\n here's a short break for you\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」" 
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「あはぁ……凄いわ、#{target}\\H\n　#{myname}の中でずっと暴れっぱなしじゃない……\\H」" 
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　すっかりいい顔になっちゃって\\H\n　このまま#{myname}の中で果てちゃいなさい\\H」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　繋がってる所がよく見えるでしょう……？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「あんっ……奥まで届いてる……\\H\n　素敵よ、#{target}……#{pleasure_s}」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「#{giggle}\n　この体位は好きよ？\n　#{target}の可愛い顔が全部見えるから……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「ふふっ、ここからが本番よ\\H\n　いっぱい感じさせてあげる……\\H」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「あぁんっ……いいわぁ\\H\n　#{myname}の中でますます硬くなってる……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　もっと素直に感じてくれていいのよ？\n　さあ、我慢なんか止めちゃいなさい……\\H」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、\n　少し休憩ね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "奉仕"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇ、\n　#{myname}のお願い、聞いてくれるかしら？」"
    tx["tx2"] = "「#{target}に気持ちよくして欲しいの……\\H\n　#{myname}のカラダ、好きにして……\\H」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、どうしてぇ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_cr}\n　いいわ、とっても上手……っ\\H\n　もっと激しくしてぇ……！\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　そこよ……いいわぁっ……！\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　あぁん、感じちゃう……っ\\H\n　素敵よ……もっとしてぇ……\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_s}\n　……そうよ、上手……\\H\n　もっと強くしてくれてもいいのよ？\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　気持ちいいわよ……もっと続けてくれる？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　ふふ、そんなに気に入ったの？\n　さっきからそこばかり……んんっ\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　もう止めちゃうの……？」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　気持ちよかったわ\\H\n　じゃ、今度は#{myname}がお返しする番ね」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "視姦"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}にだけ特別……\\H\n　#{myname}がするところ、見せてあげる……\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「あはぁ……もっと見てぇ……？\n　息がかかるくらい、近くで……\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「#{giggle}\n　見るだけよ、触れちゃダメ……♪\n　#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「ふふっ、見えるかしら……？\n　指をこんな風に抜き差しされると、\n　女は感じるのよ……\\H」" 
      tx["tx1"] = "「あぁん……見られちゃってる……\\H\n　ふふ、もっと近くで見てもいいのよ？\\H」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「#{pleasure_s}\n　ここはデリケートな所だから丁寧に……ね\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「くすくす……見てくれてる？\n　こういうのも興奮するでしょう？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　楽しんでもらえたかしら？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだったかしら？\n　……ふふ、聞くまでもないみたいね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "交合"
  case $msg.at_parts
  when "♀挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……そろそろいいでしょう？」"
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を蹂躙して……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を獣みたいに犯して……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あはぁ……っ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……#{myname}の口を犯してみたい？」"
      tx["tx2"] = "「#{target}の逞しいモノを、\n　#{myname}の口に乱暴に突き入れて……\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んむっ……\\H\n　ふふっ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}の胸……どうかしら？\n　割と自信あるのだけれどね」"
      tx["tx2"] = "「この胸……、\n　#{target}の逞しいモノで犯してみない？\n　良いわよ、好きにして……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　すっごく熱くて硬ぁい……\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}のお願い、聞いてくれる？」"
      tx["tx2"] = "「#{target}の声を聞いてるだけで、ほら……\\H\n　#{myname}のアソコ、びしょ濡れなの\\H\n　ねぇ、舐めてくれる……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　しっかりお願いね……#{giggle}」"
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "不成立"
  case $msg.at_type
  when "夢魔絶頂中"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "「あぁ……ん……っ……\\H\n　素敵だったわ、#{target}……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「あら……待ちきれないの？\n　くすくす……どうしちゃおうかしら\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「あ……はぁ……っ……\\H\n　ねぇ……焦らさないで、早く……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「ん……ふ……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「#{target}は何もしなくていいわよ……。\n　#{myname}が全部してあげるから……#{giggle}」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「#{giggle}\n　言葉はもう要らないわ。\n　後は態度で示して……ね\\H」"
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "前口上"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "「ん……嬉しいわ\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「ふふっ……、\n　もっと言ってもらえるかしら\\H」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「#{giggle}\n　相変わらずマメなのね、#{target}\\H」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「今夜は寝かせてあげないわよ……？\n　覚悟してね……\\H」"
  tx["tx1"] = "「#{giggle}\n　素敵よ、#{target}\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇ、\n　#{myname}のお願い、聞いてくれるかしら？」"
    tx["tx2"] = "「#{giggle}\n　#{target}の脱ぐところが見たいの\\H\n　いいでしょう？」" 
    tx["tx2"] = "「#{giggle}\n　#{target}も服を脱いでもらえる？\n　#{myname}も裸なんだし、ね\\H」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、残念……」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　いつ見ても素敵よ……\\H」"
    tx["tx1"] = "「#{giggle}\n　とっても美味しそう……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "夢魔脱衣"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「そこで見ててくれる？\n　#{myname}が裸になるところ……\\H」" 
    tx["tx2"] = "「そこで見ててくれる？\n　#{myname}が裸になるところ……\\H\n　#{target}だけ裸なのも悪いし、ね\\H」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだったかしら？\n　こういうのも悪くないでしょう？\\H」"
    tx["tx1"] = "「#{giggle}\n　興奮してくれたかしら？\n　いいのよ、前を隠さなくても\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "吸精・口","吸精・性器"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、言葉が偽りでないなら、\n　#{myname}のお願い、聞いてくれるわよね？」"
    tx["tx2"] = "「#{target}の精気、少し頂けるかしら？\\H\n　大丈夫、#{myname}に任せて……\\H」" 
    tx["tx2"] = "「#{target}の精気、少し頂けるかしら？\\H\n　大丈夫、#{myname}に任せて……。\n　気持ちよくしてあげる……\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、別に怖くないわよ？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……思ったとおり……♪\n　#{myname}好みの味だわ……\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "愛撫・通常"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{myname}が気持ちよくしてあげる……\\H\n　楽にしてていいわよ……\\H」" 
    tx["tx2"] = "「#{myname}が気持ちよくしてあげる……\\H\n　期待してたんでしょう？\n　#{giggle}」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、嫌なの？\n　もっと素直になればいいのに……」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ、我慢しなくていいのよ？\n　#{target}の弱い所はもう判ってるんだし\\H」" 
        tx["tx1"] = "「#{pleasure_s}\n　いいわ、その表情……ぞくぞくしちゃう……\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「もっとして欲しい？\n　なら、おねだりしてごらんなさい？\n　#{giggle}」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「こんな感じでどうかしら？\n　……#{target}のココは正直ね、#{giggle}」" 
        tx["tx1"] = "「あら……無理しちゃって。\n　素直に感じてくれていいのよ？\n　#{giggle}」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふっ、頑張るじゃない♪\n　どこまで耐えられるのかしらね……\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「#{giggle}\n　ココが弱いのね、分かったわ\\H」" 
        tx["tx1"] = "「#{giggle}\n　そう、今みたいにされるのが好きなのね？\n　どうする？続けて欲しい？\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「あはっ……今のは良い感じだった？\n　それじゃ次は……どうして欲しい？\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「#{giggle}\n　こんな感じでどうかしら\\H」" 
        tx["tx1"] = "「#{giggle}\n　可愛い顔してココは……くすくす\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「#{giggle}\n　もっと続けて欲しいの？\n　どうしようかしら……\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、\n　少し休憩ね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」" 
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「あはぁ……凄いわ、#{target}\\H\n　#{myname}の中でずっと暴れっぱなしじゃない……\\H」" 
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　すっかりいい顔になっちゃって\\H\n　このまま#{myname}の中で果てちゃいなさい\\H」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　繋がってる所がよく見えるでしょう……？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「あんっ……奥まで届いてる……\\H\n　素敵よ、#{target}……#{pleasure_s}」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「#{giggle}\n　この体位は好きよ？\n　#{target}の可愛い顔が全部見えるから……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「ふふっ、ここからが本番よ\\H\n　いっぱい感じさせてあげる……\\H」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「あぁんっ……いいわぁ\\H\n　#{myname}の中でますます硬くなってる……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　もっと素直に感じてくれていいのよ？\n　さあ、我慢なんか止めちゃいなさい……\\H」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、\n　少し休憩ね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "奉仕"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇ、\n　#{myname}のお願い、聞いてくれるかしら？」"
    tx["tx2"] = "「#{target}に気持ちよくして欲しいの……\\H\n　#{myname}のカラダ、好きにして……\\H」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、どうしてぇ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_cr}\n　いいわ、とっても上手……っ\\H\n　もっと激しくしてぇ……！\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　そこよ……いいわぁっ……！\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　あぁん、感じちゃう……っ\\H\n　素敵よ……もっとしてぇ……\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_s}\n　……そうよ、上手……\\H\n　もっと強くしてくれてもいいのよ？\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　気持ちいいわよ……もっと続けてくれる？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　ふふ、そんなに気に入ったの？\n　さっきからそこばかり……んんっ\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　もう止めちゃうの……？」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　気持ちよかったわ\\H\n　じゃ、今度は#{myname}がお返しする番ね」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "視姦"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}にだけ特別……\\H\n　#{myname}がするところ、見せてあげる……\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「あはぁ……もっと見てぇ……？\n　息がかかるくらい、近くで……\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「#{giggle}\n　見るだけよ、触れちゃダメ……♪\n　#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「ふふっ、見えるかしら……？\n　指をこんな風に抜き差しされると、\n　女は感じるのよ……\\H」" 
      tx["tx1"] = "「あぁん……見られちゃってる……\\H\n　ふふ、もっと近くで見てもいいのよ？\\H」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「#{pleasure_s}\n　ここはデリケートな所だから丁寧に……ね\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「くすくす……見てくれてる？\n　こういうのも興奮するでしょう？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　楽しんでもらえたかしら？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだったかしら？\n　……ふふ、聞くまでもないみたいね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "交合"
  case $msg.at_parts
  when "♀挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……そろそろいいでしょう？」"
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を蹂躙して……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を獣みたいに犯して……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あはぁ……っ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……#{myname}の口を犯してみたい？」"
      tx["tx2"] = "「#{target}の逞しいモノを、\n　#{myname}の口に乱暴に突き入れて……\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んむっ……\\H\n　ふふっ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}の胸……どうかしら？\n　割と自信あるのだけれどね」"
      tx["tx2"] = "「この胸……、\n　#{target}の逞しいモノで犯してみない？\n　良いわよ、好きにして……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　すっごく熱くて硬ぁい……\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}のお願い、聞いてくれる？」"
      tx["tx2"] = "「#{target}の声を聞いてるだけで、ほら……\\H\n　#{myname}のアソコ、びしょ濡れなの\\H\n　ねぇ、舐めてくれる……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　しっかりお願いね……#{giggle}」"
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #msg.tag














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "不成立"
  case $msg.at_type
  when "夢魔絶頂中"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "「あぁ……ん……っ……\\H\n　素敵だったわ、#{target}……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「あら……待ちきれないの？\n　くすくす……どうしちゃおうかしら\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「あ……はぁ……っ……\\H\n　ねぇ……焦らさないで、早く……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「ん……ふ……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「#{target}は何もしなくていいわよ……。\n　#{myname}が全部してあげるから……#{giggle}」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「#{giggle}\n　言葉はもう要らないわ。\n　後は態度で示して……ね\\H」"
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "前口上"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "「ん……嬉しいわ\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「ふふっ……、\n　もっと言ってもらえるかしら\\H」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「#{giggle}\n　相変わらずマメなのね、#{target}\\H」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「今夜は寝かせてあげないわよ……？\n　覚悟してね……\\H」"
  tx["tx1"] = "「#{giggle}\n　素敵よ、#{target}\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇ、\n　#{myname}のお願い、聞いてくれるかしら？」"
    tx["tx2"] = "「#{giggle}\n　#{target}の脱ぐところが見たいの\\H\n　いいでしょう？」" 
    tx["tx2"] = "「#{giggle}\n　#{target}も服を脱いでもらえる？\n　#{myname}も裸なんだし、ね\\H」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、残念……」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　いつ見ても素敵よ……\\H」"
    tx["tx1"] = "「#{giggle}\n　とっても美味しそう……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "夢魔脱衣"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「そこで見ててくれる？\n　#{myname}が裸になるところ……\\H」" 
    tx["tx2"] = "「そこで見ててくれる？\n　#{myname}が裸になるところ……\\H\n　#{target}だけ裸なのも悪いし、ね\\H」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだったかしら？\n　こういうのも悪くないでしょう？\\H」"
    tx["tx1"] = "「#{giggle}\n　興奮してくれたかしら？\n　いいのよ、前を隠さなくても\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "吸精・口","吸精・性器"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、言葉が偽りでないなら、\n　#{myname}のお願い、聞いてくれるわよね？」"
    tx["tx2"] = "「#{target}の精気、少し頂けるかしら？\\H\n　大丈夫、#{myname}に任せて……\\H」" 
    tx["tx2"] = "「#{target}の精気、少し頂けるかしら？\\H\n　大丈夫、#{myname}に任せて……。\n　気持ちよくしてあげる……\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、別に怖くないわよ？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……思ったとおり……♪\n　#{myname}好みの味だわ……\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "愛撫・通常"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{myname}が気持ちよくしてあげる……\\H\n　楽にしてていいわよ……\\H」" 
    tx["tx2"] = "「#{myname}が気持ちよくしてあげる……\\H\n　期待してたんでしょう？\n　#{giggle}」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、嫌なの？\n　もっと素直になればいいのに……」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ、我慢しなくていいのよ？\n　#{target}の弱い所はもう判ってるんだし\\H」" 
        tx["tx1"] = "「#{pleasure_s}\n　いいわ、その表情……ぞくぞくしちゃう……\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「もっとして欲しい？\n　なら、おねだりしてごらんなさい？\n　#{giggle}」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「こんな感じでどうかしら？\n　……#{target}のココは正直ね、#{giggle}」" 
        tx["tx1"] = "「あら……無理しちゃって。\n　素直に感じてくれていいのよ？\n　#{giggle}」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふっ、頑張るじゃない♪\n　どこまで耐えられるのかしらね……\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「#{giggle}\n　ココが弱いのね、分かったわ\\H」" 
        tx["tx1"] = "「#{giggle}\n　そう、今みたいにされるのが好きなのね？\n　どうする？続けて欲しい？\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「あはっ……今のは良い感じだった？\n　それじゃ次は……どうして欲しい？\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「#{giggle}\n　こんな感じでどうかしら\\H」" 
        tx["tx1"] = "「#{giggle}\n　可愛い顔してココは……くすくす\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「#{giggle}\n　もっと続けて欲しいの？\n　どうしようかしら……\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、\n　少し休憩ね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」" 
    tx["tx2"] = "「#{target}は楽にしてていいわ。\n　#{myname}から動いてあげる……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「あはぁ……凄いわ、#{target}\\H\n　#{myname}の中でずっと暴れっぱなしじゃない……\\H」" 
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　すっかりいい顔になっちゃって\\H\n　このまま#{myname}の中で果てちゃいなさい\\H」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「いいのよ、我慢しなくても\\H\n　もっと感じて……#{myname}の中……\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　繋がってる所がよく見えるでしょう……？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「あんっ……奥まで届いてる……\\H\n　素敵よ、#{target}……#{pleasure_s}」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「#{giggle}\n　この体位は好きよ？\n　#{target}の可愛い顔が全部見えるから……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「ふふっ、ここからが本番よ\\H\n　いっぱい感じさせてあげる……\\H」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「あぁんっ……いいわぁ\\H\n　#{myname}の中でますます硬くなってる……\\H」" 
      tx["tx1"] = "「#{giggle}\n　イきたくなったらいつでもイっていいわよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　もっと素直に感じてくれていいのよ？\n　さあ、我慢なんか止めちゃいなさい……\\H」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、\n　少し休憩ね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "奉仕"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇ、\n　#{myname}のお願い、聞いてくれるかしら？」"
    tx["tx2"] = "「#{target}に気持ちよくして欲しいの……\\H\n　#{myname}のカラダ、好きにして……\\H」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、どうしてぇ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_cr}\n　いいわ、とっても上手……っ\\H\n　もっと激しくしてぇ……！\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　そこよ……いいわぁっ……！\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　あぁん、感じちゃう……っ\\H\n　素敵よ……もっとしてぇ……\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_s}\n　……そうよ、上手……\\H\n　もっと強くしてくれてもいいのよ？\\H」" 
      tx["tx1"] = "「#{pleasure_s}\n　気持ちいいわよ……もっと続けてくれる？\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　ふふ、そんなに気に入ったの？\n　さっきからそこばかり……んんっ\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　もう止めちゃうの……？」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　気持ちよかったわ\\H\n　じゃ、今度は#{myname}がお返しする番ね」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "視姦"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　少しサービスしちゃおうかしら\\H」"
    tx["tx2"] = "「#{target}にだけ特別……\\H\n　#{myname}がするところ、見せてあげる……\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あら、こういうのは嫌い？\n　#{myname}は好きなんだけどね」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「あはぁ……もっと見てぇ……？\n　息がかかるくらい、近くで……\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「#{giggle}\n　見るだけよ、触れちゃダメ……♪\n　#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「ふふっ、見えるかしら……？\n　指をこんな風に抜き差しされると、\n　女は感じるのよ……\\H」" 
      tx["tx1"] = "「あぁん……見られちゃってる……\\H\n　ふふ、もっと近くで見てもいいのよ？\\H」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「#{pleasure_s}\n　ここはデリケートな所だから丁寧に……ね\\H\n　#{pleasure_l}」" 
      tx["tx1"] = "「くすくす……見てくれてる？\n　こういうのも興奮するでしょう？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　楽しんでもらえたかしら？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだったかしら？\n　……ふふ、聞くまでもないみたいね\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "交合"
  case $msg.at_parts
  when "♀挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……そろそろいいでしょう？」"
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を蹂躙して……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}のその硬いモノで、\n　#{myname}を獣みたいに犯して……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あはぁ……っ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ……#{myname}の口を犯してみたい？」"
      tx["tx2"] = "「#{target}の逞しいモノを、\n　#{myname}の口に乱暴に突き入れて……\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んむっ……\\H\n　ふふっ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}の胸……どうかしら？\n　割と自信あるのだけれどね」"
      tx["tx2"] = "「この胸……、\n　#{target}の逞しいモノで犯してみない？\n　良いわよ、好きにして……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　すっごく熱くて硬ぁい……\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　ねぇ、#{myname}のお願い、聞いてくれる？」"
      tx["tx2"] = "「#{target}の声を聞いてるだけで、ほら……\\H\n　#{myname}のアソコ、びしょ濡れなの\\H\n　ねぇ、舐めてくれる……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、どうしてぇ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　しっかりお願いね……#{giggle}」"
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
end #def
end #class
