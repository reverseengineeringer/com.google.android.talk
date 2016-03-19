import android.view.Choreographer;

public final class ezg
  implements ios, iov, ioz
{
  private static final boolean d = false;
  final String a;
  long b;
  int c;
  private final ezh e = new ezh(this);
  
  static
  {
    imx localimx = ezi.h;
  }
  
  public ezg(String paramString, iog paramiog)
  {
    a = paramString;
    paramiog.a(this);
  }
  
  public void X_()
  {
    if (d) {
      c();
    }
  }
  
  public void a()
  {
    Choreographer.getInstance().removeFrameCallback(e);
  }
  
  void c()
  {
    Choreographer.getInstance().postFrameCallback(e);
  }
}

/* Location:
 * Qualified Name:     ezg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */