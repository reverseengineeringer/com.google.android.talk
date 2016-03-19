public final class hlp
{
  public final int a;
  public final int b;
  
  public hlp(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public static float a(hlp paramhlp1, hlp paramhlp2)
  {
    float f5 = a;
    float f6 = b;
    float f1 = a;
    float f2 = b;
    float f7 = f5 / f6;
    float f4 = f1 / f2;
    if (((f7 < 1.0F) && (f4 > 1.0F)) || ((f7 > 1.0F) && (f4 < 1.0F))) {}
    for (float f3 = 1.0F / f4; f7 > f3; f3 = f4)
    {
      return f2 / f5;
      f3 = f1;
      f1 = f2;
      f2 = f3;
    }
    return f1 / f6;
  }
  
  public static hlp a(hlp paramhlp, float paramFloat)
  {
    return new hlp((int)(a * paramFloat) + 2 & 0xFFFFFFFC, (int)(b * paramFloat) + 2 & 0xFFFFFFFC);
  }
  
  public static hlp a(hlp paramhlp, int paramInt)
  {
    hlp localhlp = paramhlp;
    if (a * b > paramInt)
    {
      int i = (int)(Math.sqrt(paramInt * a / b) + 0.5D);
      localhlp = new hlp(i, (int)(paramInt / i + 0.5D));
    }
    return localhlp;
  }
  
  public static hlp b(hlp paramhlp1, hlp paramhlp2)
  {
    float f = a(paramhlp1, paramhlp2);
    paramhlp2 = paramhlp1;
    if (f > 1.0D) {
      paramhlp2 = a(paramhlp1, f);
    }
    return paramhlp2;
  }
  
  public int a()
  {
    return a << 16 | b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof hlp)) {}
    do
    {
      return false;
      paramObject = (hlp)paramObject;
    } while ((a != a) || (b != b));
    return true;
  }
  
  public int hashCode()
  {
    return a * 32713 + b;
  }
  
  public String toString()
  {
    int i = a;
    int j = b;
    return 23 + i + "x" + j;
  }
}

/* Location:
 * Qualified Name:     hlp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */