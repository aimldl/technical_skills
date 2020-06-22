function board=initialize_board(board),
% A function to initialize structure board
%
% Initialize the current board representation
% EMPTY: 0, BLACK: 1, WHITE: -1
% player: black 1, white -1
board.player=1;

% If board.time_n_max==0, simulation doesn't run without input data.
board.time_n=1;
board.time_n_max=1;

% board.max_board=3;

% Evaluation function is the target for CSRN.
% Initialize it with random numbers.
board.EVAL_FN=rand(board.max_board,board.max_board);

%board.STATUS=zeros(board.max_board,board.max_board);
for nn=1:board.time_n_max,
   board.at(nn).STATUS      = zeros(board.max_board,board.max_board);
   board.at(nn).STRING_SIZE = zeros(board.max_board,board.max_board);
end;

% The largest string is when all the grids on the board is filled with
% one stone. That is, 81 for 9x9 board. 
% However, this is never gonna happen in practice.
% So, let's pick an arbitrarily large number. 
% Say 3xboard.max_board.

board.string_size_max = 2*board.max_board;
%board.no_test_input_files=1000;