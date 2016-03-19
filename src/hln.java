final class hln
{
  int a;
  String b;
  long c;
  String d;
  String e;
  
  void a(int paramInt1, int paramInt2, long paramLong, String paramString1, String paramString2)
  {
    a = paramInt1;
    c = paramLong;
    d = paramString1;
    e = paramString2;
    switch (paramInt2)
    {
    default: 
      b = "?";
      return;
    case 3: 
      b = "D";
      return;
    case 5: 
      b = "W";
      return;
    case 4: 
      b = "I";
      return;
    case 2: 
      b = "V";
      return;
    case 6: 
      b = "E";
      return;
    }
    b = "A";
  }
}

/* Location:
 * Qualified Name:     hln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */