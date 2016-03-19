import android.content.res.Resources;
import android.provider.ContactsContract.CommonDataKinds.Phone;

final class gns
  extends gnu
{
  gns(gnq paramgnq, Resources paramResources)
  {
    super(paramResources);
  }
  
  protected String a(Resources paramResources, int paramInt)
  {
    return (String)ContactsContract.CommonDataKinds.Phone.getTypeLabel(paramResources, paramInt, null);
  }
}

/* Location:
 * Qualified Name:     gns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */