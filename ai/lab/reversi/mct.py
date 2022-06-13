#!/usr/bin/Anaconda3/python
# -*- coding: utf-8 -*-

from cmath import pi
from copy import deepcopy
from math import sqrt, log
import random

from func_timeout import func_timeout, FunctionTimedOut

C = 1 / sqrt(2)
MAX = 1
MIN = 0

class Node:
    def __init__(self, parent, board, color, action, pick):
        # 父节点
        self.parent = parent
        # 子节点
        self.children = []
        # 总收益分数
        self.reward = 0.0
        # 被访问次数
        self.visited = 0
        # 从子节点中选择最大还是最小
        self.pick = pick
        self.board = deepcopy(board)
        self.color = color
        self.action = action
        self.unvisitedActions = list(board.get_legal_actions(color))
        self.bound = 0

    def calculate(self, coe=C):
        self.bound = self.reward / self.visited + coe * \
            sqrt(2 * log(self.parent.visited)/self.visited)


class MCT:
    def __init__(self, color):
        self.rootcolor = color

    def search(self, board):
        # only one action can be taken
        actions = list(board.get_legal_actions(self.rootcolor))
        if(len(actions) == 1):
            return actions[0]

        # create root node
        root = Node(None, deepcopy(board), self.rootcolor, None, MAX)
        # loop to search
        try:
            func_timeout(55, self.loop, args=[root])
        except FunctionTimedOut:
            pass

        return self.pickbest(root, 0).action

    def loop(self, root):
        while True:
            node = self.select(root)
            winner, reward = self.simulate(node.board, node.color)
            self.backprop(node, reward)

    # return a node to be selected
    def select(self, node):
        while len(list(node.board.get_legal_actions(node.color))):
            if(len(node.unvisitedActions)):
                # randomly pick one
                return self.expand(node)
            else:
                # pick the one with the best bound
                node = self.pickbest(node, C)
        return node

    # return a node to be expanded
    def expand(self, node):
        # randomly pick one action
        action = random.choice(node.unvisitedActions)
        node.unvisitedActions.remove(action)
        board = deepcopy(node.board)
        board._move(action, node.color)
        child = Node(node, board, 'X' if node.color == 'O' else 'O', action, 1-node.pick)
        node.children.append(child)

        return child

    def simulate(self, board, color):
        def gameon(board):
            return len(list(board.get_legal_actions('X'))) or len(list(board.get_legal_actions('X')))

        # 随机进行一场游戏
        newboard = deepcopy(board)
        while gameon(newboard):
            actions = list(newboard.get_legal_actions(color))
            # randomly make an action
            if(len(actions) == 0):
                action = None
            else:
                action = random.choice(actions)
            # move
            if(action is None):
                pass
            else:
                newboard._move(action, color)
            # move in turn
            color = 'X' if color == 'O' else 'O'
        # decide the winner
        winner, reward = newboard.get_winner()
        # reward /= 16
        # reward /= 8
        if (winner==0 and self.rootcolor=='X') or (winner==1 and self.rootcolor=='O'): 
            # wins
            # reward = reward
            reward = 1
        elif winner==2: 
            # reward = reward
            reward = 0
        else:
            # reward = -reward
            reward = -1
        return winner, reward

    def backprop(self, node, reward):
        # 向上更新收益
        while node is not None:
            node.visited += 1
            if node.pick == MAX: 
                node.reward -= reward
            else: 
                node.reward += reward
            node = node.parent

    def pickbest(self, node, coe):
        # calculate the bound of each child
        for child in node.children:
            child.calculate(coe=coe)
        # sorted
        sortedlist = sorted(
            node.children, key=lambda child: child.bound, reverse=True)
        # always pick the one with the highest bound 
        return sortedlist[0]


class AIPlayer:
    """
    AI 玩家
    """

    def __init__(self, color):
        """
        玩家初始化
        :param color: 下棋方，'X' - 黑棋，'O' - 白棋
        """

        self.color = color

    def get_move(self, board):
        """
        根据当前棋盘状态获取最佳落子位置
        :param board: 棋盘
        :return: action 最佳落子位置, e.g. 'A1'
        """
        if self.color == 'X':
            player_name = '黑棋'
        else:
            player_name = '白棋'
        print("请等一会，对方 {}-{} 正在思考中...".format(player_name, self.color))

        # -----------------请实现你的算法代码--------------------------------------

        mct = MCT(self.color)
        action = mct.search(board)
        # ------------------------------------------------------------------------

        return action