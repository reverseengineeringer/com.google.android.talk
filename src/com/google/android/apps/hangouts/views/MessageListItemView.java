package com.google.android.apps.hangouts.views;

import a;
import aal;
import aen;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import axc;
import axd;
import ayy;
import ba;
import bfd;
import bzw;
import cj;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import cqy;
import cqz;
import crs;
import crv;
import cuk;
import cul;
import cum;
import cyx;
import czb;
import emc;
import emd;
import enn;
import eno;
import ezc;
import ezi;
import ezm;
import fbt;
import fcb;
import fcr;
import fcv;
import fcz;
import fda;
import fdb;
import fdc;
import fdd;
import fde;
import fdf;
import fdi;
import fdj;
import fdo;
import fdp;
import fe;
import fek;
import fel;
import fen;
import feq;
import fet;
import hbs;
import ilh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import knk;

public class MessageListItemView
  extends LinearLayout
  implements View.OnClickListener, View.OnLongClickListener, cum, fet
{
  private static final Animation ap;
  private static final Animation aq;
  private static boolean k;
  private static String l;
  private static String m;
  private static String n;
  private static String o;
  private static String p;
  private CharSequence A;
  private String B;
  private ViewGroup C;
  private LinearLayout D;
  private List<cuk> E;
  private List<cuk> F;
  private boolean G;
  private Set<cuk> H = new HashSet();
  private boolean I;
  private boolean J = false;
  private boolean K = true;
  private MessageBubbleView L;
  private FrameLayout M;
  private AccessibilityManager N;
  private CharSequence O;
  private final Runnable P = new fcz(this);
  private final Runnable Q = new fda(this);
  private int R = 0;
  private boolean S = false;
  private emc T;
  private String U;
  private Spanned V;
  private CharSequence W;
  public MessageStatusView a;
  private String aa;
  private String ab;
  private int ac;
  private String ad;
  private int ae;
  private int af;
  private int ag;
  private long ah;
  private long ai;
  private String aj;
  private String ak;
  private int al;
  private String am;
  private String an;
  private Handler ao;
  private ArrayList<eno> ar;
  public AvatarView b;
  public bzw c;
  public long d;
  public String e;
  public boolean f = false;
  public String g;
  public String h;
  public bfd i;
  public boolean j = false;
  private TextView q;
  private czb r;
  private int s;
  private String t;
  private String u;
  private long v;
  private fcv w;
  private ImageView x;
  private LinearLayout y;
  private String z;
  
  static
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
    ap = localTranslateAnimation;
    localTranslateAnimation.setDuration(200L);
    ap.setInterpolator(new axd());
    localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
    aq = localTranslateAnimation;
    localTranslateAnimation.setDuration(350L);
    aq.setInterpolator(new axd());
  }
  
  public MessageListItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MessageListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    N = ((AccessibilityManager)paramContext.getSystemService("accessibility"));
    if (!k)
    {
      paramContext = getContext().getApplicationContext().getResources();
      l = paramContext.getString(StressMode.sy);
      m = paramContext.getString(StressMode.sB);
      n = paramContext.getString(StressMode.sA);
      o = paramContext.getString(StressMode.sz);
      p = paramContext.getString(StressMode.sm);
      k = true;
    }
  }
  
  private boolean F()
  {
    return (N != null) && (N.isEnabled()) && (N.isTouchExplorationEnabled());
  }
  
  private void G()
  {
    if (!TextUtils.isEmpty(f())) {
      L.setVisibility(0);
    }
    Object localObject1 = f();
    Object localObject2 = fbt.a(getContext()).a((CharSequence)localObject1, q);
    if (localObject2 == null) {}
    for (;;)
    {
      q.setText((CharSequence)localObject1);
      q.setTextColor(H());
      localObject1 = new fdp(q);
      localObject2 = ilh.c(getContext(), fdo.class).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((fdo)((Iterator)localObject2).next()).a(u, t, (fdp)localObject1);
      }
      if (!h()) {
        Linkify.addLinks(q, 7);
      }
      return;
      localObject1 = localObject2;
    }
  }
  
  private int H()
  {
    if (J)
    {
      if (I) {
        return getResources().getColor(aal.dx);
      }
      return getResources().getColor(aal.dv);
    }
    if (I) {
      return getResources().getColor(aal.dw);
    }
    return getResources().getColor(aal.du);
  }
  
  private boolean I()
  {
    return (I) || (ac == 1);
  }
  
  private void J()
  {
    if ((t == null) || (u == null)) {}
    for (;;)
    {
      return;
      Iterator localIterator = ilh.c(getContext(), fdo.class).iterator();
      while (localIterator.hasNext()) {
        ((fdo)localIterator.next()).a(u, t);
      }
    }
  }
  
  private void K()
  {
    G = false;
    a(E, C);
    a(F, D);
    if ((E != null) && (E.isEmpty())) {
      E = null;
    }
    if ((F != null) && (F.isEmpty())) {
      F = null;
    }
  }
  
  private void L()
  {
    Resources localResources = getResources();
    if (J)
    {
      localTextView = q;
      if (I) {}
      for (i1 = localResources.getColor(aal.dt);; i1 = localResources.getColor(aal.dr))
      {
        localTextView.setLinkTextColor(i1);
        requestLayout();
        a(I, J, K);
        return;
      }
    }
    TextView localTextView = q;
    if (I) {}
    for (int i1 = localResources.getColor(aal.ds);; i1 = localResources.getColor(aal.dq))
    {
      localTextView.setLinkTextColor(i1);
      break;
    }
  }
  
  private eno M()
  {
    eno localeno = new eno();
    a = z;
    b = an;
    return localeno;
  }
  
  private String a(String paramString1, String paramString2)
  {
    boolean bool1 = TextUtils.isEmpty(paramString1);
    boolean bool2 = TextUtils.isEmpty(paramString2);
    if ((bool1) && (bool2)) {
      return "";
    }
    if (bool1) {
      return getResources().getString(StressMode.Q, new Object[] { paramString2 });
    }
    if (bool2) {
      return getResources().getString(StressMode.O, new Object[] { paramString1 });
    }
    return getResources().getString(StressMode.P, new Object[] { paramString1, paramString2 });
  }
  
  private void a(int paramInt, String paramString1, String paramString2, String paramString3, long paramLong, boolean paramBoolean)
  {
    if ((aal.b(paramString1)) || (aal.d(paramString1)) || (aal.c(paramString1)) || ("hangouts/gv_voicemail".equals(paramString1))) {
      if (!paramBoolean) {
        break label78;
      }
    }
    label78:
    for (paramString1 = (cuk)E.get(paramInt);; paramString1 = (cuk)F.get(paramInt))
    {
      paramString1.a(paramString2);
      if ((paramString1 instanceof fdj)) {
        ((fdj)paramString1).a(paramString3, paramLong);
      }
      return;
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = V;
    localObject1 = (URLSpan[])((Spanned)localObject1).getSpans(0, ((Spanned)localObject1).length(), URLSpan.class);
    int i2 = localObject1.length;
    int i1 = 0;
    while (i1 < i2)
    {
      String str = localObject1[i1].getURL();
      Object localObject2 = ((cqz)ilh.a(getContext(), cqz.class)).a(getContext()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        cqy localcqy = (cqy)((Iterator)localObject2).next();
        cuk localcuk = localcqy.a(getContext(), paramInt, paramBoolean, str);
        if (localcuk != null)
        {
          a(localcuk, false, true);
          localObject2 = String.valueOf(localcqy.getClass().getName());
          new StringBuilder(String.valueOf(localObject2).length() + 22 + String.valueOf(str).length()).append("LinkHandler ").append((String)localObject2).append(" handled: ").append(str);
        }
      }
      i1 += 1;
    }
  }
  
  private static void a(TextView paramTextView)
  {
    if (paramTextView != null) {
      paramTextView.setText(null);
    }
  }
  
  private void a(cuk paramcuk, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      L.setVisibility(0);
      if (E == null)
      {
        E = new ArrayList();
        C.setVisibility(0);
      }
      C.addView((View)paramcuk);
      E.add(paramcuk);
      if (paramBoolean2) {
        H.add(paramcuk);
      }
    }
    for (;;)
    {
      A = ((View)paramcuk).getContentDescription();
      return;
      cul localcul = (cul)LayoutInflater.from(getContext()).inflate(aal.eT, null);
      localcul.a(paramcuk);
      if (F == null)
      {
        F = new ArrayList();
        D.setVisibility(0);
      }
      D.addView((View)localcul);
      F.add(localcul);
      if (paramBoolean2) {
        H.add(localcul);
      }
    }
  }
  
  private void a(CharSequence paramCharSequence1, String paramString, CharSequence paramCharSequence2)
  {
    if (TextUtils.isEmpty(paramString)) {
      if (A == null) {
        paramString = "";
      }
    }
    for (;;)
    {
      W = paramCharSequence1;
      aa = paramString;
      ArrayList localArrayList = new ArrayList();
      CharSequence localCharSequence = q.getText();
      localArrayList.add(paramString);
      if ("hangouts/gv_voicemail".equals(an))
      {
        paramCharSequence1 = E.iterator();
        do
        {
          if (!paramCharSequence1.hasNext()) {
            break;
          }
          paramString = (cuk)paramCharSequence1.next();
        } while (!(paramString instanceof AudioAttachmentView));
      }
      for (paramCharSequence1 = ((AudioAttachmentView)paramString).g();; paramCharSequence1 = "")
      {
        localArrayList.add(getContext().getText(StressMode.th));
        localArrayList.add(paramCharSequence1);
        localArrayList.add(localCharSequence);
        paramCharSequence1 = new SpannableStringBuilder();
        if (aal.a(getContext(), "babel_can_append_spannable", true)) {
          ezc.a(paramCharSequence1, localArrayList);
        }
        for (;;)
        {
          O = paramCharSequence1;
          setContentDescription(O);
          return;
          paramString = A.toString();
          break;
          localArrayList.add(localCharSequence);
          if (T == emc.d) {
            localArrayList.add(paramCharSequence1);
          }
          for (;;)
          {
            localArrayList.add(paramCharSequence2);
            break;
            localArrayList.add(getContext().getString(StressMode.fG, new Object[] { paramCharSequence1 }));
          }
          paramString = new StringBuilder();
          ezc.a(paramString, localArrayList);
          paramCharSequence1.append(paramString);
          Linkify.addLinks(paramCharSequence1, 7);
        }
      }
    }
  }
  
  private void a(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, bfd parambfd, bzw parambzw, boolean paramBoolean2, String paramString3, String paramString4, String paramString5, long paramLong, String paramString6, double paramDouble1, double paramDouble2, String paramString7, String paramString8, String paramString9, int paramInt4, String paramString10)
  {
    Context localContext = getContext();
    if (aal.b(paramString2))
    {
      paramString4 = null;
      parambzw = paramString4;
      if (paramString3 != null)
      {
        parambzw = paramString4;
        if (paramString10 != null) {
          if (!paramString10.startsWith("sticker://"))
          {
            parambzw = paramString4;
            if (!paramString10.startsWith(EsProvider.c(getContext()))) {}
          }
          else
          {
            parambzw = (fek)ilh.b(getContext(), fek.class);
          }
        }
      }
      if (parambzw != null)
      {
        paramString1 = parambzw.a(localContext, parambfd, paramBoolean1, paramString10, paramString1, paramInt1, paramInt2, paramString9, paramString3, this, w);
        G = true;
      }
      for (;;)
      {
        a(paramString1, false, false);
        return;
        parambzw = new fcr(localContext);
        parambzw.a(parambfd, paramBoolean1, paramString1, paramInt1, paramInt2, paramInt3, w, this, paramString2, paramString9);
        paramString1 = parambzw;
      }
    }
    if ("hangouts/location".equals(paramString2))
    {
      paramString1 = parambzw.getActivity();
      try
      {
        paramString2 = paramString1.getPackageManager().getActivityInfo(paramString1.getComponentName(), 128);
        paramInt1 = flags;
        ezi.a("Babel", 48 + "Manifest activity information flags: " + paramInt1, new Object[0]);
        paramInt1 = flags;
        ezi.a("Babel", 43 + "Manifest hardware acceleration: " + (paramInt1 & 0x200), new Object[0]);
        paramInt1 = getWindowgetAttributesflags;
        ezi.a("Babel", 32 + "Window layout flags: " + paramInt1, new Object[0]);
        ezi.a("Babel", 48 + "Window layout hardware acceleration: " + (paramInt1 & 0x1000000), new Object[0]);
        paramString1 = ((crv)ilh.a(localContext, crv.class)).c(localContext);
        paramString1.a(parambzw, paramString6, paramString7, paramDouble1, paramDouble2, this);
        a(paramString1, false, false);
        return;
      }
      catch (PackageManager.NameNotFoundException paramString2)
      {
        for (;;)
        {
          ezi.a("Babel", "NameNotFoundException getting package info", paramString2);
        }
      }
    }
    if (aal.d(paramString2))
    {
      if (paramBoolean2)
      {
        paramString3 = new feq(localContext);
        paramString3.a(parambfd, paramBoolean1, paramString1, paramString2, parambzw, paramInt1, paramInt2, paramInt3);
        a(paramString3, false, false);
        return;
      }
      paramString2 = new fen(localContext);
      paramString2.a(parambfd, paramBoolean1, paramString1, parambzw, paramString3, paramString4, paramString5, paramInt1, paramInt2, paramInt3);
      a(paramString2, false, false);
      return;
    }
    if (aal.c(paramString2))
    {
      parambzw = (AudioAttachmentView)LayoutInflater.from(localContext).inflate(aal.eU, C, false);
      if (!TextUtils.isEmpty(paramString3))
      {
        paramInt1 = 1;
        if (paramInt1 == 0) {
          break label600;
        }
        label544:
        if (paramInt1 == 0) {
          break label606;
        }
      }
      for (;;)
      {
        paramInt1 = H();
        parambzw.a(parambfd, paramString5, paramLong, paramString3, t, paramString2, getContext().getResources().getString(StressMode.z), 0L, paramInt1);
        a(parambzw, true, false);
        return;
        paramInt1 = 0;
        break;
        label600:
        paramString5 = paramString1;
        break label544;
        label606:
        paramLong = 0L;
      }
    }
    if ("hangouts/gv_voicemail".equals(paramString2))
    {
      paramString1 = (AudioAttachmentView)LayoutInflater.from(localContext).inflate(aal.eU, C, false);
      paramInt1 = H();
      paramString1.a(parambfd, paramString5, paramLong, paramString3, t, paramString2, getContext().getResources().getString(StressMode.th), paramInt4, paramInt1);
      a(paramString1, true, false);
      return;
    }
    if ("hangouts/*".equals(paramString2))
    {
      paramString2 = new fcb(localContext);
      paramString2.a(parambfd, paramBoolean1, paramString1, paramInt1, paramInt2, paramInt3, paramString8, parambzw, paramString6);
      a(paramString2, true, false);
      return;
    }
    if (aen.a(paramString2))
    {
      paramString2 = new fel(localContext);
      paramString2.a(parambfd, paramString1, parambzw);
      a(paramString2, false, false);
      return;
    }
    if ("hangouts/askjane_result".equals(paramString2))
    {
      paramString1 = (ayy)ilh.b(localContext, ayy.class);
      if (paramString1 == null) {
        break label951;
      }
      parambfd.g();
    }
    label951:
    for (paramString1 = paramString1.a();; paramString1 = null)
    {
      if (paramString1 == null)
      {
        aal.a(parambfd, 2915);
        ezi.a("Babel", "No feature available to render blob data.", new Object[0]);
        return;
      }
      parambfd.g();
      if (paramString1.d())
      {
        q.setVisibility(8);
        L.setVisibility(8);
        a(paramString1, false, false);
        return;
      }
      aal.a(parambfd, 2915);
      return;
      ezi.d("Babel", String.valueOf(paramString2).length() + 87 + String.valueOf(paramString1).length() + "We do not recognize the contentType " + paramString2 + " for image url " + paramString1 + " and are not handling the attachment", new Object[0]);
      return;
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    int i2 = 1;
    int i3 = 0;
    if (TextUtils.isEmpty(paramString1))
    {
      a.b.setVisibility(8);
      paramString2 = a(paramString2, paramString4);
      if (TextUtils.isEmpty(paramString1)) {
        break label137;
      }
      i1 = 1;
      label43:
      if (TextUtils.isEmpty(paramString2)) {
        break label143;
      }
      label50:
      paramString1 = a.c;
      if ((i2 == 0) || (i1 == 0)) {
        break label149;
      }
    }
    label137:
    label143:
    label149:
    for (int i1 = i3;; i1 = 8)
    {
      paramString1.setVisibility(i1);
      a.d.setText(paramString2);
      paramString1 = a(paramString3, paramString4);
      a.d.setContentDescription(paramString1);
      return;
      a.b.setText(ezc.d(paramString1));
      a.b.setVisibility(0);
      break;
      i1 = 0;
      break label43;
      i2 = 0;
      break label50;
    }
  }
  
  private void a(List<cuk> paramList, ViewGroup paramViewGroup)
  {
    if (paramList != null)
    {
      int i1 = 0;
      while (i1 < paramList.size())
      {
        cuk localcuk = (cuk)paramList.get(i1);
        if (H.contains(localcuk))
        {
          i1 += 1;
        }
        else
        {
          paramList.remove(i1);
          localcuk.b();
          paramViewGroup.removeView((View)localcuk);
        }
      }
      if (paramList.isEmpty()) {
        paramViewGroup.setVisibility(8);
      }
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i1;
    if ((paramBoolean2) && (paramBoolean1))
    {
      i1 = aal.df;
      i1 = getResources().getColor(i1);
      if (!paramBoolean1) {
        break label111;
      }
      if (!paramBoolean3) {
        break label98;
      }
      L.setBackgroundResource(R.drawable.bz);
    }
    for (;;)
    {
      L.getBackground().setColorFilter(i1, PorterDuff.Mode.SRC_IN);
      return;
      if ((paramBoolean2) && (!paramBoolean1))
      {
        i1 = aal.dd;
        break;
      }
      if ((!paramBoolean2) && (paramBoolean1))
      {
        i1 = aal.de;
        break;
      }
      i1 = aal.dc;
      break;
      label98:
      L.setBackgroundResource(R.drawable.bA);
      continue;
      label111:
      if (paramBoolean3) {
        L.setBackgroundResource(R.drawable.bx);
      } else {
        L.setBackgroundResource(R.drawable.by);
      }
    }
  }
  
  private void b(String paramString)
  {
    int i2 = 0;
    U = paramString;
    if (TextUtils.isEmpty(paramString))
    {
      V = new SpannedString("");
      return;
    }
    String str = paramString;
    int i1;
    if (paramString.charAt(paramString.length() - 1) == ' ')
    {
      i1 = paramString.length() - 2;
      while ((i1 >= 0) && (paramString.charAt(i1) == ' ')) {
        i1 -= 1;
      }
      str = paramString.substring(0, i1 + 1);
    }
    if (af != 0)
    {
      i1 = i2;
      if (af != 1) {}
    }
    else
    {
      i1 = 1;
    }
    if (i1 != 0)
    {
      if (!TextUtils.isEmpty(aj))
      {
        V = new SpannedString(enn.a(aj, str));
        return;
      }
      V = new SpannedString(str);
      return;
    }
    V = Html.fromHtml(str);
  }
  
  private void c(String paramString)
  {
    a.g.setText(paramString);
    if (!S)
    {
      S = true;
      a.a.setVisibility(8);
      a.h.setVisibility(8);
      a.f.setVisibility(0);
      a.g.a(1.0F);
      a.g.setAlpha(1.0F);
    }
    a(W, aa, paramString);
  }
  
  public void A()
  {
    z();
    ao = null;
  }
  
  public void B()
  {
    w.b(u());
  }
  
  public emc C()
  {
    return T;
  }
  
  public String D()
  {
    return u;
  }
  
  public String E()
  {
    return t;
  }
  
  public long a()
  {
    return d;
  }
  
  public void a(Cursor paramCursor, int paramInt, bfd parambfd, bzw parambzw, boolean paramBoolean)
  {
    i = parambfd;
    s = paramCursor.getPosition();
    ar = null;
    boolean bool1;
    boolean bool2;
    label56:
    Object localObject1;
    Object localObject2;
    boolean bool3;
    if (paramCursor.getLong(19) != 0L)
    {
      bool1 = true;
      if (paramCursor.getInt(8) != emd.b.ordinal()) {
        break label925;
      }
      bool2 = true;
      localObject1 = paramCursor.getString(1);
      localObject2 = paramCursor.getString(2);
      if ((!TextUtils.equals((CharSequence)localObject1, t)) || (!TextUtils.equals((CharSequence)localObject2, u)))
      {
        m();
        t = ((String)localObject1);
        u = ((String)localObject2);
      }
      ao = parambzw.as();
      v = paramCursor.getLong(0);
      r = new czb(paramCursor.getString(4), paramCursor.getString(3));
      al = -1;
      am = paramCursor.getString(24);
      af = paramCursor.getInt(33);
      if ((af != 0) && (af != 1)) {
        break label931;
      }
      bool3 = true;
      label206:
      if (!bool3) {
        break label1041;
      }
      ag = paramCursor.getInt(22);
      ah = paramCursor.getLong(21);
      ai = (paramCursor.getLong(23) / 1000L);
      ak = paramCursor.getString(26);
      localObject1 = paramCursor.getString(27);
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        break label937;
      }
      localObject1 = null;
      label284:
      g = ((String)localObject1);
      if ((af == 0) && (I)) {
        al = paramCursor.getInt(29);
      }
      localObject2 = enn.b(getContext(), paramCursor.getString(25));
      if (!TextUtils.equals((CharSequence)localObject2, aj)) {
        aj = ((String)localObject2);
      }
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label2838;
      }
      localObject1 = String.valueOf(getContext().getApplicationContext().getResources().getString(StressMode.qr));
      localObject2 = String.valueOf(localObject2);
      if (((String)localObject2).length() == 0) {
        break label1027;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
    }
    for (;;)
    {
      label404:
      if ((ae == 2) && (I)) {
        h = paramCursor.getString(2);
      }
      int i1 = paramCursor.getInt(36);
      if ((J != bool1) || (I != bool2) || (ae != i1))
      {
        J = bool1;
        I = bool2;
        ae = i1;
        L();
      }
      localObject2 = paramCursor.getString(5);
      T = emc.values()[paramCursor.getInt(7)];
      label561:
      Object localObject3;
      Object localObject4;
      label651:
      String str1;
      if (!TextUtils.equals((CharSequence)localObject2, g()))
      {
        b((String)localObject2);
        if ((TextUtils.isEmpty(g())) && (TextUtils.isEmpty(aj))) {
          q.setVisibility(8);
        }
      }
      else
      {
        localObject2 = paramCursor.getString(9);
        localObject3 = paramCursor.getString(10);
        if ((localObject2 != null) && (((String)localObject2).contains(enn.a))) {
          ar = enn.b((String)localObject2);
        }
        if ((localObject3 != null) && (((String)localObject3).contains(enn.a))) {
          ar = enn.b((String)localObject3);
        }
        localObject4 = z;
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          break label1088;
        }
        z = ((String)localObject3);
        str1 = B;
        B = paramCursor.getString(30);
        if (((TextUtils.isEmpty((CharSequence)localObject4)) || ((!((String)localObject4).equals(localObject3)) && (!((String)localObject4).equals(localObject2)))) && ((TextUtils.isEmpty(B)) || (!TextUtils.equals(B, str1)))) {
          break label1115;
        }
        i1 = 1;
        label722:
        if (i1 == 0) {
          K();
        }
        localObject3 = paramCursor.getString(20);
        if (localObject3 != null) {
          break label1121;
        }
        localObject2 = "";
        label751:
        an = ((String)localObject2);
        localObject2 = parambzw.ag();
        if ((TextUtils.isEmpty(z)) && (TextUtils.isEmpty(B)) && (!"hangouts/askjane_result".equals(an))) {
          break label1984;
        }
        if ((i1 == 0) || (F != null) || (E != null)) {
          break label2835;
        }
        localObject4 = String.valueOf(B);
        if (((String)localObject4).length() == 0) {
          break label1128;
        }
        "Image added with no previous attachment view:".concat((String)localObject4);
        label842:
        i1 = 0;
      }
      label925:
      label931:
      label937:
      label1027:
      label1041:
      label1088:
      label1115:
      label1121:
      label1128:
      label1267:
      label1339:
      label1425:
      label1474:
      label1542:
      label1575:
      label1615:
      label1639:
      label1663:
      label1680:
      label1688:
      label1744:
      label1768:
      label1774:
      label1803:
      label1984:
      label1991:
      label2001:
      label2053:
      label2059:
      label2131:
      label2203:
      label2210:
      label2258:
      label2518:
      label2534:
      label2678:
      label2741:
      label2754:
      label2771:
      label2790:
      label2801:
      label2812:
      label2817:
      label2823:
      label2829:
      label2835:
      for (;;)
      {
        int i2;
        if (an.equals("multipart/mixed"))
        {
          i2 = 0;
          localObject3 = ar.iterator();
          for (;;)
          {
            if (!((Iterator)localObject3).hasNext()) {
              break label1267;
            }
            localObject4 = (eno)((Iterator)localObject3).next();
            if (i1 != 0)
            {
              a(i2, b, a, null, 0L, false);
              continue;
              bool1 = false;
              break;
              bool2 = false;
              break label56;
              bool3 = false;
              break label206;
              localObject1 = ((String)localObject1).split(",");
              if (localObject1.length == 0)
              {
                localObject1 = null;
                break label284;
              }
              localObject2 = new ArrayList(localObject1.length);
              i2 = localObject1.length;
              i1 = 0;
              while (i1 < i2)
              {
                ((List)localObject2).add(ezm.p(localObject1[i1]));
                i1 += 1;
              }
              localObject1 = knk.a(", ").a((Iterable)localObject2);
              break label284;
              localObject1 = new String((String)localObject1);
              break label404;
              if (af == 2) {
                ai = (paramCursor.getLong(23) / 1000L);
              }
              localObject1 = null;
              break label404;
              G();
              a(parambfd.g(), paramBoolean);
              break label561;
              if (!TextUtils.isEmpty((CharSequence)localObject2))
              {
                z = ((String)localObject2);
                break label651;
              }
              z = "";
              break label651;
              i1 = 0;
              break label722;
              localObject2 = localObject3;
              break label751;
              new String("Image added with no previous attachment view:");
              break label842;
            }
            a(a, b, c, d, 0, paramBoolean, parambfd, parambzw, bool3, null, null, null, 0L, null, 0.0D, 0.0D, null, null, paramCursor.getString(2), 0, null);
            i2 += 1;
          }
        }
        localObject4 = paramCursor.getString(31);
        long l1 = paramCursor.getLong(32);
        int i5;
        int i4;
        int i3;
        if (i1 != 0) {
          if ((aal.c((String)localObject3)) || ("hangouts/gv_voicemail".equals(localObject3)))
          {
            paramBoolean = true;
            a(0, an, z, (String)localObject4, l1, paramBoolean);
            ac = paramInt;
            e = parambzw.f(r);
            ab = parambzw.g(r);
            if ((parambzw.ar() != 1) || (I)) {
              break label2001;
            }
            if (localObject2 == null) {
              break label1991;
            }
            a(parambzw.d(b), e, parambfd);
            d = (paramCursor.getLong(6) / 1000L);
            l1 = System.currentTimeMillis();
            localObject3 = aal.b(d, l1, false).toString();
            localObject2 = aal.b(d, l1, true).toString();
            if ((paramCursor.getInt(28) != 0) || (paramCursor.getInt(8) != emd.b.ordinal())) {
              break label2053;
            }
            i1 = 1;
            i5 = paramCursor.getInt(37);
            if ((a.b != null) && (a.d != null))
            {
              paramInt = 0;
              i4 = 0;
              i3 = 0;
              if (af != 2) {
                break label2059;
              }
              i2 = 1;
            }
          }
        }
        switch (fdh.a[T.ordinal()])
        {
        default: 
          i1 = i3;
          paramInt = i4;
        case 1: 
        case 2: 
        case 3: 
          for (;;)
          {
            if (paramInt != 0) {
              if (System.currentTimeMillis() - d < 0L)
              {
                paramInt = 1;
                if (paramInt == 0) {
                  break label2534;
                }
                c("");
                z();
                if (i2 == 0) {
                  break label2518;
                }
                ao.postDelayed(P, 0L);
                if ((a.f.getVisibility() != 0) || (TextUtils.isEmpty(a.g.getText()))) {
                  break label2678;
                }
                paramCursor = a.g.getText();
                if (a.b.getVisibility() != 0) {
                  break label2741;
                }
                parambfd = a.b.getText();
                a(parambfd, (String)localObject1, paramCursor);
                if (!h()) {
                  break label2790;
                }
                if (!F()) {
                  break label2771;
                }
                paramCursor = this;
                parambfd = (View)paramCursor.getParent();
                if (parambfd != null) {
                  break label2754;
                }
                setOnClickListener(this);
                L.setClickable(true);
                L.setLongClickable(true);
                q.setClickable(true);
                q.setLongClickable(true);
                paramCursor = new fde(this);
                if (!F()) {
                  break label2801;
                }
                ((View)getParent().getParent()).setOnLongClickListener(paramCursor);
                if (x != null)
                {
                  paramCursor = x;
                  if (T != emc.d) {
                    break label2812;
                  }
                  paramInt = 1;
                  if (paramInt == 0) {
                    break label2817;
                  }
                  paramInt = 0;
                  paramCursor.setVisibility(paramInt);
                }
                if (y != null)
                {
                  paramCursor = y;
                  if (L.getVisibility() != 0) {
                    break label2823;
                  }
                  paramInt = 0;
                  paramCursor.setVisibility(paramInt);
                }
                return;
                paramBoolean = false;
                break;
                i1 = paramCursor.getInt(11);
                i2 = paramCursor.getInt(12);
                i3 = paramCursor.getInt(40);
                localObject3 = paramCursor.getString(13);
                double d1 = paramCursor.getDouble(14);
                double d2 = paramCursor.getDouble(15);
                str1 = paramCursor.getString(16);
                String str2 = paramCursor.getString(17);
                String str3 = paramCursor.getString(9);
                paramCursor.getBlob(41);
                a(z, an, i1, i2, i3, paramBoolean, parambfd, parambzw, bool3, B, paramCursor.getString(4), (String)localObject4, l1, (String)localObject3, d1, d2, str1, str2, paramCursor.getString(2), paramCursor.getInt(39), str3);
                break label1267;
                K();
                break label1267;
                a(null, null, parambfd);
                break label1339;
                if (I)
                {
                  a(ad, i.c(), parambfd);
                  break label1339;
                }
                a(parambzw.d(r), parambzw.f(r), parambfd);
                break label1339;
                i1 = 0;
                break label1425;
                i2 = 0;
                break label1474;
                paramInt = 1;
                if (T == emc.e) {
                  z();
                }
                if (i2 != 0)
                {
                  i1 = StressMode.go;
                  paramCursor = this;
                  paramCursor.a(a.b.getContext().getString(i1), null, null, null);
                  i1 = i3;
                  continue;
                }
                if (I())
                {
                  parambfd = null;
                  if (ae != 2) {
                    break label2210;
                  }
                  if ((i == null) || (!i.R())) {
                    break label2203;
                  }
                  paramCursor = m;
                }
                for (;;)
                {
                  a(parambfd, (String)localObject3, (String)localObject2, paramCursor);
                  if (al != 0) {
                    break label2258;
                  }
                  a.e.setVisibility(0);
                  i1 = i3;
                  break;
                  parambfd = ab;
                  break label2131;
                  paramCursor = l;
                  continue;
                  if (af == 0) {
                    paramCursor = n;
                  } else if (af == 1) {
                    paramCursor = o;
                  } else if (i1 != 0) {
                    paramCursor = p;
                  } else {
                    paramCursor = "";
                  }
                }
                if (al != 64) {
                  break label2829;
                }
              }
            }
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          break;
          z();
          switch (i5)
          {
          default: 
            if (i2 != 0)
            {
              i1 = StressMode.ho;
              paramInt = 0;
            }
            break;
          case 123: 
            i1 = StressMode.gi;
            paramInt = 0;
            break;
          case 124: 
            i1 = StressMode.gm;
            paramInt = 0;
            break;
          case 125: 
            i1 = StressMode.gc;
            paramInt = 0;
            break;
          case 126: 
            i1 = StressMode.gj;
            paramInt = 0;
            break;
          case 127: 
            i1 = StressMode.gg;
            paramInt = 0;
            break;
          case 132: 
            i1 = StressMode.fZ;
            paramInt = 0;
            break;
          case 134: 
            i1 = StressMode.ga;
            paramInt = 0;
            break;
          case 129: 
            i1 = StressMode.gb;
            paramInt = 0;
            break;
          case 133: 
            i1 = StressMode.ge;
            paramInt = 0;
            break;
          case 128: 
            i1 = StressMode.gf;
            paramInt = 0;
            break;
          case 130: 
            i1 = StressMode.gh;
            paramInt = 0;
            break;
          case 135: 
            i1 = StressMode.gk;
            paramInt = 0;
            break;
          case 131: 
            i1 = StressMode.gl;
            paramInt = 0;
            break;
          case 136: 
            i1 = StressMode.gd;
            paramInt = 0;
            break;
            i1 = StressMode.hp;
            paramInt = 0;
            break;
            paramInt = 0;
            break label1542;
            ao.postDelayed(Q, 0L);
            break label1575;
            if (i2 != 0)
            {
              j();
              break label1575;
            }
            i();
            break label1575;
            if (i1 != 0)
            {
              a.a.setVisibility(8);
              a.f.setVisibility(8);
              a.h.setVisibility(0);
              break label1575;
            }
            if (S)
            {
              S = false;
              a.h.setVisibility(8);
              a.a.setVisibility(0);
              a.a.startAnimation(aq);
              R = 1;
              break label1575;
            }
            a.h.setVisibility(8);
            a.a.setVisibility(0);
            break label1575;
            if (!TextUtils.isEmpty(a.d.getContentDescription()))
            {
              paramCursor = a.d.getContentDescription();
              break label1615;
            }
            if ("hangouts/gv_voicemail".equals(an))
            {
              paramCursor = (Cursor)localObject2;
              break label1615;
            }
            paramCursor = a.d.getText();
            break label1615;
            parambfd = parambzw.f(r);
            break label1639;
            paramCursor = parambfd;
            if (!(parambfd instanceof MessageListItemWrapperView)) {
              break label1663;
            }
            parambfd.setOnClickListener(this);
            break label1680;
            L.setOnClickListener(this);
            q.setOnClickListener(this);
            break label1680;
            L.setClickable(false);
            break label1688;
            q.setOnLongClickListener(paramCursor);
            break label1744;
            paramInt = 0;
            break label1768;
            paramInt = 8;
            break label1774;
            paramInt = 8;
            break label1803;
          }
        }
      }
      label2838:
      localObject1 = null;
    }
  }
  
  public void a(ba paramba)
  {
    label300:
    label528:
    int i1;
    switch (af)
    {
    default: 
      return;
    case 0: 
      paramba = getContext();
      localObject1 = getContext().getResources();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.fR, new Object[] { ((Resources)localObject1).getString(StressMode.rE) }));
      if (I)
      {
        if (g != null)
        {
          ((StringBuilder)localObject2).append('\n');
          ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.rG, new Object[] { g }));
        }
        if ((!I) && (ai != 0L))
        {
          ((StringBuilder)localObject2).append('\n');
          ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.jk, new Object[] { aal.a(ai).toString() }));
        }
        ((StringBuilder)localObject2).append('\n');
        localObject3 = aal.a(d).toString();
        if (!I) {
          break label300;
        }
        ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.jk, new Object[] { localObject3 }));
      }
      for (;;)
      {
        aal.c(paramba, ((StringBuilder)localObject2).toString());
        return;
        if (TextUtils.isEmpty(ak)) {
          break;
        }
        ((StringBuilder)localObject2).append('\n');
        ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.ce, new Object[] { ezm.p(ak) }));
        break;
        ((StringBuilder)localObject2).append(((Resources)localObject1).getString(StressMode.iP, new Object[] { localObject3 }));
      }
    case 1: 
      localObject1 = getContext();
      localObject2 = getContext().getResources();
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.fR, new Object[] { ((Resources)localObject2).getString(StressMode.gs) }));
      if (!TextUtils.isEmpty(ak))
      {
        ((StringBuilder)localObject3).append('\n');
        if (TextUtils.isEmpty(ak))
        {
          paramba = ((Resources)localObject2).getString(StressMode.eK);
          ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.ce, new Object[] { paramba }));
        }
      }
      else
      {
        if (g != null)
        {
          ((StringBuilder)localObject3).append('\n');
          ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.rG, new Object[] { g }));
        }
        ((StringBuilder)localObject3).append('\n');
        paramba = aal.a(d).toString();
        if (I) {
          break label719;
        }
        ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.iP, new Object[] { paramba }));
        if (!TextUtils.isEmpty(enn.b(getContext(), aj)))
        {
          ((StringBuilder)localObject3).append('\n');
          ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.qr, new Object[] { aj }));
        }
        ((StringBuilder)localObject3).append('\n');
        i1 = StressMode.hF;
        switch (ag)
        {
        case 129: 
        default: 
          paramba = ((Resources)localObject2).getString(StressMode.hH);
        }
      }
      for (;;)
      {
        ((StringBuilder)localObject3).append(((Resources)localObject2).getString(i1, new Object[] { paramba }));
        if (ah > 0L)
        {
          ((StringBuilder)localObject3).append('\n');
          ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.fP, new Object[] { Long.valueOf(enn.b(ah)) }));
        }
        aal.c((Context)localObject1, ((StringBuilder)localObject3).toString());
        return;
        paramba = ezm.p(ak);
        break;
        label719:
        ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.jk, new Object[] { paramba }));
        break label528;
        paramba = ((Resources)localObject2).getString(StressMode.hE);
        continue;
        paramba = ((Resources)localObject2).getString(StressMode.hG);
      }
    }
    if (ae == 2)
    {
      if (I)
      {
        localObject1 = new StringBuilder();
        localObject2 = getContext().getResources();
        i2 = StressMode.fR;
        localObject3 = getContext().getResources();
        if (i.R()) {}
        for (i1 = StressMode.rT;; i1 = StressMode.co)
        {
          ((StringBuilder)localObject1).append(((Resources)localObject2).getString(i2, new Object[] { ((Resources)localObject3).getString(i1) }));
          if (g == null) {
            break;
          }
          aal.a(getContext(), (StringBuilder)localObject1, d, null, g);
          return;
        }
        if (!TextUtils.isEmpty(h)) {}
        for (boolean bool = true;; bool = false)
        {
          hbs.a("Outbound GV SMS messages must have a Conversation ID", bool);
          paramba.f().b(1, null, new fdi(this, getContext(), (StringBuilder)localObject1)).u();
          return;
        }
      }
      paramba = new StringBuilder();
      localObject1 = getContext().getResources();
      int i2 = StressMode.fR;
      localObject2 = getContext().getResources();
      if (i.R()) {}
      for (i1 = StressMode.rT;; i1 = StressMode.co)
      {
        paramba.append(((Resources)localObject1).getString(i2, new Object[] { ((Resources)localObject2).getString(i1) }));
        ak = c.a(r).f();
        aal.a(getContext(), paramba, d, ak, null);
        return;
      }
    }
    Object localObject1 = getContext();
    Object localObject2 = getContext().getResources();
    Object localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.fR, new Object[] { ((Resources)localObject2).getString(StressMode.eG) }));
    if (c.ar() == 1)
    {
      i1 = 1;
      if ((!I) || (i1 == 0)) {
        break label1251;
      }
      paramba = c.ag();
      label1136:
      if ((paramba != null) && (!TextUtils.isEmpty(e)))
      {
        ((StringBuilder)localObject3).append('\n');
        if ((!I) || (i1 == 0)) {
          break label1266;
        }
        ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.rG, new Object[] { e }));
      }
    }
    for (;;)
    {
      ((StringBuilder)localObject3).append('\n');
      ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.jk, new Object[] { aal.a(d).toString() }));
      aal.c((Context)localObject1, ((StringBuilder)localObject3).toString());
      return;
      i1 = 0;
      break;
      label1251:
      paramba = c.a(r);
      break label1136;
      label1266:
      ((StringBuilder)localObject3).append(((Resources)localObject2).getString(StressMode.ce, new Object[] { e }));
    }
  }
  
  public void a(bzw parambzw)
  {
    c = parambzw;
  }
  
  public void a(fcv paramfcv)
  {
    w = paramfcv;
  }
  
  public void a(String paramString)
  {
    ad = paramString;
  }
  
  public void a(String paramString1, String paramString2, bfd parambfd)
  {
    if (b != null) {
      b.a(paramString1, paramString2, parambfd);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (R != 0)
    {
      if (paramBoolean) {
        R = 2;
      }
      switch (R)
      {
      }
    }
    for (;;)
    {
      R = 0;
      return;
      a.f.setVisibility(4);
      a.f.startAnimation(ap);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "sendingStatusDelayedShrinkPercentage", new float[] { 1.0F, 0.0F });
      localObjectAnimator.setDuration(getResources().getInteger(aal.eN));
      localObjectAnimator.setStartDelay(350L);
      localObjectAnimator.setInterpolator(new axc((byte)0));
      localObjectAnimator.addListener(new fdc(this));
      localObjectAnimator.start();
      continue;
      localObjectAnimator = ObjectAnimator.ofFloat(this, "sendingStatusShrinkPercentage", new float[] { 1.0F, 0.0F });
      localObjectAnimator.setDuration(getResources().getInteger(aal.eN));
      localObjectAnimator.setInterpolator(new axc((byte)0));
      localObjectAnimator.addListener(new fdd(this));
      localObjectAnimator.start();
    }
  }
  
  public View b()
  {
    return this;
  }
  
  public void b(boolean paramBoolean)
  {
    if (f) {
      return;
    }
    MessageStatusView localMessageStatusView;
    float f1;
    if (al == 0)
    {
      paramBoolean = false;
      localMessageStatusView = a;
      if (!paramBoolean) {
        break label89;
      }
      f1 = 0.0F;
      label29:
      localMessageStatusView.a(f1);
      localMessageStatusView = a;
      if (!paramBoolean) {
        break label94;
      }
    }
    label89:
    label94:
    for (int i1 = 8;; i1 = 0)
    {
      localMessageStatusView.setVisibility(i1);
      if ((paramBoolean) || (al != 0)) {
        break label99;
      }
      a.e.setVisibility(0);
      return;
      if (!S) {
        break;
      }
      paramBoolean = false;
      break;
      f1 = 1.0F;
      break label29;
    }
    label99:
    a.e.setVisibility(8);
  }
  
  public void c(boolean paramBoolean)
  {
    boolean bool = true;
    int i1;
    int i2;
    if (D.getChildCount() > 0)
    {
      i1 = 1;
      if (M != null)
      {
        FrameLayout localFrameLayout = M;
        if (((!paramBoolean) && (i1 == 0)) || (I)) {
          break label89;
        }
        i2 = 0;
        label45:
        localFrameLayout.setVisibility(i2);
      }
      if ((!paramBoolean) || (i1 != 0)) {
        break label94;
      }
    }
    label89:
    label94:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      K = paramBoolean;
      a(I, J, K);
      return;
      i1 = 0;
      break;
      i2 = 4;
      break label45;
    }
  }
  
  public boolean c()
  {
    return T == emc.c;
  }
  
  public boolean d()
  {
    return T == emc.e;
  }
  
  public void e()
  {
    Object localObject2 = null;
    Object localObject1;
    String str;
    if (r == null)
    {
      localObject1 = null;
      str = ak;
      if ((ae != 2) || (c.ag() == null)) {
        break label79;
      }
      str = c.ag().f();
      localObject1 = localObject2;
    }
    label79:
    for (localObject2 = str;; localObject2 = str)
    {
      new fdb(this, (String)localObject1, (String)localObject2).a(new Void[0]);
      return;
      localObject1 = r.a;
      break;
    }
  }
  
  public CharSequence f()
  {
    return V;
  }
  
  public String g()
  {
    return U;
  }
  
  public boolean h()
  {
    return ((I) && (bzw.a(T))) || (af == 2);
  }
  
  public void i()
  {
    c(getResources().getString(StressMode.bX));
  }
  
  public void j()
  {
    c(getResources().getString(StressMode.bW));
  }
  
  public void k()
  {
    Iterator localIterator;
    if (E != null)
    {
      localIterator = E.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).b_();
      }
    }
    if (F != null)
    {
      localIterator = F.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).b_();
      }
    }
  }
  
  public void l()
  {
    Iterator localIterator;
    if (E != null)
    {
      localIterator = E.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).c_();
      }
    }
    if (F != null)
    {
      localIterator = F.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).c_();
      }
    }
  }
  
  public void m()
  {
    J();
    if (q != null)
    {
      CharSequence localCharSequence = q.getText();
      if ((localCharSequence != null) && (((localCharSequence instanceof SpannableString)) || ((localCharSequence instanceof SpannedString)))) {
        fbt.a(getContext()).a((Spanned)localCharSequence);
      }
      q.setText(null);
      q.setMovementMethod(null);
      b(null);
      q.setVisibility(0);
    }
    L.setVisibility(8);
    a(a.b);
    a(a.d);
    a.f.clearAnimation();
    R = 0;
    aj = null;
    ah = 0L;
    ag = 0;
    r = null;
    e = null;
    ab = null;
    ac = 0;
    K = true;
    f = false;
    b(false);
    H.clear();
    ak = null;
    ai = 0L;
    g = null;
    al = -1;
    r = null;
    z = null;
    A = null;
    K();
    A();
  }
  
  public eno n()
  {
    if (ar != null) {}
    while ((!aal.b(an)) && (!aal.d(an))) {
      return null;
    }
    return M();
  }
  
  public List<eno> o()
  {
    if (ar != null) {
      return ar;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(M());
    return localArrayList;
  }
  
  public void onClick(View paramView)
  {
    if (w == null) {}
    do
    {
      return;
      if (h())
      {
        w.b(s);
        return;
      }
    } while ((paramView != b) || (I));
    e();
  }
  
  public void onDetachedFromWindow()
  {
    J();
    super.onDetachedFromWindow();
  }
  
  public void onFinishInflate()
  {
    L = ((MessageBubbleView)findViewById(aen.ek));
    M = ((FrameLayout)findViewById(aen.aB));
    a = ((MessageStatusView)findViewById(aen.eo));
    D = ((LinearLayout)findViewById(aen.eI));
    x = ((ImageView)findViewById(aen.cd));
    y = ((LinearLayout)findViewById(aen.ej));
    b = ((AvatarView)findViewById(aen.aC));
    if (b != null)
    {
      b.setClickable(true);
      b.setOnClickListener(this);
      b.setLongClickable(true);
      b.setOnLongClickListener(this);
    }
    q = ((TextView)L.findViewById(aen.ei));
    L();
    C = ((ViewGroup)L.findViewById(aen.as));
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (O != null) {
      paramAccessibilityNodeInfo.setText(O);
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if (j)
    {
      j = false;
      bool = true;
    }
    return bool;
  }
  
  public boolean onLongClick(View paramView)
  {
    if ((paramView == b) && (!I()) && (!TextUtils.isEmpty(ab)))
    {
      w.d(ab.replaceAll("\\s+", "_"));
      return true;
    }
    return false;
  }
  
  public boolean p()
  {
    return (!G) && (!TextUtils.isEmpty(an)) && (aen.b(an));
  }
  
  public int q()
  {
    if (ar != null) {
      return ar.size();
    }
    if (!TextUtils.isEmpty(z)) {
      return 1;
    }
    return 0;
  }
  
  public int r()
  {
    return af;
  }
  
  public int s()
  {
    return ae;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    L.setSelected(paramBoolean);
  }
  
  public String t()
  {
    return am;
  }
  
  public int u()
  {
    return s;
  }
  
  public void v()
  {
    Iterator localIterator;
    if (E != null)
    {
      localIterator = E.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).d_();
      }
    }
    if (F != null)
    {
      localIterator = F.iterator();
      while (localIterator.hasNext()) {
        ((cuk)localIterator.next()).d_();
      }
    }
  }
  
  public void w()
  {
    if ((a.getVisibility() == 8) || (f)) {}
    while (al == 0) {
      return;
    }
    f = true;
    post(new fdf(this));
  }
  
  public boolean x()
  {
    return I;
  }
  
  public long y()
  {
    return v;
  }
  
  public void z()
  {
    if (ao != null)
    {
      ao.removeCallbacks(P);
      ao.removeCallbacks(Q);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */