import android.os.Looper;

public final class alk<Z>
  implements alr<Z>
{
  private final boolean a;
  private all b;
  private aiw c;
  private int d;
  private boolean e;
  private final alr<Z> f;
  
  alk(alr<Z> paramalr, boolean paramBoolean)
  {
    f = ((alr)aal.a(paramalr, "Argument must not be null"));
    a = paramBoolean;
  }
  
  void a(aiw paramaiw, all paramall)
  {
    c = paramaiw;
    b = paramall;
  }
  
  boolean a()
  {
    return a;
  }
  
  public Class<Z> b()
  {
    return f.b();
  }
  
  public Z c()
  {
    return (Z)f.c();
  }
  
  public int d()
  {
    return f.d();
  }
  
  public void e()
  {
    if (d > 0) {
      throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
    }
    if (e) {
      throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
    }
    e = true;
    f.e();
  }
  
  void f()
  {
    if (e) {
      throw new IllegalStateException("Cannot acquire a recycled resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call acquire on the main thread");
    }
    d += 1;
  }
  
  public void g()
  {
    if (d <= 0) {
      throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call release on the main thread");
    }
    int i = d - 1;
    d = i;
    if (i == 0) {
      b.b(c, this);
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf("EngineResource{isCacheable=");
    boolean bool1 = a;
    String str2 = String.valueOf(b);
    String str3 = String.valueOf(c);
    int i = d;
    boolean bool2 = e;
    String str4 = String.valueOf(f);
    return String.valueOf(str1).length() + 74 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + bool1 + ", listener=" + str2 + ", key=" + str3 + ", acquired=" + i + ", isRecycled=" + bool2 + ", resource=" + str4 + "}";
  }
}

/* Location:
 * Qualified Name:     alk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */