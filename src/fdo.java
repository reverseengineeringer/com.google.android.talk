import java.util.HashMap;
import java.util.Map;

public abstract class fdo
{
  private final Map<knr<String, String>, fdp> a = new HashMap();
  
  private void b(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 != null) {
        paramString1.a(a());
      }
      return;
    }
    finally {}
  }
  
  private fdp c(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = (fdp)a.get(knr.a(paramString1, paramString2));
      return paramString1;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  protected abstract ksf<fdr> a(String paramString1, String paramString2);
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      a.remove(knr.a(paramString1, paramString2));
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final void a(String paramString1, String paramString2, fdp paramfdp)
  {
    try
    {
      a.put(knr.a(paramString1, paramString2), paramfdp);
      b(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
}

/* Location:
 * Qualified Name:     fdo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */