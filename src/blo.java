import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class blo
  implements ilu, iop, ior, ioz
{
  private Context a;
  private hpu b;
  private hba c;
  private bpq d;
  
  blo(Context paramContext, iog paramiog)
  {
    a = paramContext;
    paramiog.a(this);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((hpu)paramilh.a(hpu.class));
    c = ((hba)paramilh.a(hba.class));
    d = ((bpq)paramilh.a(bpq.class));
  }
  
  void a(eys parameys)
  {
    Object localObject1 = a;
    Object localObject3 = d.c();
    hqb localhqb = ((hpu)ilh.a((Context)localObject1, hpu.class)).c();
    Object localObject2 = localhqb.b("effective_gaia_id");
    localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = localhqb.b("gaia_id");
    }
    localObject2 = new Intent("android.intent.action.VIEW", new Uri.Builder().scheme("https").authority("hangouts.google.com").appendPath("chat").appendPath((String)localObject3).appendQueryParameter("a", (String)localObject1).appendQueryParameter("css", Integer.toString(2746)).build());
    localObject3 = new Intent();
    ((Intent)localObject3).putExtra("android.intent.extra.shortcut.NAME", d.f());
    if (parameys == null) {}
    for (parameys = bfq.b();; parameys = (eys)localObject1)
    {
      ((Intent)localObject3).putExtra("android.intent.extra.shortcut.ICON", parameys);
      ((Intent)localObject3).putExtra("android.intent.extra.shortcut.INTENT", (Parcelable)localObject2);
      ((Intent)localObject3).setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      a.sendBroadcast((Intent)localObject3);
      c.a(b.a()).a(2748).d();
      ((Vibrator)a.getSystemService("vibrator")).vibrate(30L);
      return;
      localObject1 = parameys.e();
      localObject1 = ((Bitmap)localObject1).copy(((Bitmap)localObject1).getConfig(), false);
      parameys.b();
    }
  }
  
  public boolean a(Menu paramMenu)
  {
    String str = null;
    if (d != null) {
      str = d.c();
    }
    if ((Build.VERSION.SDK_INT >= 19) && (str != null) && (!bfz.a(str)))
    {
      paramMenu.add(0, aal.jt, paramMenu.size(), aal.ju);
      ezi.a("Babel_ConversationPin", "Adding pinning menu item.", new Object[0]);
      return true;
    }
    return false;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() != aal.jt) {
      return false;
    }
    ArrayList localArrayList;
    Collection localCollection;
    Iterator localIterator;
    if (d.d() == 2)
    {
      i = 2954;
      c.a(b.a()).a(i).d();
      paramMenuItem = new ArrayList();
      localArrayList = new ArrayList();
      localCollection = d.g().c();
      localIterator = localCollection.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label166;
      }
      cyx localcyx = (cyx)localIterator.next();
      if (h != null)
      {
        paramMenuItem.add(h);
        continue;
        i = 2747;
        break;
      }
      localArrayList.add(e);
    }
    label166:
    int i = localCollection.size();
    ezi.a("Babel_ConversationPin", 50 + "Pinning conversation with " + i + " participants", new Object[0]);
    if (localCollection.isEmpty()) {
      a(null);
    }
    for (;;)
    {
      return true;
      paramMenuItem = bem.a(paramMenuItem, localArrayList.size(), localArrayList, b.c().b("account_name"), bfq.a(), null, new blp(this), null, null, false, beo.a, true);
      if (paramMenuItem != null) {
        ((eit)ilh.a(a, eit.class)).c(paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     blo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */