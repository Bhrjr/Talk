=begin
#######################################################################################################################
 ●『サキュバスロード（桃）』トーク口上
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
class MsgSuccubuslord_B < MsgBase
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
    case rand(3)
    when 1,2
    tx["tx1"] = "\"#{pleasure_l}\""
    when 3
    tx["tx1"] = "\"*gasp*, ah, nnh, kuuh....\\H\n Ufufu....to tell me to get up already,\n you're more unreasonable than you look....\\H」"
    end
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"#{giggle_s}....\\H\n What's the matter? You want me to go all the way? \\H」"
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    case rand(3)
    when 1,2
      tx["tx1"] = "\"#{pleasure_l}\""
    when 3
      tx["tx1"] = "\"Aha, nguh, aaahh, ufufu....\\H\n No need for words anymore....\\H\n Show me your love till the end....\\H」"
    end
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    case rand(3)
    when 1
      tx["tx1"] = "\"*g-gasp*....\\H\""
    when 2
      tx["tx1"] = "\"U-Ufufu....\\H\n My cries won't stop....\\H\""
    when 3
      tx["tx1"] = "\"Nnn, ah, haaah....\\H\n So fantastic....\\H\""
    end
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"#{giggle_s}....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"I have a good grasp of your feelings now, #{target}.\n I want you to tell it more\n directly, deeply, and intimately to my body....\\H\""
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
    tx["tx1"] = "\"Wonder if it's alright to tell me that....\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Oh, my....\\H\n You certainly have a way with words, #{target}\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle_s}....should I take that seriously?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Even so, what you said doesn't sound so bad....\\H\""
  tx["tx1"] = "\"....Ufufu, thanks. That makes me happy\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Make me believe those words of yours.\n Just some sweet words won't be enough to intoxicate me.\""
    tx["tx2"] = "\"Let me see your body, #{target}.\n Show me everything without hiding any....\\H\"" 
    tx["tx2"] = "\"It doesn't feel right for only me to be like this.\nYou should be enjoying yourself with me, #{target}\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....What a sly man you are.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n You're a great man, #{target}\\H\""
    tx["tx1"] = "\"Oh, come on, #{target}....\\H\n You really know how to get the mood right....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
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
    tx["tx1"] = "\"If you're going to say that, how about we do something even better?\n I want to share a\n more steamy love with you, #{target}....\\H\""
    tx["tx2"] = "\"Just for you, I'm revealing this skin of mine, #{target}.\n Remember to watch me until I'm done....\\H\"" 
    tx["tx2"] = "\"Seeing how much you're waiting,\n I'll be offering my body as well, #{target}....\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....How unkind of you.\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n How do you like my body....? \\H\""
    tx["tx1"] = "\"Glad to see that you like my body\\H\n Let's have a wonderful time....\\H\"" if $game_actors[101].state?(32) #ドキっとした
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
    tx["tx1"] = "\"#{myname} can be quite greedy, you know.\n I'd like to have a taste of your energy, #{target}....\\H\""
    tx["tx2"] = "\"Isn't it fine?\n Prove to me\n your words aren't a lie....\\H\"" 
    tx["tx2"] = "\"You're saying such\n while showing off something so delicous-looking.\n That can only mean one thing....\\H\""  if $msg.tag == "Energy-suck - genitals" #主人公が裸時のみ発生
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"How unkind of you to\n set the mood like that and refuse me.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case rand(2)
    when 0
    tx["tx1"] = "\"Aha....delicious\\H It tastes just as great as your words....\\H\n Now I want to get a full taste\\H\""
    when 1
    tx["tx1"] = "\"#{giggle_s}....thanks for the food.\n You're so generous, #{target}....\\H\""
    end
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
    tx["tx1"] = "\"Ufufu....\\H Still, seeing how happy that made me,\n I'll make you feel great, #{target}.\""
    tx["tx2"] = "\"You want to join in it as well, yes?\n For only me to be joyful doesn't really please me....\\H\"" 
    tx["tx2"] = "\"Don't you want the same treatment, #{target}?\n Your face tells me you do....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}、You don't have to be shy about it....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Shuddering like that must mean you're enjoying it quite a lot\\H\n #{giggle_s} Making a cute face like that\n just makes me want to bully you more....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....what a great voice\\H\n Could you let me hear more of it? \\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....making such a pitiful resistance by desperately holding your voice down....\\H\n Go ahead and fight it if you can,\n I'll have you squealing until you give in...\\H\""  if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Aren't you at the end of your rope? Trying to fight it won't do any good.\n I already know where and how to strike\n to please you, #{target}....\\H\""  if $msg.t_target.crisis? == true and $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....was this how you wanted it? \\H\n Your voice tell me\n it feels even better than last time....\\H\""  if $msg.weakpoints == 20 #性癖込み口上があればこちら
        tx["tx1"] = "\"#{giggle} I just adore the expression you're making right now, #{target}.\n A pathetic expression from having your sensitive and favorite parts pleasured and\n wanting it even more....\\H\""  if $msg.weakpoints == 20 and $game_variables[17] > 50 #性癖込み口上パターン２
        tx["tx1"] = "\"#{giggle} So you like this, huh?\n It's pointless to try and evade it.\n I'll make you moan so much so that you can't even try to cover it up\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"#{giggle_s} So this is what you're a fan of, #{target}\\H\n Like this, I'll throughly pick on your weak spots\n until your mind melts from the pleasure....\\H\""  if $msg.chain_attack == true and $msg.weakpoints == 20 #同じ部位で連撃中かつ性癖合致
        tx["tx1"] = "\"#{giggle_s}....can't fight it anymore?\n If you want me to pleasure you to the end,\n you need to properly beg for more\\H\""  if $msg.t_target.crisis? == true and $msg.chain_attack == true
      #▼通常
      else
        tx["tx1"] = "\"#{giggle_s}....you're holding out well\\H\n Guess I can't satisfy you without hitting the weak spots....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, your face tells me you haven't had enough\\H\n I won't know how you want to be pleasured\n unless you tell me....\\H\"" if $game_variables[17] > 50
        tx["tx1"] = "\"Don't forget to beg for it if you want to be pleasured.\n I'll be sure to tease\n your most favorite part without holding back, #{target}....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"I found your weak spots, #{target}....\\H\n Aaah, that's a great reaction\\H I can't help it anymore....\\H\n #{giggle_s}, I'll make you so blissful that you'll show it in an even better voice\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....so you like it here, I see\\H\n I'm not done yet. Time to expose\n all your weaks spots for what they are\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Can't endure it when I do it like this? Ufufu, you can't hide it here\\H\n Time to find out everything\n you desire and gratify them....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"Aha....you shuddered just now\\H\n Unless you can fight the pleasure,\nI'm going to pick on your weak spots all I like....like this\\H\""  if $msg.chain_attack == true and $game_variables[17] > 50
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, such a prude look...\\H\n I can't wait to distort that face in pleasure\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, try to hold out as much as you can\\H\n Until I find your weak spot,\n I'm going to pleasure you in all sorts of ways, #{target}....\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....how is it? You want more?\n I can keep going if you want\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}\\H You want me to stop now?\n Alright, I'll leave it at that for now.\n Remember to tell me when you want me to do it again\\H\""
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
    tx["tx1"] = "\"Sharing love with kind words\n is a whole new way to overflow your desires....\\H\""
    tx["tx2"] = "\"Say, #{target}....\\H\n Staying true to our lust, let's pursue each other\n deeper and more clearly until our hearts overlap....\\H\"" 
    tx["tx2"] = "\"I know you want to overlap our bodies\n and melt in full with me, #{target}\\H\n Hold me tight just the way you want....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....there's nothing to be scared of....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{giggle_s}, I'm fully aware that shaking my hips makes you squirm inside me, #{target}\\H\n Time to tease you while I've swallowed you up....\\H\"" 
      tx["tx1"] = "\"There's no point in fighting back, since I'm not letting you go.\n As for your endurance, I'm going to envelop it, lick it,\n and dissolve it all inside me, #{target}\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha\\H Quivering inside me....\\H\n I wonder what'll happen if I squeeze you out,\n bite you gently, and playfully pick on you....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"You're making a nice moan\\H Did getting teased inside me feel good?\n Going even far as to relax....it was so easy to pin you down\\H\n #{giggle_s}, like this, I'm going to squeeze it all out with my privates....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{giggle_s}, What a nice expression there....\\H\n Show me more of you getting turned on\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....I know that feels nice.\n You just have to be more honest to the blissfulness....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Becoming just a bit more honest\n and yielding your mind to my body\n will make it feel so good that it'll stain your heart in pure white....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Feel the tightening of my insides....\\H\n Do you realize I'm clamping on your dick, twisting around it,\n and teasing it like there's no tomorrow? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Which do you prefer, #{target}?\n Being roughly violated or slowly teased? \\H\"" 
      tx["tx1"] = "\"#{giggle_s}....\\H How should\n I pick on you\n from now on....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle_s}....there's no need to hold it back\\H\n Shoot out your lust inside me\n whenver you feel like it\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Now I finally have you pinned down....\\H #{giggle_s}....was this what you actually wanted?\n Teasing you with my privates makes you tremble in happiness....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Defence
    else
      tx["tx1"] = "\"#{giggle_s}....I like taking the initiative and all,\n but I do want to see you putting up some fight.\n I wonder if you're feeling pleased, #{target}\\H\"" 
      tx["tx1"] = "\"Didn't think you'd be harassed like this?\n #{giggle_s}....leave it to me and\n I'll show you even more ways to have fun....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Now that you've pinned me down,\n you wouldn't let go of me or anything, are you?\n #{giggle_s}\\H That's a great expression there....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"#{giggle_s}....I'm getting a good look of your adorable face in arousal\\H\n No matter how good it may feel, lose your focus and\n I might just take the initiative\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You want to take a short break?\n #{giggle_s} ....No helping it then\\H\n It'd be a waste to have it end so soon, after all....\\H\""
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
    tx["tx1"] = "\"With those hands of yours, could you prove to me\n that word aren't the only thing you're good at? \\H\""
    tx["tx2"] = "\"Don't hold anything back. I want you to touch my body\n and show it love to your heart's content.....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, geez....what a snobby kid you are\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"Aha....\\H That's it, you're good....nnaahh\\H\"" 
      tx["tx1"] = "\"Kuufu, ugh, nnhh....\\H This is more than I expected....\\H\n Ufufu, I can't hold down my voice....aaannh\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aieee! Don't just focus on there....pant, nnhh....\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s} Ufufu, you can be more greedy with it if you like\\H\"" 
      tx["tx1"] = "\"#{pleasure_s} #{giggle_s}\\H\n What do you think about my body....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Yes, there, more....aahhnnh\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Nnnhh.... #{giggle_s}\\H\n How innocent of you, #{target}.\n I wouldn't mind you to keep going\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s} ....Are you that wrapped up in it?\n You aught to be more honest to your lust\n and immerse yourself in indulging in me....\\H\""
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
    tx["tx1"] = "\"To return the favor, I'll let you\n take a look at my body, #{target}....\\H\""
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"That's a bit unfortunate....\n I was sure you'd take a liking to me\\H\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"What do you think....? I'm fairly confident in its size....\\H\"" 
      tx["tx1"] = "\"#{giggle_s}.....you want me to pleasure myself with these breasts?\n If that's what you want,\n I'll do that anytime, #{target}....\\H\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{giggle_s}....hey, don't stop looking at it....\n Engrave everything about me deep in your heart....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}.... #{giggle},how you like it? \\H\n I want you to see my intimates from\n close enough that you can smell it....\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n Playing with here really gets me turned on....aha\\H\"" 
      tx["tx1"] = "\"#{pleasure_l} #{giggle}\n Don't you also want to\n play with my weak spots, #{target}....? \\H\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....you don't have to pretend to not be interested\\H\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....spacing out like that\\H\n With my body dead in front of you,\n you really fine with just watching it....? \\H\""
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
      tx["tx1"] = "\"#{giggle_s}....come here, you\\H\n Hold me tight....\\H\""
      tx["tx2"] = "\"I'd like to share some love with you, #{target}.\n Let's melt together as we look at each other's face....\\H\""  #正常位トラップ
      tx["tx2"] = "\"I don't mind you indulging in this body as you please.\n The animal-like passion you've been holding in,\n let it all out on me....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"You're so dull....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{giggle}, I can feel the\n passionate lust inside me....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*kiss*\\H ....Ufufu, making a surprised face like that\\H\n Say, #{taregt}.\n Don't you feel like doing with these lips as you please? \\H\""
      tx["tx2"] = "\"Using your shaft,\n violating my lips like there's no tomorrow and\n soiling it with your boiling hot lust. Just imagine....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"What a shame. ....Aaah, my mouth feels so empty....\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*rub*, *lick*....*droool*\\H #{giggle}\n Your smell's wonderful, #{target}\\H\""
    end
  when "Paizuri"8
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....say, why not pleasure yourself with these breasts?\n I'm sure you'll get the experience the ultimate sensation\\H\""
      tx["tx2"] = "\"I want you to see how my\n breasts are throbbing with your member....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....no need to try and fight it\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaannh....\\H #{giggle_s}, so hard and hot....\\H\n My breasts are getting\n pushed away by your protrusion, #{target}....\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....I just thought of a good idea.\n Why don't you have a taste of my nectar? \\H\""
      tx["tx2"] = "\"I don't mind it if you suck on it without hesitation.\n Let's melt in ecstasy with each other\\H\n Stay still now....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh....not a fan of stuff like this, I wonder?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_l}\n I can feel your breath....nnhh, it keeps flowing out....\\H\n #{giggle_s}....remember to get a good taste of it....\\H\""
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
class MsgSuccubuslord_B < MsgBase 
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
    case rand(3)
    when 1,2
    tx["tx1"] = "\"#{pleasure_l}\""
    when 3
    tx["tx1"] = "\"*gasp*, ah, nnh, kuuh....\\H\n Ufufu....to tell me to get up already,\n you're more unreasonable than you look....\\H」"
    end
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"#{giggle_s}....\\H\n What's the matter? You want me to go all the way? \\H」"
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    case rand(3)
    when 1,2
      tx["tx1"] = "\"#{pleasure_l}\""
    when 3
      tx["tx1"] = "\"Aha, nguh, aaahh, ufufu....\\H\n No need for words anymore....\\H\n Show me your love till the end....\\H」"
    end
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    case rand(3)
    when 1
      tx["tx1"] = "\"*g-gasp*....\\H\""
    when 2
      tx["tx1"] = "\"U-Ufufu....\\H\n My cries won't stop....\\H\""
    when 3
      tx["tx1"] = "\"Nnn, ah, haaah....\\H\n So fantastic....\\H\""
    end
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"#{giggle_s}....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"I have a good grasp of your feelings now, #{target}.\n I want you to tell it more\n directly, deeply, and intimately to my body....\\H\""
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
    tx["tx1"] = "\"Wonder if it's alright to tell me that....\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Oh, my....\\H\n You certainly have a way with words, #{target}\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle_s}....should I take that seriously?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Even so, what you said doesn't sound so bad....\\H\""
  tx["tx1"] = "\"....Ufufu, thanks. That makes me happy\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Make me believe those words of yours.\n Just some sweet words won't be enough to intoxicate me.\""
    tx["tx2"] = "\"Let me see your body, #{target}.\n Show me everything without hiding any....\\H\"" 
    tx["tx2"] = "\"It doesn't feel right for only me to be like this.\nYou should be enjoying yourself with me, #{target}\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....What a sly man you are.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n You're a great man, #{target}\\H\""
    tx["tx1"] = "\"Oh, come on, #{target}....\\H\n You really know how to get the mood right....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
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
    tx["tx1"] = "\"If you're going to say that, how about we do something even better?\n I want to share a\n more steamy love with you, #{target}....\\H\""
    tx["tx2"] = "\"Just for you, I'm revealing this skin of mine, #{target}.\n Remember to watch me until I'm done....\\H\"" 
    tx["tx2"] = "\"Seeing how much you're waiting,\n I'll be offering my body as well, #{target}....\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....How unkind of you.\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n How do you like my body....? \\H\""
    tx["tx1"] = "\"Glad to see that you like my body\\H\n Let's have a wonderful time....\\H\"" if $game_actors[101].state?(32) #ドキっとした
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
    tx["tx1"] = "\"#{myname} can be quite greedy, you know.\n I'd like to have a taste of your energy, #{target}....\\H\""
    tx["tx2"] = "\"Isn't it fine?\n Prove to me\n your words aren't a lie....\\H\"" 
    tx["tx2"] = "\"You're saying such\n while showing off something so delicous-looking.\n That can only mean one thing....\\H\""  if $msg.tag == "Energy-suck - genitals" #主人公が裸時のみ発生
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"How unkind of you to\n set the mood like that and refuse me.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case rand(2)
    when 0
    tx["tx1"] = "\"Aha....delicious\\H It tastes just as great as your words....\\H\n Now I want to get a full taste\\H\""
    when 1
    tx["tx1"] = "\"#{giggle_s}....thanks for the food.\n You're so generous, #{target}....\\H\""
    end
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
    tx["tx1"] = "\"Ufufu....\\H Still, seeing how happy that made me,\n I'll make you feel great, #{target}.\""
    tx["tx2"] = "\"You want to join in it as well, yes?\n For only me to be joyful doesn't really please me....\\H\"" 
    tx["tx2"] = "\"Don't you want the same treatment, #{target}?\n Your face tells me you do....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}, you don't have to be shy about it....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Shuddering like that must mean you're enjoying it quite a lot\\H\n #{giggle_s}, making a cute face like that\n just makes me want to bully you more....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....what a great voice\\H\n Could you let me hear more of it? \\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....making such a pitiful resistance by desperately holding your voice down....\\H\n Go ahead and fight it if you can,\n I'll have you squealing until you give in...\\H\""  if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Aren't you at the end of your rope? Trying to fight it won't do any good.\n I already know where and how to strike\n to please you, #{target}....\\H\""  if $msg.t_target.crisis? == true and $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....was this how you wanted it? \\H\n Your voice tell me\n it feels even better than last time....\\H\""  if $msg.weakpoints == 20 #性癖込み口上があればこちら
        tx["tx1"] = "\"#{giggle} I just adore the expression you're making right now, #{target}.\n A pathetic expression from having your sensitive and favorite parts pleasured and\n wanting it even more....\\H\""  if $msg.weakpoints == 20 and $game_variables[17] > 50 #性癖込み口上パターン２
        tx["tx1"] = "\"#{giggle} So you like this, huh?\n It's pointless to try and evade it.\n I'll make you moan so much so that you can't even try to cover it up\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"#{giggle_s}, so this is what you're a fan of, #{target}\\H\n Like this, I'll throughly pick on your weak spots\n until your mind melts from the pleasure....\\H\""  if $msg.chain_attack == true and $msg.weakpoints == 20 #同じ部位で連撃中かつ性癖合致
        tx["tx1"] = "\"#{giggle_s}....can't fight it anymore?\n If you want me to pleasure you to the end,\n you need to properly beg for more\\H\""  if $msg.t_target.crisis? == true and $msg.chain_attack == true
      #▼通常
      else
        tx["tx1"] = "\"#{giggle_s}....you're holding out well\\H\n Guess I can't satisfy you without hitting the weak spots....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, your face tells me you haven't had enough\\H\n I won't know how you want to be pleasured\n unless you tell me....\\H\"" if $game_variables[17] > 50
        tx["tx1"] = "\"Don't forget to beg for it if you want to be pleasured.\n I'll be sure to tease\n your most favorite part without holding back, #{target}....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"I found your weak spots, #{target}....\\H\n Aaah, that's a great reaction\\H I can't help it anymore....\\H\n #{giggle_s}, I'll make you so blissful that you'll show it in an even better voice\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....so you like it here, I see\\H\n I'm not done yet. Time to expose\n all your weaks spots for what they are\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Can't endure it when I do it like this? Ufufu, you can't hide it here\\H\n Time to find out everything\n you desire and gratify them....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"Aha....you shuddered just now\\H\n Unless you can fight the pleasure,\nI'm going to pick on your weak spots all I like....like this\\H\""  if $msg.chain_attack == true and $game_variables[17] > 50
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, such a prude look...\\H\n I can't wait to distort that face in pleasure\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, try to hold out as much as you can\\H\n Until I find your weak spot,\n I'm going to pleasure you in all sorts of ways, #{target}....\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....how is it? You want more?\n I can keep going if you want\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}\\H You want me to stop now?\n Alright, I'll leave it at that for now.\n Remember to tell me when you want me to do it again\\H\""
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
    tx["tx1"] = "\"Sharing love with kind words\n is a whole new way to overflow your desires....\\H\""
    tx["tx2"] = "\"Hey, #{target}....\\H\n Staying true to our lust, let's pursue each other\n deeper and more clearly until our hearts overlap....\\H\"" 
    tx["tx2"] = "\"I know you want to overlap our bodies\n and melt in full with me, #{target}\\H\n Hold me tight just the way you want....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....there's nothing to be scared of....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{giggle_s}, I'm fully aware that shaking my hips makes you squirm inside me, #{target}\\H\n Time to tease you while I've swallowed you up....\\H\"" 
      tx["tx1"] = "\"There's no point in fighting back, since I'm not letting you go.\n As for your endurance, I'm going to envelop it, lick it,\n and dissolve it all inside me, #{target}\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha\\H Quivering inside me....\\H\n I wonder what'll happen if I squeeze you out,\n bite you gently, and playfully pick on you....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"You're making a nice moan\\H Did getting teased inside me feel good?\n Going even far as to relax....it was so easy to pin you down\\H\n #{giggle_s}, like this, I'm going to squeeze it all out with my privates....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{giggle_s}, what a nice expression there....\\H\n Show me more of you getting turned on\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....I know that feels nice.\n You just have to be more honest to the blissfulness....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Becoming just a bit more honest\n and yielding your mind to my body\n will make it feel so good that it'll stain your heart in pure white....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Feel the tightening of my insides....\\H\n Do you realize I'm clamping on your dick, twisting around it,\n and teasing it like there's no tomorrow? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Which do you prefer, #{target}?\n Being roughly violated or slowly teased? \\H\"" 
      tx["tx1"] = "\"#{giggle_s}....\\H How should\n I pick on you\n from now on....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle_s}....There's no need to hold it back\\H\n Shoot out your lust inside me\n whenver you feel like it\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Now I finally have you pinned down....\\H #{giggle_s}....was this what you actually wanted?\n Teasing you with my privates makes you tremble in happiness....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Defence
    else
      tx["tx1"] = "\"#{giggle_s}....I like taking the initiative and all,\n but I do want to see you putting up some fight.\n I wonder if you're feeling pleased, #{target}\\H\"" 
      tx["tx1"] = "\"Didn't think you'd be harassed like this?\n #{giggle_s}....leave it to me and\n I'll show you even more ways to have fun....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Now that you've pinned me down,\n you wouldn't let go of me or anything, are you?\n #{giggle_s}\\H That's a great expression there....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"#{giggle_s}....I'm getting a good look of your adorable face in arousal\\H\n No matter how good it may feel, lose your focus and\n I might just take the initiative\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You want to take a short break?\n #{giggle_s}....no helping it then\\H\n It'd be a waste to have it end so soon, after all....\\H\""
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
    tx["tx1"] = "\"With those hands of yours, could you prove to me\n that word aren't the only thing you're good at? \\H\""
    tx["tx2"] = "\"Don't hold anything back. I want you to touch my body\n and show it love to your heart's content.....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, geez....what a snobby kid you are\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"Aha....\\H That's it, you're good....nnaahh\\H\"" 
      tx["tx1"] = "\"Kuufu, ugh, nnhh....\\H This is more than I expected....\\H\n Ufufu, I can't hold down my voice....aaannh\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aieee! Don't just focus on there....pant, nnhh....\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s} Ufufu, you can be more greedy with it if you like\\H\"" 
      tx["tx1"] = "\"#{pleasure_s} #{giggle_s}\\H\n What do you think about my body....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Yes, there, more....aahhnnh\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Nnnhh.... #{giggle_s}\\H\n How innocent of you, #{target}.\n I wouldn't mind you to keep going\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....are you that wrapped up in it?\n You aught to be more honest to your lust\n and immerse yourself in indulging in me....\\H\""
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
    tx["tx1"] = "\"To return the favor, I'll let you\n take a look at my body, #{target}....\\H\""
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"That's a bit unfortunate....\n I was sure you'd take a liking to me\\H\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"What do you think....? I'm fairly confident in its size....\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....you want me to pleasure myself with these breasts?\n If that's what you want,\n I'll do that anytime, #{target}....\\H\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{giggle_s}....hey, don't stop looking at it....\n Engrave everything about me deep in your heart....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}.... #{giggle}, how you like it? \\H\n I want you to see my intimates from\n close enough that you can smell it....\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n Playing with here really gets me turned on....aha\\H\"" 
      tx["tx1"] = "\"#{pleasure_l} #{giggle}\n Don't you also want to\n play with my weak spots, #{target}....? \\H\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....you don't have to pretend to not be interested\\H\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....spacing out like that\\H\n With my body dead in front of you,\n you really fine with just watching it....? \\H\""
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
      tx["tx1"] = "\"#{giggle_s}....come here, you\\H\n Hold me tight....\\H\""
      tx["tx2"] = "\"I'd like to share some love with you, #{target}.\n Let's melt together as we look at each other's face....\\H\""  #正常位トラップ
      tx["tx2"] = "\"I don't mind you indulging in this body as you please.\n The animal-like passion you've been holding in,\n let it all out on me....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"You're so dull....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{giggle}, I can feel the\n passionate lust inside me....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*kiss*\\H ....Ufufu, making a surprised face like that\\H\n Say, #{taregt}.\n Don't you feel like doing with these lips as you please? \\H\""
      tx["tx2"] = "\"Using your shaft,\n violating my lips like there's no tomorrow and\n soiling it with your boiling hot lust. Just imagine....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"What a shame. ....Aaah, my mouth feels so empty....\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*rub*, *lick*....*droool*\\H #{giggle}\n Your smell's wonderful, #{target}\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....say, why not pleasure yourself with these breasts?\n I'm sure you'll get the experience the ultimate sensation\\H\""
      tx["tx2"] = "\"I want you to see how my\n breasts are throbbing with your member....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....no need to try and fight it\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaannh....\\H #{giggle_s}, so hard and hot....\\H\n My breasts are getting\n pushed away by your protrusion, #{target}....\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....I just thought of a good idea.\n Why don't you have a taste of my nectar? \\H\""
      tx["tx2"] = "\"I don't mind it if you suck on it without hesitation.\n Let's melt in ecstasy with each other\\H\n Stay still now....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh....not a fan of stuff like this, I wonder?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_l}\n I can feel your breath....nnhh, it keeps flowing out....\\H\n #{giggle_s}....remember to get a good taste of it....\\H\""
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
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    case rand(3)
    when 1,2
    tx["tx1"] = "\"#{pleasure_l}\""
    when 3
    tx["tx1"] = "\"*gasp*, ah, nnh, kuuh....\\H\n Ufufu....to tell me to get up already,\n you're more unreasonable than you look....\\H」"
    end
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"#{giggle_s}....\\H\n What's the matter? You want me to go all the way? \\H」"
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    case rand(3)
    when 1,2
      tx["tx1"] = "\"#{pleasure_l}\""
    when 3
      tx["tx1"] = "\"Aha, nguh, aaahh, ufufu....\\H\n No need for words anymore....\\H\n Show me your love till the end....\\H」"
    end
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    case rand(3)
    when 1
      tx["tx1"] = "\"*g-gasp*....\\H\""
    when 2
      tx["tx1"] = "\"U-Ufufu....\\H\n My cries won't stop....\\H\""
    when 3
      tx["tx1"] = "\"Nnn, ah, haaah....\\H\n So fantastic....\\H\""
    end
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"#{giggle_s}....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"I have a good grasp of your feelings now, #{target}.\n I want you to tell it more\n directly, deeply, and intimately to my body....\\H\""
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
    tx["tx1"] = "\"Wonder if it's alright to tell me that....\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Oh, my....\\H\n You certainly have a way with words, #{target}\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle_s}....should I take that seriously?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Even so, what you said doesn't sound so bad....\\H\""
  tx["tx1"] = "\"....Ufufu, thanks. That makes me happy\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Make me believe those words of yours.\n Just some sweet words won't be enough to intoxicate me.\""
    tx["tx2"] = "\"Let me see your body, #{target}.\n Show me everything without hiding any....\\H\"" 
    tx["tx2"] = "\"It doesn't feel right for only me to be like this.\nYou should be enjoying yourself with me, #{target}\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....What a sly man you are.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n You're a great man, #{target}\\H\""
    tx["tx1"] = "\"Oh, come on, #{target}....\\H\n You really know how to get the mood right....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
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
    tx["tx1"] = "\"If you're going to say that, how about we do something even better?\n I want to share a\n more steamy love with you, #{target}....\\H\""
    tx["tx2"] = "\"Just for you, I'm revealing this skin of mine, #{target}.\n Remember to watch me until I'm done....\\H\"" 
    tx["tx2"] = "\"Seeing how much you're waiting,\n I'll be offering my body as well, #{target}....\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....How unkind of you.\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n How do you like my body....? \\H\""
    tx["tx1"] = "\"Glad to see that you like my body\\H\n Let's have a wonderful time....\\H\"" if $game_actors[101].state?(32) #ドキっとした
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
    tx["tx1"] = "\"#{myname} can be quite greedy, you know.\n I'd like to have a taste of your energy, #{target}....\\H\""
    tx["tx2"] = "\"Isn't it fine?\n Prove to me\n your words aren't a lie....\\H\"" 
    tx["tx2"] = "\"You're saying such\n while showing off something so delicous-looking.\n That can only mean one thing....\\H\""  if $msg.tag == "Energy-suck - genitals" #主人公が裸時のみ発生
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"How unkind of you to\n set the mood like that and refuse me.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case rand(2)
    when 0
    tx["tx1"] = "\"Aha....delicious\\H It tastes just as great as your words....\\H\n Now I want to get a full taste\\H\""
    when 1
    tx["tx1"] = "\"#{giggle_s}....thanks for the food.\n You're so generous, #{target}....\\H\""
    end
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
    tx["tx1"] = "\"Ufufu....\\H Still, seeing how happy that made me,\n I'll make you feel great, #{target}.\""
    tx["tx2"] = "\"You want to join in it as well, yes?\n For only me to be joyful doesn't really please me....\\H\"" 
    tx["tx2"] = "\"Don't you want the same treatment, #{target}?\n Your face tells me you do....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}, you don't have to be shy about it....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Shuddering like that must mean you're enjoying it quite a lot\\H\n #{giggle_s}, making a cute face like that\n just makes me want to bully you more....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....what a great voice\\H\n Could you let me hear more of it? \\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....making such a pitiful resistance by desperately holding your voice down....\\H\n Go ahead and fight it if you can,\n I'll have you squealing until you give in...\\H\""  if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Aren't you at the end of your rope? Trying to fight it won't do any good.\n I already know where and how to strike\n to please you, #{target}....\\H\""  if $msg.t_target.crisis? == true and $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....was this how you wanted it? \\H\n Your voice tell me\n it feels even better than last time....\\H\""  if $msg.weakpoints == 20 #性癖込み口上があればこちら
        tx["tx1"] = "\"#{giggle} I just adore the expression you're making right now, #{target}.\n A pathetic expression from having your sensitive and favorite parts pleasured and\n wanting it even more....\\H\""  if $msg.weakpoints == 20 and $game_variables[17] > 50 #性癖込み口上パターン２
        tx["tx1"] = "\"#{giggle} So you like this, huh?\n It's pointless to try and evade it.\n I'll make you moan so much so that you can't even try to cover it up\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"#{giggle_s}, so this is what you're a fan of, #{target}\\H\n Like this, I'll throughly pick on your weak spots\n until your mind melts from the pleasure....\\H\""  if $msg.chain_attack == true and $msg.weakpoints == 20 #同じ部位で連撃中かつ性癖合致
        tx["tx1"] = "\"#{giggle_s}....can't fight it anymore?\n If you want me to pleasure you to the end,\n you need to properly beg for more\\H\""  if $msg.t_target.crisis? == true and $msg.chain_attack == true
      #▼通常
      else
        tx["tx1"] = "\"#{giggle_s}....you're holding out well\\H\n Guess I can't satisfy you without hitting the weak spots....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, your face tells me you haven't had enough\\H\n I won't know how you want to be pleasured\n unless you tell me....\\H\"" if $game_variables[17] > 50
        tx["tx1"] = "\"Don't forget to beg for it if you want to be pleasured.\n I'll be sure to tease\n your most favorite part without holding back, #{target}....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"I found your weak spots, #{target}....\\H\n Aaah, that's a great reaction\\H I can't help it anymore....\\H\n #{giggle_s}, I'll make you so blissful that you'll show it in an even better voice\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....so you like it here, I see\\H\n I'm not done yet. Time to expose\n all your weaks spots for what they are\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Can't endure it when I do it like this? Ufufu, you can't hide it here\\H\n Time to find out everything\n you desire and gratify them....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"Aha....you shuddered just now\\H\n Unless you can fight the pleasure,\nI'm going to pick on your weak spots all I like....like this\\H\""  if $msg.chain_attack == true and $game_variables[17] > 50
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, such a prude look...\\H\n I can't wait to distort that face in pleasure\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, try to hold out as much as you can\\H\n Until I find your weak spot,\n I'm going to pleasure you in all sorts of ways, #{target}....\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....how is it? You want more?\n I can keep going if you want\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}\\H You want me to stop now?\n Alright, I'll leave it at that for now.\n Remember to tell me when you want me to do it again\\H\""
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
    tx["tx1"] = "\"Sharing love with kind words\n is a whole new way to overflow your desires....\\H\""
    tx["tx2"] = "\"Hey, #{target}....\\H\n Staying true to our lust, let's pursue each other\n deeper and more clearly until our hearts overlap....\\H\"" 
    tx["tx2"] = "\"I know you want to overlap our bodies\n and melt in full with me, #{target}\\H\n Hold me tight just the way you want....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....there's nothing to be scared of....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{giggle_s}, I'm fully aware that shaking my hips makes you squirm inside me, #{target}\\H\n Time to tease you while I've swallowed you up....\\H\"" 
      tx["tx1"] = "\"There's no point in fighting back, since I'm not letting you go.\n As for your endurance, I'm going to envelop it, lick it,\n and dissolve it all inside me, #{target}\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha\\H Quivering inside me....\\H\n I wonder what'll happen if I squeeze you out,\n bite you gently, and playfully pick on you....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"You're making a nice moan\\H Did getting teased inside me feel good?\n Going even far as to relax....it was so easy to pin you down\\H\n #{giggle_s}, like this, I'm going to squeeze it all out with my privates....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{giggle_s}, what a nice expression there....\\H\n Show me more of you getting turned on\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....I know that feels nice.\n You just have to be more honest to the blissfulness....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Becoming just a bit more honest\n and yielding your mind to my body\n will make it feel so good that it'll stain your heart in pure white....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Feel the tightening of my insides....\\H\n Do you realize I'm clamping on your dick, twisting around it,\n and teasing it like there's no tomorrow? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Which do you prefer, #{target}?\n Being roughly violated or slowly teased? \\H\"" 
      tx["tx1"] = "\"#{giggle_s}....\\H How should\n I pick on you\n from now on....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle_s}....There's no need to hold it back\\H\n Shoot out your lust inside me\n whenver you feel like it\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Now I finally have you pinned down....\\H #{giggle_s}....was this what you actually wanted?\n Teasing you with my privates makes you tremble in happiness....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Defence
    else
      tx["tx1"] = "\"#{giggle_s}....I like taking the initiative and all,\n but I do want to see you putting up some fight.\n I wonder if you're feeling pleased, #{target}\\H\"" 
      tx["tx1"] = "\"Didn't think you'd be harassed like this?\n #{giggle_s}....leave it to me and\n I'll show you even more ways to have fun....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Now that you've pinned me down,\n you wouldn't let go of me or anything, are you?\n #{giggle_s}\\H That's a great expression there....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"#{giggle_s}....I'm getting a good look of your adorable face in arousal\\H\n No matter how good it may feel, lose your focus and\n I might just take the initiative\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You want to take a short break?\n #{giggle_s}....no helping it then\\H\n It'd be a waste to have it end so soon, after all....\\H\""
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
    tx["tx1"] = "\"With those hands of yours, could you prove to me\n that word aren't the only thing you're good at? \\H\""
    tx["tx2"] = "\"Don't hold anything back. I want you to touch my body\n and show it love to your heart's content.....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, geez....what a snobby kid you are\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"Aha....\\H That's it, you're good....nnaahh\\H\"" 
      tx["tx1"] = "\"Kuufu, ugh, nnhh....\\H This is more than I expected....\\H\n Ufufu, I can't hold down my voice....aaannh\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aieee! Don't just focus on there....pant, nnhh....\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s} Ufufu, you can be more greedy with it if you like\\H\"" 
      tx["tx1"] = "\"#{pleasure_s} #{giggle_s}\\H\n What do you think about my body....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Yes, there, more....aahhnnh\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Nnnhh.... #{giggle_s}\\H\n How innocent of you, #{target}.\n I wouldn't mind you to keep going\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....are you that wrapped up in it?\n You aught to be more honest to your lust\n and immerse yourself in indulging in me....\\H\""
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
    tx["tx1"] = "\"To return the favor, I'll let you\n take a look at my body, #{target}....\\H\""
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"That's a bit unfortunate....\n I was sure you'd take a liking to me\\H\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"What do you think....? I'm fairly confident in its size....\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....you want me to pleasure myself with these breasts?\n If that's what you want,\n I'll do that anytime, #{target}....\\H\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{giggle_s}....hey, don't stop looking at it....\n Engrave everything about me deep in your heart....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}.... #{giggle}, how you like it? \\H\n I want you to see my intimates from\n close enough that you can smell it....\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n Playing with here really gets me turned on....aha\\H\"" 
      tx["tx1"] = "\"#{pleasure_l} #{giggle}\n Don't you also want to\n play with my weak spots, #{target}....? \\H\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....you don't have to pretend to not be interested\\H\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....spacing out like that\\H\n With my body dead in front of you,\n you really fine with just watching it....? \\H\""
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
      tx["tx1"] = "\"#{giggle_s}....come here, you\\H\n Hold me tight....\\H\""
      tx["tx2"] = "\"I'd like to share some love with you, #{target}.\n Let's melt together as we look at each other's face....\\H\""  #正常位トラップ
      tx["tx2"] = "\"I don't mind you indulging in this body as you please.\n The animal-like passion you've been holding in,\n let it all out on me....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"You're so dull....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{giggle}, I can feel the\n passionate lust inside me....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*kiss*\\H ....Ufufu, making a surprised face like that\\H\n Say, #{taregt}.\n Don't you feel like doing with these lips as you please? \\H\""
      tx["tx2"] = "\"Using your shaft,\n violating my lips like there's no tomorrow and\n soiling it with your boiling hot lust. Just imagine....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"What a shame. ....Aaah, my mouth feels so empty....\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*rub*, *lick*....*droool*\\H #{giggle}\n Your smell's wonderful, #{target}\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....say, why not pleasure yourself with these breasts?\n I'm sure you'll get the experience the ultimate sensation\\H\""
      tx["tx2"] = "\"I want you to see how my\n breasts are throbbing with your member....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....no need to try and fight it\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaannh....\\H #{giggle_s}, so hard and hot....\\H\n My breasts are getting\n pushed away by your protrusion, #{target}....\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....I just thought of a good idea.\n Why don't you have a taste of my nectar? \\H\""
      tx["tx2"] = "\"I don't mind it if you suck on it without hesitation.\n Let's melt in ecstasy with each other\\H\n Stay still now....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh....not a fan of stuff like this, I wonder?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_l}\n I can feel your breath....nnhh, it keeps flowing out....\\H\n #{giggle_s}....remember to get a good taste of it....\\H\""
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
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    case rand(3)
    when 1,2
    tx["tx1"] = "\"#{pleasure_l}\""
    when 3
    tx["tx1"] = "\"*gasp*, ah, nnh, kuuh....\\H\n Ufufu....to tell me to get up already,\n you're more unreasonable than you look....\\H」"
    end
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"#{giggle_s}....\\H\n What's the matter? You want me to go all the way? \\H」"
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    case rand(3)
    when 1,2
      tx["tx1"] = "\"#{pleasure_l}\""
    when 3
      tx["tx1"] = "\"Aha, nguh, aaahh, ufufu....\\H\n No need for words anymore....\\H\n Show me your love till the end....\\H」"
    end
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    case rand(3)
    when 1
      tx["tx1"] = "\"*g-gasp*....\\H\""
    when 2
      tx["tx1"] = "\"U-Ufufu....\\H\n My cries won't stop....\\H\""
    when 3
      tx["tx1"] = "\"Nnn, ah, haaah....\\H\n So fantastic....\\H\""
    end
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"#{giggle_s}....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"I have a good grasp of your feelings now, #{target}.\n I want you to tell it more\n directly, deeply, and intimately to my body....\\H\""
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
    tx["tx1"] = "\"Wonder if it's alright to tell me that....\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Oh, my....\\H\n You certainly have a way with words, #{target}\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"#{giggle_s}....should I take that seriously?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Even so, what you said doesn't sound so bad....\\H\""
  tx["tx1"] = "\"....Ufufu, thanks. That makes me happy\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Make me believe those words of yours.\n Just some sweet words won't be enough to intoxicate me.\""
    tx["tx2"] = "\"Let me see your body, #{target}.\n Show me everything without hiding any....\\H\"" 
    tx["tx2"] = "\"It doesn't feel right for only me to be like this.\nYou should be enjoying yourself with me, #{target}\\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....What a sly man you are.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n You're a great man, #{target}\\H\""
    tx["tx1"] = "\"Oh, come on, #{target}....\\H\n You really know how to get the mood right....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
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
    tx["tx1"] = "\"If you're going to say that, how about we do something even better?\n I want to share a\n more steamy love with you, #{target}....\\H\""
    tx["tx2"] = "\"Just for you, I'm revealing this skin of mine, #{target}.\n Remember to watch me until I'm done....\\H\"" 
    tx["tx2"] = "\"Seeing how much you're waiting,\n I'll be offering my body as well, #{target}....\\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....How unkind of you.\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....\\H\n How do you like my body....? \\H\""
    tx["tx1"] = "\"Glad to see that you like my body\\H\n Let's have a wonderful time....\\H\"" if $game_actors[101].state?(32) #ドキっとした
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
    tx["tx1"] = "\"#{myname} can be quite greedy, you know.\n I'd like to have a taste of your energy, #{target}....\\H\""
    tx["tx2"] = "\"Isn't it fine?\n Prove to me\n your words aren't a lie....\\H\"" 
    tx["tx2"] = "\"You're saying such\n while showing off something so delicous-looking.\n That can only mean one thing....\\H\""  if $msg.tag == "Energy-suck - genitals" #主人公が裸時のみ発生
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"How unkind of you to\n set the mood like that and refuse me.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case rand(2)
    when 0
    tx["tx1"] = "\"Aha....delicious\\H It tastes just as great as your words....\\H\n Now I want to get a full taste\\H\""
    when 1
    tx["tx1"] = "\"#{giggle_s}....thanks for the food.\n You're so generous, #{target}....\\H\""
    end
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
    tx["tx1"] = "\"Ufufu....\\H Still, seeing how happy that made me,\n I'll make you feel great, #{target}.\""
    tx["tx2"] = "\"You want to join in it as well, yes?\n For only me to be joyful doesn't really please me....\\H\"" 
    tx["tx2"] = "\"Don't you want the same treatment, #{target}?\n Your face tells me you do....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}, you don't have to be shy about it....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Shuddering like that must mean you're enjoying it quite a lot\\H\n #{giggle_s}, making a cute face like that\n just makes me want to bully you more....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....what a great voice\\H\n Could you let me hear more of it? \\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....making such a pitiful resistance by desperately holding your voice down....\\H\n Go ahead and fight it if you can,\n I'll have you squealing until you give in...\\H\""  if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Aren't you at the end of your rope? Trying to fight it won't do any good.\n I already know where and how to strike\n to please you, #{target}....\\H\""  if $msg.t_target.crisis? == true and $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....was this how you wanted it? \\H\n Your voice tell me\n it feels even better than last time....\\H\""  if $msg.weakpoints == 20 #性癖込み口上があればこちら
        tx["tx1"] = "\"#{giggle} I just adore the expression you're making right now, #{target}.\n A pathetic expression from having your sensitive and favorite parts pleasured and\n wanting it even more....\\H\""  if $msg.weakpoints == 20 and $game_variables[17] > 50 #性癖込み口上パターン２
        tx["tx1"] = "\"#{giggle} So you like this, huh?\n It's pointless to try and evade it.\n I'll make you moan so much so that you can't even try to cover it up\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"#{giggle_s}, so this is what you're a fan of, #{target}\\H\n Like this, I'll throughly pick on your weak spots\n until your mind melts from the pleasure....\\H\""  if $msg.chain_attack == true and $msg.weakpoints == 20 #同じ部位で連撃中かつ性癖合致
        tx["tx1"] = "\"#{giggle_s}....can't fight it anymore?\n If you want me to pleasure you to the end,\n you need to properly beg for more\\H\""  if $msg.t_target.crisis? == true and $msg.chain_attack == true
      #▼通常
      else
        tx["tx1"] = "\"#{giggle_s}....you're holding out well\\H\n Guess I can't satisfy you without hitting the weak spots....\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, your face tells me you haven't had enough\\H\n I won't know how you want to be pleasured\n unless you tell me....\\H\"" if $game_variables[17] > 50
        tx["tx1"] = "\"Don't forget to beg for it if you want to be pleasured.\n I'll be sure to tease\n your most favorite part without holding back, #{target}....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"I found your weak spots, #{target}....\\H\n Aaah, that's a great reaction\\H I can't help it anymore....\\H\n #{giggle_s}, I'll make you so blissful that you'll show it in an even better voice\\H\"" 
        tx["tx1"] = "\"#{giggle_s}....so you like it here, I see\\H\n I'm not done yet. Time to expose\n all your weaks spots for what they are\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Can't endure it when I do it like this? Ufufu, you can't hide it here\\H\n Time to find out everything\n you desire and gratify them....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
        tx["tx1"] = "\"Aha....you shuddered just now\\H\n Unless you can fight the pleasure,\nI'm going to pick on your weak spots all I like....like this\\H\""  if $msg.chain_attack == true and $game_variables[17] > 50
      #▼通常
      else
        tx["tx1"] = "\"Nfufu, such a prude look...\\H\n I can't wait to distort that face in pleasure\\H\"" 
        tx["tx1"] = "\"#{giggle_s}, try to hold out as much as you can\\H\n Until I find your weak spot,\n I'm going to pleasure you in all sorts of ways, #{target}....\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle_s}....how is it? You want more?\n I can keep going if you want\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}\\H You want me to stop now?\n Alright, I'll leave it at that for now.\n Remember to tell me when you want me to do it again\\H\""
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
    tx["tx1"] = "\"Sharing love with kind words\n is a whole new way to overflow your desires....\\H\""
    tx["tx2"] = "\"Hey, #{target}....\\H\n Staying true to our lust, let's pursue each other\n deeper and more clearly until our hearts overlap....\\H\"" 
    tx["tx2"] = "\"I know you want to overlap our bodies\n and melt in full with me, #{target}\\H\n Hold me tight just the way you want....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....there's nothing to be scared of....\\H\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{giggle_s}, I'm fully aware that shaking my hips makes you squirm inside me, #{target}\\H\n Time to tease you while I've swallowed you up....\\H\"" 
      tx["tx1"] = "\"There's no point in fighting back, since I'm not letting you go.\n As for your endurance, I'm going to envelop it, lick it,\n and dissolve it all inside me, #{target}\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha\\H Quivering inside me....\\H\n I wonder what'll happen if I squeeze you out,\n bite you gently, and playfully pick on you....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"You're making a nice moan\\H Did getting teased inside me feel good?\n Going even far as to relax....it was so easy to pin you down\\H\n #{giggle_s}, like this, I'm going to squeeze it all out with my privates....\\H\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{giggle_s}, what a nice expression there....\\H\n Show me more of you getting turned on\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....I know that feels nice.\n You just have to be more honest to the blissfulness....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Becoming just a bit more honest\n and yielding your mind to my body\n will make it feel so good that it'll stain your heart in pure white....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Feel the tightening of my insides....\\H\n Do you realize I'm clamping on your dick, twisting around it,\n and teasing it like there's no tomorrow? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Which do you prefer, #{target}?\n Being roughly violated or slowly teased? \\H\"" 
      tx["tx1"] = "\"#{giggle_s}....\\H How should\n I pick on you\n from now on....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle_s}....There's no need to hold it back\\H\n Shoot out your lust inside me\n whenver you feel like it\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"Now I finally have you pinned down....\\H #{giggle_s}....was this what you actually wanted?\n Teasing you with my privates makes you tremble in happiness....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Defence
    else
      tx["tx1"] = "\"#{giggle_s}....I like taking the initiative and all,\n but I do want to see you putting up some fight.\n I wonder if you're feeling pleased, #{target}\\H\"" 
      tx["tx1"] = "\"Didn't think you'd be harassed like this?\n #{giggle_s}....leave it to me and\n I'll show you even more ways to have fun....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Now that you've pinned me down,\n you wouldn't let go of me or anything, are you?\n #{giggle_s}\\H That's a great expression there....\\H\""  if $msg.t_target.crisis? == true
      tx["tx1"] = "\"#{giggle_s}....I'm getting a good look of your adorable face in arousal\\H\n No matter how good it may feel, lose your focus and\n I might just take the initiative\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You want to take a short break?\n #{giggle_s}....no helping it then\\H\n It'd be a waste to have it end so soon, after all....\\H\""
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
    tx["tx1"] = "\"With those hands of yours, could you prove to me\n that word aren't the only thing you're good at? \\H\""
    tx["tx2"] = "\"Don't hold anything back. I want you to touch my body\n and show it love to your heart's content.....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, geez....what a snobby kid you are\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"Aha....\\H That's it, you're good....nnaahh\\H\"" 
      tx["tx1"] = "\"Kuufu, ugh, nnhh....\\H This is more than I expected....\\H\n Ufufu, I can't hold down my voice....aaannh\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aieee! Don't just focus on there....pant, nnhh....\\H\n #{pleasure_cr}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s} Ufufu, you can be more greedy with it if you like\\H\"" 
      tx["tx1"] = "\"#{pleasure_s} #{giggle_s}\\H\n What do you think about my body....? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Yes, there, more....aahhnnh\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Nnnhh.... #{giggle_s}\\H\n How innocent of you, #{target}.\n I wouldn't mind you to keep going\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....are you that wrapped up in it?\n You aught to be more honest to your lust\n and immerse yourself in indulging in me....\\H\""
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
    tx["tx1"] = "\"To return the favor, I'll let you\n take a look at my body, #{target}....\\H\""
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"That's a bit unfortunate....\n I was sure you'd take a liking to me\\H\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"What do you think....? I'm fairly confident in its size....\\H\"" 
      tx["tx1"] = "\"#{giggle_s}....you want me to pleasure myself with these breasts?\n If that's what you want,\n I'll do that anytime, #{target}....\\H\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{giggle_s}....hey, don't stop looking at it....\n Engrave everything about me deep in your heart....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}.... #{giggle}, how you like it? \\H\n I want you to see my intimates from\n close enough that you can smell it....\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n Playing with here really gets me turned on....aha\\H\"" 
      tx["tx1"] = "\"#{pleasure_l} #{giggle}\n Don't you also want to\n play with my weak spots, #{target}....? \\H\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....you don't have to pretend to not be interested\\H\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle_s}....spacing out like that\\H\n With my body dead in front of you,\n you really fine with just watching it....? \\H\""
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
      tx["tx1"] = "\"#{giggle_s}....come here, you\\H\n Hold me tight....\\H\""
      tx["tx2"] = "\"I'd like to share some love with you, #{target}.\n Let's melt together as we look at each other's face....\\H\""  #正常位トラップ
      tx["tx2"] = "\"I don't mind you indulging in this body as you please.\n The animal-like passion you've been holding in,\n let it all out on me....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"You're so dull....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{giggle}, I can feel the\n passionate lust inside me....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*kiss*\\H ....Ufufu, making a surprised face like that\\H\n Say, #{taregt}.\n Don't you feel like doing with these lips as you please? \\H\""
      tx["tx2"] = "\"Using your shaft,\n violating my lips like there's no tomorrow and\n soiling it with your boiling hot lust. Just imagine....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"What a shame. ....Aaah, my mouth feels so empty....\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"*rub*, *lick*....*droool*\\H #{giggle}\n Your smell's wonderful, #{target}\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....say, why not pleasure yourself with these breasts?\n I'm sure you'll get the experience the ultimate sensation\\H\""
      tx["tx2"] = "\"I want you to see how my\n breasts are throbbing with your member....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....no need to try and fight it\\H\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaannh....\\H #{giggle_s}, so hard and hot....\\H\n My breasts are getting\n pushed away by your protrusion, #{target}....\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle_s}....I just thought of a good idea.\n Why don't you have a taste of my nectar? \\H\""
      tx["tx2"] = "\"I don't mind it if you suck on it without hesitation.\n Let's melt in ecstasy with each other\\H\n Stay still now....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh....not a fan of stuff like this, I wonder?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_l}\n I can feel your breath....nnhh, it keeps flowing out....\\H\n #{giggle_s}....remember to get a good taste of it....\\H\""
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
