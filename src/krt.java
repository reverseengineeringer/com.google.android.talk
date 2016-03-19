final class krt
{
  private static int a = 1073741824;
  
  static int a(int paramInt)
  {
    return 461845907 * Integer.rotateLeft(-862048943 * paramInt, 15);
  }
  
  static int b(int paramInt)
  {
    int j = Math.max(paramInt, 2);
    int i = Integer.highestOneBit(j);
    paramInt = i;
    if (j > (int)(1.2D * i))
    {
      paramInt = i << 1;
      if (paramInt <= 0) {}
    }
    else
    {
      return paramInt;
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     krt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */