import android.text.TextUtils;

public class dpk
  extends dox
{
  private static final long serialVersionUID = 1L;
  public final czb a = null;
  
  public dpk(String paramString1, String paramString2)
  {
    super(paramString2, paramString1);
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject3;
    if (doo.e)
    {
      localObject1 = String.valueOf("RemoveUserRequest build protobuf convID: ");
      localObject2 = c;
      localObject3 = j;
      String str = String.valueOf(a);
      new StringBuilder(String.valueOf(localObject1).length() + 36 + String.valueOf(localObject2).length() + String.valueOf(localObject3).length() + String.valueOf(str).length()).append((String)localObject1).append((String)localObject2).append(" clientGeneratedId: ").append((String)localObject3).append(" participantId: ").append(str);
    }
    Object localObject2 = new jzr();
    b = bfz.c(j);
    a = don.a(c);
    e = Integer.valueOf(5);
    Object localObject1 = new kdh();
    a = ((jzr)localObject2);
    if (a != null)
    {
      localObject2 = a;
      localObject3 = new kcr();
      if (!TextUtils.isEmpty(a)) {
        b = a;
      }
      if (!TextUtils.isEmpty(b)) {
        a = b;
      }
      b = ((kcr)localObject3);
    }
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    return (lyi)localObject1;
  }
  
  public String f()
  {
    return "conversations/removeuser";
  }
}

/* Location:
 * Qualified Name:     dpk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */