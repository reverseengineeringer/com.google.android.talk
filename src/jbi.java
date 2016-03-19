public final class jbi
  extends lyb<jbi>
{
  public jbn a = null;
  public jbj[] b = jbj.d();
  
  public jbi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jbj localjbj = b[i];
        if (localjbj != null) {
          paramlxz.b(2, localjbj);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          jbj localjbj = b[j];
          int k = i;
          if (localjbj != null) {
            k = i + lxz.d(2, localjbj);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */