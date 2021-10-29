=begin
#######################################################################################################################
 ●『ファミリア(緑)』ベース
 version 1.0.0
 ※使用前には必ず■クラス名■を入力して下さい
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgFamiliar_B < MsgBase
  #--------------------------------------------------------------------------
  # ● 性格別の一人称・二人称設定
  #--------------------------------------------------------------------------
  def callname
#          @partner = "" if @pid == xx #特定性格の場合の特殊二人称
    #=====================================================================
    #★対味方戦闘時でない場合、対主人公の二人称を決めなおし、パートナーの呼称を決める
    unless $game_party.in_partybattle? or $msg.t_enemy.love > 0
      #▼会話対象が主人公の場合
      if $msg.t_target == $game_actors[101]
        @target = "Mister" #主人公への二人称
        #パートナーが存在する場合別途設定
        if $msg.t_partner != nil
          @partner = "Miss" #仲間への二人称
          @partner = "Young miss" if $msg.age2 > 0 #年下仲間への二人称
          @partner = "Miss" if $msg.age2 < 0 #年上仲間への二人称
          @partner = "Lady" if @doppel_pt #同属仲間への二人称
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        @myname = "I" if @doppel #会話対象が同属なら一人称が変更される
        @target = "Miss" #仲間への二人称
        @target = "Young miss" if $msg.age > 0 #年下仲間への二人称
        @target = "Miss" if $msg.age < 0 #年上仲間への二人称
        @target = "Lady" if @doppel #同属仲間への二人称
        #会話対象がパートナーなので、相方は自動的に主人公となる
        @partner = "Mister" #主人公への二人称
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          @myname = "I" if @doppel_cp #連携対象が同属なら一人称が変更される
          @cp_leader = "Miss" #相方への二人称
          @cp_leader = "Young miss" if $msg.age3 > 0 #年下相方への二人称
          @cp_leader = "Miss" if $msg.age3 < 0 #年上相方への二人称
          @cp_leader = "Lady" if @doppel_cp #同属相方への二人称
        end
      end
    #=====================================================================
    #★対味方戦の場合、パートナー夢魔の呼称のみを決める
    else
      #▼会話対象が主人公の場合
      if $msg.t_target == $game_actors[101]
        #パートナーが存在する場合別途設定
        if $msg.t_partner != nil
          if @companion_pt == true#相手の事を知っている場合の二人称
            @partner = "Master #{$msg.short_name($msg.t_partner)}" #仲間への二人称
            @partner = "Young master #{$msg.short_name($msg.t_partner)}" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "Master #{$msg.short_name($msg.t_partner)}" if $msg.age2 < 0 #年上仲間への二人称
            @partner = "#{$msg.short_name($msg.t_partner)}" if @doppel_pt #同属仲間への二人称
          else
            @partner = "Madam" #仲間への二人称
            @partner = "Young madam" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "Madam" if $msg.age2 < 0 #年上仲間への二人称
            @partner = "Lady" if @doppel_pt #同属仲間への二人称
          end
          @partner = "Missus" if $msg.t_partner.have_ability?("Significant Other") #対象が【大切な人】持ちの場合特殊呼称になる
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        @myname = "I" if @doppel #会話対象が同属なら一人称が変更される
        if @companion == true#相手の事を知っている場合の二人称
          @target = "Master #{$msg.short_name($msg.t_target)}" #仲間への二人称
          @target = "Young master #{$msg.short_name($msg.t_target)}" if $msg.age > 0 #年下仲間への二人称
          @target = "Master #{$msg.short_name($msg.t_target)}" if $msg.age < 0 #年上仲間への二人称
          @target = "#{$msg.short_name($msg.t_target)}" if @doppel #同属仲間への二人称
        else
          @target = "Madam" #仲間への二人称
          @target = "Young madam" if $msg.age > 0 #年下仲間への二人称
          @target = "Madam" if $msg.age < 0 #年上仲間への二人称
          @target = "Lady" if @doppel #同属仲間への二人称
        end
        @target = "Missus" if $msg.t_target.have_ability?("Significant Other") #対象が【大切な人】持ちの場合特殊呼称になる
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          @myname = "私" if @doppel_cp #連携対象が同属なら一人称が変更される
          if @companion_cp == true
            @cp_leader = "Master #{$msg.short_name($msg.coop_leader)}" #相方への二人称
            @cp_leader = "Young master #{$msg.short_name($msg.coop_leader)}" if $msg.age3 > 0 #年下相方への二人称
            @cp_leader = "Master #{$msg.short_name($msg.coop_leader)}" if $msg.age3 < 0 #年上相方への二人称
            @cp_leader = "#{$msg.short_name($msg.coop_leader)}" if @doppel_cp #同属相方への二人称
          else
            @cp_leader = "Madam" #相方への二人称
            @cp_leader = "Young madam" if $msg.age3 > 0 #年下仲間への二人称
            @cp_leader = "Madam" if $msg.age3 < 0 #年上仲間への二人称
            @cp_leader = "Lady" if @doppel_cp #同属仲間への二人称
          end
          @cp_leader = "Missus" if $msg.coop_leader.have_ability?("大切な人") #対象が【大切な人】持ちの場合特殊呼称になる
        end
      end
    end
    #=====================================================================
    #●設定した呼称を変数に格納する
    $game_variables[48] = @myname
    $game_variables[49] = @target
    $game_variables[50] = @partner
  end
end
