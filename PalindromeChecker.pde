public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String mainWord=new String();
  for(int lp1=0;lp1<word.length();lp1++)
  {
    if(Character.isLetter(word.charAt(lp1)))
    {
      mainWord+=word.charAt(lp1);
    }
  }
  mainWord.toLowerCase();
  if(reverse(mainWord.toLowerCase()).equals(mainWord.toLowerCase()))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int lp1=str.length()-1;lp1>=0;lp1--)
      sNew += str.charAt(lp1);
    return sNew;
}


