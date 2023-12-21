n = power(symbols, symbols / 3) + symbols; //A number that includes all the ranges of each symbol.

fivetot = 0; //creates a varible of the chance to win 5 in a row.
for (i = 1; i <= symbols; i++;) {
    five[i] = power((((power(i, symbols / 3) + i) - (power((i - 1), symbols / 3) + (i - 1))) / n),5)* 100; //Creates an array with the chance of each symbol winning 5 in a row.
    fivetot += five[i]; //Adds the chance of winning 5 in a row of each symbol to the total.
}
fourtot = 0; //creates a varible of the chance to win 4 in a row.
for (i = 1; i <= symbols; i++;) {
    four[i] = power((((power(i, symbols / 3) + i) - (power((i - 1), symbols / 3) + (i - 1))) / n),4)* 100; //Creates an array with the chance of each symbol winning 4 in a row.
    fourtot += four[i]; //Adds the chance of winning 5 in a row of each symbol to the total.
}
threetot = 0; //creates a varible of the chance to win 3 in a row.
for (i = 1; i <= symbols; i++;) {
    three[i] = power((((power(i, symbols / 3) + i) - (power((i - 1), symbols / 3) + (i - 1))) / n),3)* 100; //Creates an array with the chance of each symbol winning 3 in a row.
    threetot += three[i]; //Adds the chance of winning 5 in a row of each symbol to the total.
}


for (i = 1; i <= symbols; i++;) { //Sets the amount to win based on; the chance to win, how many in a row were won, and how "rare" the symbol is. After that it rounds the number.
    paythree[i] = (round(((100 / threetot * minbet) * (1 + (symbols * 0.15 / 2) - ((i - 1) * 0.15)) * (payback / 100) * (1 - fivetot)) / (minbet)) * (minbet)) * bet / minbet;
    payfour[i] = (round(((100 / threetot * minbet) * (1 + (symbols * 0.15 / 2) - ((i - 1) * 0.15)) * (payback / 100)) / (minbet * 2)) * (minbet * 2)) * bet / minbet;
    payfive[i] = (round(((100 / threetot * minbet) * (1 + (symbols * 0.15 / 2) - ((i - 1) * 0.15)) * (payback / 100) * (1 + (threetot - fourtot - fivetot))) / (minbet * 4)) * (minbet * 4)) * bet / minbet;
}
