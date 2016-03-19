final class arf
  extends are
{
  public float a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = Math.min(paramInt2 / paramInt4, paramInt1 / paramInt3);
    if (paramInt1 == 0) {
      return 1.0F;
    }
    return 1.0F / Integer.highestOneBit(paramInt1);
  }
  
  public int a()
  {
    return arl.b;
  }
}

/* Location:
 * Qualified Name:     arf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */