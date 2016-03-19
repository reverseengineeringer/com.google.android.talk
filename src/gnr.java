import android.content.res.Resources;
import android.provider.ContactsContract.CommonDataKinds.Email;

final class gnr
  extends gnu
{
  gnr(gnq paramgnq, Resources paramResources)
  {
    super(paramResources);
  }
  
  protected String a(Resources paramResources, int paramInt)
  {
    return (String)ContactsContract.CommonDataKinds.Email.getTypeLabel(paramResources, paramInt, null);
  }
}

/* Location:
 * Qualified Name:     gnr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */