import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Deprecated
public final class hgd
{
  private static hgd b = new hgd();
  final List<hcu> a = new CopyOnWriteArrayList();
  private final hcu c = new hdt(this);
  private hci d;
  
  public static hgd a()
  {
    hbs.b("Expected non-null", b);
    hbs.a();
    return b;
  }
  
  public static void b(String paramString)
  {
    if (bd != null) {
      bd.d(paramString);
    }
  }
  
  public void a(char paramChar, int paramInt, String paramString)
  {
    
    if (d != null) {
      d.a(paramChar, paramInt, paramString);
    }
  }
  
  void a(hci paramhci)
  {
    d = paramhci;
    if (paramhci != null) {
      paramhci.a(c);
    }
  }
  
  public void a(hcu paramhcu)
  {
    hbs.a();
    a.add(paramhcu);
  }
  
  public void a(String paramString)
  {
    
    if (d != null) {
      d.c(paramString);
    }
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, byte[] paramArrayOfByte)
  {
    
    if (d != null) {
      d.a(paramString1, paramString2, false, paramBoolean1, paramBoolean2, paramArrayOfByte);
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    
    if (d != null) {
      d.a(paramArrayOfByte);
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    hbs.a();
    hbs.a();
    if (d != null) {
      d.a(false, paramArrayOfString, 1, true, false, null);
    }
  }
  
  public hcs b()
  {
    
    if (d == null) {
      return null;
    }
    return d.a();
  }
}

/* Location:
 * Qualified Name:     hgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */