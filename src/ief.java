import android.content.Context;

public final class ief
{
  final Context a;
  String b;
  String c;
  String d;
  ieh e = ied.c;
  boolean f;
  iep g = iep.d;
  idj h = idj.a;
  boolean i;
  
  public ief(Context paramContext)
  {
    aen.a(paramContext, "context must be non-null");
    a = paramContext;
  }
  
  public ied a()
  {
    aen.a(b, "must specify an accountName");
    aen.a(c, "must specify an accountGaiaId");
    return new ied(this);
  }
  
  public ief a(ieh paramieh)
  {
    aen.a(paramieh, "progressListener must be non-null");
    e = paramieh;
    return this;
  }
  
  public ief a(iep paramiep)
  {
    g = ((iep)aen.a(paramiep));
    return this;
  }
  
  public ief a(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public ief b(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public ief c(String paramString)
  {
    d = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     ief
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */