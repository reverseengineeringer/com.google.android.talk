import android.os.Looper;

public abstract class ehx
{
  eht d;
  
  public void b()
  {
    if (d != null)
    {
      if (Looper.myLooper() != Looper.getMainLooper()) {
        d.d(this);
      }
    }
    else {
      return;
    }
    d.b(this);
  }
  
  public abstract String c();
  
  public boolean k()
  {
    return d == null;
  }
}

/* Location:
 * Qualified Name:     ehx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */