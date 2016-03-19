import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.HangoutEventMessageListItemView;
import com.google.android.apps.hangouts.views.MessageListAnimationManager;
import com.google.android.apps.hangouts.views.MessageListItemView;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView;
import com.google.android.apps.hangouts.views.OtrModificationMessageListItemView;
import com.google.android.apps.hangouts.views.SystemMessageListItemView;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class bhx
  extends dhp
{
  public static final boolean j = false;
  public static long l = TimeUnit.MINUTES.toMicros(15L);
  public final bzw k;
  private final fcy m;
  private final MessageListAnimationManager n;
  private bia o;
  private int p;
  private boolean q;
  private boolean r;
  private long s = Long.MAX_VALUE;
  private final fdl t = new bib();
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public bhx(bzw parambzw, AbsListView paramAbsListView, MessageListAnimationManager paramMessageListAnimationManager, int paramInt, boolean paramBoolean)
  {
    super(parambzw.getActivity(), null);
    if (l == -1L) {
      l = aal.a(aal.oJ, "babel_message_block_max_time_diff_ms", 180000L);
    }
    k = parambzw;
    p = paramInt;
    m = new fcy(paramBoolean);
    n = paramMessageListAnimationManager;
    n.a(m);
    paramAbsListView.setRecyclerListener(new bhy(this));
  }
  
  private boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool3 = false;
    boolean bool2 = false;
    long l1 = c.getLong(6);
    String str1 = c.getString(4);
    String str2 = c.getString(3);
    emd localemd1 = emd.values()[c.getInt(8)];
    emc localemc1 = emc.values()[c.getInt(7)];
    int i = c.getInt(36);
    boolean bool1 = bool3;
    if (!c.isLast())
    {
      bool1 = bool3;
      if (c.moveToNext())
      {
        long l2 = c.getLong(6);
        String str3 = c.getString(4);
        String str4 = c.getString(3);
        emd localemd2 = emd.values()[c.getInt(8)];
        emc localemc2 = emc.values()[c.getInt(7)];
        int i1 = c.getInt(36);
        if (paramBoolean2)
        {
          paramBoolean2 = bool2;
          if (l2 - l1 >= l) {}
        }
        else
        {
          paramBoolean2 = bool2;
          if (i1 == i) {
            if (paramBoolean1)
            {
              paramBoolean2 = bool2;
              if (localemd1 == localemd2)
              {
                paramBoolean2 = bool2;
                if (!czb.a(str2, str1, str4, str3)) {}
              }
            }
            else
            {
              paramBoolean2 = bool2;
              if (localemc1 == emc.e)
              {
                paramBoolean2 = bool2;
                if (localemc2 != emc.d)
                {
                  paramBoolean2 = bool2;
                  if (localemc2 != emc.b) {
                    paramBoolean2 = true;
                  }
                }
              }
            }
          }
        }
        c.moveToPrevious();
        bool1 = paramBoolean2;
      }
    }
    return bool1;
  }
  
  public void a(long paramLong)
  {
    m.a(paramLong);
  }
  
  public void a(bia parambia)
  {
    o = parambia;
  }
  
  public void a(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public Cursor b(Cursor paramCursor)
  {
    m.a(paramCursor);
    return super.b(paramCursor);
  }
  
  public void b(boolean paramBoolean)
  {
    m.a(paramBoolean);
  }
  
  public void c()
  {
    bfd localbfd = k.a();
    String str = k.an();
    if ((s != Long.MAX_VALUE) && (localbfd != null) && (!TextUtils.isEmpty(str)))
    {
      RealTimeChatService.c(k.a(), k.an(), s);
      s = Long.MAX_VALUE;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public int getItemViewType(int paramInt)
  {
    c.moveToPosition(paramInt);
    return c.getInt(8);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!a) {
      throw new IllegalStateException("this should only be called when the cursor is valid");
    }
    if (!c.moveToPosition(paramInt)) {
      throw new IllegalStateException(44 + "couldn't move cursor to position " + paramInt);
    }
    long l1 = c.getLong(6);
    if (s > l1) {
      s = l1;
    }
    paramViewGroup = (LayoutInflater)d.getSystemService("layout_inflater");
    Object localObject2 = emd.values()[c.getInt(8)];
    int i;
    label154:
    label162:
    Object localObject1;
    boolean bool1;
    label215:
    label344:
    boolean bool2;
    if (paramView != null)
    {
      paramView = (MessageListItemWrapperView)paramView;
      paramView.b(r);
      if (c.getLong(19) == 0L) {
        break label542;
      }
      i = 1;
      if (i == 0) {
        break label548;
      }
      i = 1;
      paramView.a(i);
      l1 = getItemId(paramInt);
      localObject1 = m.b();
      bool1 = m.c(l1);
      if ((localObject1 == null) || (l1 != aal.a((Long)localObject1, 0L))) {
        break label554;
      }
      i = 1;
      paramView.b(i);
      localObject1 = paramView.c();
      if ((localObject2 != emd.c) && (localObject2 != emd.b)) {
        break label772;
      }
      if (localObject1 == null) {
        break label600;
      }
      paramViewGroup = (MessageListItemView)((cum)localObject1).b();
      if (localObject2 == emd.b) {
        paramViewGroup.a(k.a().q());
      }
      paramViewGroup.a(c, p, k.a(), k, q);
      l1 = c.getLong(0);
      paramViewGroup.setSelected(k.a(l1));
      if (p == 1) {
        break label728;
      }
      bool1 = true;
      bool1 = a(bool1, true);
      if (a(true, false)) {
        break label734;
      }
      bool2 = true;
      label365:
      paramView.d(bool2);
      if ((c.isFirst()) || (!c.moveToPrevious())) {
        break label1649;
      }
      bool2 = a(true, false);
      c.moveToNext();
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        paramViewGroup.b(false);
        bool1 = false;
      }
      label444:
      label458:
      label542:
      label548:
      label554:
      label600:
      label728:
      label734:
      label772:
      label1023:
      label1194:
      label1346:
      label1348:
      label1364:
      label1450:
      label1612:
      label1646:
      for (;;)
      {
        paramViewGroup.a(bool1);
        if (!bool2)
        {
          bool1 = true;
          paramViewGroup.c(bool1);
          paramViewGroup.requestLayout();
        }
        for (;;)
        {
          paramViewGroup = (biw)ilh.a(d, biw.class);
          paramView.a(c, k, p, paramViewGroup.a(k.an()));
          return paramView;
          paramView = (MessageListItemWrapperView)paramViewGroup.inflate(aal.gr, null);
          paramView.a(n);
          paramView.a(t);
          break;
          i = 0;
          break label154;
          i = 2;
          break label162;
          if (m.b(l1))
          {
            i = 0;
            break label215;
          }
          if (bool1)
          {
            if (localObject1 != null)
            {
              i = 3;
              break label215;
            }
            i = 2;
            break label215;
          }
          i = 4;
          break label215;
          localObject1 = emd.values()[getItemViewType(paramInt)];
          if (localObject1 == emd.b) {
            paramInt = aal.gq;
          }
          for (;;)
          {
            localObject1 = (MessageListItemView)paramViewGroup.inflate(paramInt, null);
            ((MessageListItemView)localObject1).a(k);
            ((MessageListItemView)localObject1).a(k);
            paramView.a((cum)localObject1);
            paramViewGroup = (ViewGroup)localObject1;
            if (o == null) {
              break;
            }
            o.a((MessageListItemView)localObject1);
            paramViewGroup = (ViewGroup)localObject1;
            break;
            if (localObject1 == emd.c)
            {
              paramInt = aal.gp;
            }
            else
            {
              hbs.a(32 + "unexpected position: " + paramInt);
              paramInt = -1;
            }
          }
          bool1 = false;
          break label344;
          bool2 = false;
          break label365;
          paramViewGroup.b(bool1);
          break label444;
          paramViewGroup.b(false);
          if (!bool1) {
            break label1646;
          }
          paramViewGroup.w();
          break label444;
          bool1 = false;
          break label458;
          if ((localObject2 == emd.h) || (localObject2 == emd.i))
          {
            if (localObject1 != null) {
              paramViewGroup = (HangoutEventMessageListItemView)((cum)localObject1).b();
            }
            for (;;)
            {
              l1 = c.getLong(6) / 1000L;
              localObject2 = emd.values()[c.getInt(8)];
              emc localemc = emc.values()[c.getInt(7)];
              localObject1 = c.getString(35);
              paramInt = c.getInt(38);
              localObject2 = aal.a((emd)localObject2, k.a(), localemc, c.getString(4), c.getString(3), c.getString(34), (String)localObject1, paramInt, false);
              localObject1 = aal.a(k.a(), (String)localObject1, false);
              paramViewGroup.a((CharSequence)localObject2, l1, k.a(), (List)localObject1, paramInt);
              paramViewGroup.c();
              break;
              paramViewGroup = (HangoutEventMessageListItemView)paramViewGroup.inflate(aal.fK, null);
              paramView.a(paramViewGroup);
            }
          }
          if ((localObject2 == emd.j) || (localObject2 == emd.k))
          {
            if (localObject1 != null)
            {
              paramViewGroup = (OtrModificationMessageListItemView)((cum)localObject1).b();
              l1 = c.getLong(6) / 1000L;
              localObject2 = emd.values()[c.getInt(8)];
              localObject1 = emc.values()[c.getInt(7)];
              if (localObject2 != emd.j) {
                break label1194;
              }
            }
            for (paramInt = 1;; paramInt = 2)
            {
              localObject2 = new czb(c.getString(4), c.getString(3));
              bool1 = k.b((czb)localObject2);
              paramViewGroup.a(paramInt, (emc)localObject1, k.e((czb)localObject2), bool1);
              if (paramInt == 2)
              {
                paramViewGroup.a(l1);
                if (!bool1) {
                  k.c(l1);
                }
              }
              paramViewGroup.c();
              break;
              paramViewGroup = (OtrModificationMessageListItemView)paramViewGroup.inflate(aal.gw, null);
              paramView.a(paramViewGroup);
              break label1023;
            }
          }
          if ((localObject2 != emd.a) && (localObject2 != emd.r)) {
            break label1348;
          }
          if (localObject1 != null) {
            paramViewGroup = (crt)((cum)localObject1).b();
          }
          for (;;)
          {
            if (paramViewGroup == null) {
              break label1346;
            }
            bool1 = ((emd)localObject2).equals(emd.r);
            l1 = c.getLong(6) / 1000L;
            localObject1 = c.getString(1);
            localObject2 = c.getString(5);
            paramViewGroup.a(l1, (String)localObject1);
            paramViewGroup.a(new cru(this, bool1, (String)localObject2));
            break;
            paramViewGroup = ((crv)ilh.a(d, crv.class)).b(d);
            paramView.a(paramViewGroup);
          }
        }
        if (localObject1 != null)
        {
          paramViewGroup = (SystemMessageListItemView)((cum)localObject1).b();
          l1 = c.getLong(6) / 1000L;
          localObject1 = emd.values()[c.getInt(8)];
          localObject2 = emc.values()[c.getInt(7)];
          if ((localObject1 != emd.f) && (localObject1 != emd.p) && (localObject1 != emd.n) && (localObject2 != emc.d)) {
            break label1612;
          }
          bool1 = true;
          paramViewGroup.a(bool1);
          paramViewGroup.a(aal.a((emd)localObject1, k.a(), (emc)localObject2, c.getString(4), c.getString(3), c.getString(34), c.getString(35), c.getInt(38), false));
          paramViewGroup.a(l1);
          switch (bhz.a[localObject1.ordinal()])
          {
          default: 
            paramInt = R.drawable.bP;
          }
        }
        for (;;)
        {
          paramViewGroup.a(paramInt);
          paramViewGroup.c();
          break;
          paramViewGroup = (SystemMessageListItemView)paramViewGroup.inflate(aal.gL, null);
          paramView.a(paramViewGroup);
          break label1364;
          bool1 = false;
          break label1450;
          paramInt = R.drawable.cc;
          continue;
          paramInt = R.drawable.bQ;
          continue;
          paramInt = R.drawable.bZ;
          continue;
          paramInt = R.drawable.bJ;
        }
      }
      label1649:
      bool2 = false;
    }
  }
  
  public int getViewTypeCount()
  {
    return emd.values().length;
  }
  
  public void l_()
  {
    m.a();
  }
}

/* Location:
 * Qualified Name:     bhx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */