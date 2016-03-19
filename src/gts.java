import android.net.Uri;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.ConnectionConfiguration;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.AddListenerRequest;
import com.google.android.gms.wearable.internal.AncsNotificationParcelable;
import com.google.android.gms.wearable.internal.RemoveListenerRequest;

public abstract interface gts
  extends IInterface
{
  public abstract void a(gtm paramgtm);
  
  public abstract void a(gtm paramgtm, byte paramByte);
  
  public abstract void a(gtm paramgtm, int paramInt);
  
  public abstract void a(gtm paramgtm, Uri paramUri);
  
  public abstract void a(gtm paramgtm, Uri paramUri, int paramInt);
  
  public abstract void a(gtm paramgtm, Asset paramAsset);
  
  public abstract void a(gtm paramgtm, ConnectionConfiguration paramConnectionConfiguration);
  
  public abstract void a(gtm paramgtm, PutDataRequest paramPutDataRequest);
  
  public abstract void a(gtm paramgtm, AddListenerRequest paramAddListenerRequest);
  
  public abstract void a(gtm paramgtm, AncsNotificationParcelable paramAncsNotificationParcelable);
  
  public abstract void a(gtm paramgtm, RemoveListenerRequest paramRemoveListenerRequest);
  
  public abstract void a(gtm paramgtm, gtj paramgtj, String paramString);
  
  public abstract void a(gtm paramgtm, String paramString);
  
  public abstract void a(gtm paramgtm, String paramString, int paramInt);
  
  public abstract void a(gtm paramgtm, String paramString, ParcelFileDescriptor paramParcelFileDescriptor);
  
  public abstract void a(gtm paramgtm, String paramString, ParcelFileDescriptor paramParcelFileDescriptor, long paramLong1, long paramLong2);
  
  public abstract void a(gtm paramgtm, String paramString1, String paramString2);
  
  public abstract void a(gtm paramgtm, String paramString1, String paramString2, byte[] paramArrayOfByte);
  
  public abstract void a(gtm paramgtm, boolean paramBoolean);
  
  public abstract void b(gtm paramgtm);
  
  public abstract void b(gtm paramgtm, int paramInt);
  
  public abstract void b(gtm paramgtm, Uri paramUri);
  
  public abstract void b(gtm paramgtm, Uri paramUri, int paramInt);
  
  public abstract void b(gtm paramgtm, ConnectionConfiguration paramConnectionConfiguration);
  
  public abstract void b(gtm paramgtm, gtj paramgtj, String paramString);
  
  public abstract void b(gtm paramgtm, String paramString);
  
  public abstract void b(gtm paramgtm, String paramString, int paramInt);
  
  public abstract void b(gtm paramgtm, boolean paramBoolean);
  
  public abstract void c(gtm paramgtm);
  
  public abstract void c(gtm paramgtm, int paramInt);
  
  public abstract void c(gtm paramgtm, Uri paramUri);
  
  public abstract void c(gtm paramgtm, String paramString);
  
  public abstract void d(gtm paramgtm);
  
  public abstract void d(gtm paramgtm, String paramString);
  
  public abstract void e(gtm paramgtm);
  
  public abstract void e(gtm paramgtm, String paramString);
  
  public abstract void f(gtm paramgtm);
  
  public abstract void f(gtm paramgtm, String paramString);
  
  public abstract void g(gtm paramgtm);
  
  public abstract void h(gtm paramgtm);
  
  public abstract void i(gtm paramgtm);
  
  public abstract void j(gtm paramgtm);
  
  public abstract void k(gtm paramgtm);
  
  public abstract void l(gtm paramgtm);
  
  public abstract void m(gtm paramgtm);
  
  public abstract void n(gtm paramgtm);
  
  public abstract void o(gtm paramgtm);
  
  public abstract void p(gtm paramgtm);
}

/* Location:
 * Qualified Name:     gts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */