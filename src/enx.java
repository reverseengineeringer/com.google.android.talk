public final class enx
{
  private int a;
  private int b;
  
  public void a(int paramInt)
  {
    if (paramInt > 0) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      a = paramInt;
      b = 0;
      return;
    }
  }
  
  public boolean a()
  {
    return a > 0;
  }
  
  public int b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    a -= 1;
    switch (paramInt)
    {
    case 0: 
    case 1: 
    case 3: 
    default: 
      paramInt = 2;
    }
    for (;;)
    {
      if (paramInt > b) {
        b = paramInt;
      }
      return;
      paramInt = 0;
      continue;
      paramInt = 1;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SendResult:");
    localStringBuilder.append("Pending=").append(a).append(",");
    localStringBuilder.append("HighestFailureLevel=").append(b);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     enx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */