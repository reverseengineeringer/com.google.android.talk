public class bet
  extends ehx
{
  public final dtt a;
  public final ehg b;
  
  public bet(dtt paramdtt, ehg paramehg)
  {
    if (paramdtt == null) {
      ezi.e("Babel", "lookupSpec should not be empty", new Object[0]);
    }
    if (paramehg == null) {
      ezi.e("Babel", "consumer should not be null", new Object[0]);
    }
    a = paramdtt;
    b = paramehg;
  }
  
  public bet(String paramString, ehg paramehg)
  {
    this(dtt.a(paramString), paramehg);
  }
  
  public ehg a()
  {
    return b;
  }
  
  public String c()
  {
    return a.c();
  }
  
  public dtt d()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     bet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */