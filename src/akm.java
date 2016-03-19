final class akm
{
  private boolean a;
  private boolean b;
  private boolean c;
  
  private boolean b(boolean paramBoolean)
  {
    return ((c) || (paramBoolean) || (b)) && (a);
  }
  
  boolean a()
  {
    try
    {
      b = true;
      boolean bool = b(false);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  boolean a(boolean paramBoolean)
  {
    try
    {
      a = true;
      paramBoolean = b(paramBoolean);
      return paramBoolean;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  boolean b()
  {
    try
    {
      c = true;
      boolean bool = b(false);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void c()
  {
    try
    {
      b = false;
      a = false;
      c = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     akm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */