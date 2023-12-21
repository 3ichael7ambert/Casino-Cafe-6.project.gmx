n = random(power(symbols, symbols / 3) + symbols); //Picks a random number.

for (j = 1; j <= symbols; j++;) { //Repeates for the number of symbols.
    if (n <= (power(j, symbols / 3) + j)) { //If the random number is within the range set for that symbol.
        return j - 1; //Returns the symbol that is within the range.
    }
}
