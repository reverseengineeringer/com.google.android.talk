import java.util.Map;

@Deprecated
public class hko
{
  private final hkp a;
  public final hks e;
  public hlh f;
  public String g;
  public String h;
  boolean i;
  boolean j;
  
  public hko(hks paramhks)
  {
    e = paramhks;
    a = new hkp(this);
    paramhks.a(a);
  }
  
  public void a(String paramString)
  {
    if ("focusedParticipant".equals(paramString))
    {
      g = "focusedParticipant";
      if (h == null)
      {
        paramString = "localParticipant";
        h = paramString;
      }
    }
    for (;;)
    {
      if ((f != null) && (j)) {
        f.a(h);
      }
      return;
      paramString = h;
      break;
      g = paramString;
      h = paramString;
      paramString = (hkx)e.p().get(paramString);
      if (paramString != null) {
        a(paramString.e());
      }
    }
  }
  
  protected void a(boolean paramBoolean) {}
  
  public void b()
  {
    e.b(a);
    j = false;
    if (f != null)
    {
      f.a();
      f = null;
    }
  }
  
  protected void b(boolean paramBoolean) {}
  
  @Deprecated
  public void c()
  {
    hlh localhlh;
    if (true != j)
    {
      j = true;
      if (f != null)
      {
        localhlh = f;
        if (!j) {
          break label43;
        }
      }
    }
    label43:
    for (String str = h;; str = null)
    {
      localhlh.a(str);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */