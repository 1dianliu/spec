# spec数据包v1.0.3
2024/10/15  
灵感来自MCDR的gamemode插件  
作者:1dianliu  版本:1.21+(有bug找我反馈)  
  
------------------------------------------------------------  
输入/trigger s切换旁观 再次输入回到原地  
输入/trigger tp选择其他维度 生存模式下点击无效  
数据包里有旁观者保护机制 阻止旁观者进入虚空中会受伤的区域  
通过/gamerule sendCommandFeedback false关闭指令反馈 但所有指令的反馈都没了(  
原版旁观者可以传送其他玩家 按三次1可以在快捷栏上看到其他玩家的脑袋 用双击数字或者用鼠标中键可以传送过去  
  
关于维度传送 主世界和下界之间可以正常1:8传送 进入末地或者离开末地会被传送到对应维度0 64 0的位置  
  
------------------------------------------------------------  
1.21以下无法使用 可以尝试把两个function文件夹重命名为functions(不确定能不能用 至少不改的话不能用)  
1.0.3几乎很完善了 不会去用指令强加载本体所在区块 创造模式使用/trigger后返回原位不会变生存了  
或许还有些许没发现的bug 发现之后在更新吧  
多人也可以用Carpet-Org_Addition中的/spectator  或者MCDR的gamemode插件 数据包还是有局限性的  
  
但数据包好处是安装方便、接近原版 只需要放在地图文件夹下的datapacks文件夹里 解不解压都行  
地图文件夹在.minecraft\saves里找到  也可以在游戏点击"单人游戏-选中地图-编辑-打开世界文件夹"  
  
------------------------------------------------------------  
本次更新内容:  
优化了部分逻辑 不需要强加载了 切旁观时会在0 0 0的位置生成一个对应的marker(一种实体) 他记录了对应玩家的坐标和朝向   
