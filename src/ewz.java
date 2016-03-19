import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.Iterator;
import java.util.Set;

public final class ewz
{
  public static final boolean a = false;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public static void a(Activity paramActivity)
  {
    hbs.a("Expected condition to be true", c());
    Resources localResources = paramActivity.getResources();
    int i;
    if (getConfigurationorientation == 2)
    {
      Display localDisplay = paramActivity.getWindowManager().getDefaultDisplay();
      Point localPoint = new Point();
      localDisplay.getSize(localPoint);
      i = localResources.getInteger(aal.eO);
      i = x / i;
    }
    for (int j = localResources.getDimensionPixelOffset(aal.en);; j = localResources.getDimensionPixelOffset(aal.ep))
    {
      paramActivity = paramActivity.findViewById(aen.fO);
      hbs.a(Integer.valueOf(((ColorDrawable)paramActivity.getBackground()).getColor()), Integer.valueOf(localResources.getColor(aal.cR)));
      paramActivity.setPadding(i, j, i, j);
      return;
      i = localResources.getDimensionPixelOffset(aal.eo);
    }
  }
  
  public static void a(Activity paramActivity, Window paramWindow, int paramInt)
  {
    paramActivity = paramActivity.getApplicationContext().getResources().getDisplayMetrics();
    float f = widthPixels / density;
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.copyFrom(paramWindow.getAttributes());
    if (f > paramInt)
    {
      f = paramInt;
      width = ((int)(density * f));
      height = -2;
      paramWindow.setAttributes(localLayoutParams);
    }
  }
  
  public static void a(String paramString, Intent paramIntent)
  {
    if (a)
    {
      if (paramIntent != null) {
        break label43;
      }
      new StringBuilder(String.valueOf(paramString).length() + 25).append("dumpIntent from: ").append(paramString).append(" is null");
    }
    label43:
    do
    {
      return;
      localObject2 = paramIntent.getExtras();
      str1 = String.valueOf(localObject2);
      new StringBuilder(String.valueOf(paramString).length() + 26 + String.valueOf(str1).length()).append("dumpIntent from: ").append(paramString).append(" extras: ").append(str1);
    } while (localObject2 == null);
    paramString = paramIntent.getType();
    String str1 = paramIntent.getAction();
    Object localObject1 = (Uri)((Bundle)localObject2).getParcelable("android.intent.extra.STREAM");
    paramIntent = paramIntent.getDataString();
    String str2 = ((Bundle)localObject2).getString("android.intent.extra.TEXT");
    String str3 = ((Bundle)localObject2).getString("conversation_id");
    Object localObject3 = ((Bundle)localObject2).keySet();
    Object localObject2 = new StringBuilder();
    localObject3 = ((Set)localObject3).iterator();
    while (((Iterator)localObject3).hasNext()) {
      ((StringBuilder)localObject2).append((String)((Iterator)localObject3).next()).append(',');
    }
    localObject1 = String.valueOf(localObject1);
    localObject2 = String.valueOf(localObject2);
    new StringBuilder(String.valueOf(paramString).length() + 79 + String.valueOf(str1).length() + String.valueOf(localObject1).length() + String.valueOf(paramIntent).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(localObject2).length()).append("dumpIntent mimeType: ").append(paramString).append(" action: ").append(str1).append(" uri: ").append((String)localObject1).append(" data: ").append(paramIntent).append(" extraText: ").append(str2).append(" convId: ").append(str3).append(" extras keySet:").append((String)localObject2);
  }
  
  public static boolean a()
  {
    return oJgetResourcesgetConfigurationtouchscreen != 1;
  }
  
  public static boolean b()
  {
    if (!a()) {
      return true;
    }
    return ((AccessibilityManager)aal.oJ.getSystemService("accessibility")).isTouchExplorationEnabled();
  }
  
  public static boolean c()
  {
    boolean bool = false;
    Object localObject = aal.oJ.getResources();
    if ((getConfigurationscreenLayout & 0xF) >= 3)
    {
      i = 1;
      if (i == 0)
      {
        localObject = ((Resources)localObject).getConfiguration();
        if (((screenLayout & 0xF) > 3) || (smallestScreenWidthDp < 600)) {
          break label70;
        }
      }
    }
    label70:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        bool = true;
      }
      return bool;
      i = 0;
      break;
    }
  }
  
  public static boolean d()
  {
    return aal.oJ.getPackageManager().hasSystemFeature("android.hardware.nfc");
  }
}

/* Location:
 * Qualified Name:     ewz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */