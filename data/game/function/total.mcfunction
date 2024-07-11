execute if score 紅隊分數 list > 藍隊分數 list run function game:end/red
execute if score 紅隊分數 list = 藍隊分數 list run function game:end/tie
execute if score 紅隊分數 list < 藍隊分數 list run function game:end/blue