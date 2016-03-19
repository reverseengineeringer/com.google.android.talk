import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.ConversationNameView;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public abstract class fbg
  extends fan
  implements bhv
{
  static int a;
  static int b;
  static int c;
  public static int k;
  static boolean m;
  private static final boolean n;
  private static Boolean o;
  private String A;
  private String B;
  private String C;
  private String D;
  private int E;
  private String F;
  private String G;
  private long H;
  private String I;
  private int J;
  private String K;
  private String L;
  private String M;
  private int N;
  private boolean O;
  private boolean P;
  private String Q;
  private boolean R;
  private int S = 0;
  private Object T;
  private final auw<Drawable> U = new fbi(this);
  private final bhv V = new fbj(this);
  private final StringBuilder W = new StringBuilder();
  private final StringBuilder aa = new StringBuilder();
  private final SpannableStringBuilder ab = new SpannableStringBuilder();
  bhs d;
  eys e;
  public String f;
  public int g;
  public int h = -1;
  public int i;
  public cao j;
  public int l;
  private bhs p;
  private eys q;
  private ceh r;
  private cei s;
  private int t;
  private CharSequence u;
  private CharSequence v;
  private boolean w = false;
  private int x;
  private String y;
  private int z;
  
  static
  {
    imx localimx = ezi.u;
    n = false;
    o = null;
    k = 0;
    aal.a(new fbh());
  }
  
  public fbg(Context paramContext)
  {
    this(paramContext, null);
  }
  
  protected fbg(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramContext, null);
    x = paramInt1;
    J = paramInt2;
    R = paramBoolean1;
    P = paramBoolean2;
  }
  
  public fbg(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int i1 = k;
    k = i1 + 1;
    l = i1;
    r = ((ceh)ilh.a(paramContext, ceh.class));
    s = ((cei)ilh.a(paramContext, cei.class));
  }
  
  private void A()
  {
    W.setLength(0);
    Object localObject = getResources();
    if (isActivated()) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.hX));
    }
    CharSequence localCharSequence = b();
    if (!TextUtils.isEmpty(localCharSequence)) {
      ezc.a(W, localCharSequence.toString());
    }
    if (aal.f(S)) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.iD));
    }
    if (i() == 0) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.hW));
    }
    if (j() == 0) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.hU));
    }
    if (k() == 0) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.hY));
    }
    if (w) {
      ezc.a(W, ((Resources)localObject).getString(StressMode.hV));
    }
    if (f() == 0)
    {
      localCharSequence = h();
      localObject = localCharSequence;
      if (TextUtils.isEmpty(localCharSequence)) {
        localObject = g();
      }
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        ezc.a(W, ((CharSequence)localObject).toString());
      }
    }
    localObject = d();
    if ((localObject != null) && (((CharSequence)localObject).length() > 0)) {
      ezc.a(W, (CharSequence)localObject);
    }
    setContentDescription(W);
  }
  
  private void B()
  {
    CharSequence localCharSequence = d();
    if ((localCharSequence != null) && (((localCharSequence instanceof SpannableString)) || ((localCharSequence instanceof SpannedString)))) {
      fbt.a(getContext()).a((Spanned)localCharSequence);
    }
    a(null);
  }
  
  private void a(Cursor paramCursor)
  {
    int i1 = (int)ConversationListFragment.b(paramCursor);
    L = EsProvider.b(paramCursor.getString(20), i1);
    M = EsProvider.b(paramCursor.getString(7), i1);
    N = M.split(", ").length;
  }
  
  private void a(bfd parambfd)
  {
    if (h == 1) {
      a(getResources().getString(StressMode.ha), null, null);
    }
    while (h == 4) {
      return;
    }
    switch (x)
    {
    case 6: 
    case 7: 
    default: 
      return;
    case 1: 
      a(getResources().getString(StressMode.fV), null, null);
      return;
    case 3: 
      b(B, parambfd);
      a(getResources().getString(StressMode.is), parambfd);
      return;
    case 13: 
      b(B, parambfd);
      a(getResources().getString(StressMode.it), parambfd);
      return;
    case 2: 
    case 9: 
      a(y, parambfd);
      return;
    case 4: 
      a(aal.a(parambfd, D, C, G, false), null, null);
      return;
    case 5: 
      a(aal.a(parambfd, emc.values()[E], D, C, I), null, null);
      return;
    case 8: 
      a(getResources().getString(StressMode.hC), null, null);
      return;
    case 10: 
      a(getResources().getString(StressMode.fW), null, null);
      return;
    case 11: 
      a(getResources().getString(StressMode.hD), null, null);
      return;
    }
    a(getResources().getString(StressMode.ia), null, null);
    k(0);
    d(K);
  }
  
  private void a(String paramString, bfd parambfd)
  {
    Object localObject2 = null;
    if (R) {
      parambfd = getResources().getString(StressMode.iv, new Object[] { getResources().getString(StressMode.gq) });
    }
    for (;;)
    {
      Object localObject1 = localObject2;
      if (x == 9)
      {
        int i1 = ezc.a(B, "://");
        localObject1 = localObject2;
        if (i1 > 0) {
          localObject1 = getResources().getQuantityString(aal.hy, i1, new Object[] { Integer.valueOf(i1) });
        }
      }
      a(paramString, parambfd, (CharSequence)localObject1);
      return;
      if (g == 2)
      {
        String str = A;
        if (!TextUtils.isEmpty(str))
        {
          localObject1 = str;
          if (parambfd.y())
          {
            localObject1 = str;
            if (!parambfd.A()) {}
          }
        }
        else
        {
          localObject1 = F;
        }
        parambfd = (bfd)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          parambfd = M;
        }
        localObject1 = parambfd;
        if (PhoneNumberUtils.isGlobalPhoneNumber(parambfd)) {
          localObject1 = ezm.p(parambfd);
        }
        parambfd = getResources().getString(StressMode.iv, new Object[] { localObject1 });
      }
      else
      {
        parambfd = null;
      }
    }
  }
  
  private void a(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    a(0);
    y = paramString;
    u = paramCharSequence1;
    v = paramCharSequence2;
    B();
    if (TextUtils.isEmpty(y))
    {
      paramString = "";
      if (!TextUtils.isEmpty(u)) {
        break label256;
      }
      paramString = paramString.toString();
      label55:
      paramCharSequence1 = fbt.a(getContext()).a(paramString, e());
      ab.clear();
      if (paramCharSequence1 != null) {
        break label304;
      }
      ab.append(paramString);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(v))
      {
        if (ab.length() > 0) {
          ab.append('\n');
        }
        paramString = String.valueOf(v);
        paramString = new SpannableString(Html.fromHtml(String.valueOf(paramString).length() + 7 + "<i>" + paramString + "</i>"));
        paramString.setSpan(new ForegroundColorSpan(-4210753), 0, paramString.length(), 33);
        ab.append(paramString);
      }
      a(ab);
      return;
      if ((aal.e(z)) && (J != 2))
      {
        paramString = y;
        break;
      }
      paramString = Html.fromHtml(y);
      break;
      label256:
      aa.setLength(0);
      aa.append(u);
      aa.append(" ");
      aa.append(paramString);
      paramString = aa;
      break label55;
      label304:
      ab.append(paramCharSequence1);
    }
  }
  
  private void b(String paramString, bfd parambfd)
  {
    c(0);
    paramString = ezc.a(paramString);
    if (r.a()) {
      r.b(paramString, U, s.b(c), (hav)s.b().a());
    }
    boolean bool;
    do
    {
      do
      {
        return;
      } while ((TextUtils.equals(Q, paramString)) && ((d != null) || (e != null)));
      v();
      Q = paramString;
      d = new bhs(new eyd(paramString, parambfd.a()).a(c).d(true), V, true, null);
      bool = ((eit)ilh.a(getContext(), eit.class)).a(d);
    } while (!n);
    new StringBuilder(40).append("setImageSnippet - image was cached:").append(bool);
  }
  
  private void v()
  {
    if (d != null)
    {
      d.b();
      d = null;
    }
    a(null);
    if (e != null)
    {
      e.b();
      e = null;
    }
    c(8);
  }
  
  private void w()
  {
    a(8);
    B();
    y = null;
    u = null;
    v = null;
    a(8);
    v();
    k(8);
    d(null);
  }
  
  private void x()
  {
    int i4 = -1;
    boolean bool = true;
    int i1;
    int i2;
    label39:
    int i3;
    if ((j != null) && (j.a(f)))
    {
      i1 = 1;
      if (i1 == 0) {
        break label392;
      }
      i2 = R.drawable.b;
      setBackgroundResource(i2);
      if (i1 == 0) {
        break label399;
      }
      i2 = -1;
      i1 = -1;
      i3 = 0;
      label54:
      if (h != 1) {
        break label585;
      }
      setBackgroundColor(getResources().getColor(aal.dk));
      i1 = -1;
      i2 = i4;
    }
    label99:
    label115:
    label199:
    label250:
    label305:
    label339:
    label354:
    label392:
    label399:
    label467:
    label473:
    label487:
    label494:
    label508:
    label515:
    label574:
    label579:
    label585:
    for (;;)
    {
      a(i1, i2, i3);
      Object localObject;
      if (w)
      {
        i1 = b;
        d(i1);
        if (!w) {
          break label467;
        }
        i1 = 255;
        e(i1);
        c();
        if ((h == 2) || (h == 5))
        {
          localObject = getResources().getDrawable(R.drawable.bI);
          ((Drawable)localObject).setBounds(0, 0, (int)(((Drawable)localObject).getIntrinsicWidth() * 0.8888888888888888D), (int)(((Drawable)localObject).getIntrinsicHeight() * 0.8888888888888888D));
          if (!w) {
            break label473;
          }
          i1 = getResources().getColor(aal.dl);
          ((Drawable)localObject).setColorFilter(i1, PorterDuff.Mode.SRC_IN);
          a((Drawable)localObject);
        }
        if ((h == 3) || (h == 6))
        {
          localObject = getResources();
          if (h != 6) {
            break label487;
          }
          i1 = R.drawable.bF;
          localObject = ((Resources)localObject).getDrawable(i1);
          ((Drawable)localObject).setBounds(0, 0, (int)(((Drawable)localObject).getIntrinsicWidth() * 0.8888888888888888D), (int)(((Drawable)localObject).getIntrinsicHeight() * 0.8888888888888888D));
          if (!w) {
            break label494;
          }
          i1 = getResources().getColor(aal.dl);
          ((Drawable)localObject).setColorFilter(i1, PorterDuff.Mode.SRC_IN);
          a((Drawable)localObject);
        }
        if (h != 1) {
          break label515;
        }
        if (!p()) {
          break label508;
        }
        i1 = R.drawable.bK;
        l(i1);
        if (!w) {
          break label574;
        }
        i1 = 6;
        i2 = i1;
        if (!TextUtils.isEmpty(v)) {
          i2 = i1 + 1;
        }
        if (i2 != 1) {
          break label579;
        }
      }
      for (;;)
      {
        a(bool);
        b(i2);
        return;
        i1 = 0;
        break;
        i2 = R.drawable.a;
        break label39;
        if (w)
        {
          i1 = getResources().getColor(aal.dm);
          i2 = getResources().getColor(aal.dl);
          i3 = 1;
          break label54;
        }
        i1 = getResources().getColor(aal.dm);
        i2 = getResources().getColor(aal.dk);
        i3 = 0;
        break label54;
        i1 = a;
        break label99;
        i1 = 127;
        break label115;
        i1 = getResources().getColor(aal.dk);
        break label199;
        i1 = R.drawable.bS;
        break label250;
        i1 = getResources().getColor(aal.dk);
        break label305;
        i1 = R.drawable.bU;
        break label339;
        localObject = getResources();
        if (p()) {}
        for (i1 = R.drawable.bG;; i1 = R.drawable.bT)
        {
          localObject = ((Resources)localObject).getDrawable(i1);
          ((Drawable)localObject).setColorFilter(getResources().getColor(aal.dm), PorterDuff.Mode.SRC_IN);
          c((Drawable)localObject);
          break;
        }
        i1 = 1;
        break label354;
        bool = false;
      }
    }
  }
  
  private beo y()
  {
    if (!((eot)ilh.a(getContext(), eot.class)).d())
    {
      if (aal.h(S)) {
        return beo.c;
      }
      if (aal.e(S)) {
        return beo.b;
      }
    }
    return beo.a;
  }
  
  private void z()
  {
    if (p != null)
    {
      p.b();
      p = null;
    }
    if (q != null)
    {
      q.b();
      q = null;
    }
  }
  
  public abstract void a(int paramInt);
  
  public abstract void a(int paramInt1, int paramInt2, int paramInt3);
  
  public void a(int paramInt, Cursor paramCursor)
  {
    if (h != paramInt)
    {
      h = paramInt;
      l();
      if (!q()) {
        break label32;
      }
    }
    label32:
    for (paramInt = 0;; paramInt = 8)
    {
      f(paramInt);
      return;
    }
  }
  
  public void a(Cursor paramCursor, bfd parambfd, boolean paramBoolean, Object paramObject)
  {
    int i3 = 8;
    int i2 = 1;
    w();
    T = paramObject;
    Object localObject = (TextView)findViewById(aen.bx);
    long l1 = ConversationListFragment.a(paramCursor);
    int i1 = (int)l1;
    t = ((int)(l1 >> 32));
    f = EsProvider.b(paramCursor.getString(1), i1);
    x = EsProvider.a(paramCursor.getString(8), i1);
    if ((x == 3) && (!m())) {
      x = 9;
    }
    E = EsProvider.a(paramCursor.getString(28), i1);
    y = EsProvider.b(paramCursor.getString(9), i1);
    z = EsProvider.a(paramCursor.getString(29), i1);
    C = EsProvider.b(paramCursor.getString(11), i1);
    D = EsProvider.b(paramCursor.getString(10), i1);
    B = EsProvider.b(paramCursor.getString(12), i1);
    F = EsProvider.b(paramCursor.getString(30), i1);
    A = EsProvider.b(paramCursor.getString(13), i1);
    boolean bool;
    if (EsProvider.a(paramCursor.getString(25), i1) != 0)
    {
      bool = true;
      O = bool;
      if (EsProvider.a(paramCursor.getString(42), i1) == 0) {
        break label938;
      }
      bool = true;
      label284:
      P = bool;
      G = EsProvider.b(paramCursor.getString(34), i1);
      I = EsProvider.b(paramCursor.getString(33), i1);
      J = EsProvider.a(paramCursor.getString(36), i1);
      int i4 = EsProvider.a(paramCursor.getString(39), i1);
      paramObject = new StringBuilder();
      int i5 = i4 / 1000;
      i4 = i5 / 60;
      i5 %= 60;
      ((StringBuilder)paramObject).append(i4);
      ((StringBuilder)paramObject).append(":");
      if (i5 < 10) {
        ((StringBuilder)paramObject).append("0");
      }
      ((StringBuilder)paramObject).append(i5);
      K = ((StringBuilder)paramObject).toString();
      S = EsProvider.a(paramCursor.getString(29), i1);
      a(paramCursor);
      g = paramCursor.getInt(3);
      if ((C != null) && (!TextUtils.equals(C, bb))) {
        break label944;
      }
      bool = true;
      label497:
      R = bool;
      i = paramCursor.getInt(22);
      if (!paramBoolean) {
        break label950;
      }
      i1 = 4;
      label522:
      a(i1, paramCursor);
      if (n)
      {
        paramObject = String.valueOf(f);
        if (((String)paramObject).length() == 0) {
          break label1033;
        }
        "bindConversationItem ".concat((String)paramObject);
      }
      label561:
      if ((m) && (localObject != null))
      {
        if (t <= 1) {
          break label1047;
        }
        paramObject = String.format("(%d)", new Object[] { Integer.valueOf(t) });
        label602:
        ((TextView)localObject).setText((CharSequence)paramObject);
      }
      paramObject = paramCursor.getString(6);
      if (TextUtils.isEmpty((CharSequence)paramObject)) {
        break label1055;
      }
      b(ConversationNameView.b((String)paramObject));
      label636:
      l1 = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
      long l2 = paramCursor.getLong(5);
      if ((l2 > 0L) && (l2 < l1)) {
        RealTimeChatService.a(parambfd, f);
      }
      H = (paramCursor.getLong(4) / 1000L);
      if (q())
      {
        l1 = System.currentTimeMillis();
        b(aal.a(H, l1, false));
        c(aal.a(H, l1, true));
        if (paramCursor.getInt(31) != 1) {
          break label1134;
        }
        i1 = i2;
        label750:
        if (i1 == 0) {
          break label1140;
        }
        i2 = 0;
        label758:
        h(i2);
        if ((paramCursor.getInt(2) != 10) || (i1 != 0)) {
          break label1147;
        }
        i1 = 0;
        label784:
        g(i1);
        if (paramCursor.getLong(26) <= 0L) {
          break label1154;
        }
        i1 = 0;
        label806:
        i(i1);
        i1 = i3;
        if (x == 12) {
          i1 = 0;
        }
        j(i1);
      }
      w = a(paramCursor, parambfd.g());
      a(paramCursor);
      paramCursor = L;
      if (n())
      {
        paramObject = new ArrayList();
        if (N <= 0) {
          break label1161;
        }
        localObject = new ArrayList();
        aal.a(paramCursor, (List)localObject, (List)paramObject);
        a((List)localObject, N - ((List)localObject).size(), parambfd, (List)paramObject);
      }
    }
    for (;;)
    {
      a(parambfd);
      x();
      A();
      return;
      bool = false;
      break;
      label938:
      bool = false;
      break label284;
      label944:
      bool = false;
      break label497;
      label950:
      if (paramCursor.getInt(22) != 0)
      {
        i1 = 1;
        break label522;
      }
      if (x == 1)
      {
        i1 = 2;
        break label522;
      }
      if (x == 8)
      {
        i1 = 3;
        break label522;
      }
      if (x == 10)
      {
        i1 = 5;
        break label522;
      }
      if (x == 11)
      {
        i1 = 6;
        break label522;
      }
      i1 = 0;
      break label522;
      label1033:
      new String("bindConversationItem ");
      break label561;
      label1047:
      paramObject = "";
      break label602;
      label1055:
      localObject = M;
      if (localObject != null)
      {
        paramObject = String.valueOf("L");
        localObject = String.valueOf(localObject);
        if (((String)localObject).length() != 0) {}
        for (paramObject = ((String)paramObject).concat((String)localObject);; paramObject = new String((String)paramObject))
        {
          b((String)paramObject);
          break;
        }
      }
      b(ConversationNameView.b(""));
      break label636;
      label1134:
      i1 = 0;
      break label750;
      label1140:
      i2 = 8;
      break label758;
      label1147:
      i1 = 8;
      break label784;
      label1154:
      i1 = 8;
      break label806;
      label1161:
      ezi.d("Babel", "No participants found for conversation.", new Object[0]);
      a(null, 0, parambfd, (List)paramObject);
    }
  }
  
  public abstract void a(Bitmap paramBitmap);
  
  public void a(Drawable paramDrawable) {}
  
  public void a(cao paramcao)
  {
    j = paramcao;
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    Object localObject;
    if (n)
    {
      int i1 = l;
      if (parameys == null)
      {
        localObject = null;
        if (paramexs != null) {
          break label186;
        }
        paramexs = null;
        label32:
        paramexs = String.valueOf(paramexs);
        new StringBuilder(String.valueOf(localObject).length() + 79 + String.valueOf(paramexs).length()).append("CLIV(").append(i1).append(") setImageBitmap ").append((String)localObject).append(" gifImage=").append(paramexs).append(" success=").append(paramBoolean1).append(" loadedFromCache=").append(paramBoolean2);
      }
    }
    else
    {
      if (p == parambhs) {
        break label194;
      }
      if (parameys != null) {
        parameys.b();
      }
      if (n)
      {
        parameys = String.valueOf(T);
        new StringBuilder(String.valueOf(parameys).length() + 44).append("setImage leaving early: mAvatarLoadedToken: ").append(parameys);
      }
    }
    label186:
    label194:
    do
    {
      return;
      localObject = parameys.toString();
      break;
      paramexs = paramexs.toString();
      break label32;
      p = null;
    } while (!paramBoolean1);
    hbs.a("Expected null", q);
    hbs.b("Expected non-null", parameys);
    q = parameys;
    if (!paramBoolean2) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      a(paramBoolean1, parameys.e(), false, parambhs.l());
      return;
    }
  }
  
  public abstract void a(CharSequence paramCharSequence);
  
  protected void a(List<String> paramList1, int paramInt, bfd parambfd, List<String> paramList2)
  {
    String str;
    Object localObject1;
    Object localObject2;
    boolean bool1;
    label55:
    label99:
    boolean bool2;
    label112:
    boolean bool3;
    if (p != null)
    {
      str = p.c();
      localObject1 = y();
      parambfd = parambfd.a();
      int i1 = bfq.a();
      localObject2 = f;
      Object localObject3 = T;
      if (localObject1 == beo.a) {
        break label524;
      }
      bool1 = true;
      localObject2 = bem.a(paramList1, paramInt, paramList2, parambfd, i1, (String)localObject2, this, localObject3, str, bool1, (beo)localObject1, true);
      if (((paramList1 != null) && (paramList1.size() != 0)) || (paramInt != 0)) {
        break label530;
      }
      bool1 = true;
      if ((localObject2 == null) && (!bool1)) {
        break label536;
      }
      bool2 = true;
      if (localObject2 == null) {
        break label542;
      }
      bool3 = true;
      label120:
      if (n)
      {
        paramInt = l;
        localObject3 = f;
        if (localObject2 != null) {
          break label548;
        }
        parambfd = "null";
        label146:
        if (q != null) {
          break label557;
        }
        paramList2 = "null";
        label158:
        if (paramList1 != null) {
          break label569;
        }
        localObject1 = " null";
        label167:
        new StringBuilder(String.valueOf(localObject3).length() + 119 + String.valueOf(parambfd).length() + String.valueOf(paramList2).length() + String.valueOf(localObject1).length()).append("CLIV(").append(paramInt).append(") setAvatarUrls convId=").append((String)localObject3).append(" newRequest=").append(parambfd).append(" oldBitmap=").append(paramList2).append(" clearPrev=").append(bool2).append(" fetch=").append(bool3).append(" setDefault=").append(bool1).append(" avatarUrls=").append((String)localObject1);
      }
      if (bool2) {
        z();
      }
      if (!bool3) {
        break label609;
      }
      ((bhs)localObject2).b(false);
      p = ((bhs)localObject2);
      if (!((eit)ilh.a(getContext(), eit.class)).a(p)) {
        break label583;
      }
      if (n)
      {
        paramInt = l;
        new StringBuilder(54).append("CLIV(").append(paramInt).append(") loaded setAvatarUrl came from cache.");
      }
      p = null;
      bool1 = false;
    }
    label392:
    label434:
    label524:
    label530:
    label536:
    label542:
    label548:
    label557:
    label569:
    label583:
    label589:
    label596:
    label609:
    for (;;)
    {
      if (bool1)
      {
        a(false, bfq.a(y()), true, T);
        if (n)
        {
          paramInt = l;
          if (str != null) {
            break label589;
          }
          parambfd = "true";
          if (paramList1 != null) {
            break label596;
          }
        }
      }
      for (paramList1 = "null";; paramList1 = Integer.toString(paramList1.size()))
      {
        new StringBuilder(String.valueOf(parambfd).length() + 79 + String.valueOf(paramList1).length()).append("CLIV(").append(paramInt).append(") setAvatarUrls setting default avatar: oldkeynull=").append(parambfd).append(" avatarUrls=").append(paramList1);
        return;
        if (q == null)
        {
          str = null;
          break;
        }
        str = q.h();
        break;
        bool1 = false;
        break label55;
        bool1 = false;
        break label99;
        bool2 = false;
        break label112;
        bool3 = false;
        break label120;
        parambfd = ((bhs)localObject2).toString();
        break label146;
        paramList2 = q.h();
        break label158;
        localObject1 = Integer.toString(paramList1.size());
        break label167;
        bool1 = true;
        break label392;
        parambfd = "false";
        break label434;
      }
    }
  }
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void a(boolean paramBoolean1, Bitmap paramBitmap, boolean paramBoolean2, Object paramObject);
  
  protected boolean a(Cursor paramCursor, int paramInt)
  {
    boolean bool = true;
    if ((x == 8) || (x == 11))
    {
      Long localLong = null;
      if (!paramCursor.isNull(32)) {
        localLong = Long.valueOf(paramCursor.getLong(32));
      }
      long l1 = paramCursor.getLong(27);
      if (aal.a(localLong, 0L) > l1) {
        bool = true;
      }
    }
    label186:
    do
    {
      int i1;
      do
      {
        for (;;)
        {
          return bool;
          bool = false;
        }
        if ((x != 2) && (x != 3)) {
          break;
        }
        if (paramCursor.getLong(43) < (System.currentTimeMillis() - aal.a(getContext(), "babel_old_message_without_notification", eea.d)) * 1000L) {}
        for (i1 = 1;; i1 = 0)
        {
          if ((!dvp.v.b(paramInt)) || (!dvp.x.b(paramInt)) || (J != -1)) {
            break label186;
          }
          if ((!R) && (P) && (i1 == 0)) {
            break;
          }
          return false;
        }
      } while ((!R) && (O) && (i1 == 0));
      return false;
    } while ((!R) && (O));
    return false;
  }
  
  public abstract CharSequence b();
  
  public abstract void b(int paramInt);
  
  public abstract void b(Drawable paramDrawable);
  
  public abstract void b(CharSequence paramCharSequence);
  
  public abstract void b(String paramString);
  
  public abstract void c();
  
  public abstract void c(int paramInt);
  
  public abstract void c(Drawable paramDrawable);
  
  public abstract void c(CharSequence paramCharSequence);
  
  public abstract CharSequence d();
  
  public abstract void d(int paramInt);
  
  public abstract void d(CharSequence paramCharSequence);
  
  public abstract TextView e();
  
  public abstract void e(int paramInt);
  
  public abstract int f();
  
  public abstract void f(int paramInt);
  
  public abstract CharSequence g();
  
  public abstract void g(int paramInt);
  
  public abstract CharSequence h();
  
  public abstract void h(int paramInt);
  
  public abstract int i();
  
  public abstract void i(int paramInt);
  
  public abstract int j();
  
  public abstract void j(int paramInt);
  
  public abstract int k();
  
  public abstract void k(int paramInt);
  
  public abstract void l();
  
  public abstract void l(int paramInt);
  
  public abstract boolean m();
  
  public boolean n()
  {
    return true;
  }
  
  public boolean o()
  {
    if ((h == 1) && (i != 1)) {}
    for (int i1 = 1;; i1 = 0)
    {
      bfd localbfd = dvd.e(((hpu)ilh.a(getContext(), hpu.class)).a());
      if ((i1 == 0) || (!aal.a(o, false)) || (!localbfd.T())) {
        break;
      }
      return true;
    }
    return false;
  }
  
  protected void onDetachedFromWindow()
  {
    w();
    z();
    super.onDetachedFromWindow();
  }
  
  public void onFinishInflate()
  {
    o = Boolean.valueOf(cfc.a().c());
    super.onFinishInflate();
  }
  
  public boolean p()
  {
    if ((h == 1) && (i == 1)) {}
    for (int i1 = 1;; i1 = 0)
    {
      bfd localbfd = dvd.e(((hpu)ilh.a(getContext(), hpu.class)).a());
      if (((i1 == 0) && (h != 5)) || (!aal.a(o, false)) || (!localbfd.T())) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public boolean q()
  {
    return (h == 0) || (h == 3) || (h == 6) || (h == 2) || (h == 5);
  }
  
  public boolean r()
  {
    return w;
  }
  
  public int s()
  {
    return g;
  }
  
  public void setActivated(boolean paramBoolean)
  {
    int i2 = 4;
    Object localObject = getResources();
    if (paramBoolean)
    {
      localObject = ((Resources)localObject).getString(StressMode.hP);
      ezc.a(this, null, (CharSequence)localObject);
      boolean bool = super.isActivated();
      super.setActivated(paramBoolean);
      if (paramBoolean != bool)
      {
        x();
        A();
        localObject = findViewById(aen.aV);
        if (!paramBoolean) {
          break label110;
        }
        i1 = 0;
        label69:
        ((View)localObject).setVisibility(i1);
        localObject = findViewById(aen.aA);
        if (!paramBoolean) {
          break label115;
        }
      }
    }
    label110:
    label115:
    for (int i1 = i2;; i1 = 0)
    {
      ((View)localObject).setVisibility(i1);
      return;
      localObject = ((Resources)localObject).getString(StressMode.hQ);
      break;
      i1 = 4;
      break label69;
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    boolean bool = super.isSelected();
    super.setSelected(paramBoolean);
    if (paramBoolean != bool)
    {
      x();
      A();
    }
  }
  
  public int t()
  {
    return S;
  }
  
  public long u()
  {
    return H;
  }
}

/* Location:
 * Qualified Name:     fbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */