import android.util.Log;
import java.io.File;
import java.io.IOException;

public final class anc
  implements amu
{
  private static anc a = null;
  private final anj b;
  private final File c;
  private final int d;
  private final amy e = new amy();
  private aib f;
  
  private anc(File paramFile, int paramInt)
  {
    c = paramFile;
    d = paramInt;
    b = new anj();
  }
  
  private aib a()
  {
    try
    {
      if (f == null) {
        f = aib.a(c, d);
      }
      aib localaib = f;
      return localaib;
    }
    finally {}
  }
  
  public static amu a(File paramFile, int paramInt)
  {
    try
    {
      if (a == null) {
        a = new anc(paramFile, paramInt);
      }
      paramFile = a;
      return paramFile;
    }
    finally {}
  }
  
  public File a(aiw paramaiw)
  {
    Object localObject = b.a(paramaiw);
    if (Log.isLoggable("DiskLruCacheWrapper", 2))
    {
      paramaiw = String.valueOf(paramaiw);
      new StringBuilder(String.valueOf(localObject).length() + 29 + String.valueOf(paramaiw).length()).append("Get: Obtained: ").append((String)localObject).append(" for for Key: ").append(paramaiw);
    }
    paramaiw = null;
    try
    {
      localObject = a().a((String)localObject);
      if (localObject != null) {
        paramaiw = ((aig)localObject).a();
      }
      return paramaiw;
    }
    catch (IOException paramaiw) {}
    return null;
  }
  
  public void a(aiw paramaiw, amw paramamw)
  {
    e.a(paramaiw);
    try
    {
      String str = b.a(paramaiw);
      Object localObject;
      if (Log.isLoggable("DiskLruCacheWrapper", 2))
      {
        localObject = String.valueOf(paramaiw);
        new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(localObject).length()).append("Put: Obtained: ").append(str).append(" for for Key: ").append((String)localObject);
      }
      for (;;)
      {
        try
        {
          localObject = a();
          aig localaig = ((aib)localObject).a(str);
          if (localaig != null) {
            return;
          }
          localObject = ((aib)localObject).b(str);
          if (localObject != null) {
            break label181;
          }
          paramamw = String.valueOf(str);
          if (paramamw.length() != 0)
          {
            paramamw = "Had two simultaneous puts for: ".concat(paramamw);
            throw new IllegalStateException(paramamw);
          }
        }
        catch (IOException paramamw)
        {
          return;
        }
        paramamw = new String("Had two simultaneous puts for: ");
        continue;
        try
        {
          if (paramamw.a(((aie)localObject).a())) {
            ((aie)localObject).b();
          }
          ((aie)localObject).d();
        }
        finally
        {
          ((aie)localObject).d();
        }
      }
    }
    finally
    {
      e.b(paramaiw);
    }
  }
}

/* Location:
 * Qualified Name:     anc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */