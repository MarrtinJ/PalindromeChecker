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
  String s = new String();
  s = word.toLowerCase();

  String t = new String();
  for (int i = 0; i < s.length(); i++)
  {
    if (s.charAt(i) != ' ' && Character.isLetter(s.charAt(i)) == true)
    {
      t = t + s.charAt(i);
      //System.out.println(t);
    }
  }

  String pal = new String();
  for (int i = t.length() - 1; i >= 0; i--)
  {
    pal = pal + t.charAt(i);
    //System.out.println(s);
    if (pal.equals(t))
    {
      return true;
    }
  }
  return false;
}