import com.google.api.client.json.GenericJson;

public final class iqv
  extends GenericJson
{
  @isd(a="exp")
  private Long a;
  @isd(a="iat")
  private Long b;
  @isd(a="iss")
  private String c;
  @isd(a="aud")
  private Object d;
  @isd(a="sub")
  private String e;
  
  private iqv a(String paramString, Object paramObject)
  {
    return (iqv)super.set(paramString, paramObject);
  }
  
  public iqv a(Long paramLong)
  {
    a = paramLong;
    return this;
  }
  
  public iqv a(Object paramObject)
  {
    d = paramObject;
    return this;
  }
  
  public iqv a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public iqv b(Long paramLong)
  {
    b = paramLong;
    return this;
  }
  
  public iqv b(String paramString)
  {
    e = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     iqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */