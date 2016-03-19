import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.feedback.ThemeSettings;
import com.google.android.gms.googlehelp.GoogleHelp;

public final class gzt
{
  public final GoogleHelp a;
  public fyg b;
  public boolean c;
  
  public gzt(String paramString)
  {
    a = new GoogleHelp(paramString);
  }
  
  private fyg a()
  {
    if (b == null) {
      b = new fyg();
    }
    return b;
  }
  
  private gzt a(Bitmap paramBitmap)
  {
    a().a(paramBitmap);
    return this;
  }
  
  public Intent a(Context paramContext)
  {
    if (c) {
      throw new IllegalStateException("Cannot call buildHelpIntent twice");
    }
    c = true;
    if (b != null) {
      a.a(b.a(), paramContext.getCacheDir());
    }
    return a.a();
  }
  
  public gzt a(Account paramAccount)
  {
    a.a(paramAccount);
    return this;
  }
  
  public gzt a(Activity paramActivity)
  {
    a(GoogleHelp.a(paramActivity));
    return this;
  }
  
  public gzt a(Uri paramUri)
  {
    a.a(paramUri);
    return this;
  }
  
  public gzt a(Bundle paramBundle)
  {
    a().a(paramBundle);
    return this;
  }
  
  public gzt a(gzx paramgzx)
  {
    a.a(new ThemeSettings().b(paramgzx.b()).a(paramgzx.c()));
    return this;
  }
  
  public gzt a(String paramString, Intent paramIntent)
  {
    a.a(0, paramString, paramIntent);
    return this;
  }
  
  public gzt a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    a().a(paramString1, paramString2, paramArrayOfByte);
    return this;
  }
}

/* Location:
 * Qualified Name:     gzt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */