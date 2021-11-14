=begin
#######################################################################################################################
 ●『インプ（緑）』トーク口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_talk_05
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
    tx["tx1"] = "\"Huff....puff....\\H\n No more for me....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Nfufu♪\n What's wrong?\n #{myname}'ve got no idea here♪\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Aanhh....#{target}....\\H\n Hurry up and continue....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Ehehe....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"You're supposed to play with me, #{target}♪\n I ain't letting you get away\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey, isn't that enough already?\n Hurry up and play with me-\""
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
    tx["tx1"] = "\"Ehehe....that makes me shy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ahaha, thanks♪\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Yay, I got complimented♪\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"#{giggle}\n That makes my heart pound♪\""
  tx["tx1"] = "\"You know, #{target}....\n Aha, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"I want you to get all nice and naked for me\\H\n Pretty please? ♪\"" 
    tx["tx2"] = "\"I want you to get all nice and naked too\\H\n Not like I'm wearing clothes either, you know?? ♪\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Whaa?? Why??\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Yay, thanks\\H\""
    tx["tx1"] = "\"Wowie....\n Your dick's so big, #{target}....\\H\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "\"#{giggle}\n How 'bout #{myname} take my clothes off♪\""
    tx["tx2"] = "\"Watch me from over there♪\n Uumph....\"" 
    tx["tx2"] = "\"Not like you're wearing clothes either, #{target}\\H\n Uumph....\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Augh, my wings got stuck!\n *Sob....I can't take it off....\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ta-dah♪\n Thanks for waiting\\H\""
    tx["tx1"] = "\"Ta-dah♪\n ....Ah, it got so big, #{target}!\n Maaan, you're such a lewdie\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"#{myname}'m starving....\n Can I have some of your zest?\n Just a little will be enough\\H\"" 
    tx["tx2"] = "\"#{myname}'m starving....\n Can I have some of your zest?\n As thanks, I'll lick it good\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Meh, meanie.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, so yummy♪\n Hey, can't I have some more....?\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"Then can you just lie down there?\n No moving around\\H\"" 
    tx["tx2"] = "\"Then can you just lie down there?\n No moving around\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, come on!\n I said no moving around!\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Ehe, did that feel good just now?\nThen I'm gonna do more and more♪\"" 
        tx["tx1"] = "\"I see, so that's where it was\\H\n Remember to tell me if there's\n somewhere that feels good, got it, #{target}?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oooh, yeaah♪\n Ahahaha, I just adore how you're twitching\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Uhhh, pretty sure it went like this....\n Uh, is that not it?\n Huuuh....?\"" 
        tx["tx1"] = "\"Huh?? That's strange,\n that's how it worked last time, right?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Nfufu, you shouldn't fight it♪\n I want you to feel even better\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Wow, that surprised me....\n Awesome, it got bigger than just now♪\"" 
        tx["tx1"] = "\"Aha, it's twitching♪\n Does it feel good, #{target}?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Ah, did I get it just now?\n Then time for some follow-ups♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, how is it?\n Did it feel good? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Your dick's so big, #{target}\\H\n Ah, you twitched just now\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oomph....oomph....\n Hmm, did that do the trick?\n Hey, #{target}, does this feel good?\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"And that's a wrap♪\n ....Ehehe, how was it?\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"Then don't move, got it?\n #{myname}'m the one that's gonna move\\H\"" 
    tx["tx2"] = "\"Then don't move, got it?\n #{myname}'m the one that's gonna move\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Come on, #{target}!\n I said no moving!\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n No, no, #{target}....!\n #{myname} can't put it in any deeper....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Mwaaah?!\\H\n Your cock got so big in my tummy....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Ehehe....I'm just like a horsie\\H\n Time to go all clippety-clop.... #{pleasure_s}\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"#{pleasure_l}\n What'd you think #{target}....? Does it feel good?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving....\\H\n #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n My tummy's the\n shape of your cock now, #{target}....\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Phew....\\H\n ....Did it feel good, #{target}?\\H\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"#{myname} wanna feel real good, you see♪\n Can you do it for me, #{target}?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Whaa?? Why??\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_s}\n That feels great, #{target}....\\H\n Keep at it........\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n More, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aaannh, aanhh!\\H\n No, #{myname}'m gonna bounce!!\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_l}\n That's good....\\H\n #{pleasure_s}\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....it feels so nice....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Please, #{target}....\\H\n More....keep at it....\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Pant....pant....phew....\\H\n E-Ehehe....that felt nice....\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Pant....pant....phew....\\H\n E-Ehehe....that felt nice....\\H\n Your turn next, #{target}....♪\""
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
    tx["tx1"] = "\"Ehehe....♪\n I'm only showing it to you, #{target}\\H\""
    tx["tx2"] = "\"Aha, makes my heart pound a little\\H\n Watch me♪\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Geez, you gotta watch it for me!\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_s}\n Would rubbing it like this\n make my breasts bigger....?\"" 
      tx["tx1"] = "\"Aha....\\H\n My nipples stood up....\\H\n Can you see it, #{target}....?\""  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"Mmmh....ha....\\H\n Rubbing here feels so good, you know....\\H\n Nnnhh....ahh.....\\H\"" 
      tx["tx1"] = "\"Ehehe....♪\n Being watched makes it feel even better than usual\\H\n Am #{myname} weird?\""  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"Aaah.... #{pleasure_s}\n Touching here gives me the thrills....\\H\n ....Fwaaah\\H\"" 
      tx["tx1"] = "\"#{target}, are you watching me....?\n Ehe, doesn't it make your heart race....?\\H\""  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Ehe, and that's a wrap♪\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Huh? #{target}....what's wrong....?\""
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
      tx["tx1"] = "\"Hey....#{target}?\n You know....\n my pussy down here feels itchy....\\H\""
      tx["tx2"] = "\"Put your huge cock\n inside my pussy here....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Since your cock's so big....\n Can it fit inside my pussy here....?\n Can you check and see....? \\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaaann! \\H\n My pussy's spreading out....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}?\n Is it true that grown-ups do blowjobs?\""
      tx["tx2"] = "\"Hey, so how do you do it?\n Tell me\\H\n Do I just have to open my mouth?\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Whaa?? Why??\n Tell me!\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmguh....?!\n Mmm....mmfph....! \\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{myname} know my breast's not that big, but....\n Even I can make you\n feel good with it!\""
      tx["tx2"] = "\"Here goes nothing, #{target}!\n Time for you to feel good with it!\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\n I can be great at it, I'm telling you!\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, I can't stick it in....!\n ....I-It's fine, I'll do whatever I can....!\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey....#{target}?\n You know....\n my crotch feels itchy....\\H\""
      tx["tx2"] = "\"I'd like you to....\n lick me down here for me, #{target}....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n I feel kinda ticklish....\\H\""
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
class MsgImp_A < MsgBase 
 def msg_bedin_talk_05
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
    tx["tx1"] = "\"Huff....puff....\\H\n No more for me....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Nfufu♪\n What's wrong?\n #{myname}'ve got no idea here♪\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Aanhh....#{target}....\\H\n Hurry up and continue....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Ehehe....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"You're supposed to play with me, #{target}♪\n I ain't letting you get away\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey, isn't that enough already?\n Hurry up and play with me-\""
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
    tx["tx1"] = "\"Ehehe....that makes me shy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ahaha, thanks♪\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Yay, I got complimented♪\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"#{giggle}\n That makes my heart pound♪\""
  tx["tx1"] = "\"You know, #{target}....\n Aha, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"I want you to get all nice and naked for me\\H\n Pretty please? ♪\"" 
    tx["tx2"] = "\"I want you to get all nice and naked too\\H\n Not like I'm wearing clothes either, you know?? ♪\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Whaa?? Why??\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Yay, thanks\\H\""
    tx["tx1"] = "\"Wowie....\n Your dick's so big, #{target}....\\H\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "\"#{giggle}\n How 'bout #{myname} take my clothes off♪\""
    tx["tx2"] = "\"Watch me from over there♪\n Uumph....\"" 
    tx["tx2"] = "\"Not like you're wearing clothes either, #{target}\\H\n Uumph....\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Augh, my wings got stuck!\n *Sob....I can't take it off....\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ta-dah♪\n Thanks for waiting\\H\""
    tx["tx1"] = "\"Ta-dah♪\n ....Ah, it got so big, #{target}!\n Maaan, you're such a lewdie\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"#{myname}'m starving....\n Can I have some of your zest?\n Just a little will be enough\\H\"" 
    tx["tx2"] = "\"#{myname}'m starving....\n Can I have some of your zest?\n As thanks, I'll lick it good\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Meh, meanie.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, so yummy♪\n Hey, can't I have some more....?\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"Then can you just lie down there?\n No moving around\\H\"" 
    tx["tx2"] = "\"Then can you just lie down there?\n No moving around\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, come on!\n I said no moving around!\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Ehe, did that feel good just now?\nThen I'm gonna do more and more♪\"" 
        tx["tx1"] = "\"I see, so that's where it was\\H\n Remember to tell me if there's\n somewhere that feels good, got it, #{target}?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oooh, yeaah♪\n Ahahaha, I just adore how you're twitching\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Uhhh, pretty sure it went like this....\n Uh, is that not it?\n Huuuh....?\"" 
        tx["tx1"] = "\"Huh?? That's strange,\n that's how it worked last time, right?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Nfufu, you shouldn't fight it♪\n I want you to feel even better\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Wow, that surprised me....\n Awesome, it got bigger than just now♪\"" 
        tx["tx1"] = "\"Aha, it's twitching♪\n Does it feel good, #{target}?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Ah, did I get it just now?\n Then time for some follow-ups♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, how is it?\n Did it feel good? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Your dick's so big, #{target}\\H\n Ah, you twitched just now\\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oomph....oomph....\n Hmm, did that do the trick?\n Hey, #{target}, does this feel good?\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"And that's a wrap♪\n ....Ehehe, how was it?\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"Then don't move, got it?\n #{myname}'m the one that's gonna move\\H\"" 
    tx["tx2"] = "\"Then don't move, got it?\n #{myname}'m the one that's gonna move\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Come on, #{target}!\n I said no moving!\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n No, no, #{target}....!\n #{myname} can't put it in any deeper....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Mwaaah?!\\H\n Your cock got so big in my tummy....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving, #{target}....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n Grinding it like this....feels so good....\\H\n #{pleasure_cr}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Ehehe....I'm just like a horsie\\H\n Time to go all clippety-clop.... #{pleasure_s}\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"#{pleasure_l}\n What'd you think #{target}....? Does it feel good?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n I'm gonna keep moving....\\H\n #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n My tummy's the\n shape of your cock now, #{target}....\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Phew....\\H\n ....Did it feel good, #{target}?\\H\""
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
    tx["tx1"] = "\"Hey hey, #{target}.\n Can I ask something from you?\""
    tx["tx2"] = "\"#{myname} wanna\n feel real good, you see♪\n It's doable, right?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Whaa?? Why??\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_s}\n That feels great, #{target}....\\H\n Keep at it........\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n More, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aaannh, aanhh!\\H\n No, #{myname}'m gonna bounce!!\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_l}\n That's good....\\H\n #{pleasure_s}\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....it feels so nice....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Please, #{target}....\\H\n More....keep at it....\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Pant....pant....phew....\\H\n E-Ehehe....that felt nice....\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Pant....pant....phew....\\H\n E-Ehehe....that felt nice....\\H\n Your turn next, #{target}....♪\""
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
    tx["tx1"] = "\"Ehehe....♪\n Time to show you my lewd parts\\H\""
    tx["tx2"] = "\"Aha, makes my heart pound a little\\H\n Watch me properly♪\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Geez, you gotta watch it for me!\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_s}\n Would rubbing it like this\n make my breasts bigger....?\"" 
      tx["tx1"] = "\"Aha....\\H\n My nipples stood up....\\H\n Can you see it, #{target}....?\""  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"Mmmh....ha....\\H\n Rubbing here feels so good, you know....\\H\n Nnnhh....ahh.....\\H\"" 
      tx["tx1"] = "\"Ehehe....♪\n Being watched makes it feel even better than usual\\H\n Am #{myname} weird?\""  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"Aaah.... #{pleasure_s}\n Touching here gives me the thrills....\\H\n ....Fwaaah\\H\"" 
      tx["tx1"] = "\"#{target}, are you watching me....?\n Ehe, doesn't it make your heart race....?\\H\""  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Ehe, and that's a wrap♪\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{pleasure_s}\n Huh? #{target}....what's wrong....?\""
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
      tx["tx1"] = "\"Hey....#{target}?\n You know....\n my pussy down here feels itchy....\\H\""
      tx["tx2"] = "\"Put your huge cock\n inside my pussy here....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Since your cock's so big....\n Can it fit inside my pussy here....?\n Can you check and see....? \\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaaann! \\H\n My pussy's spreading out....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}?\n #{myname} can do blowjobs too, you know?\n I studied hard just for you\\H\""
      tx["tx2"] = "\"Since your cock's so big....\n Not sure if I can do it properly, but\n ....Here goes♪ Aaaaah~\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Wha?? Why??\n It'll be fine, I said!\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmguh....?!\n Mmm....mmfph....! \\H\""
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{myname} know my breast's not that big, but....\n Even I can make you\n feel good with it!\""
      tx["tx2"] = "\"Here goes nothing, #{target}!\n Time for you to feel good with it!\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\n I can be great at it, I'm telling you!\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, I can't stick it in....!\n ....I-It's fine, I'll do whatever I can....!\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey....#{target}?\n You know....\n my crotch feels itchy....\\H\""
      tx["tx2"] = "\"I'd like you to....\n lick me down here for me, #{target}....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Augh, why??\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n I feel kinda ticklish....\\H\""
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
    tx["tx1"] = "「ふぅ……ふぅ……\\H\n　#{myname}もうだめぇ……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「んふふ～♪\n　ど～したのかな～？\n　#{myname}、わかんないや～♪」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「あぁん……#{target}……\\H\n　早く続きしようよぉ……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「えへへ～……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「#{target}は#{myname}と遊ぶのっ♪\n　ぜ～ったい逃がさないからね～\\H」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「ね～、もういいでしょ～？\n　早く遊ぼうよ～」"
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
    tx["tx1"] = "「えへへ～……照れちゃうよぉ\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「あははっ、ありがと～♪」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「わぁい、ほめられちゃった♪」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「#{giggle}\n　胸がドキドキしてきちゃった♪」"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　あはっ、なんでもないよ～だ\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{target}、はだかんぼになって\\H\n　おねがい♪」" 
    tx["tx2"] = "「#{target}も、はだかんぼになって\\H\n　#{myname}もなんだし、いいでしょ～？♪」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「え～、なんで～？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「わぁい、ありがと～\\H」"
    tx["tx1"] = "「わぁ～……、\n　#{target}の、おっきい……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "「#{giggle}\n　#{myname}、脱いじゃおうっかな～♪」"
    tx["tx2"] = "「そこで見ててね～♪\n　んしょ、っと……」" 
    tx["tx2"] = "「#{target}もはだかんぼだしね\\H\n　んしょ、っと……」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、羽根が引っかかっちゃった！\n　ふえぇ……脱げない～……」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」"
    tx["tx1"] = "「じゃじゃ～ん♪\n　……あ、#{target}、おっきくなってる！\n　も～、#{target}のえっち～\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{myname}、おなかすいちゃって……。\n　#{target}のげんき、ちょうだい？\n　ちょっとだけでいいから\\H」" 
    tx["tx2"] = "「#{myname}、おなかすいちゃって……。\n　#{target}のげんき、ちょうだい？\n　お礼に、ぺろぺろしてあげるから\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ぶ～、いじわる～」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あはっ、おいし～♪\n　ねぇ、も少しもらっちゃダメだよね～……？」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「じゃ、#{target}はそこに寝てて？\n　動いちゃダメだからね～\\H」" 
    tx["tx2"] = "「じゃ、#{target}はそこに寝てて？\n　動いちゃダメだからね～\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「も～！\n　動いちゃダメって言ったのに～！」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「えへっ、今の気持ちよかった？\n　じゃ、もっともっとやってあげちゃうね♪」" 
        tx["tx1"] = "「そうそう、ここだったっけ\\H\n　#{target}、気持ちいいところがあったら、\n　ちゃ～んと#{myname}に教えてね？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「それそれそれ～っ♪\n　あはははっ、ぴくぴくしておもしろ～い\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「え～と、確かこんな感じで……、\n　え、さっきと違う？\n　あれ～……？」" 
        tx["tx1"] = "「あれ～、おかしいなあ？\n　さっきはこれで良かったよね？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「んふふ～、ガマンしちゃダメ～っ♪\n　もっと気持ちよくなって～\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「わっ、びっくりした～……。\n　すご～い、さっきよりカタくなったよ♪」" 
        tx["tx1"] = "「あはっ、ぴくぴくしてる♪\n　#{target}、気持ちいい～？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「あっ、今の良かった？\n　それじゃ、どんどんやっちゃうよ～♪」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「んふふ～、どう？\n　気持ちよくなってきたでしょ？\\H」" 
        tx["tx1"] = "「#{giggle}\n　#{target}の、おっきいね～\\H\n　あ、今ぴくってした\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「んしょ……んしょ……。\n　ん～、これでいいんだったっけ？\n　ねぇ、#{target}、これって気持ちいい？」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はいっ、お～しまいっ♪\n　……えへへ、どうだった？」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「じゃ、#{target}は動いちゃダメだよ？\n　#{myname}が動いちゃうんだから\\H」" 
    tx["tx2"] = "「じゃ、#{target}は動いちゃダメだよ？\n　#{myname}が動いちゃうんだから\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　も～、#{target}～！\n　動いちゃダメって言ったのに～！」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　ダメ、ダメだよ#{target}……っ！\n　#{myname}、それ以上入らないぃ……\\H」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「ふあぁっ？！\\H\n　おなかの中で#{target}のがおっきく……っ\\H」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「えへへ……おうまさんだぁ\\H\n　ぱかぱかしちゃうぞ～……#{pleasure_s}」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「#{pleasure_l}\n　どう、#{target}……気持ちいい？」" 
      tx["tx1"] = "「#{pleasure_l}\n　もっと動くよぉ……っ\\H\n　#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　#{myname}のおなか、\n　#{target}の形になっちゃってる……\\H」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はふぅ……\\H\n　……#{target}、気持ちよかった？\\H」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{myname}ね、\n　#{target}に気持ちよくして欲しいな\\H\n　ね、いいでしょ？」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「え～、なんでぇ～？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_s}\n　#{target}、これ、気持ちいい……っ\\H\n　もっとやってぇ……っ……\\H」" 
      tx["tx1"] = "「#{pleasure_cr}\n　#{target}、もっとぉ……っ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「あんっ、あぁんっ！\\H\n　ダメぇ、#{myname}飛んじゃうっ！\\H\n　#{pleasure_cr}」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_l}\n　そこ、いいっ……\\H\n　#{pleasure_s}」" 
      tx["tx1"] = "「#{pleasure_l}\n　#{target}……気持ちいいよぉ……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「おねがぁい、#{target}……\\H\n　もっと……もっとやって……\\H\n　#{pleasure_s}」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はぁ……はぁ……はふぅ……\\H\n　え、えへへ……気持ちよかったぁ……\\H」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はぁ……はぁ……はふぅ……\\H\n　え、えへへ……気持ちよかったぁ……\\H\n　次は、#{target}の番だからね……♪」"
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
    tx["tx1"] = "「えへへ……♪\n　#{myname}のえっちなとこ、見せてあげる\\H」"
    tx["tx2"] = "「あはっ、ちょっとドキドキしちゃう\\H\n　ちゃんと見ててね～♪」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「も～、見てくれなきゃダメ～っ！」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「#{pleasure_s}\n　こうやって、自分でもみもみしてたら、\n　#{myname}の胸も大きくなるのかなぁ……？」" 
      tx["tx1"] = "「あは……っ\\H\n　乳首が立っちゃった……\\H\n　#{target}、見える……？」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「んっ……は……っ\\H\n　ここをね、こすると気持ちいいの……\\H\n　んんっ……あっ……\\H」" 
      tx["tx1"] = "「えへへっ……♪\n　見られてると、いつもより気持ちいいんだ\\H\n　#{myname}、変なのかな？」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「あっ……#{pleasure_s}\n　ここ触ると、びりびりって来るの……\\H\n　……ふぁあんっ\\H」" 
      tx["tx1"] = "「#{target}、見てる……？\n　えへっ、ドキドキしちゃうでしょ……？\\H」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　えへっ、もうお～しまいっ♪」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　あれ、#{target}……どしたの……？」"
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
      tx["tx1"] = "「ねぇ……#{target}？\n　#{myname}ね……、\n　ココがむずむずずるの……\\H」"
      tx["tx2"] = "「#{myname}のココに、\n　#{target}のおっきいの、挿れてぇ……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}の、おっきいから……、\n　#{target}のココに入るかなあ……？\n　ね、確かめてみてぇ……？\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ああぁんっ！\\H\n　#{myname}のアソコが広がっちゃうっ……\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}？\n　#{myname}、お口でもできるんだよ？\n　#{target}のために、がんばっておぼえたの\\H」"
      tx["tx2"] = "「#{target}の、おっきいから……。\n　ちゃんとできるかわかんないけど、\n　……はい、どうぞっ♪あ～ん\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「えぇ～、なんで～？\n　だいじょうぶだってばぁ～！」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んぐっ……？！\n　んっ……んむっ……！\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{myname}の胸、おっきくないけど……。\n　#{myname}だって、\n　#{target}を気持ちよくできるんだから！」"
      tx["tx2"] = "「#{target}、はい、どうぞっ！\n　#{myname}の胸で気持ちよくなってっ！」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？\n　ちゃんとできるってば～！」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、はさめない～……！\n　……い、いいもん、がんばるもんっ！」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ……#{target}？\n　#{myname}ね……、\n　おまたがむずむずずるの……\\H」"
      tx["tx2"] = "「#{myname}のココ……、\n　#{target}に舐めてほしいんだぁ……\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　ちょっとくすぐったぁい……\\H」"
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
    tx["tx1"] = "「ふぅ……ふぅ……\\H\n　#{myname}もうだめぇ……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「んふふ～♪\n　ど～したのかな～？\n　#{myname}、わかんないや～♪」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「あぁん……#{target}……\\H\n　早く続きしようよぉ……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「えへへ～……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「#{target}は#{myname}と遊ぶのっ♪\n　ぜ～ったい逃がさないからね～\\H」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「ね～、もういいでしょ～？\n　早く遊ぼうよ～」"
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
    tx["tx1"] = "「えへへ～……照れちゃうよぉ\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「あははっ、ありがと～♪」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「わぁい、ほめられちゃった♪」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「#{giggle}\n　胸がドキドキしてきちゃった♪」"
  tx["tx1"] = "「#{target}、#{myname}ね……。\n　あはっ、なんでもないよ～だ\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{target}、はだかんぼになって\\H\n　おねがい♪」" 
    tx["tx2"] = "「#{target}も、はだかんぼになって\\H\n　#{myname}もなんだし、いいでしょ～？♪」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「え～、なんで～？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「わぁい、ありがと～\\H」"
    tx["tx1"] = "「わぁ～……、\n　#{target}の、おっきい……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "「#{giggle}\n　#{myname}、脱いじゃおうっかな～♪」"
    tx["tx2"] = "「そこで見ててね～♪\n　んしょ、っと……」" 
    tx["tx2"] = "「#{target}もはだかんぼだしね\\H\n　んしょ、っと……」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん、羽根が引っかかっちゃった！\n　ふえぇ……脱げない～……」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」"
    tx["tx1"] = "「じゃじゃ～ん♪\n　……あ、#{target}、おっきくなってる！\n　も～、#{target}のえっち～\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{myname}、おなかすいちゃって……。\n　#{target}のげんき、ちょうだい？\n　ちょっとだけでいいから\\H」" 
    tx["tx2"] = "「#{myname}、おなかすいちゃって……。\n　#{target}のげんき、ちょうだい？\n　お礼に、ぺろぺろしてあげるから\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ぶ～、いじわる～」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あはっ、おいし～♪\n　ねぇ、も少しもらっちゃダメだよね～……？」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「じゃ、#{target}はそこに寝てて？\n　動いちゃダメだからね～\\H」" 
    tx["tx2"] = "「じゃ、#{target}はそこに寝てて？\n　動いちゃダメだからね～\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「も～！\n　動いちゃダメって言ったのに～！」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「えへっ、今の気持ちよかった？\n　じゃ、もっともっとやってあげちゃうね♪」" 
        tx["tx1"] = "「そうそう、ここだったっけ\\H\n　#{target}、気持ちいいところがあったら、\n　ちゃ～んと#{myname}に教えてね？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「それそれそれ～っ♪\n　あはははっ、ぴくぴくしておもしろ～い\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「え～と、確かこんな感じで……、\n　え、さっきと違う？\n　あれ～……？」" 
        tx["tx1"] = "「あれ～、おかしいなあ？\n　さっきはこれで良かったよね？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「んふふ～、ガマンしちゃダメ～っ♪\n　もっと気持ちよくなって～\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「わっ、びっくりした～……。\n　すご～い、さっきよりカタくなったよ♪」" 
        tx["tx1"] = "「あはっ、ぴくぴくしてる♪\n　#{target}、気持ちいい～？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「あっ、今の良かった？\n　それじゃ、どんどんやっちゃうよ～♪」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「んふふ～、どう？\n　気持ちよくなってきたでしょ？\\H」" 
        tx["tx1"] = "「#{giggle}\n　#{target}の、おっきいね～\\H\n　あ、今ぴくってした\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「んしょ……んしょ……。\n　ん～、これでいいんだったっけ？\n　ねぇ、#{target}、これって気持ちいい？」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はいっ、お～しまいっ♪\n　……えへへ、どうだった？」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「じゃ、#{target}は動いちゃダメだよ？\n　#{myname}が動いちゃうんだから\\H」" 
    tx["tx2"] = "「じゃ、#{target}は動いちゃダメだよ？\n　#{myname}が動いちゃうんだから\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　も～、#{target}～！\n　動いちゃダメって言ったのに～！」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　ダメ、ダメだよ#{target}……っ！\n　#{myname}、それ以上入らないぃ……\\H」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「ふあぁっ？！\\H\n　おなかの中で#{target}のがおっきく……っ\\H」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「#{pleasure_l}\n　#{target}、もっと動くねっ……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　ぐりぐりすると……気持ちいいっ……\\H\n　#{pleasure_cr}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「えへへ……おうまさんだぁ\\H\n　ぱかぱかしちゃうぞ～……#{pleasure_s}」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「#{pleasure_l}\n　どう、#{target}……気持ちいい？」" 
      tx["tx1"] = "「#{pleasure_l}\n　もっと動くよぉ……っ\\H\n　#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　#{myname}のおなか、\n　#{target}の形になっちゃってる……\\H」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はふぅ……\\H\n　……#{target}、気持ちよかった？\\H」"
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
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{myname}のおねがい、聞いてくれる？」"
    tx["tx2"] = "「#{myname}ね、\n　#{target}に気持ちよくして欲しいな\\H\n　ね、いいでしょ？」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「え～、なんでぇ～？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_s}\n　#{target}、これ、気持ちいい……っ\\H\n　もっとやってぇ……っ……\\H」" 
      tx["tx1"] = "「#{pleasure_cr}\n　#{target}、もっとぉ……っ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「あんっ、あぁんっ！\\H\n　ダメぇ、#{myname}飛んじゃうっ！\\H\n　#{pleasure_cr}」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_l}\n　そこ、いいっ……\\H\n　#{pleasure_s}」" 
      tx["tx1"] = "「#{pleasure_l}\n　#{target}……気持ちいいよぉ……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「おねがぁい、#{target}……\\H\n　もっと……もっとやって……\\H\n　#{pleasure_s}」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はぁ……はぁ……はふぅ……\\H\n　え、えへへ……気持ちよかったぁ……\\H」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「はぁ……はぁ……はふぅ……\\H\n　え、えへへ……気持ちよかったぁ……\\H\n　次は、#{target}の番だからね……♪」"
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
    tx["tx1"] = "「えへへ……♪\n　#{myname}のえっちなとこ、見せてあげる\\H」"
    tx["tx2"] = "「あはっ、ちょっとドキドキしちゃう\\H\n　ちゃんと見ててね～♪」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「も～、見てくれなきゃダメ～っ！」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「#{pleasure_s}\n　こうやって、自分でもみもみしてたら、\n　#{myname}の胸も大きくなるのかなぁ……？」" 
      tx["tx1"] = "「あは……っ\\H\n　乳首が立っちゃった……\\H\n　#{target}、見える……？」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「んっ……は……っ\\H\n　ここをね、こすると気持ちいいの……\\H\n　んんっ……あっ……\\H」" 
      tx["tx1"] = "「えへへっ……♪\n　見られてると、いつもより気持ちいいんだ\\H\n　#{myname}、変なのかな？」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「あっ……#{pleasure_s}\n　ここ触ると、びりびりって来るの……\\H\n　……ふぁあんっ\\H」" 
      tx["tx1"] = "「#{target}、見てる……？\n　えへっ、ドキドキしちゃうでしょ……？\\H」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　えへっ、もうお～しまいっ♪」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{pleasure_s}\n　あれ、#{target}……どしたの……？」"
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
      tx["tx1"] = "「ねぇ……#{target}？\n　#{myname}ね……、\n　ココがむずむずずるの……\\H」"
      tx["tx2"] = "「#{myname}のココに、\n　#{target}のおっきいの、挿れてぇ……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}の、おっきいから……、\n　#{target}のココに入るかなあ……？\n　ね、確かめてみてぇ……？\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ああぁんっ！\\H\n　#{myname}のアソコが広がっちゃうっ……\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}？\n　#{myname}、お口でもできるんだよ？\n　#{target}のために、がんばっておぼえたの\\H」"
      tx["tx2"] = "「#{target}の、おっきいから……。\n　ちゃんとできるかわかんないけど、\n　……はい、どうぞっ♪あ～ん\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「えぇ～、なんで～？\n　だいじょうぶだってばぁ～！」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んぐっ……？！\n　んっ……んむっ……！\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{myname}の胸、おっきくないけど……。\n　#{myname}だって、\n　#{target}を気持ちよくできるんだから！」"
      tx["tx2"] = "「#{target}、はい、どうぞっ！\n　#{myname}の胸で気持ちよくなってっ！」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？\n　ちゃんとできるってば～！」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、はさめない～……！\n　……い、いいもん、がんばるもんっ！」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ……#{target}？\n　#{myname}ね……、\n　おまたがむずむずずるの……\\H」"
      tx["tx2"] = "「#{myname}のココ……、\n　#{target}に舐めてほしいんだぁ……\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、なんでぇ～？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　ちょっとくすぐったぁい……\\H」"
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
