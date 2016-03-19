import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;
import com.google.android.gms.people.identity.internal.AccountToken;
import com.google.android.gms.people.identity.internal.ParcelableGetOptions;
import com.google.android.gms.people.identity.internal.ParcelableListOptions;
import com.google.android.gms.people.internal.ParcelableLoadImageOptions;
import com.google.android.gms.people.model.AvatarReference;
import java.util.List;

public abstract interface gom
  extends IInterface
{
  public abstract Bundle a(Uri paramUri);
  
  public abstract Bundle a(goj paramgoj, boolean paramBoolean, String paramString1, String paramString2, int paramInt);
  
  public abstract Bundle a(String paramString1, String paramString2);
  
  public abstract Bundle a(String paramString1, String paramString2, long paramLong);
  
  public abstract Bundle a(String paramString1, String paramString2, long paramLong, boolean paramBoolean);
  
  public abstract Bundle a(String paramString1, String paramString2, long paramLong, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract flu a(goj paramgoj, DataHolder paramDataHolder, int paramInt1, int paramInt2, long paramLong);
  
  public abstract flu a(goj paramgoj, AccountToken paramAccountToken, ParcelableListOptions paramParcelableListOptions);
  
  public abstract flu a(goj paramgoj, AvatarReference paramAvatarReference, ParcelableLoadImageOptions paramParcelableLoadImageOptions);
  
  public abstract flu a(goj paramgoj, String paramString, int paramInt);
  
  public abstract flu a(goj paramgoj, String paramString1, String paramString2, boolean paramBoolean1, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean2);
  
  public abstract void a(goj paramgoj, long paramLong, boolean paramBoolean);
  
  public abstract void a(goj paramgoj, Bundle paramBundle);
  
  public abstract void a(goj paramgoj, AccountToken paramAccountToken, List<String> paramList, ParcelableGetOptions paramParcelableGetOptions);
  
  public abstract void a(goj paramgoj, String paramString);
  
  public abstract void a(goj paramgoj, String paramString, int paramInt1, int paramInt2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, int paramInt);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, int paramInt1, int paramInt2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, Uri paramUri);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, Uri paramUri, boolean paramBoolean);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, boolean paramBoolean);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, String paramString4);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, String paramString4, boolean paramBoolean2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, String paramString4, boolean paramBoolean2, int paramInt4, int paramInt5);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String paramString5);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList, int paramInt, boolean paramBoolean, long paramLong);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList, int paramInt1, boolean paramBoolean, long paramLong, String paramString4, int paramInt2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList, int paramInt1, boolean paramBoolean, long paramLong, String paramString4, int paramInt2, int paramInt3);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList, int paramInt1, boolean paramBoolean, long paramLong, String paramString4, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList1, List<String> paramList2);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, List<String> paramList1, List<String> paramList2, FavaDiagnosticsEntity paramFavaDiagnosticsEntity);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt);
  
  public abstract void a(goj paramgoj, String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt1, int paramInt2);
  
  public abstract void a(goj paramgoj, String paramString, boolean paramBoolean, String[] paramArrayOfString);
  
  public abstract void a(goj paramgoj, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2);
  
  public abstract void a(goj paramgoj, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, int paramInt);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract boolean a();
  
  public abstract Bundle b(String paramString1, String paramString2);
  
  public abstract flu b(goj paramgoj, long paramLong, boolean paramBoolean);
  
  public abstract flu b(goj paramgoj, String paramString);
  
  public abstract flu b(goj paramgoj, String paramString, int paramInt1, int paramInt2);
  
  public abstract flu b(goj paramgoj, String paramString1, String paramString2, int paramInt1, int paramInt2);
  
  public abstract void b(goj paramgoj, Bundle paramBundle);
  
  public abstract void b(goj paramgoj, String paramString1, String paramString2);
  
  public abstract void b(goj paramgoj, String paramString1, String paramString2, int paramInt);
  
  public abstract void b(goj paramgoj, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4);
  
  public abstract void b(goj paramgoj, String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public abstract flu c(goj paramgoj, String paramString1, String paramString2, int paramInt);
  
  public abstract void c(goj paramgoj, String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     gom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */