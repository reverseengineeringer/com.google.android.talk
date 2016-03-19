import android.animation.LayoutTransition;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.rastermill.FrameSequenceDrawable;
import android.support.rastermill.FrameSequenceDrawable.OnFinishedListener;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.google.android.apps.hangouts.content.DraftService;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.conversation.v2.FloatingButtonWithCounter;
import com.google.android.apps.hangouts.hangout.ProximityCoverView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.ConversationParticipantsActivity;
import com.google.android.apps.hangouts.phone.ShareIntentActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.service.GcmStateReceiver;
import com.google.android.apps.hangouts.views.EasterEggView;
import com.google.android.apps.hangouts.views.FixedParticipantsView;
import com.google.android.apps.hangouts.views.MessageListAnimationManager;
import com.google.android.apps.hangouts.views.MessageListItemView;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class bng
  extends bzw
  implements FrameSequenceDrawable.OnFinishedListener, bic, blt, bmw, bpp, bpr, bqk, bqz, brp, bxr, bxt, byh, cbw, cco, ccq, cct, ck<Cursor>, fcv, htx
{
  public static final boolean a;
  static final ezv b;
  private static final int[] bN;
  private static String cA = "(select merge_key from merge_keys where merge_keys.conversation_id=conversations.conversation_id)  IN (SELECT merge_key FROM merge_keys WHERE conversation_id=?)";
  static long d;
  Uri aA;
  bqj aB;
  String aC;
  String aD;
  public boolean aE;
  boolean aF;
  boolean aG;
  bkp aH;
  final hq<String, bpa> aI;
  boolean aJ;
  boolean aK;
  List<Runnable> aL;
  int aM;
  bmx aN;
  bks aO;
  View aP;
  ParticipantsGalleryView aQ;
  final eyp<bpo> aR;
  final Handler aS;
  EasterEggView aT;
  public ProximityCoverView aU;
  long aV;
  long aW;
  Cursor aX;
  boolean aY;
  int aZ;
  public hsc aj;
  hty ak;
  bkw al;
  int am;
  axq an;
  ArrayList<bdy> ao;
  int ap;
  bjp aq;
  boolean ar;
  boolean as;
  public bfd at;
  cqr au;
  hba av;
  int aw;
  final eap ax;
  brk ay;
  eit az;
  private biw bC;
  private final bqo bD;
  private final hsb bE;
  private final hsb bF;
  private final hsb bG;
  private long bH;
  private boolean bI;
  private int bJ;
  private final bjq bK;
  private boolean bL;
  private boolean bM;
  private int bO;
  private brg bP;
  private bnf bQ;
  private boolean bR;
  private String bS;
  private String bT;
  private boolean bU;
  private av bV;
  private bky bW;
  private boolean bX;
  private ViewGroup bY;
  private View.OnLayoutChangeListener bZ;
  boolean ba;
  public cyx bb;
  public fct bc;
  public final bne bd;
  bqy be;
  blv bf;
  ccl bg;
  Runnable bh;
  final List<bpk> bi;
  bpz bj;
  public final List<MessageListItemView> bk;
  boolean bl;
  bzy bm;
  MessageListAnimationManager bn;
  final Runnable bo;
  FixedParticipantsView bp;
  bml<?>[] bq;
  bmm<?> br;
  bpg bs;
  int bt;
  dur bu;
  final brh bv;
  bvg bw;
  bju bx;
  final Runnable by;
  Runnable c;
  private FloatingButtonWithCounter ca;
  private View cb;
  private View cc;
  private ImageView cd;
  private int ce;
  private String cf;
  private long cg;
  private int ch;
  private cyx ci;
  private long cj;
  private long ck;
  private bhs cl;
  private String cm;
  private bps cn;
  private final Runnable co;
  private final boolean[] cp;
  private final fcx cq;
  private boolean cr;
  private boolean cs;
  private boolean ct;
  private Chronometer cu;
  private dhq cv;
  private bzk cw;
  private final bjv cx;
  private final Map<Long, Integer> cy;
  private bjd cz;
  int e;
  eoo f;
  bry g;
  final bqi h;
  public final bpq i;
  
  static
  {
    imx localimx = ezi.f;
    a = false;
    b = ezv.a("ConvFrag");
    bN = new int[] { aen.ap, aen.fp, aen.fA, aen.fq };
    aal.a(new bnt());
  }
  
  public bng()
  {
    new ezg(getClass().getSimpleName(), getLifecycle());
    e = -1;
    f = new eoo();
    h = new bqi().a(binder);
    i = new bpt(context, this, lifecycle).a(binder);
    bD = new bqo(this, lifecycle).a(binder);
    bE = new bnh(this);
    bF = new bno(this);
    bG = new boa(this);
    bK = new bom(this);
    ax = new bpl(this);
    aB = new bqj(this);
    bW = new bpn(this).a(binder);
    aI = new hq();
    aL = new ArrayList();
    aM = -1;
    aR = new eyp();
    aS = new Handler();
    bf = new blv(this);
    bg = new ccl(this);
    co = new box(this);
    cp = new boolean[4];
    cq = new fcx(this);
    bi = new ArrayList();
    bk = new ArrayList();
    bl = false;
    bo = new boy(this);
    bs = new bpg(this);
    bv = new brh(context, new bri(this));
    new boz(this).a(binder);
    bd = new bne();
    bd.a(binder);
    i.a(new beu(new bev(this)));
    cx = new bni(this);
    by = new bny(this);
    cy = new hq();
    cz = new boq(this);
  }
  
  static boolean W()
  {
    far localfar = far.a;
    return (localfar != null) && (localfar.e());
  }
  
  private void a(bkw parambkw)
  {
    a(parambkw, 63, 3035);
  }
  
  private void a(bkw parambkw, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    if (al == null)
    {
      bool1 = true;
      aen.b(bool1, "Cannot start a call while one is in progress");
      if (am != 0) {
        break label189;
      }
      bool1 = true;
      label31:
      aen.b(bool1, "Cannot start a call while one is in progress");
      if (an != null) {
        break label195;
      }
      bool1 = true;
      label49:
      aen.b(bool1, "Cannot start a call while one is in progress");
      if (ao != null) {
        break label201;
      }
      bool1 = true;
      label67:
      aen.b(bool1, "Cannot start a call while one is in progress");
      if (ap != 0) {
        break label207;
      }
      bool1 = true;
      label85:
      aen.b(bool1, "Cannot start a call while one is in progress");
      if (aq != null) {
        break label213;
      }
    }
    label189:
    label195:
    label201:
    label207:
    label213:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      aen.b(bool1, "Cannot start a call while one is in progress");
      an = new axq();
      ao = new ArrayList();
      ap = 0;
      al = parambkw;
      am = paramInt1;
      ax();
      if ((ce != 0) && (!TextUtils.isEmpty(cf))) {
        break label219;
      }
      ao = ay();
      A();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label31;
      bool1 = false;
      break label49;
      bool1 = false;
      break label67;
      bool1 = false;
      break label85;
    }
    label219:
    aq.a(cf, paramInt2);
  }
  
  private void a(cyx paramcyx, String paramString)
  {
    if (i.d() != 1) {}
    Object localObject;
    do
    {
      do
      {
        Iterator localIterator;
        do
        {
          ;;
          while ((paramcyx == null) || (b.a == null) || (b.a(at.b())) || (a != czd.b)) {}
          localIterator = aI.entrySet().iterator();
        } while (!localIterator.hasNext());
        localObject = (Map.Entry)localIterator.next();
        if (!TextUtils.isEmpty(c))
        {
          String str1 = aC;
          String str2 = String.valueOf(ezi.b(paramcyx.toString()));
          ezi.e("Babel_Conv", String.valueOf(paramString).length() + 119 + String.valueOf(str1).length() + String.valueOf(str2).length() + "ParticipantType PERSON with phone found in conversation conversationId=" + paramString + " mergeKey=" + str1 + " ParticipantEntity phone number like: " + str2, new Object[0]);
        }
      } while (!TextUtils.equals(paramString, (String)((Map.Entry)localObject).getKey()));
      localObject = bhw.b.c(aC);
    } while ((localObject == null) || (((String)localObject).equals(b.a)));
    ezi.e("Babel", String.format(Locale.US, "in conversation %s gaia mismatch %s vs %s", new Object[] { paramString, aC, b.a }), new Object[0]);
    throw new IllegalStateException("Gaia mismatch");
  }
  
  private static boolean a(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return false;
    }
    paramContext = paramContext.getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  private void aA()
  {
    if (bM) {
      return;
    }
    bM = true;
    int m;
    int k;
    if (i.d() == 2)
    {
      Object localObject = i.g().c();
      m = ((Collection)localObject).size();
      localObject = ((Collection)localObject).iterator();
      k = 0;
      if (((Iterator)localObject).hasNext()) {
        if (TextUtils.isEmpty(nexth)) {
          break label267;
        }
      }
    }
    label267:
    for (int j = k + 1;; j = k)
    {
      k = j;
      break;
      av.a(at.g()).a(2721).a(Integer.valueOf(m)).d();
      if (m != 0) {
        if (k <= m * 0.25D) {
          j = 2717;
        }
      }
      for (;;)
      {
        av.a(at.g()).a(j).a(Integer.valueOf(k)).d();
        return;
        if (k <= m * 0.5D) {
          j = 2718;
        } else if (k <= m * 0.75D) {
          j = 2719;
        } else {
          j = 2720;
        }
      }
      av.a(at.g()).a(2722).d();
      return;
    }
  }
  
  private void aB()
  {
    ch = 0;
    ci = null;
    Iterator localIterator = i.g().b().iterator();
    while (localIterator.hasNext())
    {
      cyx localcyx = (cyx)localIterator.next();
      if (Boolean.TRUE.equals(i))
      {
        ch += 1;
        ci = localcyx;
      }
    }
  }
  
  private void aC()
  {
    Iterator localIterator = aI.values().iterator();
    int j = 0;
    if (localIterator.hasNext())
    {
      switch (nextb)
      {
      }
      for (;;)
      {
        break;
        j += 1;
      }
    }
    if (j > 1) {
      new boi(this).a(new Void[0]);
    }
  }
  
  private boolean aD()
  {
    Iterator localIterator = aI.values().iterator();
    while (localIterator.hasNext()) {
      if (!nextd) {
        return true;
      }
    }
    return false;
  }
  
  private void aE()
  {
    if ((aJ) && (aD()))
    {
      cc.setVisibility(0);
      return;
    }
    cc.setVisibility(8);
  }
  
  private void aF()
  {
    bjb localbjb = i.a();
    RealTimeChatService.g(at, a);
    if (bm != null) {
      bm.a();
    }
  }
  
  private bjb aG()
  {
    Object localObject = h.d();
    if (localObject != null)
    {
      localObject = ((Collection)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bjb localbjb = (bjb)((Iterator)localObject).next();
        if (aal.g(b)) {
          return localbjb;
        }
      }
    }
    return null;
  }
  
  private bkw aH()
  {
    if (aal.f(d())) {
      return bkw.b;
    }
    return bkw.a;
  }
  
  static void aa()
  {
    d = aal.a(aal.oJ, "babel_poll_conversation_data_frequency_ms", 60000L);
  }
  
  private void ax()
  {
    aq = ((bjr)binder.a(bjr.class)).a(context, lifecycle, bJ, this, an, al);
    bJ += 1;
  }
  
  private ArrayList<bdy> ay()
  {
    boolean bool1 = true;
    ArrayList localArrayList = new ArrayList();
    Object localObject = h.d();
    int j;
    boolean bool2;
    if ((localObject != null) && (((Collection)localObject).size() > 1))
    {
      j = 1;
      int k = i.d();
      localObject = i.g();
      bool2 = aal.f(i.a().b);
      if ((j == 0) || (k != 1)) {
        break label130;
      }
      localObject = i.a().h;
      if (bool2) {
        break label125;
      }
      localArrayList.add(bea.a((cyx)localObject, null, bool1));
    }
    label125:
    label130:
    while (((beu)localObject).d()) {
      for (;;)
      {
        return localArrayList;
        j = 0;
        break;
        bool1 = false;
      }
    }
    localObject = ((beu)localObject).c().iterator();
    label150:
    cyx localcyx;
    if (((Iterator)localObject).hasNext())
    {
      localcyx = (cyx)((Iterator)localObject).next();
      if (bool2) {
        break label195;
      }
    }
    label195:
    for (bool1 = true;; bool1 = false)
    {
      localArrayList.add(bea.a(localcyx, null, bool1));
      break label150;
      break;
    }
  }
  
  private String az()
  {
    bjb localbjb = i.a();
    if ((j == null) && (e != null)) {
      return e;
    }
    return null;
  }
  
  private void b(Cursor paramCursor, bfd parambfd)
  {
    Object localObject1;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    String str;
    label96:
    int j;
    if (a)
    {
      localObject1 = i.f();
      localObject2 = i.a();
      localObject3 = String.valueOf("onConversationParticipantsLoaderFinished() mConversationId=");
      localObject4 = String.valueOf(an());
      str = String.valueOf(this);
      if (localObject1 == null) {
        break label544;
      }
      localObject1 = String.valueOf(localObject1);
      if (((String)localObject1).length() != 0)
      {
        localObject1 = ", convName=".concat((String)localObject1);
        if (localObject2 == null) {
          break label552;
        }
        localObject2 = Integer.valueOf(b);
        localObject2 = String.valueOf(localObject2);
        new StringBuilder(String.valueOf(localObject3).length() + 17 + String.valueOf(localObject4).length() + String.valueOf(str).length() + String.valueOf(localObject1).length() + String.valueOf(localObject2).length()).append((String)localObject3).append((String)localObject4).append(": this=").append(str).append((String)localObject1).append(" variant: ").append((String)localObject2);
      }
    }
    else
    {
      h.e();
      localObject2 = null;
      localObject1 = null;
      localObject3 = new ArrayList();
      if (!paramCursor.moveToFirst()) {
        break label966;
      }
      int k = 0;
      do
      {
        localObject2 = localObject1;
        j = k;
        if (paramCursor.getInt(13) != 0)
        {
          localObject4 = beu.a(parambfd, paramCursor);
          localObject2 = paramCursor.getString(12);
          a((cyx)localObject4, (String)localObject2);
          if ((((cyx)localObject4).h()) && (!TextUtils.isEmpty(((cyx)localObject4).f()))) {
            ((List)localObject3).add(((cyx)localObject4).f());
          }
          if (a)
          {
            str = String.valueOf(localObject4);
            new StringBuilder(String.valueOf(str).length() + 31 + String.valueOf(localObject2).length()).append("Participant: ").append(str).append(" Conversation Id: ").append((String)localObject2);
          }
          h.a((String)localObject2).add(localObject4);
          if (ezm.j(c)) {
            localObject1 = c;
          }
          localObject2 = localObject1;
          j = k;
          if (((cyx)localObject4).i())
          {
            j = 1;
            localObject2 = localObject1;
          }
        }
        localObject1 = localObject2;
        k = j;
      } while (paramCursor.moveToNext());
    }
    for (;;)
    {
      bv.a((List)localObject3);
      if ((aN != null) && (localObject2 == null)) {
        aN.a();
      }
      if ((localObject2 != null) && (!dur.a(context, parambfd.g())))
      {
        paramCursor = getLoaderManager();
        paramCursor.a(0);
        paramCursor.a(1);
        paramCursor.a(2);
        paramCursor.a(3);
        dur.a(getContext(), (String)localObject2, new bog(this));
        return;
        localObject1 = new String(", convName=");
        break;
        label544:
        localObject1 = "";
        break;
        label552:
        localObject2 = "not set";
        break label96;
      }
      if ((j != 0) && ((!parambfd.n()) || (!ezm.c())))
      {
        localObject1 = new AlertDialog.Builder(getActivity()).setTitle(StressMode.fK);
        if (!parambfd.R()) {
          break label732;
        }
      }
      label732:
      for (j = StressMode.fQ;; j = StressMode.fJ)
      {
        ((AlertDialog.Builder)localObject1).setMessage(j).setCancelable(false).setPositiveButton(17039370, new boh(this)).show();
        parambfd = i.g();
        parambfd.a(paramCursor);
        aB();
        w();
        aN.a();
        paramCursor = bi.iterator();
        while (paramCursor.hasNext())
        {
          localObject1 = (bpk)paramCursor.next();
          if (parambfd.a(b)) {
            ax.a(a, b, c);
          }
        }
      }
      bi.clear();
      if (!ao()) {
        aj();
      }
      paramCursor = f;
      boolean bool;
      if (i.d() != 1)
      {
        bool = true;
        paramCursor.a(bool);
        bl = false;
        paramCursor = parambfd.b().iterator();
      }
      for (;;)
      {
        if (paramCursor.hasNext())
        {
          parambfd = (cyx)paramCursor.next();
          if (parambfd.equals(enn.g()))
          {
            bl = true;
            J();
            continue;
            bool = false;
            break;
          }
          if ((parambfd.h()) && (TextUtils.isEmpty(parambfd.f())))
          {
            bl = true;
            J();
          }
          else
          {
            parambfd = parambfd.f();
            if ((parambfd != null) && (bzq.a(parambfd))) {
              f.b();
            }
          }
        }
      }
      aA();
      if (bl)
      {
        aN.i();
        cb.setVisibility(8);
        ca.setVisibility(8);
      }
      for (;;)
      {
        aN.a();
        ((ListView)bB).invalidateViews();
        return;
        aO.c();
      }
      label966:
      j = 0;
    }
  }
  
  private void c(Cursor paramCursor, bfd parambfd)
  {
    int m = 0;
    int n = ce;
    String str1 = cf;
    cf = null;
    hq localhq = new hq();
    int j;
    Object localObject1;
    Object localObject2;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      j = 0;
      localObject1 = null;
      localObject2 = null;
    }
    for (;;)
    {
      if (paramCursor.getPosition() == 0)
      {
        localObject1 = paramCursor.getString(3);
        localObject2 = paramCursor.getString(4);
      }
      int k;
      for (;;)
      {
        Object localObject5 = paramCursor.getString(0);
        int i1 = paramCursor.getInt(12);
        ezi.a("Babel_Conv", "onConversationsLoaderFinished loading conversation %s", new Object[] { localObject5 });
        k = m;
        if (m == 0)
        {
          k = m;
          if (i1 == 1)
          {
            i.a(paramCursor.getString(3), paramCursor.getString(4));
            k = 1;
          }
        }
        long l = aal.a(Long.valueOf(paramCursor.getLong(13)), 0L);
        if (l > cj) {
          cj = l;
        }
        Object localObject4 = (bpa)aI.get(localObject5);
        localObject3 = localObject4;
        if (localObject4 == null) {
          localObject3 = new bpa();
        }
        localhq.put(localObject5, localObject3);
        a = ((String)localObject5);
        c = paramCursor.getLong(14);
        boolean bool;
        if (paramCursor.getInt(6) != 0)
        {
          bool = true;
          d = bool;
          f = paramCursor.getString(17);
          aC = f;
          b = i1;
          g = paramCursor.getLong(15);
          h = paramCursor.getLong(18);
          m = paramCursor.getInt(2);
          int i2 = i.d();
          if ((m != 0) && (m != i2))
          {
            localObject4 = String.valueOf(an());
            ezi.d("Babel", String.valueOf(localObject4).length() + 100 + "loaded client conversation type " + m + " overriding " + i2 + " for conversation " + (String)localObject4 + " (this is weird)", new Object[0]);
          }
          if (i1 == 1)
          {
            if (!parambfd.k()) {
              break label1031;
            }
            ce = 0;
            label459:
            cf = ((String)localObject5);
            cg = paramCursor.getLong(10);
          }
          if (TextUtils.equals(an(), a))
          {
            i.a(m);
            bS = paramCursor.getString(19);
            bT = paramCursor.getString(20);
            bO = paramCursor.getInt(1);
            aw = paramCursor.getInt(16);
            bX = true;
            if (a)
            {
              localObject3 = i.f();
              localObject4 = i.a();
              localObject5 = String.valueOf("onConversationsLoaderFinished(CONVERSATION_LOADER) mConversationId=");
              String str2 = String.valueOf(an());
              String str3 = String.valueOf(this);
              if (localObject3 == null) {
                break label1061;
              }
              localObject3 = String.valueOf(localObject3);
              if (((String)localObject3).length() == 0) {
                break label1046;
              }
              localObject3 = ", convName=".concat((String)localObject3);
              label636:
              if (localObject4 == null) {
                break label1069;
              }
              localObject4 = Integer.valueOf(b);
              label651:
              localObject4 = String.valueOf(localObject4);
              new StringBuilder(String.valueOf(localObject5).length() + 17 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(localObject3).length() + String.valueOf(localObject4).length()).append((String)localObject5).append(str2).append(": this=").append(str3).append((String)localObject3).append(" variant: ").append((String)localObject4);
            }
            getActivity().y_();
            be.a(paramCursor);
            aQ.c(be.d());
            aQ.d(i2);
            if (paramCursor.getInt(11) != 2) {
              break label1077;
            }
            bool = true;
            label803:
            ct = bool;
            if (!bR)
            {
              bR = true;
              if ((R() == null) && (paramCursor.moveToFirst()))
              {
                localObject5 = aB;
                localObject3 = new bfb(paramCursor.getString(5));
                localObject4 = DraftService.a(an(), at);
                if (localObject4 == null) {
                  break label1083;
                }
                localObject3 = localObject4;
                if (a)
                {
                  localObject3 = String.valueOf(localObject4);
                  new StringBuilder(String.valueOf(localObject3).length() + 36).append("DraftService.getDraft pendingDraft: ").append((String)localObject3);
                  localObject3 = localObject4;
                }
              }
            }
          }
        }
        for (;;)
        {
          ((bqj)localObject5).a((bfb)localObject3);
          j += 1;
          if (paramCursor.moveToNext()) {
            break label1382;
          }
          if (k == 0) {
            i.a((String)localObject1, (String)localObject2);
          }
          aq();
          if (!aI.isEmpty()) {
            break label1141;
          }
          paramCursor = localhq.values().iterator();
          for (l = 0L; paramCursor.hasNext(); l = Math.max(l, nexth)) {}
          bool = false;
          break;
          label1031:
          ce = paramCursor.getInt(9);
          break label459;
          label1046:
          localObject3 = new String(", convName=");
          break label636;
          label1061:
          localObject3 = "";
          break label636;
          label1069:
          localObject4 = "not set";
          break label651;
          label1077:
          bool = false;
          break label803;
          label1083:
          if (a)
          {
            localObject4 = String.valueOf(localObject3);
            new StringBuilder(String.valueOf(localObject4).length() + 48).append("DraftService.getDraft returning original draft: ").append((String)localObject4);
          }
        }
        ((bhx)bA).a(l);
        label1141:
        aI.clear();
        aI.a(localhq);
        aC();
        if ((n == 0) && (ce != 0)) {
          RealTimeChatService.m(parambfd, cf);
        }
        aE();
        RealTimeChatService.d(parambfd, an(), ck);
        parambfd = an();
        paramCursor = parambfd;
        if (parambfd == null) {
          paramCursor = "(NULL)";
        }
        ezi.c("Babel_Conv", "Conversation loader finished for %s, count# %d", new Object[] { paramCursor, Integer.valueOf(j) });
        if ((str1 != null) && (cf == null))
        {
          paramCursor = String.valueOf(str1);
          if (paramCursor.length() == 0) {
            break label1353;
          }
        }
        label1353:
        for (paramCursor = "Error: CallMediaTypeConvId is now missing! ".concat(paramCursor);; paramCursor = new String("Error: CallMediaTypeConvId is now missing! "))
        {
          ezi.e("Babel_Conv", paramCursor, new Object[0]);
          w();
          if ((i.f() == null) && (bm != null))
          {
            paramCursor = bm;
            an();
            paramCursor.a();
          }
          return;
          if (RealTimeChatService.a(an()) == null)
          {
            paramCursor = bm;
            an();
            paramCursor.a();
          }
          j = 0;
          break;
        }
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
      label1382:
      Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
      m = k;
    }
  }
  
  private void d(long paramLong)
  {
    RealTimeChatService.a(at, new long[] { paramLong });
  }
  
  void A()
  {
    if (ap == ao.size())
    {
      if (ap > 0) {}
      for (boolean bool = true;; bool = false)
      {
        hbs.a("No contacts added", bool);
        if (aH() != bkw.a) {
          break;
        }
        aq.a(i.a().a, 2622);
        return;
      }
      aq.a(bfw.c, 2622);
      return;
    }
    bdy localbdy = (bdy)ao.get(ap);
    ap += 1;
    aq.a(localbdy);
  }
  
  public boolean B()
  {
    return !GcmStateReceiver.a;
  }
  
  public boolean C()
  {
    return !a(context);
  }
  
  public boolean D()
  {
    return aal.e(d());
  }
  
  public void E()
  {
    bO = 30;
    Iterator localIterator = aI.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      RealTimeChatService.a(at, str, bO);
    }
    w();
  }
  
  public boolean F()
  {
    return bO == 10;
  }
  
  public boolean G()
  {
    return (ce != 0) && (a(context));
  }
  
  public void H()
  {
    bxq localbxq = bxq.a(getString(StressMode.im), getString(StressMode.il), getString(StressMode.ik), getString(StressMode.iH));
    localbxq.setTargetFragment(this, 0);
    localbxq.a(getFragmentManager(), "leave_conversation");
  }
  
  boolean I()
  {
    if ((i.a() == null) && (((eot)binder.a(eot.class)).d())) {
      return false;
    }
    if ((bu != null) && (!bu.a)) {
      return false;
    }
    return !bl;
  }
  
  void J()
  {
    boolean bool = I();
    aN.a(bool);
    M();
  }
  
  boolean K()
  {
    return (i.a() != null) && (bu != null);
  }
  
  void L()
  {
    if (!K()) {
      return;
    }
    Iterator localIterator = aL.iterator();
    while (localIterator.hasNext()) {
      aal.a((Runnable)localIterator.next());
    }
    aL.clear();
  }
  
  void M()
  {
    if (!I()) {
      return;
    }
    int j = i.h().size();
    if ((aN != null) && (aN.j())) {}
    for (boolean bool = true;; bool = false)
    {
      if ((be != null) && (bool)) {
        be.a(System.currentTimeMillis());
      }
      if (ca == null) {
        break;
      }
      ca.a(bool, j);
      return;
    }
  }
  
  Uri N()
  {
    return EsProvider.a(at, an()).buildUpon().appendQueryParameter("limit", String.valueOf(bt)).build();
  }
  
  public void O()
  {
    aN.f();
  }
  
  public void P()
  {
    aN.g();
  }
  
  public void Q()
  {
    aN.b();
  }
  
  Intent R()
  {
    return (Intent)getActivity().getIntent().getParcelableExtra("share_intent");
  }
  
  public void S()
  {
    T();
  }
  
  public void T()
  {
    if (a)
    {
      localObject1 = String.valueOf(aN);
      new StringBuilder(String.valueOf(localObject1).length() + 47).append("handleOptionalShareIntent mComposeMessageView: ").append((String)localObject1);
    }
    Object localObject1 = R();
    ewz.a("handleOptionalShareIntent", (Intent)localObject1);
    if (localObject1 == null) {}
    Object localObject2;
    do
    {
      do
      {
        return;
        localObject2 = ((Intent)localObject1).getExtras();
        if (((Bundle)localObject2).containsKey("android.intent.extra.TEXT")) {
          aN.a(((Bundle)localObject2).getString("android.intent.extra.TEXT"), false);
        }
        localObject2 = ((Intent)localObject1).getType();
      } while (aen.a((String)localObject2));
      localObject1 = aal.a((Intent)localObject1);
      if (!aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), bhh.f))
      {
        Toast.makeText(context, aal.kl, 0).show();
        return;
      }
    } while (localObject1 == null);
    if (aal.d((String)localObject2)) {}
    for (localObject1 = bqt.b(context, (String)localObject1);; localObject1 = bqt.a(context, (String)localObject1))
    {
      aj.a(aal.jU, (Intent)localObject1);
      return;
    }
  }
  
  public void U()
  {
    if (aN != null)
    {
      aN.setVisibility(8);
      cb.setVisibility(8);
      ca.setVisibility(8);
    }
    cs = true;
  }
  
  public boolean V()
  {
    hbs.b("Expected condition to be false", cs);
    aO.b();
    if (exa.d(context))
    {
      boolean bool = aN.c();
      a(false);
      return bool;
    }
    return false;
  }
  
  public void X()
  {
    far localfar = far.a;
    if ((localfar != null) && (localfar.g()))
    {
      getActivity().setVolumeControlStream(0);
      return;
    }
    getActivity().setVolumeControlStream(Integer.MIN_VALUE);
  }
  
  public boolean Y()
  {
    return aY;
  }
  
  void Z()
  {
    if (!Y()) {
      return;
    }
    bfd localbfd = at;
    Set localSet = aI.keySet();
    if (RealTimeChatService.a)
    {
      ??? = String.valueOf(localSet);
      String str = String.valueOf(localbfd.a());
      new StringBuilder(String.valueOf(???).length() + 32 + String.valueOf(str).length()).append("setFocusedConversation ").append((String)???).append(" account:").append(str);
    }
    synchronized (RealTimeChatService.c)
    {
      RealTimeChatService.d = localbfd.a();
      RealTimeChatService.e = new HashSet(localSet);
      return;
    }
  }
  
  public bfd a()
  {
    return at;
  }
  
  public cyx a(czb paramczb)
  {
    return i.g().b(paramczb);
  }
  
  public void a(int paramInt)
  {
    ch = paramInt;
    bpg localbpg = bs;
    if ((a != bpi.b) || (c.ao()) || (c.aw == 1)) {
      return;
    }
    bml[] arrayOfbml = c.bq;
    int j = arrayOfbml.length;
    paramInt = 0;
    if (paramInt < j)
    {
      bml localbml = arrayOfbml[paramInt];
      boolean bool = localbml.a();
      localbml.a(bool);
      if ((localbml instanceof ccp))
      {
        if ((!bool) || (b)) {
          break label132;
        }
        aal.a(c.at, 2100);
      }
      for (b = true;; b = false)
      {
        label132:
        do
        {
          paramInt += 1;
          break;
        } while ((!b) || (bool));
        aal.a(c.at, 2101);
      }
    }
    c.br.a(c.br.a());
  }
  
  void a(int paramInt1, int paramInt2)
  {
    Cursor localCursor;
    if (aJ)
    {
      localCursor = ((bhx)bA).a();
      if ((paramInt1 <= 0) || (localCursor == null) || (localCursor.isClosed()) || (!localCursor.moveToPosition(paramInt1 - paramInt2))) {
        break label170;
      }
    }
    label170:
    for (long l = localCursor.getLong(6);; l = 0L)
    {
      a(new bow(this, l));
      if ((paramInt1 == 0) && (bt == ((bhx)bA).a().getCount()))
      {
        if (cv != null)
        {
          bt += aal.a(context, "babel_conversation_messages_limit", 500);
          aA = N();
          cv.a(aA);
          cv.u();
        }
      }
      else {
        return;
      }
      ezi.d("Babel_Conv", "MessagesLoader is null. Error 22253232", new Object[0]);
      return;
    }
  }
  
  void a(Cursor paramCursor, bfd parambfd)
  {
    if (cj <= 0L)
    {
      aX = paramCursor;
      return;
    }
    paramCursor.moveToLast();
    long l1;
    if (!paramCursor.isAfterLast())
    {
      l1 = paramCursor.getLong(2);
      if ((l1 > cj) && (l1 > ck)) {
        switch (paramCursor.getInt(3))
        {
        }
      }
    }
    for (;;)
    {
      long l2 = ck;
      ezi.a("Babel", 99 + "Setting last processed event suggestion timestamp from " + l2 + " to " + l1, new Object[0]);
      ck = l1;
      aX = null;
      RealTimeChatService.d(parambfd, i.a().a, ck);
      return;
      Object localObject = new eyd(paramCursor.getString(4), null);
      bP.a();
      cl = null;
      cm = null;
      int j = paramCursor.getInt(5);
      localObject = new bhs((eyd)localObject, bP, true, Integer.valueOf(j));
      Cursor localCursor = ((bhx)bA).a();
      if ((localCursor != null) && (localCursor.moveToLast()) && (localCursor.getString(1).equals(paramCursor.getString(1))))
      {
        bP.a((bhs)localObject);
        az.a((ehx)localObject);
      }
      else
      {
        cl = ((bhs)localObject);
        cm = paramCursor.getString(1);
      }
    }
  }
  
  public void a(Bundle paramBundle, String paramString)
  {
    if (paramString.equals("conversation_error")) {
      aF();
    }
    do
    {
      do
      {
        return;
        if (!paramString.equals("delete_conversation")) {
          break;
        }
        paramBundle = getAccountForConversationDeletion(paramBundle);
      } while (paramBundle == null);
      RealTimeChatService.b(ax);
      a(new bop(this, paramBundle));
      return;
      if (paramString.equals("leave_conversation"))
      {
        aF();
        return;
      }
    } while (!paramString.equals("delete_message"));
    d(paramBundle.getLong("row_id"));
  }
  
  void a(bfb parambfb)
  {
    Iterator localIterator = h.d().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (bjb)localIterator.next();
      if (a != null)
      {
        ba localba = getActivity();
        Object localObject1 = at;
        String str = a;
        if (DraftService.a)
        {
          localObject2 = String.valueOf(ezi.b(((bfd)localObject1).a()));
          ??? = String.valueOf(parambfb);
          new StringBuilder(String.valueOf(localObject2).length() + 65 + String.valueOf(str).length() + String.valueOf(???).length()).append("DraftService.saveDraft> accountName=").append((String)localObject2).append(", conversationId=").append(str).append(", saveDraft=").append((String)???);
        }
        int j = ((bfd)localObject1).g();
        synchronized (DraftService.b)
        {
          localObject2 = (Map)DraftService.b.get(Integer.valueOf(j));
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = new hq();
            DraftService.b.put(Integer.valueOf(j), localObject1);
          }
          ((Map)localObject1).put(str, parambfb);
          ((bcm)ilh.a(localba, bcm.class)).a(new bfb(a, str, j));
        }
      }
    }
  }
  
  void a(bjb parambjb, String paramString, bkq parambkq)
  {
    aE = true;
    w();
    aC();
    bfd localbfd = at;
    if ((aal.g(d())) && (aT != null))
    {
      localObject = EasterEggView.a(paramString);
      if (localObject != null)
      {
        if (EasterEggView.b((String)localObject)) {
          RealTimeChatService.b(at.g(), a, (String)localObject);
        }
        parambjb = aT;
        paramString = at;
        at.b();
        parambjb.a(paramString, (String)localObject);
        return;
      }
    }
    int j = ((ListView)bB).getAdapter().getCount();
    int k = j - 20;
    if (((ListView)bB).getLastVisiblePosition() < k) {
      ((ListView)bB).setSelection(k);
    }
    Object localObject = ((ListView)bB).getChildAt(j - 1 - ((ListView)bB).getFirstVisiblePosition());
    k = ((ListView)bB).getHeight();
    boolean bool;
    if ((j > 0) && ((localObject == null) || (((View)localObject).getBottom() > k)))
    {
      bool = true;
      if (aal.a(context, "babel_extra_log_scrolling", false)) {
        ezi.c("Babel_Scroll", 29 + "sendMessage needsScroll:" + bool, new Object[0]);
      }
      if (!bool) {
        break label440;
      }
      ((ListView)bB).smoothScrollToPosition(((ListView)bB).getAdapter().getCount() - 1);
      if (aal.a(context, "babel_extra_log_scrolling", false))
      {
        j = ((ListView)bB).getAdapter().getCount();
        ezi.c("Babel_Scroll", 46 + "sendMessage smoothScrollToPosition:" + (j - 1), new Object[0]);
      }
      aF = true;
      aS.postDelayed(new boo(this, localbfd, parambjb, paramString, parambkq), 500L);
    }
    for (;;)
    {
      f.a();
      a(new bfb());
      getActivity().getIntent().removeExtra("share_intent");
      bU = false;
      w();
      b.c("sendMessageUiLatency");
      return;
      bool = false;
      break;
      label440:
      paramString = bw.a(localbfd.g(), a, paramString, parambkq, f.c(), d());
      g.a(a, paramString);
    }
  }
  
  void a(bpf parambpf)
  {
    try
    {
      Iterator localIterator = aI.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        parambpf.a((String)localEntry.getKey(), (bpa)localEntry.getValue());
      }
    }
    finally
    {
      parambpf.a();
    }
  }
  
  public void a(bps parambps)
  {
    cn = parambps;
    M();
  }
  
  public void a(bzy parambzy)
  {
    bm = parambzy;
  }
  
  public void a(fcr paramfcr, String paramString1, String paramString2)
  {
    bm.a(paramfcr, paramString1, paramString2);
  }
  
  public void a(fe<Cursor> paramfe, Cursor paramCursor)
  {
    Object localObject = ((dhq)paramfe).D();
    if (!TextUtils.equals(((bfd)localObject).a(), at.a())) {
      ezi.d("Babel_Conv", "onLoadFinished called for non-fragment account", new Object[0]);
    }
    int m;
    int j;
    label100:
    label124:
    int n;
    label166:
    do
    {
      do
      {
        return;
        m = paramfe.o();
        switch (m)
        {
        default: 
          hbs.b("Expected non-null", at);
          if (!ao()) {
            break label1391;
          }
          j = 0;
          if (j != 0)
          {
            if (!cr) {
              break label1448;
            }
            ezi.c("Babel", "Skipping variant computation; already ran", new Object[0]);
          }
          paramfe = getActivity();
          if (paramfe != null) {
            paramfe.y_();
          }
          cp[m] = true;
        }
      } while (!ba);
      m = 1;
      paramfe = cp;
      n = paramfe.length;
      j = 0;
      k = m;
      if (j < n)
      {
        if (paramfe[j] != 0) {
          break label1594;
        }
        k = 0;
      }
    } while (k == 0);
    aS.removeCallbacks(co);
    showContent(getView());
    if ((i.d() == 1) && (!aal.a(djd.b)))
    {
      j = aal.a(context, "babel_max_outgoing_message_search_rows", 50);
      if (j > 0)
      {
        paramfe = ((bhx)bA).a();
        if ((paramfe != null) && (paramfe.moveToLast()))
        {
          m = paramfe.getInt(36);
          label282:
          if (emd.values()[paramfe.getInt(8)] != emd.b) {
            break label1601;
          }
          j = paramfe.getInt(36);
          label309:
          if (m != 0) {
            break label1628;
          }
          k = 1;
          label317:
          if (k == 0) {
            if (j != 0) {
              break label1634;
            }
          }
        }
      }
    }
    label677:
    label784:
    label844:
    label874:
    label1113:
    label1269:
    label1275:
    label1286:
    label1300:
    label1391:
    label1448:
    label1594:
    label1601:
    label1628:
    label1634:
    for (int k = 1;; k = 0)
    {
      if ((k == 0) && (aal.f(m) != aal.f(j)))
      {
        bU = true;
        w();
      }
      ba = false;
      return;
      paramCursor = new brj(paramCursor);
      g.a(paramCursor);
      if ((aal.a(context, "babel_extra_log_scrolling", false)) || (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)))
      {
        localObject = String.valueOf(paramfe);
        j = ((bhx)bA).getCount();
        String str = String.valueOf(Integer.valueOf(paramCursor.getCount()));
        ezi.c("Babel_Scroll", String.valueOf(localObject).length() + 98 + String.valueOf(str).length() + "onMessagesLoaderFinished MESSAGES_LOADER " + (String)localObject + " mAdapter.getCount(): " + j + " new cursor data count: " + str, new Object[0]);
      }
      if (a)
      {
        paramfe = String.valueOf(paramfe);
        j = ((bhx)bA).getCount();
        localObject = String.valueOf(Integer.valueOf(paramCursor.getCount()));
        new StringBuilder(String.valueOf(paramfe).length() + 98 + String.valueOf(localObject).length()).append("onMessagesLoaderFinished MESSAGES_LOADER ").append(paramfe).append(" mAdapter.getCount(): ").append(j).append(" new cursor data count: ").append((String)localObject);
      }
      if (bn.a().c())
      {
        aK = true;
        break;
      }
      n = ((bhx)bA).getCount();
      int i1 = ((ListView)bB).getFirstVisiblePosition();
      int i2 = paramCursor.getCount();
      paramfe = ((ListView)bB).getChildAt(0);
      long l;
      if (paramfe != null)
      {
        j = paramfe.getTop();
        ((bhx)bA).b(paramCursor);
        if ((cl != null) && (cm != null))
        {
          paramCursor.moveToLast();
          if (paramCursor.getString(1).equals(cm))
          {
            bP.a(cl);
            az.a(cl);
          }
        }
        cl = null;
        cm = null;
        if ((n > 0) && (i2 > n + 1))
        {
          if (!aD()) {
            break label1269;
          }
          k = 1;
          k = Math.max(k, Math.min(i2 - n + (i1 + k - 1), i2 - 1));
          ((ListView)bB).setSelectionFromTop(k, j);
        }
        if (i.a() != null) {
          break label1275;
        }
        showEmptyView(getView());
        if ((paramCursor.getCount() <= 0) || (!paramCursor.moveToFirst())) {
          break label1286;
        }
        aV = paramCursor.getLong(6);
        if ((paramCursor.getCount() > 0) && (paramCursor.moveToLast()))
        {
          l = aW;
          aW = paramCursor.getLong(6);
          if ((Y()) && (aW > l) && (isVisible())) {
            a(paramCursor.getString(2));
          }
          if (!ao()) {
            aj();
          }
        }
        if (!aJ)
        {
          l = SystemClock.elapsedRealtime();
          au.a(at.g(), "hangout_launch_remote_notification", l, 1002);
          au.a(at.g(), "click_contact_list", l, 1004);
          au.a(at.g(), "click_conversation_list", l, 1005);
          ((axy)binder.a(axy.class)).a();
        }
        aJ = true;
        aE();
        if (paramCursor.moveToLast())
        {
          if (aal.a(context, "babel_extra_log_scrolling", false)) {
            ezi.c("Babel_Scroll", "onMessagesLoaderFinished moveToLast", new Object[0]);
          }
          j = cy.size();
          l = paramCursor.getLong(0);
          k = j;
          if (cy.containsKey(Long.valueOf(l)))
          {
            paramfe = emc.values()[paramCursor.getInt(7)];
            if (paramfe != emc.e) {
              break label1300;
            }
            cy.remove(Long.valueOf(l));
          }
        }
      }
      for (;;)
      {
        k = j - 1;
        paramfe = paramCursor.getString(4);
        if ((!aE) && (paramfe != null) && (paramfe.equalsIgnoreCase(at.b().a))) {
          aE = true;
        }
        if (paramCursor.moveToPrevious())
        {
          j = k;
          if (!aE) {
            break label1113;
          }
          j = k;
          if (k > 0) {
            break label1113;
          }
        }
        w();
        aN.a();
        break;
        j = 0;
        break label677;
        k = 0;
        break label784;
        showContent(getView());
        break label844;
        aV = (System.currentTimeMillis() * 1000L);
        break label874;
        cy.put(Long.valueOf(l), Integer.valueOf(paramfe.ordinal()));
      }
      c(paramCursor, (bfd)localObject);
      if (aI.isEmpty()) {
        break;
      }
      getLoaderManager().a(1, null, this);
      break;
      b(paramCursor, (bfd)localObject);
      break;
      if (Y())
      {
        a(paramCursor, (bfd)localObject);
        break;
      }
      aX = paramCursor;
      break;
      if ((i.d() == 1) && (ag() == null))
      {
        j = 0;
        break label100;
      }
      if (aI.isEmpty())
      {
        j = 0;
        break label100;
      }
      if (aC == null)
      {
        j = 0;
        break label100;
      }
      j = 1;
      break label100;
      cr = true;
      paramfe = new bqf(this);
      paramCursor = String.valueOf(this);
      localObject = String.valueOf(getLoaderManager());
      ezi.c("Babel", String.valueOf(paramCursor).length() + 37 + String.valueOf(localObject).length() + "Starting variant engine for " + paramCursor + " loader: " + (String)localObject, new Object[0]);
      au.a("conversation_variant_engine_computation");
      h.a(new bot(this));
      bj.a(i.d(), aC, aI.values(), paramfe);
      break label124;
      j += 1;
      break label166;
      k = j - 1;
      if (paramfe.moveToPrevious())
      {
        j = k;
        if (k > 0) {
          break label282;
        }
      }
      j = 0;
      break label309;
      k = 0;
      break label317;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    aN.a(paramCharSequence);
  }
  
  void a(String paramString)
  {
    if ((bX) || (cj > 0L))
    {
      ak.b(brz.a(paramString));
      ak.a(new brz(context, at, paramString));
      int j = at.g();
      if ((dvp.v.b(j)) && (!TextUtils.isEmpty(paramString)) && (!bfz.a(paramString))) {
        ak.a(new bqv(context, paramString, j, false));
      }
    }
  }
  
  public void a(String paramString, hus paramhus, huo paramhuo)
  {
    paramhuo.a(false);
    if ((paramString == null) || (paramhus == null)) {}
    do
    {
      return;
      paramString = (dsf)paramhus.d().getSerializable("response_header");
    } while (paramString == null);
    dqf.a(at, paramString);
  }
  
  public void a(List<bkq> paramList)
  {
    if (b(paramList)) {
      ak();
    }
    M();
  }
  
  public void a(ksf<bkq> paramksf)
  {
    b(paramksf);
  }
  
  void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = paramBoolean;
    if (bA != null)
    {
      bool1 = paramBoolean;
      if (((bhx)bA).getCount() == 0) {
        bool1 = true;
      }
    }
    if (exa.c(context)) {
      bool1 = true;
    }
    if (!exa.d(context)) {}
    for (paramBoolean = bool2;; paramBoolean = bool1)
    {
      bm.b_(paramBoolean);
      return;
    }
  }
  
  public boolean a(long paramLong)
  {
    return cy.containsKey(Long.valueOf(paramLong));
  }
  
  boolean a(List<bkq> paramList, bjb parambjb)
  {
    aE = true;
    w();
    aC();
    paramList = paramList.iterator();
    boolean bool = false;
    int j = 1;
    int k;
    while (paramList.hasNext())
    {
      Object localObject = (bkq)paramList.next();
      bkr localbkr = c;
      if ((aal.g(i.a().b)) && (localbkr != bkr.b) && (localbkr != bkr.c) && (localbkr != bkr.d) && (localbkr != bkr.e)) {
        k = 0;
      }
      while (k != 0) {
        switch (bov.b[c.ordinal()])
        {
        default: 
          throw new UnsupportedOperationException("Cannot send unsupported attachment type.");
          k = 1;
          break;
        case 1: 
        case 2: 
          if ((c == bkr.b) || (c == bkr.c))
          {
            bool = true;
            aen.a(bool);
            if (c != bkr.c) {
              break label236;
            }
            Toast.makeText(context, StressMode.sJ, 0).show();
          }
          for (;;)
          {
            bool = true;
            break;
            bool = false;
            break label194;
            localObject = (blb)localObject;
            localObject = bw.a(at.g(), a, (blb)localObject);
            g.a(a, (String)localObject);
          }
        case 3: 
          if (c == bkr.d) {}
          for (bool = true;; bool = false)
          {
            aen.a(bool);
            a(parambjb, "", (bkq)localObject);
            break;
          }
        case 4: 
          label194:
          label236:
          if (c == bkr.e) {}
          for (bool = true;; bool = false)
          {
            aen.a(bool);
            a(parambjb, "", (bkq)localObject);
            break;
          }
        }
      }
      j = 0;
    }
    if (j == 0) {
      Toast.makeText(context, StressMode.fH, 0).show();
    }
    for (;;)
    {
      b.c("sendMessageUiLatency");
      return bool;
      if (bB != null)
      {
        j = ((ListView)bB).getAdapter().getCount();
        k = j - 20;
        if (((ListView)bB).getLastVisiblePosition() < k) {
          ((ListView)bB).setSelection(k);
        }
        paramList = ((ListView)bB).getChildAt(j - 1 - ((ListView)bB).getFirstVisiblePosition());
        k = ((ListView)bB).getHeight();
        if ((j > 0) && ((paramList == null) || (paramList.getBottom() > k))) {
          ((ListView)bB).smoothScrollToPosition(((ListView)bB).getAdapter().getCount() - 1);
        }
      }
    }
  }
  
  void ab()
  {
    boolean bool = true;
    a(new bnv(this));
    eoo localeoo;
    if (f != null)
    {
      localeoo = f;
      if (i.d() == 1) {
        break label52;
      }
    }
    for (;;)
    {
      localeoo.a(bool);
      aN.a();
      return;
      label52:
      bool = false;
    }
  }
  
  void ac()
  {
    if (!Y()) {
      return;
    }
    a(new bnw(this));
    aS.removeCallbacks(by);
    aS.postDelayed(by, aal.a(context, "babel_focusrenewperiodmillis", 270000));
  }
  
  void ad()
  {
    a(new bnx(this));
  }
  
  public void ae()
  {
    aN.a("", false);
    i.i();
    if (f != null) {
      f.a();
    }
    a(new bfb());
  }
  
  public void af()
  {
    if (((ListView)bB).getFirstVisiblePosition() <= 0)
    {
      ezi.c("Babel_Scroll", "Message load failed. scroll to hide spinner.", new Object[0]);
      ((ListView)bB).smoothScrollToPositionFromTop(1, 0);
    }
    ezi.e("Babel", "Message load failed", new Object[0]);
    if (aal.a(context, "babel_enable_message_load_failed_toast", true))
    {
      long l = SystemClock.elapsedRealtime();
      if (l - bH > TimeUnit.MINUTES.toMillis(1L))
      {
        bH = l;
        Toast.makeText(getActivity(), StressMode.if, 0).show();
      }
    }
  }
  
  public cyx ag()
  {
    Object localObject2 = null;
    if (i.d() == 1)
    {
      beu localbeu = i.g();
      Iterator localIterator = localbeu.b().iterator();
      Object localObject1 = null;
      while (localIterator.hasNext())
      {
        cyx localcyx = (cyx)localIterator.next();
        if (!localbeu.c(b))
        {
          localObject2 = localcyx;
          if (b.a != null) {
            return localObject2;
          }
          if (localObject1 == null) {
            localObject1 = localcyx;
          }
        }
      }
      localObject2 = localObject1;
    }
    return (cyx)localObject2;
  }
  
  void ah()
  {
    String str = null;
    if ((ao()) || (i.a() == null) || (!aal.g(d()))) {
      localObject1 = null;
    }
    Object localObject2;
    while ((bb == localObject1) || ((bb != null) && (bb.equals(localObject1))))
    {
      return;
      localObject2 = ag();
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (((cyx)localObject2).a()) {}
      }
      else
      {
        localObject1 = null;
      }
    }
    bb = ((cyx)localObject1);
    if (bb != null) {
      str = ((cyx)localObject1).b();
    }
    for (Object localObject1 = e;; localObject1 = null)
    {
      if (bc != null) {
        bc.a(str);
      }
      localObject2 = ilh.c(context, bkx.class).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ((Iterator)localObject2).next();
        at.g();
      }
      bd.a((String)localObject1, str);
      return;
    }
  }
  
  public bfb ai()
  {
    return new bfb(aN.e());
  }
  
  void aj()
  {
    Object localObject1 = i.a();
    if ((localObject1 == null) || (a == null)) {}
    ArrayList localArrayList;
    do
    {
      do
      {
        return;
      } while (aW <= 0L);
      Object localObject2 = bC.a(a);
      localObject1 = new ArrayList();
      localArrayList = new ArrayList();
      localObject2 = ((bix)localObject2).a(0L, Long.MAX_VALUE).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        egy localegy = (egy)((Iterator)localObject2).next();
        czb localczb = localegy.b();
        beu localbeu = i.g();
        cyx localcyx = localbeu.b(localczb);
        if ((localcyx != null) && (!localbeu.c(localczb))) {
          if (localegy.c() >= aW) {
            localArrayList.add(localcyx);
          } else {
            ((List)localObject1).add(localcyx);
          }
        }
      }
      if (!((List)localObject1).isEmpty()) {
        aQ.a((List)localObject1, false);
      }
    } while (localArrayList.isEmpty());
    aQ.b(localArrayList, true);
  }
  
  void ak()
  {
    aO.a();
    if (cn != null)
    {
      bps localbps = cn;
      cn = null;
      hbw.a(new bol(this, localbps));
    }
  }
  
  public void al()
  {
    int j;
    bfd localbfd;
    String str;
    Collection localCollection;
    if (i.d() == 2)
    {
      j = 1;
      localbfd = at;
      str = i.a().a;
      localCollection = h.f();
      if (j == 0) {
        break label74;
      }
    }
    label74:
    for (dhm localdhm = dhm.d;; localdhm = dhm.c)
    {
      startActivity(aal.a(localbfd, str, localCollection, localdhm, aH()));
      return;
      j = 0;
      break;
    }
  }
  
  public void am()
  {
    if (ce == 1) {}
    for (bkw localbkw = bkw.c;; localbkw = bkw.d)
    {
      a(localbkw, 60, 2724);
      return;
    }
  }
  
  public String an()
  {
    return i.c();
  }
  
  public boolean ao()
  {
    return getId() == aen.dw;
  }
  
  public void ap()
  {
    if (aP != null)
    {
      aal.b(djd.a);
      ((ViewGroup)aP.getParent()).removeView(aP);
      aP = null;
    }
  }
  
  void aq()
  {
    String str = i.f();
    if (str == null) {}
    while (bm == null) {
      return;
    }
    bm.a(str);
  }
  
  public int ar()
  {
    return i.d();
  }
  
  public Handler as()
  {
    return aS;
  }
  
  public void b(int paramInt)
  {
    if (getActivity() == null) {
      return;
    }
    Object localObject = ((bhx)bA).a();
    ((Cursor)localObject).moveToPosition(paramInt);
    String str;
    long l;
    if (2 == ((Cursor)localObject).getInt(33))
    {
      paramInt = 1;
      str = ((Cursor)localObject).getString(2);
      l = ((Cursor)localObject).getLong(0);
      if (paramInt == 0) {
        break label134;
      }
      localObject = ((Cursor)localObject).getString(24);
      new AlertDialog.Builder(getActivity()).setTitle(StressMode.iT).setItems(aal.cI, new bou(this, (String)localObject, l)).create().show();
    }
    for (;;)
    {
      ((bhx)bA).notifyDataSetChanged();
      return;
      paramInt = 0;
      break;
      label134:
      RealTimeChatService.a(at, new Long[] { Long.valueOf(l) }, str);
      av.a(at.g()).a(2938).a(Integer.valueOf(((bhx)bA).a().getInt(7))).d();
    }
  }
  
  public void b(long paramLong)
  {
    paramLong /= 1000L;
    paramLong = System.currentTimeMillis() - paramLong;
    if (paramLong < 0L)
    {
      cu.setVisibility(8);
      return;
    }
    cu.setVisibility(0);
    long l = SystemClock.elapsedRealtime();
    cu.setBase(l - paramLong);
    cu.start();
  }
  
  public void b(bfb parambfb)
  {
    if ((parambfb != null) && (!parambfb.a()))
    {
      parambfb = a;
      if (bL) {
        break label42;
      }
    }
    label42:
    for (boolean bool = true;; bool = false)
    {
      aN.a(parambfb, bool);
      aN.a();
      return;
    }
  }
  
  public void b(String paramString) {}
  
  public boolean b()
  {
    return aJ;
  }
  
  public boolean b(czb paramczb)
  {
    return at.b().a(paramczb);
  }
  
  boolean b(List<bkq> paramList)
  {
    bjb localbjb = i.a();
    if (localbjb == null)
    {
      h.a(new bon(this, paramList));
      return true;
    }
    return a(paramList, localbjb);
  }
  
  public void c(int paramInt)
  {
    ((crv)binder.a(crv.class)).a(context, aal.jO, paramInt);
  }
  
  public void c(long paramLong)
  {
    be.b(paramLong);
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("conversation_error")) {
      aF();
    }
  }
  
  public boolean c()
  {
    return aE;
  }
  
  public boolean c(czb paramczb)
  {
    return aQ.a(paramczb);
  }
  
  public int d()
  {
    return i.a().b;
  }
  
  public String d(czb paramczb)
  {
    return i.g().d(paramczb);
  }
  
  public void d(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      aN.a(String.valueOf(paramString).length() + 2 + "@" + paramString + " ");
    }
  }
  
  public String e(czb paramczb)
  {
    paramczb = i.g().b(paramczb);
    if (paramczb != null)
    {
      if (i.d() != 2) {}
      for (boolean bool = true;; bool = false) {
        return aal.a(paramczb, bool);
      }
    }
    return null;
  }
  
  public void e(String paramString)
  {
    RealTimeChatService.a(at, i.a().a, paramString);
  }
  
  public boolean e()
  {
    bjb localbjb = i.a();
    return (localbjb != null) && (!aal.f(b));
  }
  
  public String f(czb paramczb)
  {
    return i.g().e(paramczb);
  }
  
  public boolean f()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (e())
    {
      bool1 = bool2;
      if (binder.a("allow_video_attachments", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String g(czb paramczb)
  {
    paramczb = i.g().b(paramczb);
    if (paramczb != null) {
      return aal.a(paramczb, true);
    }
    return null;
  }
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = (feu)binder.b(feu.class);
    if (paramBundle != null) {
      bc = paramBundle.a(context, at.g(), bm, getResources());
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    binder.a(bjq.class, bK);
    binder.a(bjv.class, cx);
    bx = ((bjr)binder.a(bjr.class)).a(context, lifecycle, getFragmentManager());
    au = ((cqs)binder.a(cqs.class)).a(17);
    az = ((eit)binder.a(eit.class));
    av = ((hba)binder.a(hba.class));
    paramBundle = new bnj(this);
    binder.a(bkt.class, paramBundle);
    binder.a(bmw.class, this);
    binder.a(bpp.class, this);
    int j = ((hpu)binder.a(hpu.class)).a();
    binder.a(bvc.class, new bvc(((hba)binder.a(hba.class)).a(j)));
    bC = ((biw)binder.a(biw.class));
    aj = ((hsc)binder.a(hsc.class)).a(aal.jT, bE).a(aal.jU, bF).a(aal.jV, bG);
    ak = ((hty)binder.a(hty.class));
    ak.a(this);
    binder.a(bra.class, new bnk(this));
    ((crv)binder.a(crv.class)).a(context, aal.jO, new crw(this));
    ((dck)binder.a(dck.class)).a(aal.jQ, new bnl(this));
    binder.a(bqz.class, this);
    bw = ((bvg)binder.a(bvg.class));
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    int j = paramMenuItem.getItemId();
    boolean bool1;
    Object localObject2;
    if ((j != aen.bq) && (j != aen.bB) && (j != aen.co) && (j != aen.bz) && (j != aen.fQ))
    {
      bool1 = bool2;
      if (j != 1000) {}
    }
    else
    {
      paramMenuItem = paramMenuItem.getMenuInfo();
      bool1 = bool2;
      if ((paramMenuItem instanceof AdapterView.AdapterContextMenuInfo))
      {
        paramMenuItem = (MessageListItemWrapperView)targetView;
        bool1 = bool2;
        if (paramMenuItem != null)
        {
          bool1 = bool2;
          if ((paramMenuItem.c() instanceof MessageListItemView))
          {
            localObject2 = (MessageListItemView)paramMenuItem.c();
            if (j != aen.bq) {
              break label144;
            }
            ((ClipboardManager)getActivity().getSystemService("clipboard")).setText(((MessageListItemView)localObject2).f());
          }
        }
      }
    }
    for (;;)
    {
      bool1 = true;
      return bool1;
      label144:
      if (j == aen.bB)
      {
        ((MessageListItemView)localObject2).a(getActivity());
      }
      else
      {
        Object localObject3;
        label189:
        label200:
        Object localObject1;
        if (j == aen.co)
        {
          localObject3 = ((MessageListItemView)localObject2).n();
          if (((MessageListItemView)localObject2).f() == null)
          {
            paramMenuItem = "";
            if (((MessageListItemView)localObject2).r() != 1) {
              break label388;
            }
            j = 1;
            String str = ((MessageListItemView)localObject2).t();
            if (localObject3 == null) {
              break label393;
            }
            localObject1 = a;
            label219:
            if (localObject3 != null) {
              localObject3 = b;
            }
            ((MessageListItemView)localObject2).q();
            localObject2 = new Intent("android.intent.action.SEND");
            ((Intent)localObject2).setClass(aal.oJ, ShareIntentActivity.class);
            ((Intent)localObject2).putExtra("android.intent.extra.TEXT", paramMenuItem);
            ((Intent)localObject2).putExtra("sms_convs_only", true);
            if (j != 0)
            {
              ((Intent)localObject2).putExtra("requires_mms", true);
              ((Intent)localObject2).putExtra("uri", str);
              ((Intent)localObject2).putExtra("photo_url", (String)localObject1);
              if ((localObject1 != null) && (((String)localObject1).startsWith("//")))
              {
                paramMenuItem = String.valueOf(localObject1);
                if (paramMenuItem.length() == 0) {
                  break label399;
                }
              }
            }
          }
          label388:
          label393:
          label399:
          for (paramMenuItem = "Forwarding MMS has attachment URL without valid scheme.".concat(paramMenuItem);; paramMenuItem = new String("Forwarding MMS has attachment URL without valid scheme."))
          {
            ezi.e("Babel", paramMenuItem, new Object[0]);
            startActivity((Intent)localObject2);
            break;
            paramMenuItem = ((MessageListItemView)localObject2).f().toString();
            break label189;
            j = 0;
            break label200;
            localObject1 = null;
            break label219;
          }
        }
        if (j == aen.bz)
        {
          paramMenuItem = new csn().a(((MessageListItemView)localObject2).D());
          localObject1 = ((MessageListItemView)localObject2).E();
          if (bfz.a((String)localObject1)) {
            paramMenuItem.b((String)localObject1);
          }
          for (;;)
          {
            aen.a(at.g(), SystemClock.elapsedRealtime(), 10, paramMenuItem.a(303));
            d(((MessageListItemView)localObject2).y());
            av.a(at.g()).a(2937).a(Integer.valueOf(((MessageListItemView)localObject2).C().ordinal())).d();
            break;
            paramMenuItem.c((String)localObject1);
          }
        }
        if (j == aen.fQ)
        {
          paramMenuItem = (dck)binder.a(dck.class);
          localObject1 = new Bundle();
          localObject3 = new ArrayList();
          ((ArrayList)localObject3).addAll(((MessageListItemView)localObject2).o());
          ((Bundle)localObject1).putParcelableArrayList("save_media_attachments", (ArrayList)localObject3);
          paramMenuItem.a(new dco(aal.jQ, 2666, (Bundle)localObject1), Collections.singletonList("android.permission.WRITE_EXTERNAL_STORAGE"));
        }
        else if (j == 1000)
        {
          ((MessageListItemView)localObject2).e();
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    String str = b.b("onCreate");
    super.onCreate(paramBundle);
    int j = ((hpu)binder.a(hpu.class)).a();
    at = dvd.e(j);
    av.a(j).a(3091).d();
    g = new bry(j);
    g.a(paramBundle);
    cw = new bzk(getActivity());
    cw.a(new bzm(this));
    fcu.f = false;
    MessageListItemWrapperView.c(false);
    setHasOptionsMenu(true);
    Object localObject2;
    bqi localbqi;
    bfd localbfd;
    if (paramBundle != null)
    {
      localObject1 = (axj)paramBundle.getParcelable("conversation_params");
      al = ((bkw)paramBundle.getSerializable("call_conversation_type"));
      am = paramBundle.getInt("call_start_action");
      an = ((axq)paramBundle.getSerializable("call_participants"));
      ao = ((ArrayList)paramBundle.getSerializable("call_contacts"));
      ap = paramBundle.getInt("next_call_contact");
      if (al != null) {
        ax();
      }
      ar = paramBundle.getBoolean("user_scrolled");
      as = paramBundle.getBoolean("overscroll_reported");
      paramBundle = (Bundle)localObject1;
      i.a(paramBundle);
      bL = n;
      bM = o;
      h.a(at.b());
      i.g().d(at, a);
      bt = aal.a(context, "babel_conversation_messages_limit", 500);
      aA = N();
      bS = i;
      bT = j;
      localObject2 = context;
      localbqi = h;
      localbfd = at;
      if (!d) {
        break label654;
      }
    }
    label654:
    for (Object localObject1 = a;; localObject1 = null)
    {
      bj = new bpz((Context)localObject2, localbqi, localbfd, (String)localObject1, e);
      if (h > -1L) {
        cj = h;
      }
      if ((paramBundle.a() == 1) || (!exa.d(context))) {
        getActivity().getWindow().setSoftInputMode(20);
      }
      aH = ((bkp)binder.b(bkp.class));
      localObject1 = String.valueOf(this);
      paramBundle = String.valueOf(a);
      localObject2 = String.valueOf(getLoaderManager());
      ezi.c("Babel", String.valueOf(localObject1).length() + 29 + String.valueOf(paramBundle).length() + String.valueOf(localObject2).length() + "Start loaders for " + (String)localObject1 + "(" + paramBundle + ") loader: " + (String)localObject2, new Object[0]);
      paramBundle = getLoaderManager();
      b.b("MESSAGES_LOADER");
      if (aH == null) {
        paramBundle.a(2, null, this);
      }
      b.b("CONVERSATION_LOADER");
      paramBundle.a(0, null, this);
      b.b("EVENT_SUGGESTIONS_LOADER");
      paramBundle.a(3, null, this);
      b.c(str);
      return;
      paramBundle = (axj)getArguments().getParcelable("conversation_parameters");
      break;
    }
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    if (paramInt2 != 0)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(getActivity(), paramInt2);
      if (localAnimation != null) {
        localAnimation.setAnimationListener(new bnm(this, paramBoolean));
      }
      return localAnimation;
    }
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    bQ.a(paramContextMenu, paramView, paramContextMenuInfo, getActivity().getMenuInflater(), (emf)binder.a(emf.class));
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (a)
    {
      paramBundle = String.valueOf(an());
      new StringBuilder(String.valueOf(paramBundle).length() + 42).append("onCreateLoader ").append(paramInt).append(" conversationId ").append(paramBundle);
    }
    if (paramInt == 2)
    {
      paramBundle = new dhq(getActivity(), at, aA, bid.a, "type!=? AND (expiration_timestamp>? OR expiration_timestamp IS NULL)", bid.a(), bid.b);
      cv = paramBundle;
      b.c("MESSAGES_LOADER");
    }
    for (;;)
    {
      Object localObject;
      if (a)
      {
        localObject = String.valueOf(paramBundle);
        new StringBuilder(String.valueOf(localObject).length() + 39).append("onCreateLoader: id=").append(paramInt).append(", loader=").append((String)localObject);
      }
      return paramBundle;
      if (paramInt == 0)
      {
        paramBundle = new dhq(getActivity(), at, EsProvider.a(EsProvider.h, at.g()), bey.a, cA, new String[] { an() }, null);
        b.c("CONVERSATION_LOADER");
      }
      else if (paramInt == 1)
      {
        paramBundle = aal.a((String[])aI.keySet().toArray(new String[aI.size()]));
        localObject = i.g();
        ((beu)localObject).d(at, paramBundle);
        h.e();
        paramBundle = ((beu)localObject).a(bew.b);
      }
      else if (paramInt == 3)
      {
        paramBundle = EsProvider.a(at.g(), an());
        paramBundle = new dhq(getActivity(), at, paramBundle, bpb.a, "timestamp>? AND type=?", new String[] { Long.toString(cj), Integer.toString(17) }, null);
        b.c("EVENT_SUGGESTIONS_LOADER");
      }
      else
      {
        paramBundle = null;
      }
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    if (!ao())
    {
      paramMenuInflater.inflate(aal.gX, paramMenu);
      if (!bI)
      {
        bI = true;
        int j = 0;
        while (j < 2)
        {
          paramMenu = new Class[] { blr.class, bll.class }[j];
          paramMenu = (blg)binder.b(paramMenu);
          if (paramMenu != null) {
            paramMenu.a();
          }
          j += 1;
        }
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    String str = b.b("onCreateView");
    View localView = paramLayoutInflater.inflate(aal.ff, paramViewGroup, false);
    bB = ((ListView)localView.findViewById(16908298));
    if (aH != null)
    {
      paramViewGroup = (FrameLayout)localView.findViewById(aen.em);
      ((ListView)bB).setVisibility(8);
      paramViewGroup.setVisibility(0);
      paramViewGroup = getFragmentManager();
      bV = paramViewGroup.a(aen.em);
      if (bV == null)
      {
        bV = aH.a();
        paramViewGroup.a().a(aen.em, bV, "messageListFragment").b();
      }
    }
    if (((bjf)binder.a(bjf.class)).a(at.g(), an())) {
      cs = true;
    }
    bY = ((ViewGroup)localView.findViewById(aen.fG));
    bZ = new bnz(this);
    paramBundle = getChildFragmentManager().a(bks.class.getName());
    paramViewGroup = paramBundle;
    if (paramBundle == null)
    {
      paramViewGroup = new bmp();
      getChildFragmentManager().a().a(aen.au, paramViewGroup, bks.class.getName()).b();
    }
    aO = ((bks)paramViewGroup);
    cb = localView.findViewById(aen.au);
    ca = ((FloatingButtonWithCounter)localView.findViewById(aen.ck));
    ca.bringToFront();
    new bpe(this, ((ViewGroup)getActivity().findViewById(16908290)).getChildAt(0));
    paramViewGroup = (ViewGroup)localView.findViewById(aen.aZ);
    aN = new bmx(getContext(), paramLayoutInflater, f);
    paramViewGroup.addView(aN, new ViewGroup.LayoutParams(-1, -2));
    bQ = new bnf(getContext(), (ListView)bB, at.g());
    paramBundle = new bnc(this);
    aN.a(paramBundle);
    if (cs)
    {
      paramViewGroup.setVisibility(8);
      ca.setVisibility(8);
      if (cb != null) {
        cb.setVisibility(8);
      }
    }
    aQ = ((ParticipantsGalleryView)localView.findViewById(aen.eL));
    aQ.f();
    aQ.a(i.d(), at);
    aQ.a(new bpj(this));
    aq();
    paramViewGroup = new bzj(localView, bD);
    paramBundle = new ccp(localView, this, bD);
    cbv localcbv = new cbv(localView, this, bD);
    ccm localccm = new ccm(localView, this, bD);
    byf localbyf = new byf(localView, this, bD);
    bxs localbxs = new bxs(localView, this, bD);
    bls localbls = new bls(localView, this, bD);
    be = new bqy(context, at, lifecycle);
    cca localcca = new cca(localView, be, bD);
    bq = new bml[] { paramViewGroup, paramBundle, localcbv, localbxs, new blu(localView, bf, bD, at.g()), localbls, localcca, localbyf, localccm, new cck(localView, bg, bD) };
    br = new ccr(localView, this);
    paramViewGroup = i.b();
    if ((paramViewGroup != null) && (l.size() > 0))
    {
      hbs.a("The saved snackbar shown size should equal the current list of snackbar.", Integer.valueOf(bq.length), Integer.valueOf(l.size()));
      paramViewGroup = l.iterator();
      int j = 0;
      while (paramViewGroup.hasNext())
      {
        paramBundle = (Boolean)paramViewGroup.next();
        bq[j].a = aal.a(paramBundle, false);
        j += 1;
      }
    }
    cd = ((ImageView)localView.findViewById(aen.gw));
    bP = new brg(this, at, cd);
    ay = new brk(context);
    cu = ((Chronometer)localView.findViewById(aen.aW));
    bp = ((FixedParticipantsView)localView.findViewById(aen.cT));
    ((ViewGroup)localView.findViewById(aen.eD)).setLayoutTransition(new LayoutTransition());
    bY.setLayoutTransition(new LayoutTransition());
    paramViewGroup = paramLayoutInflater.inflate(aal.gk, null);
    ((ListView)bB).addHeaderView(paramViewGroup);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.gm, bB, false);
    ((ListView)bB).addHeaderView(paramLayoutInflater);
    cc = paramViewGroup.findViewById(aen.dS);
    aE();
    bn = new MessageListAnimationManager(bB, cq, aS);
    bA = new bhx(this, bB, bn, i.d(), ao());
    ((bhx)bA).a(new bia(this));
    ((ListView)bB).setAdapter(bA);
    if (!aal.a(context, "babel_force_gb_copy_paste_textview", true)) {
      ((ListView)bB).setChoiceMode(0);
    }
    for (;;)
    {
      ((ListView)bB).setOnScrollListener(new bob(this));
      ((ListView)bB).setRecyclerListener(new boc(this));
      aT = ((EasterEggView)localView.findViewById(aen.bL));
      if (!gvj.a(getActivity().getContentResolver(), "babel_easter_eggs", true))
      {
        aT.setVisibility(8);
        aT = null;
      }
      aU = ((ProximityCoverView)localView.findViewById(aen.ay));
      showContent(localView);
      getActivity().y_();
      h.a(cz);
      b.c(str);
      return localView;
      registerForContextMenu(bB);
      bnf.a(context);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if ((h.d() == null) || (h.d().size() == 0))
    {
      ezi.d("Babel_Conv", "Conversation fragment finishing with no variants", new Object[0]);
      int j = ((hpu)binder.a(hpu.class)).a();
      av.a(j).a(3093).d();
    }
    g.a();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    Iterator localIterator = bk.iterator();
    while (localIterator.hasNext()) {
      ((MessageListItemView)localIterator.next()).m();
    }
    aN.d();
    h.b(cz);
    cw.a();
    aQ.a(null);
  }
  
  public void onFinished(FrameSequenceDrawable paramFrameSequenceDrawable)
  {
    cd.setVisibility(8);
    paramFrameSequenceDrawable = (FrameSequenceDrawable)cd.getDrawable();
    paramFrameSequenceDrawable.stop();
    paramFrameSequenceDrawable.destroy();
    cd.setImageDrawable(null);
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    ((bhx)bA).b(null);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (super.onOptionsItemSelected(paramMenuItem)) {
      return true;
    }
    if (ao()) {
      return false;
    }
    if (paramMenuItem.getItemId() == 16908332)
    {
      cn.a(getActivity());
      return true;
    }
    bjb localbjb = i.a();
    if (localbjb == null) {
      return false;
    }
    boolean bool2 = be.a(getActivity(), paramMenuItem, i.a().a);
    if (bool2) {
      return true;
    }
    Object localObject1;
    if (paramMenuItem.getItemId() == aen.fW)
    {
      localObject1 = cpx.a;
      paramMenuItem = aG();
      if (paramMenuItem != null)
      {
        h.a(paramMenuItem);
        return bool2;
      }
      localbjb = i.a();
      paramMenuItem = e;
      if (h != null) {
        paramMenuItem = aal.a(h, true);
      }
      ((cpv)binder.a(cpv.class)).a(context, getFragmentManager(), paramMenuItem, e, a, (cpx)localObject1);
      return bool2;
    }
    Object localObject2;
    int j;
    boolean bool1;
    Object localObject3;
    if (paramMenuItem.getItemId() == aen.gg)
    {
      if (a != null)
      {
        localObject2 = (String[])aI.keySet().toArray(new String[aI.size()]);
        j = i.d();
        if (j == 2) {
          localObject1 = null;
        }
        for (paramMenuItem = null;; paramMenuItem = h.b())
        {
          bfd localbfd = at;
          String str1 = a;
          String str2 = i.f();
          int k = d();
          int m = bO;
          long l = aW;
          bool1 = bl;
          String str3 = bS;
          String str4 = bT;
          localObject3 = new Intent(aal.oJ, ConversationParticipantsActivity.class);
          ((Intent)localObject3).putExtra("account_id", localbfd.g());
          ((Intent)localObject3).putExtra("conversation_id", str1);
          ((Intent)localObject3).putExtra("conversation_name", str2);
          ((Intent)localObject3).putExtra("client_conversation_type", j);
          ((Intent)localObject3).putExtra("transport_type", k);
          ((Intent)localObject3).putExtra("notification_level", m);
          ((Intent)localObject3).putExtra("latest_timestamp", l);
          ((Intent)localObject3).putExtra("has_unknown_sender", bool1);
          ((Intent)localObject3).putExtra("chat_ringtone_uri", str3);
          ((Intent)localObject3).putExtra("hangout_ringtone_uri", str4);
          ((Intent)localObject3).putExtra("merged_conversation_ids", (String[])localObject2);
          ((Intent)localObject3).putExtra("preferred_chat_id", (String)localObject1);
          ((Intent)localObject3).putExtra("preferred_gaia_id", paramMenuItem);
          paramMenuItem = (Intent)getActivity().getIntent().getParcelableExtra("share_intent");
          if (paramMenuItem != null)
          {
            paramMenuItem.putExtra("conversation_id", a);
            ((Intent)localObject3).putExtra("share_intent", paramMenuItem);
          }
          aj.a(aal.jT, (Intent)localObject3);
          return bool2;
          localObject1 = h.c();
        }
      }
    }
    else
    {
      if (paramMenuItem.getItemId() == aen.ap)
      {
        paramMenuItem = az();
        hbs.b("Expected non-null", paramMenuItem);
        paramMenuItem = aal.p(paramMenuItem);
        getActivity().startActivityForResult(paramMenuItem, 102);
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.fp)
      {
        al();
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.gq)
      {
        aal.a(at, 1535);
        a(bkw.d);
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.fm)
      {
        aal.a(at, 1534);
        a(bkw.c);
        return bool2;
      }
      if ((paramMenuItem.getItemId() == aen.fu) || (paramMenuItem.getItemId() == aen.fl))
      {
        localObject2 = new ArrayList();
        localObject1 = new ArrayList();
        a(new bnn(this, (ArrayList)localObject2, (ArrayList)localObject1));
        localObject2 = (String[])((ArrayList)localObject2).toArray(new String[((ArrayList)localObject2).size()]);
        localObject3 = new long[((ArrayList)localObject1).size()];
        j = 0;
        while (j < ((ArrayList)localObject1).size())
        {
          localObject3[j] = aal.a((Long)((ArrayList)localObject1).get(j), 0L);
          j += 1;
        }
        localObject1 = at;
        if (paramMenuItem.getItemId() == aen.fl) {}
        for (bool1 = true;; bool1 = false)
        {
          RealTimeChatService.a((bfd)localObject1, (String[])localObject2, (long[])localObject3, bool1, false);
          aS.postDelayed(new bnq(this, localbjb), 250L);
          return bool2;
        }
      }
      if (paramMenuItem.getItemId() == aen.fn)
      {
        if (at != null)
        {
          displayDeleteConversationDialog(at.g());
          return bool2;
        }
        ezi.d("Babel_Conv", "ConversationFragment delete failed because of null account.", new Object[0]);
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.fq)
      {
        if (at != null)
        {
          H();
          return bool2;
        }
        ezi.d("Babel_Conv", "ConversationFragment leave failed because of null account.", new Object[0]);
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.fA)
      {
        RealTimeChatService.b(at, (String[])aI.keySet().toArray(new String[aI.size()]));
        return bool2;
      }
      if (paramMenuItem.getItemId() == aen.bw)
      {
        new blw(getActivity()).a(at).a(aC).a(ag()).a(localbjb).a().show();
        return bool2;
      }
      return false;
    }
    return bool2;
  }
  
  public void onPause()
  {
    super.onPause();
    aS.removeCallbacks(bo);
    aS.removeCallbacks(co);
    Iterator localIterator = aR.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      localIterator.remove();
      localObject = a((czb)((Map.Entry)localObject).getKey());
      if (localObject != null) {
        aQ.a((cyx)localObject, 4, true);
      }
    }
    ((bhx)bA).c();
    aE();
    localIterator = bk.iterator();
    while (localIterator.hasNext()) {
      ((MessageListItemView)localIterator.next()).l();
    }
    if (aT != null) {
      aT.a();
    }
    far.b = null;
    aU.d();
    aU.e();
    aU.b();
    localIterator = bk.iterator();
    while (localIterator.hasNext()) {
      ((MessageListItemView)localIterator.next()).A();
    }
    y();
    bY.removeOnLayoutChangeListener(bZ);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = true;
    super.onPrepareOptionsMenu(paramMenu);
    if (getActivity() == null) {
      return;
    }
    Object localObject1 = paramMenu.findItem(aen.fl);
    Object localObject2 = paramMenu.findItem(aen.fu);
    if (localObject1 != null)
    {
      if ((!ct) && (!cs))
      {
        bool1 = true;
        label60:
        ((MenuItem)localObject1).setVisible(bool1);
      }
    }
    else if (localObject2 != null) {
      if ((!ct) || (cs)) {
        break label164;
      }
    }
    int k;
    int j;
    label164:
    for (boolean bool1 = true;; bool1 = false)
    {
      ((MenuItem)localObject2).setVisible(bool1);
      if (!bl) {
        break label170;
      }
      localObject1 = bN;
      k = localObject1.length;
      j = 0;
      while (j < k)
      {
        localObject2 = paramMenu.findItem(localObject1[j]);
        if (localObject2 != null) {
          ((MenuItem)localObject2).setVisible(false);
        }
        j += 1;
      }
      break;
      bool1 = false;
      break label60;
    }
    label170:
    localObject1 = i.a();
    if (localObject1 == null)
    {
      paramMenu = String.valueOf(this);
      localObject1 = String.valueOf(getLoaderManager());
      ezi.d("Babel", String.valueOf(paramMenu).length() + 52 + String.valueOf(localObject1).length() + "variant not set when preparing options for " + paramMenu + " loader: " + (String)localObject1, new Object[0]);
      return;
    }
    if (ao())
    {
      super.onPrepareOptionsMenu(paramMenu);
      return;
    }
    localObject2 = paramMenu.findItem(aen.ap);
    Object localObject3;
    boolean bool3;
    if (az() != null)
    {
      bool1 = true;
      ((MenuItem)localObject2).setVisible(bool1);
      localObject2 = paramMenu.findItem(aen.fr);
      if (localObject2 != null) {
        ((MenuItem)localObject2).setVisible(false);
      }
      localObject2 = paramMenu.findItem(aen.fv);
      if (localObject2 != null) {
        ((MenuItem)localObject2).setVisible(false);
      }
      localObject2 = paramMenu.findItem(aen.fp);
      localObject3 = paramMenu.findItem(aen.fW);
      bool3 = aal.f(d());
      int m = i.d();
      if (localObject2 != null)
      {
        if ((at == null) || (!at.k())) {
          break label1058;
        }
        j = 1;
        label421:
        if ((!bX) || (j != 0) || (!i.e()) || (cs) || ((bool3) && ((m == 2) || (!enn.a(at.g(), d())))) || (bl)) {
          break label1063;
        }
        bool1 = true;
        label489:
        ((MenuItem)localObject2).setEnabled(bool1);
        ((MenuItem)localObject2).setVisible(bool1);
        if (m != 2) {
          break label1069;
        }
        j = StressMode.hZ;
        label519:
        ((MenuItem)localObject2).setTitle(j);
      }
      if ((!aal.a(context, "babel_enable_viral_flow_v1", true)) || (dvd.d().length <= 0) || (m == 2) || (aG() != null)) {
        break label1088;
      }
      j = 1;
      label564:
      if ((j == 0) || (!bool3)) {
        break label1099;
      }
      if (cs) {
        break label1093;
      }
      bool1 = true;
      label583:
      ((MenuItem)localObject3).setVisible(bool1);
      label593:
      be.a(paramMenu, bool3, cs);
      localObject3 = paramMenu.findItem(aen.fn);
      MenuItem localMenuItem = paramMenu.findItem(aen.fq);
      localObject2 = paramMenu.findItem(aen.fA);
      if ((m != 2) || (aal.f(d()))) {
        break label1111;
      }
      k = 1;
      label658:
      if (localObject3 != null)
      {
        if ((k != 0) || (cs)) {
          break label1116;
        }
        bool1 = true;
        label677:
        ((MenuItem)localObject3).setVisible(bool1);
      }
      if (localMenuItem != null)
      {
        if ((k == 0) || (cs)) {
          break label1122;
        }
        bool1 = true;
        label706:
        localMenuItem.setVisible(bool1);
      }
      localObject3 = h.d();
      if ((localObject3 == null) || (((Collection)localObject3).size() <= 1)) {
        break label1128;
      }
      bool1 = true;
      label744:
      if (localObject2 != null) {
        ((MenuItem)localObject2).setVisible(bool1);
      }
      localObject2 = new ezy(context, ay());
      bool3 = ((ezy)localObject2).c();
      boolean bool4 = ((ezy)localObject2).a();
      localObject2 = paramMenu.findItem(aen.gq);
      if ((cs) || ((!bool3) && (j == 0)) || (!i.e())) {
        break label1134;
      }
      bool1 = true;
      label832:
      ((MenuItem)localObject2).setEnabled(bool1);
      ((MenuItem)localObject2).setVisible(bool1);
      localObject2 = paramMenu.findItem(aen.fm);
      if (localObject2 != null)
      {
        ezi.a("Babel_Conv", 48 + "canContactViaHangouts: " + bool3 + " canPhoneCall: " + bool4, new Object[0]);
        if (((!bool3) && (!bool4)) || (!i.e()) || (cs)) {
          break label1140;
        }
        bool1 = true;
        label944:
        ((MenuItem)localObject2).setVisible(bool1);
      }
      localObject2 = paramMenu.findItem(aen.gg);
      if (localObject2 != null)
      {
        if ((localObject1 == null) && (m != 2)) {
          break label1146;
        }
        j = 1;
        label983:
        if ((j == 0) || (cs)) {
          break label1151;
        }
      }
    }
    label1058:
    label1063:
    label1069:
    label1088:
    label1093:
    label1099:
    label1111:
    label1116:
    label1122:
    label1128:
    label1134:
    label1140:
    label1146:
    label1151:
    for (bool1 = bool2;; bool1 = false)
    {
      ((MenuItem)localObject2).setVisible(bool1);
      localObject1 = paramMenu.findItem(aen.bw);
      if (localObject1 != null)
      {
        bool1 = ezc.a();
        ((MenuItem)localObject1).setVisible(bool1).setEnabled(bool1);
      }
      super.onPrepareOptionsMenu(paramMenu);
      return;
      bool1 = false;
      break;
      j = 0;
      break label421;
      bool1 = false;
      break label489;
      if (bool3)
      {
        j = StressMode.gy;
        break label519;
      }
      j = StressMode.ib;
      break label519;
      j = 0;
      break label564;
      bool1 = false;
      break label583;
      ((MenuItem)localObject3).setVisible(false);
      break label593;
      k = 0;
      break label658;
      bool1 = false;
      break label677;
      bool1 = false;
      break label706;
      bool1 = false;
      break label744;
      bool1 = false;
      break label832;
      bool1 = false;
      break label944;
      j = 0;
      break label983;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    aq();
    aS.post(bo);
    aS.postDelayed(bo, 31000L);
    if (((bhx)bA).a() == null) {
      showEmptyViewProgress(getView());
    }
    Iterator localIterator = bk.iterator();
    while (localIterator.hasNext()) {
      ((MessageListItemView)localIterator.next()).k();
    }
    aU.a(new bnr(this));
    aU.a(new bns(this));
    if (W()) {
      aU.a();
    }
    X();
    far.b = new fau(this);
    bY.addOnLayoutChangeListener(bZ);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    boolean bool = true;
    super.onSaveInstanceState(paramBundle);
    g.b(paramBundle);
    Object localObject1 = i.a();
    int j = i.d();
    if ((localObject1 != null) && (a != null))
    {
      localObject1 = new axj(a, j, b);
      d = true;
    }
    Object localObject2;
    for (e = true;; e = e)
    {
      localObject2 = bq;
      int k = localObject2.length;
      j = 0;
      while (j < k)
      {
        Object localObject3 = localObject2[j];
        l.add(Boolean.valueOf(a));
        j += 1;
      }
      localObject2 = i.b();
      localObject1 = new axj(a, j, c);
      d = d;
    }
    g = i.f();
    h = cj;
    i = bS;
    j = bT;
    if ((getActivity() != null) && (getActivity().isChangingConfigurations())) {}
    for (;;)
    {
      n = bool;
      o = bM;
      paramBundle.putParcelable("conversation_params", (Parcelable)localObject1);
      paramBundle.putSerializable("call_conversation_type", al);
      paramBundle.putInt("call_start_action", am);
      paramBundle.putSerializable("call_participants", an);
      paramBundle.putSerializable("call_contacts", ao);
      paramBundle.putInt("next_call_contact", ap);
      paramBundle.putBoolean("user_scrolled", ar);
      paramBundle.putBoolean("overscroll_reported", as);
      return;
      bool = false;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    RealTimeChatService.a(ax);
    ((bhx)bA).l_();
  }
  
  public void onStop()
  {
    super.onStop();
    RealTimeChatService.b(ax);
  }
  
  public int q()
  {
    return ch;
  }
  
  public cyx r()
  {
    return ci;
  }
  
  public void s()
  {
    ci = null;
  }
  
  public long t()
  {
    return cg;
  }
  
  public boolean u()
  {
    return (aal.g(d())) && (!bfz.a(an()));
  }
  
  public boolean v()
  {
    return bU;
  }
  
  void w()
  {
    bpg localbpg = bs;
    if ((a != bpi.b) || (c.ao()) || (c.aw == 1)) {
      return;
    }
    bml[] arrayOfbml = c.bq;
    int k = arrayOfbml.length;
    int j = 0;
    if (j < k)
    {
      bml localbml = arrayOfbml[j];
      boolean bool = localbml.a();
      localbml.a(bool);
      if ((localbml instanceof ccp))
      {
        if ((!bool) || (b)) {
          break label127;
        }
        aal.a(c.at, 2100);
      }
      for (b = true;; b = false)
      {
        label127:
        do
        {
          j += 1;
          break;
        } while ((!b) || (bool));
        aal.a(c.at, 2101);
      }
    }
    c.br.a(c.br.a());
  }
  
  public boolean x()
  {
    return isResumed();
  }
  
  void y()
  {
    View localView = getView();
    aal.d(localView);
    aal.a(new bmn(localView));
  }
  
  public boolean z()
  {
    return at.T();
  }
}

/* Location:
 * Qualified Name:     bng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */