--------------------------------------------------
---本文档用以描述部分fk函数，以及比较fk与sgs（FREEKILL与神杀）的部分代码区别，附代码作用）
--------------------------------------------------

--技能创建

--------------------------------------------------
---fk.CreateTriggerSkill = sgs.CreateTriggerSkill
---分类：技能创建
---用途：创建触发技。
--------------------------------------------------

--时机

--------------------------------------------------
---fk.EventPhaseStart=sgs.EventPhaseStart
---分类：时机
---用途：轮次开始时
--------------------------------------------------

--------------------------------------------------
---fk.DrawNCards=sgs.Player_Draw
---分类：时机
---用途：摸牌阶段
--------------------------------------------------

--------------------------------------------------
---fk.Finish=sgs.Player_Finish
---分类：时机
---用途：结束阶段
--------------------------------------------------

--技能创建函数

--------------------------------------------------
---can_trigger
---分类：技能创建函数
---用途：根据可以触发技能的角色条件与时机条件返回符合条件的角色。
--------------------------------------------------

--------------------------------------------------
---on_use
---分类：技能创建函数
---用途：描述实现方式和效果。
---注释：只要进入这一步，技能就发动一次。
--------------------------------------------------

--------------------------------------------------
---room:broadcastSkillInvoke(self.name)
---播放对应技能的音效
---room:notifySkillInvoked(self.name)
---播放对应技能的特效，效果为技能模式+技能名
---room:doIndicate(source,targets) = room:room:doAnimate(1, player:objectName(), to:objectName())
---产生一条从前者到后者的指示线
--------------------------------------------------

--------------------------------------------------
---self.name=self:objectName()
---目前可以理解为本技能在程序中的名字。
---room:delay()=room:getThread():delay()
---为房间中下一个进程提供延迟末尾的括号中填写时间。
--------------------------------------------------

--------------------------------------------------
---data
---（重要）根据不同时机，其输入的内容不同。
---如data.to在fk.EventPhaseChanging中就是对应阶段，而
--- 在fk.TargetSpecified中是目标玩家。
---sgs.CardUsed在FK中，根据“使用时/结算后”两种时机，
--- 可以分为fk.AfterCardUseDeclared（宣告手牌使用时）
--- 及fk.CardUseFinished（手牌结算后）
--------------------------------------------------