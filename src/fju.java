import android.os.Looper;

public final class fju<L>
{
  private final fjv a;
  private volatile L b;
  
  fju(Looper paramLooper, L paramL)
  {
    a = new fjv(this, paramLooper);
    b = aal.b(paramL, "Listener must not be null");
  }
  
  public void a()
  {
    b = null;
  }
  
  public void a(fjw<? super L> paramfjw)
  {
    aal.b(paramfjw, "Notifier must not be null");
    paramfjw = a.obtainMessage(1, paramfjw);
    a.sendMessage(paramfjw);
  }
  
  void b(fjw<? super L> paramfjw)
  {
    Object localObject = b;
    if (localObject != null) {}
    try
    {
      paramfjw.a(localObject);
      return;
    }
    catch (RuntimeException paramfjw)
    {
      throw paramfjw;
    }
  }
}

/* Location:
 * Qualified Name:     fju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */