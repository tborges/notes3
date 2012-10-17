// B19. Dots burts robežās no a līdz h un naturāls skaitlis n =< 8 . Piemēram, a2.
// Dotais pāris tiek uzskatīts par šaha galdiņa lauciņu, uz kura atrodas zirdziņš.
// Izdrukāt uz displeja šaha galdiņu,
// atzīmējot ar X tos lauciņus, kurus apdraud zirdziņš, bet pārējos ar 0.
#include "utils.h"

int main()
{
    const char knight  = 'K';
    const char capture = 'X';
    const char empty   = '.';

    const int  size    =   8; // chessboardsize
    const int  upper_a = 'A'; // ASCII code for char 'A'
    const int  lower_a = 'a'; // ASCII code for char 'a'
    const int  move1   =   1; // knights' move consists of one- and two-cell moves
    const int  move2   =   2;

    int moves[2] = {1, 2};
    int directions[2] = {-1, 1};

    char board[size][size];

    // print and initialize board
    for(int horizontal = size-1; horizontal >= 0; horizontal--)
        for(int vertical = 0; vertical < size ; vertical++)
            board[horizontal][vertical] = empty;

    // int vertical = request_chr("Enter vertical: ");
    int vertical = 'a';

    // check vertical input correctness
    if (vertical >= upper_a && vertical < upper_a + size)
    {
        vertical -= upper_a;
    }
    else if (vertical >= lower_a && vertical < lower_a + size)
    {
        vertical -= lower_a;
    }

    // int horizontal = request_int("Enter horizontal: ") - 1;
    int horizontal = 2-1;

    board[horizontal][vertical] = knight;

    if( (vertical + move2) >= 0 && (vertical + move2) < 8 )
    {
        board[horizontal + move1][vertical + move2] = capture;
        board[horizontal - move1][vertical + move2] = capture;
    }

    if( (vertical - move2) >= 0 && (vertical - move2) < 8 )
    {
        board[horizontal + move1][vertical - move2] = capture;
        board[horizontal - move1][vertical - move2] = capture;
    }

    if( (vertical + move1) >= 0 && (vertical + move1) < 8 )
    {
        board[horizontal + move2][vertical + move1] = capture;
        board[horizontal - move2][vertical + move1] = capture;
    }

    if( (vertical - move1) >= 0 && (vertical - move1) < 8 )
    {
        board[horizontal + move2][vertical - move1] = capture;
        board[horizontal - move2][vertical - move1] = capture;
    }

    // print board
    for(int horizontal = size-1; horizontal >= 0; horizontal--)
    {
        cout << horizontal+1 << "| ";
        for(int vertical = 0; vertical < size ; vertical++)
        {
            cout << board[horizontal][vertical] << " ";
        }
        cout << endl;
    }
    cout << "   _______________" << endl;
    cout << "   a b c d e f g h" << endl;


    system("pause");
    return 0;
}