import com.google.api.client.json.GenericJson;

public class iqe
  extends GenericJson
{
  @isd(a="access_token")
  String a;
  @isd(a="expires_in")
  Long b;
  @isd(a="refresh_token")
  String c;
  
  public iqe a()
  {
    return (iqe)super.clone();
  }
  
  public iqe a(String paramString, Object paramObject)
  {
    return (iqe)super.set(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     iqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */