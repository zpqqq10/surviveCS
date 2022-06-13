import numpy as np           # 提供维度数组与矩阵运算
import copy                  # 从copy模块导入深度拷贝方法
from board import Chessboard

# 基于棋盘类，设计搜索策略
class Game:
    def __init__(self, show = True):
        """
        初始化游戏状态.
        """
        
        self.chessBoard = Chessboard(show)
        self.solves = []
        self.gameInit()
        
    # 重置游戏
    def gameInit(self, show = True):
        """
        重置棋盘.
        """
        
        self.Queen_setRow = [-1] * 8
        self.chessBoard.boardInit(False)
        
    ##############################################################################
    ####                请在以下区域中作答(可自由添加自定义函数)                 #### 
    ####              输出：self.solves = 八皇后所有序列解的list                ####
    ####             如:[[0,6,4,7,1,3,5,2],]代表八皇后的一个解为                ####
    ####           (0,0),(1,6),(2,4),(3,7),(4,1),(5,3),(6,5),(7,2)            ####
    ##############################################################################
    #                                                                            #

    def recursion(self, row): 
        if row == 7: 
            for i in range(8): 
                if self.chessBoard.setQueen(row, i, False): 
                    self.Queen_setRow[row] = i
                    sol = copy.deepcopy(self.Queen_setRow)
                    self.solves.append(sol)
        else :
            for i in range(8): 
                if row==1 and i==6: 
                    print('here')
                if self.chessBoard.setQueen(row, i, False): 
                    self.Queen_setRow[row] = i
                    self.recursion(row+1)
                    self.chessBoard.boardInit(False)
                    for j in range(row): 
                        self.chessBoard.setQueen(j, self.Queen_setRow[j], False)
    
    def run(self, row=0):
        # self.solves.append([0,6,4,7,1,3,5,2])
        row = 0
        for i in range(8): 
            self.chessBoard.setQueen(row, i, False)
            self.Queen_setRow[row] = i
            self.recursion(row+1)
            self.gameInit()

                

    #                                                                            #
    ##############################################################################
    #################             完成后请记得提交作业             ################# 
    ##############################################################################
    
    def showResults(self, result):
        """
        结果展示.
        """
        
        self.chessBoard.boardInit(False)
        for i,item in enumerate(result):
            if item >= 0:
                self.chessBoard.setQueen(i,item,False)
        
        self.chessBoard.printChessboard(False)
    
    def get_results(self):
        """
        输出结果(请勿修改此函数).
        return: 八皇后的序列解的list.
        """
        
        self.run()
        return self.solves
   
game = Game()
solutions = game.get_results()
print('There are {} results.'.format(len(solutions)))
for i in range(len(solutions)): 
    game.showResults(solutions[i])