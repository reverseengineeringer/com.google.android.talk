final class yl
{
  public aao a;
  public aao b;
  public int c;
  public int d;
  public int e;
  public int f;
  
  private yl(aao paramaao1, aao paramaao2)
  {
    a = paramaao1;
    b = paramaao2;
  }
  
  yl(aao paramaao1, aao paramaao2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramaao1, paramaao2);
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
  }
  
  public String toString()
  {
    return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     yl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */