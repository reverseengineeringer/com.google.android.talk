import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteItemView;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.ConversationListItemWrapper;

public final class cpa
  extends dhp
  implements ck<Cursor>
{
  static int j;
  private static final ezv r = ezv.a("InviteListFragment");
  private static final boolean s = false;
  final Context k;
  final InviteListFragment l;
  long m = -1L;
  int n = 1;
  public cpj o;
  public boolean p;
  boolean q;
  private final awo t;
  private long u = -2L;
  private long v = Long.MAX_VALUE;
  private hpu w;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public cpa(Context paramContext, InviteListFragment paramInviteListFragment)
  {
    super(paramContext, null);
    k = paramContext;
    l = paramInviteListFragment;
    w = ((hpu)ilh.a(paramContext, hpu.class));
    t = ((awo)ilh.a(paramContext, awo.class));
    o = new cpj(this, w.a(), paramInviteListFragment);
  }
  
  private boolean a(long paramLong, boolean paramBoolean)
  {
    if (s)
    {
      int i = n;
      long l1 = m;
      long l2 = u;
      new StringBuilder(122).append("Updating continuation end timestamp for ").append(i).append(" from ").append(l1).append("/").append(l2).append(" to ").append(paramLong);
    }
    boolean bool = false;
    if (paramLong == -3L)
    {
      m = -2L;
      bool = true;
    }
    for (;;)
    {
      u = -2L;
      if (paramBoolean) {
        k();
      }
      return bool;
      m = paramLong;
    }
  }
  
  private static String e(Cursor paramCursor)
  {
    return EsProvider.b(paramCursor.getString(1), (int)f(paramCursor));
  }
  
  private static long f(Cursor paramCursor)
  {
    int i1 = 0;
    paramCursor = paramCursor.getString(37);
    long l1;
    int i;
    if (paramCursor != null)
    {
      l1 = -1L;
      paramCursor = paramCursor.split("\\|");
      int i3 = paramCursor.length;
      int i4 = paramCursor.length;
      int i2 = 0;
      i1 = 0;
      i = 0;
      for (;;)
      {
        if (i2 >= i4) {
          break label89;
        }
        String str = paramCursor[i2];
        try
        {
          long l2 = Long.parseLong(str);
          if (l2 <= l1) {
            break;
          }
          i = i1;
          l1 = l2;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;) {}
        }
        i1 += 1;
        i2 += 1;
      }
      label89:
      i1 = i3;
    }
    for (;;)
    {
      l1 = i;
      return i1 << 32 | l1;
      i = 0;
    }
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramCursor = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    paramContext = paramCursor.inflate(aal.mN, null, false);
    paramCursor = (ConversationListItemWrapper)paramCursor.inflate(aal.mS, paramViewGroup, false);
    paramCursor.a(paramContext);
    return paramCursor;
  }
  
  public void a(View paramView, Cursor paramCursor)
  {
    ((ConversationListItemWrapper)paramView).f();
    paramView = (InviteItemView)l.b(paramView);
    String str = e(paramCursor);
    paramCursor = paramCursor.getString(16);
    paramView.a(w.a(), str, paramCursor, this, l);
  }
  
  public void c()
  {
    if (v != Long.MAX_VALUE) {
      RealTimeChatService.b(w.a(), v);
    }
  }
  
  public void d()
  {
    v = Long.MAX_VALUE;
  }
  
  public void d(Cursor paramCursor)
  {
    String str = e(paramCursor);
    czb localczb = new czb(paramCursor.getString(16), paramCursor.getString(17));
    if (l.d != null)
    {
      int i = paramCursor.getInt(3);
      l.d.a(localczb, str, i, paramCursor.getLong(4));
    }
  }
  
  public boolean e()
  {
    return a().getInt(27) == 1;
  }
  
  public String f()
  {
    return a().getString(20);
  }
  
  public String g()
  {
    Object localObject = a();
    Resources localResources = l.getResources();
    if (((Cursor)localObject).getInt(3) == 2)
    {
      int i = ((Cursor)localObject).getString(7).split(", ").length - 1;
      String str = ((Cursor)localObject).getString(6);
      localObject = ((Cursor)localObject).getString(18);
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        localObject = localResources.getQuantityString(aal.mV, i + 1, new Object[] { Integer.valueOf(i + 1) });
      }
      while ((!TextUtils.isEmpty(str)) && (i > 0)) {
        return (String)localObject;
      }
      if (i == 0) {
        return localResources.getString(aen.iL);
      }
      return localResources.getQuantityString(aal.mU, i, new Object[] { Integer.valueOf(i) });
    }
    switch (((Cursor)localObject).getInt(8))
    {
    case 2: 
    default: 
      return localResources.getText(aen.iV).toString();
    case 3: 
      return localResources.getText(aen.iW).toString();
    }
    return localResources.getText(aen.iX).toString();
  }
  
  public String h()
  {
    Cursor localCursor = a();
    Resources localResources = l.getResources();
    if (localCursor.getInt(3) == 2)
    {
      int i = localCursor.getString(7).split(", ").length - 1;
      if ((!TextUtils.isEmpty(localCursor.getString(6))) && (i > 0)) {
        return localResources.getQuantityString(aal.mW, i, new Object[] { Integer.valueOf(i) });
      }
    }
    return "";
  }
  
  public String i()
  {
    Object localObject = a();
    if (((Cursor)localObject).getInt(3) == 2)
    {
      int i = ((Cursor)localObject).getString(7).split(", ").length;
      String str = ((Cursor)localObject).getString(6);
      localObject = ((Cursor)localObject).getString(18);
      if ((TextUtils.isEmpty(str)) || (i - 1 == 0))
      {
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          str = l.getResources().getString(aen.iR);
        }
      }
      else {
        return str;
      }
      return (String)localObject;
    }
    return ((Cursor)localObject).getString(18);
  }
  
  public void j()
  {
    long l1 = w.c().a(EsProvider.a(n), -1L);
    boolean bool1 = isEmpty();
    boolean bool2 = a(l1, bool1);
    m();
    if ((!bool1) || (!bool2)) {
      l.a(l.getView());
    }
  }
  
  public boolean k()
  {
    if (l()) {}
    do
    {
      return false;
      if (s)
      {
        long l1 = m;
        long l2 = u;
        new StringBuilder(81).append("Requesting more conversations at ").append(l1).append(" (last ").append(l2).append(")");
      }
    } while (u == m);
    u = m;
    RealTimeChatService.c(w.a(), n);
    l.a(2729);
    return true;
  }
  
  public boolean l()
  {
    return (!w.b()) || (!t.o(w.a())) || (m == -2L);
  }
  
  public boolean m()
  {
    if (!l()) {}
    while ((!q) || (n == 4) || (n())) {
      return false;
    }
    n = 4;
    a(-1L, true);
    j();
    return true;
  }
  
  public boolean n()
  {
    return u != -2L;
  }
  
  public boolean o()
  {
    return (n()) || (!p);
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    hbs.a("Expected condition to be true", w.b());
    paramBundle = EsProvider.a(EsProvider.i, w.a());
    bfd localbfd = dvd.e(w.a());
    switch (paramInt)
    {
    default: 
      hbs.a(42 + "Loader created for unknown id: " + paramInt);
      return null;
    }
    return new dhq(l.getActivity(), localbfd, paramBundle, cow.a, null, null, "inviter_affinity, sort_timestamp DESC");
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    if (paramfe.o() == 1)
    {
      b(null);
      paramfe = l.getView();
      if (paramfe != null) {
        l.showContent(paramfe);
      }
    }
  }
  
  public void p()
  {
    n = 3;
    l.a().setChoiceMode(0);
    if (w.b())
    {
      q = false;
      int i = j + 1;
      j = i;
      new cpb(this, w.a(), i).execute(new Void[0]);
      a(-1L, true);
    }
  }
  
  public String q()
  {
    Object localObject = a();
    Resources localResources = l.getResources();
    if (((Cursor)localObject).getInt(27) != 2)
    {
      int i = ((Cursor)localObject).getInt(8);
      if (i == 3) {
        return localResources.getString(aen.iS);
      }
      if (i == 2)
      {
        localObject = ((Cursor)localObject).getString(9);
        return ((String)localObject).substring(1, ((String)localObject).length() - 1);
      }
      if (i == 1) {
        return localResources.getString(aen.iU);
      }
    }
    return localResources.getString(aen.iT);
  }
}

/* Location:
 * Qualified Name:     cpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */