import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;

public final class lcu
  extends lyi
{
  public ComponentsProto.Component a = null;
  public lct[] b = lct.d();
  
  public lcu()
  {
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
        lct locallct = b[i];
        if (locallct != null) {
          paramlxz.b(2, locallct);
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
          lct locallct = b[j];
          int k = i;
          if (locallct != null) {
            k = i + lxz.d(2, locallct);
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
 * Qualified Name:     lcu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */