import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.media.RingtoneManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;

public class ikd
  extends ijc
  implements iju
{
  private int a;
  private boolean c;
  private boolean d;
  private int e;
  
  private ikd(Context paramContext)
  {
    this(paramContext, null, aal.uP);
  }
  
  public ikd(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }
  
  private ikd(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, null, paramInt);
    paramContext = paramContext.obtainStyledAttributes(null, ikc.aI, paramInt, 0);
    a = paramContext.getInt(ikc.aJ, 1);
    c = paramContext.getBoolean(ikc.aK, true);
    d = paramContext.getBoolean(ikc.aL, true);
    paramContext.recycle();
  }
  
  protected void K_()
  {
    Intent localIntent = new Intent("android.intent.action.RINGTONE_PICKER");
    b(localIntent);
    ijj localijj = C().a();
    if (localijj != null)
    {
      localijj.startActivityForResult(localIntent, e);
      return;
    }
    C().g().startActivityForResult(localIntent, e);
  }
  
  protected Object a(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  protected void a(ijs paramijs)
  {
    super.a(paramijs);
    paramijs.a(this);
    e = paramijs.j();
  }
  
  protected void a(boolean paramBoolean, Object paramObject)
  {
    paramObject = (String)paramObject;
    if (paramBoolean) {}
    while (TextUtils.isEmpty((CharSequence)paramObject)) {
      return;
    }
    b(Uri.parse((String)paramObject));
  }
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == e)
    {
      Uri localUri;
      if (paramIntent != null)
      {
        localUri = (Uri)paramIntent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
        if (localUri == null) {
          break label50;
        }
      }
      label50:
      for (paramIntent = localUri.toString();; paramIntent = "")
      {
        if (a(paramIntent)) {
          b(localUri);
        }
        return true;
      }
    }
    return false;
  }
  
  public void b(int paramInt)
  {
    a = paramInt;
  }
  
  protected void b(Intent paramIntent)
  {
    paramIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", c());
    paramIntent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", c);
    if (c) {
      paramIntent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(d()));
    }
    paramIntent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", d);
    paramIntent.putExtra("android.intent.extra.ringtone.TYPE", a);
    paramIntent.putExtra("android.intent.extra.ringtone.TITLE", o());
  }
  
  protected void b(Uri paramUri)
  {
    if (paramUri != null) {}
    for (paramUri = paramUri.toString();; paramUri = "")
    {
      f(paramUri);
      return;
    }
  }
  
  public Uri c()
  {
    Uri localUri = null;
    String str = g(null);
    if (!TextUtils.isEmpty(str)) {
      localUri = Uri.parse(str);
    }
    return localUri;
  }
  
  public int d()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ikd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */