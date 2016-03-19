import com.google.api.client.json.GenericJson;

public class iqu
  extends GenericJson
{
  @isd(a="typ")
  private String a;
  
  public iqu a()
  {
    return (iqu)super.clone();
  }
  
  public iqu a(String paramString, Object paramObject)
  {
    return (iqu)super.set(paramString, paramObject);
  }
  
  public iqu d(String paramString)
  {
    a = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     iqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */