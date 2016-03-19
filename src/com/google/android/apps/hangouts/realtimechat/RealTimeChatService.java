package com.google.android.apps.hangouts.realtimechat;

import aal;
import aen;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.os.SystemClock;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import awm;
import axn;
import axt;
import bcg;
import bcm;
import bcn;
import bfd;
import bff;
import bfq;
import bft;
import bfw;
import bfz;
import bgd;
import bgo;
import bha;
import bie;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.phone.PackageReplacedReceiver;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import crx;
import csn;
import cy;
import cyh;
import cyx;
import czb;
import djv;
import dkd;
import dnq;
import dof;
import doo;
import dos;
import doz;
import dqf;
import dqh;
import dqk;
import dql;
import dqt;
import drb;
import drd;
import dre;
import drg;
import dri;
import drj;
import drm;
import drz;
import dsj;
import dsn;
import dsq;
import dtt;
import duu;
import duv;
import duw;
import duy;
import duz;
import dva;
import dvb;
import dvd;
import dvi;
import dvm;
import dvn;
import dvp;
import dvt;
import dvu;
import dvv;
import dwc;
import dwd;
import dwe;
import dwj;
import dwk;
import dwl;
import dwm;
import dwn;
import dwo;
import dwp;
import dwq;
import dwr;
import dws;
import dwt;
import dwv;
import dww;
import dwx;
import dwy;
import dwz;
import dxa;
import dxb;
import dxc;
import dxd;
import dxe;
import dxf;
import dxg;
import dxi;
import dxk;
import dxl;
import dxm;
import dxw;
import dxx;
import dxy;
import dye;
import dyf;
import dyg;
import dyh;
import dym;
import dyv;
import dyx;
import dyy;
import dza;
import dzb;
import dzc;
import dzd;
import dzg;
import dzh;
import dzi;
import dzj;
import dzm;
import dzo;
import dzp;
import dzq;
import dzr;
import dzs;
import dzt;
import dzu;
import dzv;
import dzw;
import dzx;
import dzy;
import dzz;
import eaa;
import eab;
import eac;
import ead;
import eae;
import eaf;
import eag;
import eah;
import eai;
import eak;
import eal;
import eam;
import ean;
import eao;
import eap;
import eau;
import eav;
import eay;
import eaz;
import ebb;
import ebc;
import ebd;
import ebe;
import ebf;
import ebg;
import ebi;
import ebj;
import ebk;
import ebl;
import ebo;
import ebq;
import ebs;
import ebu;
import ebx;
import eby;
import ecc;
import eci;
import eck;
import ecm;
import ecn;
import eco;
import ecp;
import ecr;
import ecs;
import ect;
import ecu;
import ecx;
import ecz;
import edb;
import edd;
import ede;
import edf;
import edg;
import edh;
import edi;
import edj;
import edq;
import eds;
import edv;
import edw;
import eeb;
import eec;
import eer;
import eez;
import efc;
import eff;
import efk;
import efn;
import efo;
import efp;
import efr;
import efz;
import egc;
import egd;
import ege;
import egf;
import egk;
import egp;
import egq;
import egr;
import egs;
import egt;
import egx;
import egy;
import ehb;
import ehd;
import ehi;
import ekq;
import emc;
import emd;
import enn;
import enu;
import eot;
import ewy;
import exo;
import exr;
import eyr;
import eyu;
import ezc;
import ezi;
import ezm;
import ezv;
import geo;
import haw;
import hax;
import hba;
import hbs;
import hbw;
import hli;
import hpz;
import hq;
import hqb;
import hqc;
import hqd;
import hqe;
import ihb;
import ilh;
import imx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kju;
import kkp;
import kmm;
import knq;

public class RealTimeChatService
  extends eeb
{
  private static final SparseArray<ScheduledFuture> A;
  public static final boolean a;
  public static final ezv b;
  public static final Object c;
  public static String d;
  public static Set<String> e;
  public static final CopyOnWriteArrayList<eap> f;
  public static final CopyOnWriteArrayList<eal> g;
  static hli<eak> h;
  public static final Handler i;
  static final Object j;
  public static final SparseArray<Long> k;
  private static boolean n;
  private static final int o;
  private static volatile ean p;
  private static volatile eao q;
  private static final SparseArray<egs> r;
  private static int s;
  private static final Map<String, String> t;
  private static final Queue<dym> u;
  private static Map<String, Pair<String, kju>> v;
  private static final Object w;
  private static PowerManager.WakeLock x;
  private static boolean y;
  private static final ScheduledExecutorService z;
  private boolean B;
  private ServiceConnection C = new dzb(this);
  public volatile eer l;
  public edv m;
  
  static
  {
    imx localimx = ezi.o;
    a = false;
    b = ezv.a("RTCS");
    n = false;
    o = Process.myPid();
    p = null;
    q = null;
    c = new Object();
    r = new SparseArray();
    t = new hq();
    u = new LinkedBlockingQueue();
    v = new ConcurrentHashMap();
    f = new CopyOnWriteArrayList();
    g = new CopyOnWriteArrayList();
    w = new Object();
    i = new Handler(Looper.getMainLooper());
    j = new Object();
    z = Executors.newSingleThreadScheduledExecutor();
    A = new SparseArray();
    k = new SparseArray();
    aal.a(new dzm());
  }
  
  public RealTimeChatService()
  {
    super("RealTimeChatService");
  }
  
  public RealTimeChatService(String paramString)
  {
    super(paramString);
  }
  
  public static int a(int paramInt1, int paramInt2, dvv paramdvv)
  {
    Intent localIntent = a(paramInt1, 153);
    localIntent.putExtra("recent_call_type", paramInt2);
    localIntent.putExtra("recent_call_action_info", paramdvv);
    return b(localIntent, kmm.a);
  }
  
  @Deprecated
  public static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Intent localIntent = a(paramInt1, 19);
    localIntent.putExtra("setselfinfo_bit", paramInt2);
    localIntent.putExtra("setselfinfo_bit_value", paramBoolean);
    return b(localIntent, kmm.a);
  }
  
  public static int a(int paramInt, long paramLong, String paramString, boolean paramBoolean)
  {
    Intent localIntent = a(paramInt, 190);
    localIntent.putExtra("recent_call_timestamp", paramLong);
    localIntent.putExtra("recent_call_rate", paramString);
    localIntent.putExtra("recent_call_is_free_call", paramBoolean);
    return b(localIntent, kmm.a);
  }
  
  public static int a(int paramInt, String paramString)
  {
    Intent localIntent = a(paramInt, 175);
    localIntent.putExtra("member_gaiaid", paramString);
    return b(localIntent, kmm.a);
  }
  
  public static int a(int paramInt, String paramString, ContentValues paramContentValues)
  {
    Intent localIntent = a(paramInt, 193);
    localIntent.putExtra("gaia_id", paramString);
    localIntent.putExtra("content_values", paramContentValues);
    return b(localIntent, kmm.a);
  }
  
  public static int a(int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = a(paramInt, 92);
    localIntent.putExtra("member_gaiaid", paramString1);
    localIntent.putExtra("phone_number", paramString2);
    localIntent.putExtra("user_name", paramString3);
    localIntent.putExtra("blocked", paramBoolean1);
    localIntent.putExtra("retry_request", paramBoolean2);
    return b(localIntent, kmm.a);
  }
  
  public static int a(int paramInt, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    paramString = a(paramInt, 41, paramString);
    paramString.putExtra("accept", paramBoolean1);
    paramString.putExtra("block_inviter", paramBoolean3);
    paramString.putExtra("report_inviter", paramBoolean2);
    return b(paramString, kmm.a);
  }
  
  public static int a(int paramInt, boolean paramBoolean)
  {
    Object localObject = ecx.b(paramInt);
    if (l()) {
      return d().a((bcn)localObject).a();
    }
    if ((!paramBoolean) && (!((ecx)localObject).e()) && (!((ecx)localObject).f()))
    {
      if (a) {
        new StringBuilder(59).append("SyncBaselineSuggestedContactsOperation is idle: ").append(paramInt);
      }
      return -1;
    }
    localObject = a(paramInt, 56);
    ((Intent)localObject).putExtra("force_execution", paramBoolean);
    return b((Intent)localObject, kmm.a);
  }
  
  public static int a(bfd parambfd, int paramInt1, int paramInt2)
  {
    parambfd = a(parambfd.g(), 142);
    parambfd.putExtra("hangout_type", paramInt1);
    parambfd.putExtra("hangout_topic", null);
    parambfd.putExtra("hangout_media_type", paramInt2);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, int paramInt, boolean paramBoolean)
  {
    parambfd = a(parambfd.g(), 121);
    parambfd.putExtra("extra_rich_presence_type", paramInt);
    parambfd.putExtra("extra_rich_presence_type_enabled", paramBoolean);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, ihb paramihb, String paramString)
  {
    parambfd = a(parambfd.g(), 185);
    parambfd.putExtra("audience", paramihb);
    parambfd.putExtra("original_conversation_id", paramString);
    parambfd.putExtra("conversation_lookup", bfw.a);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString, int paramInt)
  {
    parambfd = a(parambfd.g(), 38, paramString);
    parambfd.putExtra("notification_level", paramInt);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString, long paramLong)
  {
    parambfd = a(parambfd.g(), 91, paramString);
    parambfd.putExtra("timestamp", paramLong);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString, long paramLong, boolean paramBoolean)
  {
    return a(parambfd, new String[] { paramString }, new long[] { paramLong }, paramBoolean, false);
  }
  
  public static int a(bfd parambfd, String paramString, ihb paramihb)
  {
    parambfd = a(parambfd.g(), 32, paramString);
    parambfd.putExtra("audience", paramihb);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString1, String paramString2)
  {
    parambfd = a(parambfd.g(), 36);
    parambfd.putExtra("conversation_id", paramString1);
    parambfd.putExtra("message_id", paramString2);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString1, String paramString2, int paramInt)
  {
    parambfd = a(parambfd.g(), 47, paramString1);
    parambfd.putExtra("message_id", paramString2);
    parambfd.putExtra("error", paramInt);
    return b(parambfd, kmm.a);
  }
  
  @Deprecated
  public static int a(bfd parambfd, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, int paramInt2, int paramInt3, String paramString6, String paramString7, boolean paramBoolean, geo paramgeo, int paramInt4)
  {
    Intent localIntent = a(parambfd.g(), 31, paramString1);
    localIntent.putExtra("message_id", paramString2);
    localIntent.putExtra("message_text", paramString3);
    localIntent.putExtra("uri", paramString4);
    localIntent.putExtra("rotation", paramInt1);
    localIntent.putExtra("picasa_photo_id", paramString5);
    localIntent.putExtra("width", paramInt2);
    localIntent.putExtra("height", paramInt3);
    localIntent.putExtra("content_type", paramString6);
    localIntent.putExtra("subject", paramString7);
    localIntent.putExtra("requires_mms", paramBoolean);
    if (paramgeo != null) {
      localIntent.putExtra("place", crx.a(paramgeo));
    }
    localIntent.putExtra("timestamp", SystemClock.elapsedRealtime() * 1000L);
    localIntent.putExtra("otr_state", paramInt4);
    if ((ezc.a()) && (paramString3 != null) && (paramString3.startsWith("///")) && (paramString3.endsWith("///")))
    {
      paramString2 = paramString3.substring(3, paramString3.length() - 3);
      paramString3 = paramString2.split("\\.");
    }
    for (;;)
    {
      try
      {
        if (paramString3.length <= 0) {
          continue;
        }
        paramInt1 = Integer.parseInt(paramString3[0]);
        if (paramString3.length <= 1) {
          continue;
        }
        l1 = Long.parseLong(paramString3[1]);
        new Thread(new dzy(paramInt1, parambfd, paramString1, paramString2, paramString4, paramString5, paramInt2, paramInt3, paramString6, paramString7, paramBoolean, paramgeo, l1)).start();
      }
      catch (NumberFormatException parambfd)
      {
        long l1;
        continue;
      }
      return b(localIntent, kmm.a);
      paramInt1 = 10;
      continue;
      l1 = 500L;
    }
  }
  
  public static int a(bfd parambfd, String paramString, boolean paramBoolean)
  {
    parambfd = a(parambfd.g(), 84, paramString);
    parambfd.putExtra("insert_error_message", paramBoolean);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String paramString, String[] paramArrayOfString)
  {
    parambfd = a(parambfd.g(), 144, paramString);
    parambfd.putExtra("event_ids", paramArrayOfString);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, ArrayList<dtt> paramArrayList, String paramString, boolean paramBoolean)
  {
    parambfd = a(parambfd.g(), 59);
    parambfd.putExtra("batch_gebi_tag", paramString);
    parambfd.putExtra("from_contact_lookup", paramBoolean);
    parambfd.putParcelableArrayListExtra("com.google.android.apps.hangouts.EntityLookupSpecs", paramArrayList);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, kkp paramkkp)
  {
    parambfd = a(parambfd.g(), 68);
    parambfd.putExtra("hangout_invite_receipt", kkp.a(paramkkp));
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    parambfd = a(parambfd.g(), 176);
    parambfd.putExtra("pdu", paramArrayOfByte);
    parambfd.putExtra("is_sms_read", paramBoolean);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfd parambfd, String[] paramArrayOfString, long[] paramArrayOfLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    parambfd = a(parambfd.g(), 72);
    parambfd.putExtra("conversationids", paramArrayOfString);
    parambfd.putExtra("timestamps", paramArrayOfLong);
    parambfd.putExtra("archive", paramBoolean1);
    parambfd.putExtra("perform_locally", paramBoolean2);
    return b(parambfd, kmm.a);
  }
  
  public static int a(bfz parambfz, String paramString, long paramLong)
  {
    parambfz = a(parambfz.g().g(), 111);
    parambfz.putExtra("conversation_id", paramString);
    parambfz.putExtra("extra_pending_conversation_operations", paramLong);
    return b(parambfz, kmm.a);
  }
  
  public static int a(List<egs> paramList, bfd parambfd)
  {
    Object localObject = "";
    synchronized (r)
    {
      int i2 = paramList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        int i3 = s;
        s = i3 + 1;
        localObject = String.valueOf(localObject);
        String str = String.valueOf(localObject).length() + 11 + (String)localObject + i3;
        localObject = str;
        if (i1 < i2 - 1) {
          localObject = String.valueOf(str).concat("|");
        }
        r.put(i3, paramList.get(i1));
        i1 += 1;
      }
      paramList = a(parambfd.g(), 71);
      paramList.putExtra("simulated_event_msg_num", (String)localObject);
      return b(paramList, kmm.a);
    }
  }
  
  public static Intent a(int paramInt1, int paramInt2)
  {
    Intent localIntent = i(paramInt2);
    h(paramInt2);
    localIntent.putExtra("account_id", paramInt1);
    return localIntent;
  }
  
  private static Intent a(int paramInt1, int paramInt2, String paramString)
  {
    Intent localIntent = new Intent(aal.oJ, RealTimeChatService.class);
    h(paramInt2);
    localIntent.putExtra("op", paramInt2);
    localIntent.putExtra("account_id", paramInt1);
    localIntent.putExtra("conversation_id", paramString);
    return localIntent;
  }
  
  private Object a(dvm paramdvm, Intent paramIntent, dyx paramdyx)
  {
    if ((n) && (paramdyx == null))
    {
      ezi.d("Babel_RTCS", "executeOperation called with no operation", new Object[0]);
      return null;
    }
    d = paramIntent.getStringExtra("stack_trace");
    paramdyx.p_();
    int i1 = paramIntent.getIntExtra("rid", -1);
    eau localeau = new eau(i1, paramdyx.G_(), null);
    Object localObject = paramdyx.o_();
    a(paramIntent, localeau, localObject);
    if (paramdyx.a(paramdvm, i1, l))
    {
      for (;;)
      {
        paramdvm = (dym)u.poll();
        if (paramdvm == null) {
          break;
        }
        paramIntent = dvd.e(b.b);
        if (paramIntent == null)
        {
          paramdvm = String.valueOf(ezi.b(b.b.a()));
          if (paramdvm.length() != 0) {}
          for (paramdvm = "Account is not valid. Skip parasite operation:".concat(paramdvm);; paramdvm = new String("Account is not valid. Skip parasite operation:"))
          {
            ezi.d("Babel_RTCS", paramdvm, new Object[0]);
            break;
          }
        }
        paramdvm.a(2);
        paramdvm.p_();
        paramdvm.a(paramIntent, 0, l);
      }
      ebo.l();
    }
    return localObject;
  }
  
  public static String a(Intent paramIntent, bfd parambfd)
  {
    int i1 = paramIntent.getIntExtra("op", -1);
    switch (i1)
    {
    default: 
      parambfd = g(i1);
      return parambfd;
    case 39: 
      paramIntent = paramIntent.getStringExtra("server_response_type");
      paramIntent = String.valueOf(paramIntent.substring(paramIntent.lastIndexOf('.') + 1));
      if (paramIntent.length() != 0) {
        return "ServerResponse: ".concat(paramIntent);
      }
      return new String("ServerResponse: ");
    }
    Iterator localIterator = egt.a(paramIntent, parambfd.g(), false).iterator();
    for (paramIntent = "ServerUpdate: ";; paramIntent = String.valueOf(paramIntent).length() + 2 + String.valueOf(parambfd).length() + paramIntent + parambfd + ", ")
    {
      parambfd = paramIntent;
      if (!localIterator.hasNext()) {
        break;
      }
      parambfd = (egs)localIterator.next();
      paramIntent = String.valueOf(paramIntent);
      parambfd = String.valueOf(parambfd.getClass().getSimpleName());
    }
  }
  
  public static String a(String paramString)
  {
    synchronized (t)
    {
      paramString = (String)t.get(paramString);
      return paramString;
    }
  }
  
  private List<eau> a(Context paramContext, bfd parambfd, dvm paramdvm, dqf paramdqf)
  {
    dyy localdyy = new dyy();
    LinkedList localLinkedList = new LinkedList();
    if (a)
    {
      String str = String.valueOf(paramdqf);
      new StringBuilder(String.valueOf(str).length() + 17).append("processResponse: ").append(str);
    }
    a(paramContext, parambfd, paramdqf, localdyy, localLinkedList);
    ((cyh)ilh.a(paramContext, cyh.class)).a(parambfd.g(), localdyy.f());
    paramContext = localdyy.c();
    if (!paramContext.isEmpty())
    {
      if (ezi.a("Babel_RTCS", 3))
      {
        int i1 = paramContext.size();
        parambfd = String.valueOf(paramdqf.getClass().getSimpleName());
        ezi.a("Babel_RTCS", String.valueOf(parambfd).length() + 62 + "processResponse: sending " + i1 + " requests from processing " + parambfd, new Object[0]);
      }
      paramdvm.a(paramContext, 0, l);
    }
    return localLinkedList;
  }
  
  /* Error */
  public static void a()
  {
    // Byte code:
    //   0: getstatic 540	aal:oJ	Landroid/content/Context;
    //   3: ldc_w 725
    //   6: iconst_0
    //   7: invokestatic 728	aal:a	(Landroid/content/Context;Ljava/lang/String;Z)Z
    //   10: istore_0
    //   11: getstatic 145	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:j	Ljava/lang/Object;
    //   14: astore_1
    //   15: aload_1
    //   16: monitorenter
    //   17: iload_0
    //   18: ifeq +28 -> 46
    //   21: getstatic 730	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:h	Lhli;
    //   24: ifnonnull +22 -> 46
    //   27: new 732	hli
    //   30: dup
    //   31: bipush 100
    //   33: invokespecial 733	hli:<init>	(I)V
    //   36: putstatic 730	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:h	Lhli;
    //   39: iload_0
    //   40: putstatic 735	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:y	Z
    //   43: aload_1
    //   44: monitorexit
    //   45: return
    //   46: iload_0
    //   47: ifne -8 -> 39
    //   50: getstatic 730	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:h	Lhli;
    //   53: ifnull -14 -> 39
    //   56: aconst_null
    //   57: putstatic 730	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:h	Lhli;
    //   60: goto -21 -> 39
    //   63: astore_2
    //   64: aload_1
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   10	37	0	bool	boolean
    //   14	51	1	localObject1	Object
    //   63	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   21	39	63	finally
    //   39	45	63	finally
    //   50	60	63	finally
    //   64	66	63	finally
  }
  
  public static void a(int paramInt)
  {
    a(paramInt, false, ebq.a);
    a(paramInt, false);
    j(paramInt);
    k(paramInt);
    bie.a(paramInt);
  }
  
  public static void a(int paramInt1, int paramInt2, ArrayList<String> paramArrayList, int paramInt3)
  {
    dvd.e(dvd.e(paramInt2)).a(new dyv(paramArrayList, paramInt3), paramInt1);
  }
  
  public static void a(int paramInt, long paramLong)
  {
    if (b())
    {
      localObject = dvd.e(paramInt);
      d().a(new ecp((bfd)localObject, paramLong));
      return;
    }
    Object localObject = a(paramInt, 66);
    ((Intent)localObject).putExtra("dnd_expiration", paramLong);
    c((Intent)localObject, kmm.a);
  }
  
  public static void a(int paramInt1, long paramLong, boolean paramBoolean, int paramInt2)
  {
    Intent localIntent = a(paramInt1, 140);
    localIntent.putExtra("notification_row_id", paramLong);
    localIntent.putExtra("mms_auto_retrieve", paramBoolean);
    localIntent.putExtra("error", paramInt2);
    b(localIntent, kmm.a);
  }
  
  public static void a(int paramInt, bfd parambfd, eau parameau)
  {
    i.post(new dzj(paramInt, parambfd, parameau));
  }
  
  public static void a(int paramInt, dqf paramdqf)
  {
    Intent localIntent = a(paramInt, 39);
    long l1 = -1L;
    byte[] arrayOfByte = paramdqf.f();
    int i1 = arrayOfByte.length;
    long l2 = aal.a(aal.oJ, "babel_maximum_request_writer_intent_extra_size", 0L);
    if (i1 > l2)
    {
      l1 = eez.a(aal.oJ).a(paramdqf);
      localIntent.putExtra("server_response_id", l1);
    }
    for (;;)
    {
      localIntent.putExtra("server_response_type", paramdqf.getClass().getName());
      localIntent.putExtra("rid", paramdqf.b());
      if (a)
      {
        paramdqf = String.valueOf(paramdqf);
        new StringBuilder(String.valueOf(paramdqf).length() + 104).append("handleServerResponse: ").append(paramdqf).append(" size(").append(i1).append(") stored response id: ").append(l1).append(" accountId: ").append(paramInt);
      }
      c(localIntent, kmm.a);
      return;
      localIntent.putExtra("server_response", arrayOfByte);
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a(paramInt, 101, paramString1);
    paramString1.putExtra("conversation_name", paramString2);
    c(paramString1, kmm.a);
  }
  
  public static void a(int paramInt, String paramString, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean)
  {
    Intent localIntent = a(paramInt, 116);
    localIntent.putExtra("mms_content_location", paramString);
    localIntent.putExtra("mms_transaction_id", paramArrayOfByte);
    localIntent.putExtra("notification_row_id", paramLong);
    localIntent.putExtra("mms_auto_retrieve", paramBoolean);
    b(localIntent, kmm.a);
  }
  
  public static void a(int paramInt, boolean paramBoolean, ebq paramebq)
  {
    a(paramInt, paramBoolean, paramebq, -1L);
  }
  
  public static void a(int paramInt, boolean paramBoolean, ebq arg2, long paramLong)
  {
    Object localObject1;
    if (l())
    {
      localObject1 = ebl.b(paramInt);
      if (((ebl)localObject1).l())
      {
        ((ebl)localObject1).a(paramBoolean);
        ((ebl)localObject1).m();
        ((ebl)localObject1).b(paramLong);
        ((ebl)localObject1).a(???);
        d().a((bcn)localObject1, 1000L);
      }
    }
    long l1;
    for (;;)
    {
      return;
      Object localObject3 = ebo.b(paramInt);
      if (((ebo)localObject3).m())
      {
        boolean bool = false;
        if (paramBoolean) {
          bool = ((ebo)localObject3).n();
        }
        localObject1 = new Intent("com.google.android.apps.hangouts.SYNC");
        ((Intent)localObject1).putExtra("op", 55);
        ((Intent)localObject1).putExtra("account_id", paramInt);
        if ((paramBoolean) && (!bool))
        {
          paramBoolean = true;
          ((Intent)localObject1).putExtra("no_missed_events_expected", paramBoolean);
          ((Intent)localObject1).putExtra("suppress_notifications", false);
          ((Intent)localObject1).putExtra("expected_hash", paramLong);
          int i1 = eyr.a(paramInt, 1, 109, null);
          localObject1 = PendingIntent.getBroadcast(aal.oJ, i1, (Intent)localObject1, 134217728);
          paramLong = SystemClock.elapsedRealtime();
        }
        synchronized (k)
        {
          l1 = aal.a((Long)k.get(paramInt), 0L);
          if (paramLong >= l1 + 1000L)
          {
            l1 = ((ebo)localObject3).a(???);
            paramLong = l1 - paramLong;
            ??? = (AlarmManager)aal.oJ.getSystemService("alarm");
            if (paramLong <= 5000L)
            {
              localObject3 = (ScheduledFuture)A.get(paramInt);
              if ((localObject3 != null) && (!((ScheduledFuture)localObject3).isDone()) && (!((ScheduledFuture)localObject3).isCancelled()))
              {
                l1 = ((ScheduledFuture)localObject3).getDelay(TimeUnit.MILLISECONDS);
                if ((0L >= paramLong) || (paramLong >= l1)) {
                  continue;
                }
                ((ScheduledFuture)localObject3).cancel(false);
              }
              A.put(paramInt, z.schedule(new eac((PendingIntent)localObject1, paramInt), paramLong, TimeUnit.MILLISECONDS));
              ???.cancel((PendingIntent)localObject1);
              return;
              paramBoolean = false;
            }
          }
        }
      }
    }
    ???.set(2, l1, (PendingIntent)localObject1);
    synchronized (k)
    {
      k.put(paramInt, Long.valueOf(l1));
      return;
    }
  }
  
  public static void a(int paramInt, boolean paramBoolean, String paramString)
  {
    Intent localIntent = a(paramInt, 201);
    localIntent.putExtra("phone_number", paramString);
    localIntent.putExtra("callerid_set_unset", paramBoolean);
    c(localIntent, kmm.a);
  }
  
  public static void a(long paramLong1, long paramLong2)
  {
    ((AlarmManager)aal.oJ.getSystemService("alarm")).setInexactRepeating(2, paramLong1, paramLong2, m());
  }
  
  private static void a(Context paramContext, bfd parambfd)
  {
    for (;;)
    {
      try
      {
        if ((eci.b) && (!aal.v(paramContext))) {
          c(parambfd);
        }
        paramContext = edb.a(parambfd);
        if (paramContext != null)
        {
          if (!l()) {
            continue;
          }
          d().a(paramContext);
        }
        a(parambfd.g(), false);
        paramContext = ecz.a(aal.oJ, parambfd);
        if (paramContext != null) {
          continue;
        }
        if (a)
        {
          paramContext = String.valueOf(parambfd.a());
          if (paramContext.length() == 0) {
            continue;
          }
          "syncSmsMessages is unavailable for: ".concat(paramContext);
        }
        j(parambfd.g());
        k(parambfd.g());
        e();
      }
      catch (hqd paramContext)
      {
        continue;
      }
      return;
      if ((paramContext.e()) || (paramContext.f()))
      {
        c(a(parambfd.g(), 186), kmm.a);
        continue;
        new String("syncSmsMessages is unavailable for: ");
        continue;
        if (l()) {
          d().a(paramContext);
        } else if ((paramContext.e()) || (paramContext.f())) {
          b(a(parambfd.g(), 137), kmm.a);
        }
      }
    }
  }
  
  private void a(Context paramContext, bfd parambfd, dqf paramdqf, dyy paramdyy, List<eau> paramList)
  {
    Object localObject1;
    Object localObject2;
    if (ezi.a("Babel_RTCS", 3))
    {
      localObject1 = String.valueOf(paramdqf.getClass().getSimpleName());
      localObject2 = String.valueOf(parambfd.a());
      ezi.a("Babel_RTCS", String.valueOf(localObject1).length() + 26 + String.valueOf(localObject2).length() + "processResponse " + (String)localObject1 + " for acct " + (String)localObject2, new Object[0]);
    }
    paramdqf.a(parambfd);
    Object localObject3;
    if ((paramdqf instanceof drz))
    {
      localObject2 = (drz)paramdqf;
      if (((drz)localObject2).k() == 1)
      {
        localObject1 = ((drz)localObject2).m();
        ((awm)ilh.a(paramContext, awm.class)).a(parambfd.g(), (String)localObject1);
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          dvd.a(parambfd, (String)localObject1);
        }
      }
      for (;;)
      {
        localObject1 = ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g());
        localObject3 = ilh.c(paramContext, ebb.class).iterator();
        while (((Iterator)localObject3).hasNext()) {
          ((ebb)((Iterator)localObject3).next()).a((hqe)localObject1, (drz)localObject2);
        }
        ezi.e("Babel_RTCS", "Full jid should not be empty", new Object[0]);
        continue;
        localObject1 = ((drz)localObject2).l();
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject1 = String.valueOf(ezi.b(parambfd.a()));
          if (((String)localObject1).length() != 0) {}
          for (localObject1 = "Account unregistered: ".concat((String)localObject1);; localObject1 = new String("Account unregistered: "))
          {
            ezi.c("Babel_RTCS", (String)localObject1, new Object[0]);
            break;
          }
        }
        localObject3 = String.valueOf(ezi.b(parambfd.a()));
        ezi.c("Babel_RTCS", String.valueOf(localObject1).length() + 44 + String.valueOf(localObject3).length() + "Removed account " + (String)localObject1 + " unregistered using account:" + (String)localObject3, new Object[0]);
      }
      ((hqc)localObject1).d();
    }
    if ((paramdqf instanceof dsn))
    {
      localObject1 = eck.a(parambfd);
      if (!g) {
        break label667;
      }
      ezi.d("Babel_RTCS", "Client is invalid. Force retry GcmRegistration", new Object[0]);
      dwt.a().g();
      break label666;
      break label666;
      ((eck)localObject1).a(3);
    }
    else
    {
      if ((paramdqf instanceof drm))
      {
        localObject1 = (drm)paramdqf;
        localObject2 = ecx.b(parambfd.g());
        if (a)
        {
          localObject3 = String.valueOf(parambfd.a());
          if (((String)localObject3).length() == 0) {
            break label716;
          }
          "SyncBaselineSuggestedContactsOperation successful: ".concat((String)localObject3);
        }
        label505:
        ((ecx)localObject2).a(3);
        bfq.a(parambfd, ((drm)localObject1).k(), true);
        bfq.a(parambfd, ((drm)localObject1).l(), false);
      }
      if ((paramdqf instanceof drb))
      {
        localObject2 = (drb)paramdqf;
        localObject1 = eay.b(parambfd.g());
        if ((((drb)localObject2).n()) && (((eay)localObject1).d() == 2)) {
          if (a)
          {
            localObject2 = String.valueOf(parambfd.a());
            if (((String)localObject2).length() == 0) {
              break label730;
            }
            "RefreshParticipantsOperationOperation successful: ".concat((String)localObject2);
          }
        }
      }
    }
    for (;;)
    {
      ((eay)localObject1).a(3);
      if ((paramdqf instanceof dsq))
      {
        localObject1 = (dsq)paramdqf;
        i.post(new dzu(parambfd, (dsq)localObject1));
      }
      if (!(paramdqf instanceof drj)) {
        break label744;
      }
      paramContext = (drj)paramdqf;
      i.post(new dzt(parambfd, paramContext));
      label666:
      return;
      label667:
      if (!a) {
        break;
      }
      localObject2 = String.valueOf(parambfd.a());
      if (((String)localObject2).length() != 0)
      {
        "SetActiveClientOperation successful: ".concat((String)localObject2);
        break;
      }
      new String("SetActiveClientOperation successful: ");
      break;
      label716:
      new String("SyncBaselineSuggestedContactsOperation successful: ");
      break label505;
      label730:
      new String("RefreshParticipantsOperationOperation successful: ");
    }
    label744:
    if ((paramdqf instanceof drg))
    {
      localObject1 = (drg)paramdqf;
      a(((drg)localObject1).k(), ((drg)localObject1).l());
      if ((((drg)localObject1).l() == null) || (((drg)localObject1).l().size() == 0))
      {
        localObject2 = new bfz(paramContext, parambfd.g());
        ((bfz)localObject2).a(0, ((bfz)localObject2).M(((drg)localObject1).k()), ((drg)localObject1).k());
      }
    }
    label856:
    long l1;
    if ((paramdqf instanceof dre))
    {
      localObject1 = (dre)paramdqf;
      if (TextUtils.isEmpty(((dre)localObject1).k())) {
        hbs.a("hangoutId is empty");
      }
    }
    else
    {
      if ((!(paramdqf instanceof dqk)) && (!(paramdqf instanceof dsj))) {
        paramList.add(new eau(paramdqf.b(), 1, paramdqf));
      }
      if ((paramdqf instanceof dql))
      {
        paramList = (dql)paramdqf;
        i.post(new dzz(paramList));
      }
      if ((paramdqf instanceof dri))
      {
        paramList = (dri)paramdqf;
        i.post(new dzv(paramList));
      }
      if ((paramdqf instanceof dqt))
      {
        paramList = (dqt)paramdqf;
        i.post(new dzw(paramList));
      }
      if ((paramdqf instanceof dqh))
      {
        paramList = (dqh)paramdqf;
        i.post(new dzx(paramList));
      }
      if ((paramdqf instanceof drd))
      {
        paramList = (drd)paramdqf;
        i.post(new eaa(paramList));
      }
      l1 = 0L;
      if (a) {
        l1 = SystemClock.elapsedRealtime();
      }
      paramdyy.a(parambfd);
      if (!bff.f(paramContext, parambfd.g())) {
        break label1280;
      }
    }
    label1280:
    for (paramContext = null;; paramContext = new bfz(paramContext, parambfd.g()))
    {
      bft.a(paramContext, paramdqf, paramdyy);
      paramdyy.e();
      if (a)
      {
        long l2 = SystemClock.elapsedRealtime();
        if (l2 - l1 > 1000L)
        {
          paramdyy = String.valueOf(paramdqf.getClass().getSimpleName());
          new StringBuilder(String.valueOf(paramdyy).length() + 44).append("processResponse ").append(paramdyy).append(" took ").append(l2 - l1).append("ms");
        }
      }
      if ((!(paramdqf instanceof dsj)) || (paramContext == null)) {
        break;
      }
      paramdyy = (dsj)paramdqf;
      if ((paramdyy.t().length <= 0) || (!paramdyy.u())) {
        break;
      }
      if ((paramdyy.q() == null) || (paramdyy.q().length <= 0) || (paramdyy.q()[0] == null) || (paramContext.af(paramdyy.q()[0]) == null)) {
        break label1296;
      }
      ezi.a("Babel_RTCS", "sticker photo no upload", new Object[0]);
      return;
      paramdyy.a(new dof(((dre)localObject1).k(), ((dre)localObject1).l()));
      break label856;
    }
    label1296:
    ezi.a("Babel_RTCS", "initiate full res upload", new Object[0]);
    paramdqf = paramdyy.k();
    paramdyy = paramdyy.o();
    paramContext = paramContext.f(paramdqf, paramdyy);
    if ((paramContext == null) || (j == null))
    {
      ezi.e("Babel_RTCS", "empty image url, can't upload", new Object[0]);
      return;
    }
    paramContext = new dyf(j).a(paramdyy).b(paramdqf).c(m).d(n).e("image/jpeg").a();
    dvd.e(parambfd).a(aen.a(new dye[] { paramContext }), ebi.b().a(), l);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, RealTimeChatService.class);
    paramContext.setAction(paramString1);
    paramContext.putExtra("op", 100);
    paramContext.putExtra("package", paramString2);
    c(paramContext, kmm.a);
  }
  
  private static void a(Intent paramIntent, eau parameau, Object paramObject)
  {
    i.post(new eag(paramIntent, parameau, paramObject));
    hbw.a(new eah(paramIntent, parameau, paramObject));
  }
  
  public static void a(Intent paramIntent, eau parameau, Object paramObject, boolean paramBoolean)
  {
    int i2 = paramIntent.getIntExtra("op", -1);
    int i1 = paramIntent.getIntExtra("rid", -1);
    int i3 = paramIntent.getIntExtra("account_id", -1);
    bfd localbfd = dvd.e(i3);
    if (localbfd == null) {
      ezi.d("Babel_RTCS", 68 + "[onIntentProcessed] Skipping intent for invalid account: " + i3, new Object[0]);
    }
    for (;;)
    {
      return;
      if (a)
      {
        String str = String.valueOf(g(i2));
        new StringBuilder(String.valueOf(str).length() + 71).append("[onIntentProcessed] opCode=").append(str).append(", requestId=").append(i1).append(", account=").append(i3);
      }
      if (paramBoolean)
      {
        if ((i2 == 39) && (paramObject != null))
        {
          paramIntent = ((List)paramObject).iterator();
          while (paramIntent.hasNext())
          {
            parameau = (eau)paramIntent.next();
            paramObject = g.iterator();
            while (((Iterator)paramObject).hasNext()) {
              ((eam)((Iterator)paramObject).next()).a(parameau.a(), localbfd, parameau);
            }
          }
        }
      }
      else {
        switch (i2)
        {
        default: 
          return;
        case 30: 
          paramIntent = (dwd)paramObject;
          paramObject = f.iterator();
          while (((Iterator)paramObject).hasNext()) {
            ((eap)((Iterator)paramObject).next()).a(i1, localbfd, paramIntent, parameau);
          }
        case 39: 
          if (paramObject != null)
          {
            paramIntent = ((List)paramObject).iterator();
            if (paramIntent.hasNext())
            {
              parameau = (eau)paramIntent.next();
              i1 = parameau.a();
              paramObject = f.iterator();
              while (((Iterator)paramObject).hasNext()) {
                ((eap)((Iterator)paramObject).next()).a(i1, localbfd, parameau);
              }
            }
          }
          break;
        case 185: 
          paramObject = (dwd)paramObject;
          i2 = paramIntent.getIntExtra("original_conversation_id", -1);
          paramIntent = f.iterator();
          while (paramIntent.hasNext()) {
            ((eap)paramIntent.next()).a(i1, localbfd, (dwd)paramObject, parameau, i2);
          }
        }
      }
    }
  }
  
  public static void a(Uri paramUri, long paramLong, boolean paramBoolean)
  {
    Object localObject = dvd.d;
    if (!dvi.a()) {
      return;
    }
    localObject = a(dvd.l().g(), 112);
    ((Intent)localObject).putExtra("uri", paramUri);
    ((Intent)localObject).putExtra("thread_id", -1L);
    ((Intent)localObject).putExtra("notification_row_id", paramLong);
    ((Intent)localObject).putExtra("mms_auto_retrieve", paramBoolean);
    b((Intent)localObject, kmm.a);
  }
  
  public static void a(bfd parambfd)
  {
    dvd.e(parambfd).a(new dxi(true), ebi.b().a());
  }
  
  public static void a(bfd parambfd, long paramLong)
  {
    i.post(new dzc(parambfd, paramLong));
  }
  
  private void a(bfd parambfd, dvm paramdvm, egs paramegs, long paramLong1, long paramLong2, long paramLong3, knq<Intent> paramknq)
  {
    if (ezi.a("Babel_RTCS", 3))
    {
      localObject1 = null;
      if ((paramegs instanceof efo)) {
        localObject1 = ((efo)paramegs).a();
      }
      localObject2 = String.valueOf(paramegs.getClass().getSimpleName());
      localObject3 = String.valueOf(parambfd.b());
      if (localObject1 == null) {
        break label226;
      }
      localObject1 = String.valueOf(localObject1);
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "update convId ".concat((String)localObject1);
        ezi.a("Babel_RTCS", String.valueOf(localObject2).length() + 32 + String.valueOf(localObject3).length() + String.valueOf(localObject1).length() + "processServerUpdate: " + (String)localObject2 + ", account: " + (String)localObject3 + (String)localObject1, new Object[0]);
      }
    }
    else
    {
      if (!(paramegs instanceof efn)) {
        break label248;
      }
      if (((efn)paramegs).a() != 1)
      {
        if (a)
        {
          paramdvm = String.valueOf(parambfd.a());
          if (paramdvm.length() == 0) {
            break label234;
          }
          "Clearing active client time stamp for account: ".concat(paramdvm);
        }
        label203:
        eck.a(parambfd).h();
      }
    }
    for (;;)
    {
      return;
      localObject1 = new String("update convId ");
      break;
      label226:
      localObject1 = "";
      break;
      label234:
      new String("Clearing active client time stamp for account: ");
      break label203;
      label248:
      if ((paramegs instanceof egp))
      {
        paramdvm = (egp)paramegs;
        if (paramdvm.b() == 1) {
          new bfz(this, parambfd.g()).r(paramdvm.a());
        }
      }
      else if ((paramegs instanceof egr))
      {
        paramdvm = (egr)paramegs;
        if (paramdvm.b())
        {
          paramLong1 = paramdvm.a();
          if (parambfd != null) {
            ((ekq)ilh.a(getApplicationContext(), ekq.class)).a(parambfd.g(), paramLong1);
          }
          a(parambfd, paramLong1);
        }
      }
      else
      {
        if ((paramegs instanceof egx))
        {
          paramdvm = (egx)paramegs;
          parambfd = new bfz(this, parambfd.g());
          new dva(paramdvm).b(parambfd);
          return;
        }
        if ((paramegs instanceof efp))
        {
          paramdvm = (efp)paramegs;
          new dyy();
          parambfd = new bfz(this, parambfd.g());
          new dvu(paramdvm).a(parambfd);
          return;
        }
        if (!(paramegs instanceof efz)) {
          break label496;
        }
        paramdvm = ((efz)paramegs).a();
        paramegs = String.valueOf(paramdvm);
        if (paramegs.length() != 0) {
          "ContactsNotification.selfFanoutId == ".concat(paramegs);
        }
        while (!doo.b(paramdvm))
        {
          a(parambfd.g(), true);
          return;
          new String("ContactsNotification.selfFanoutId == ");
        }
      }
    }
    label496:
    if ((paramegs instanceof egd))
    {
      paramdvm = (egd)paramegs;
      parambfd = new bfz(this, parambfd.g());
      new dwl(paramdvm).a(parambfd);
      return;
    }
    if ((paramegs instanceof egc))
    {
      paramdvm = (egc)paramegs;
      new bfz(this, parambfd.g()).a(a, b);
      return;
    }
    if ((paramegs instanceof egk))
    {
      paramdvm = (egk)paramegs;
      new dyy();
      parambfd = new bfz(this, parambfd.g());
      new edh(paramdvm).a(parambfd);
      return;
    }
    if ((paramegs instanceof egq))
    {
      paramdvm = (egq)paramegs;
      paramegs = ((hpz)ilh.a(aal.oJ, hpz.class)).b(parambfd.g());
      a(paramegs, paramdvm.a());
      paramegs.d();
      f(parambfd);
      return;
    }
    if ((paramegs instanceof ege))
    {
      a(parambfd, (ege)paramegs);
      return;
    }
    Object localObject2 = getApplicationContext();
    Object localObject1 = new dyy();
    int i1 = parambfd.g();
    ((dyy)localObject1).a(parambfd);
    ((dyy)localObject1).b();
    bft.a(new bfz(aal.oJ, i1), paramegs, (dyy)localObject1, paramLong1, paramLong2, paramLong3);
    ((dyy)localObject1).e();
    Object localObject3 = ((dyy)localObject1).c();
    if (!((List)localObject3).isEmpty())
    {
      if (ezi.a("Babel_RTCS", 3))
      {
        int i2 = ((List)localObject3).size();
        String str = String.valueOf(paramegs.getClass().getSimpleName());
        ezi.a("Babel_RTCS", String.valueOf(str).length() + 66 + "processServerUpdate: sending " + i2 + " requests from processing " + str, new Object[0]);
      }
      if (paramdvm != null) {
        paramdvm.a((Collection)localObject3, 0);
      }
    }
    localObject3 = ((dyy)localObject1).f();
    if (ezi.a("Babel_RTCS", 3))
    {
      paramdvm = String.valueOf(((dza)localObject3).toString());
      if (paramdvm.length() != 0)
      {
        paramdvm = "update should trigger notification? ".concat(paramdvm);
        label898:
        ezi.a("Babel_RTCS", paramdvm, new Object[0]);
      }
    }
    else
    {
      if (!(paramegs instanceof egf)) {
        break label1226;
      }
      localObject1 = (egf)paramegs;
      paramdvm = ((egf)localObject1).a();
      localObject1 = ((egf)localObject1).j();
    }
    for (;;)
    {
      paramLong1 = SystemClock.elapsedRealtime();
      if (localObject3 == dza.b)
      {
        aen.a(i1, paramLong1, 10, new csn().a(453).c((String)localObject1).a(paramdvm));
        paramegs = (AlarmManager)aal.oJ.getSystemService("alarm");
        paramknq = new Intent("com.google.android.apps.hangouts.DEFERRED_NOTIFICATION");
        paramknq.putExtra("op", 139);
        paramknq.putExtra("account_id", parambfd.g());
        paramknq.putExtra("message_id", (String)localObject1);
        paramknq.putExtra("conversation_id", paramdvm);
        i1 = eyr.a(parambfd.g(), 1, 110, null);
        parambfd = PendingIntent.getBroadcast(aal.oJ, i1, paramknq, 134217728);
        paramegs.set(2, SystemClock.elapsedRealtime() + aal.a(aal.oJ, "babel_latenotifdly", 3000L), parambfd);
        return;
        paramdvm = new String("update should trigger notification? ");
        break label898;
      }
      if (localObject3 == dza.e) {
        aen.a(i1, paramLong1, 10, new csn().a(403).c((String)localObject1).a(paramdvm));
      }
      ((cyh)ilh.a((Context)localObject2, cyh.class)).a(i1, (dza)localObject3, true, paramknq);
      if ((!(paramegs instanceof efr)) || (!parambfd.A()) || (((efr)paramegs).b().equals(parambfd.b()))) {
        break;
      }
      ((cyh)ilh.a((Context)localObject2, cyh.class)).b(i1);
      return;
      label1226:
      localObject1 = "";
      paramdvm = "";
    }
  }
  
  public static void a(bfd parambfd, dvn paramdvn)
  {
    if (paramdvn != null)
    {
      paramdvn = paramdvn.b();
      if ((paramdvn != null) && ((p == null) || (a == null) || (!p.a(parambfd, paramdvn)))) {
        break label45;
      }
    }
    label45:
    while (!aal.a(true, false))
    {
      return;
      paramdvn = null;
      break;
    }
    hbw.a(new dzi(parambfd));
  }
  
  public static void a(bfd parambfd, eff parameff, dvn paramdvn)
  {
    i.post(new dzg(parameff, parambfd, paramdvn));
    hbw.a(new dzh(parameff, parambfd, paramdvn));
  }
  
  public static void a(bfd parambfd, ege paramege)
  {
    i.post(new dzd(parambfd, paramege));
  }
  
  public static void a(bfd parambfd, String paramString)
  {
    c(a(parambfd.g(), 76, paramString), kmm.a);
  }
  
  public static void a(bfd parambfd, String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 >= paramInt2) {
      return;
    }
    if (a) {
      new StringBuilder(37).append("Scheduling stress message:").append(paramInt1);
    }
    AlarmManager localAlarmManager = (AlarmManager)aal.oJ.getSystemService("alarm");
    Intent localIntent = new Intent("com.google.android.apps.hangouts.MESSAGE_STRESS_TEST");
    localIntent.putExtra("op", 152);
    localIntent.putExtra("account_id", parambfd.g());
    localIntent.putExtra("conversation_id", paramString);
    localIntent.putExtra("stress_current_message_id", paramInt1);
    localIntent.putExtra("stress_max_message_id", paramInt2);
    parambfd = PendingIntent.getBroadcast(aal.oJ, eyr.a(112), localIntent, 134217728);
    paramInt1 = aal.a(aal.oJ, "babel_stress_message_delay", 10);
    paramInt1 = new Random().nextInt(paramInt1 * 1000);
    localAlarmManager.set(2, SystemClock.elapsedRealtime() + paramInt1, parambfd);
  }
  
  public static void a(bfd parambfd, String paramString1, czb paramczb, String paramString2, long paramLong, boolean paramBoolean)
  {
    i.post(new dzq(parambfd, paramString1, paramczb, paramString2, paramLong, paramBoolean));
  }
  
  public static void a(bfd parambfd, String paramString, emd paramemd)
  {
    parambfd = a(parambfd.g(), 191);
    parambfd.putExtra("conversation_id", paramString);
    parambfd.putExtra("type", paramemd.ordinal());
    b(parambfd, kmm.a);
  }
  
  public static void a(bfd parambfd, String paramString1, String paramString2, boolean paramBoolean)
  {
    parambfd = a(parambfd.g(), 86);
    parambfd.putExtra("phone_number", paramString1);
    parambfd.putExtra("verification_code", paramString2);
    parambfd.putExtra("is_discoverable", paramBoolean);
    c(parambfd, kmm.a);
  }
  
  public static void a(bfd parambfd, String paramString, kju paramkju)
  {
    String str = d;
    Intent localIntent = a(parambfd.g(), 78);
    localIntent.putExtra("hangout_id", str);
    parambfd = String.valueOf(str);
    if (parambfd.length() != 0) {}
    for (parambfd = "Stashing logdata for session ".concat(parambfd);; parambfd = new String("Stashing logdata for session "))
    {
      ezi.a("Babel_RTCS", parambfd, new Object[0]);
      v.put(str, Pair.create(paramString, paramkju));
      b(localIntent, kmm.a);
      aal.c(2013);
      return;
    }
  }
  
  public static void a(bfd parambfd, boolean paramBoolean)
  {
    if (l())
    {
      d().a(new eaz(parambfd, paramBoolean));
      return;
    }
    parambfd = a(parambfd.g(), 13);
    parambfd.putExtra("retry_request", paramBoolean);
    c(parambfd, kmm.a);
  }
  
  public static void a(bfd parambfd, long[] paramArrayOfLong)
  {
    parambfd = a(parambfd.g(), 80);
    parambfd.putExtra("message_row_ids", paramArrayOfLong);
    b(parambfd, kmm.a);
  }
  
  public static void a(bfd parambfd, Long[] paramArrayOfLong, String paramString)
  {
    int i2 = paramArrayOfLong.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Long localLong = paramArrayOfLong[i1];
      Intent localIntent = a(parambfd.g(), 44, paramString);
      localIntent.putExtra("message_row_id", aal.a(localLong, 0L));
      localIntent.putExtra("timestamp", SystemClock.elapsedRealtime() * 1000L);
      b(localIntent, kmm.a);
      i1 += 1;
    }
    h(parambfd, paramString);
  }
  
  public static void a(bfd parambfd, String[] paramArrayOfString)
  {
    parambfd = a(parambfd.g(), 187);
    parambfd.putExtra("recent_call_row_ids", paramArrayOfString);
    b(parambfd, kmm.a);
  }
  
  public static void a(bfz parambfz, String paramString, String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {}
    for (int i1 = 1;; i1 = 0)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      parambfz.a();
      if (i1 != 0) {}
      bgd localbgd;
      try
      {
        int i3 = paramArrayOfString.length;
        int i2 = 0;
        while (i2 < i3)
        {
          localObject = paramArrayOfString[i2];
          parambfz.a(paramString, (String)localObject, emc.e, 0);
          localStringBuilder.append("-");
          localStringBuilder.append((String)localObject);
          i2 += 1;
          continue;
          parambfz.l(paramString, -2147483648L);
        }
        localbgd = parambfz.f(paramString);
        parambfz.b();
        parambfz.c();
        bft.d(parambfz);
        if (localbgd == null) {
          return;
        }
      }
      finally
      {
        parambfz.c();
      }
      Object localObject = d;
      paramArrayOfString = (String[])localObject;
      if (localObject == null) {
        paramArrayOfString = o;
      }
      Context localContext = aal.oJ;
      localObject = new cy(localContext);
      ((cy)localObject).a(true);
      if (i1 != 0) {}
      for (i1 = StressMode.aL;; i1 = StressMode.aK)
      {
        ((cy)localObject).a(localContext.getResources().getString(i1));
        ((cy)localObject).b(paramArrayOfString);
        ((cy)localObject).a(System.currentTimeMillis());
        ((cy)localObject).a(R.drawable.bV);
        parambfz = aal.a(parambfz.g().g(), paramString, b);
        parambfz.addFlags(67108864);
        ((cy)localObject).a(PendingIntent.getActivity(localContext, 0, parambfz, 268435456));
        parambfz = (NotificationManager)localContext.getSystemService("notification");
        paramArrayOfString = String.valueOf(localStringBuilder.toString());
        parambfz.notify(String.valueOf(paramString).length() + 17 + String.valueOf(paramArrayOfString).length() + "failed_to_delete:" + paramString + paramArrayOfString, 11, ((cy)localObject).g());
        return;
      }
    }
  }
  
  private void a(dvm paramdvm, Intent paramIntent, dym paramdym, bfd parambfd)
  {
    if (paramdym.f())
    {
      if (a)
      {
        String str = String.valueOf(paramdym.getClass().getSimpleName());
        parambfd = String.valueOf(parambfd.a());
        new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(parambfd).length()).append(str).append(" is executed directly: ").append(parambfd);
      }
      u.remove(paramdym);
      paramdym.a(2);
      a(paramdvm, paramIntent, paramdym);
    }
    do
    {
      return;
      if (paramdym.e())
      {
        if (a)
        {
          paramdvm = String.valueOf(paramdym.getClass().getSimpleName());
          paramIntent = String.valueOf(parambfd.a());
          new StringBuilder(String.valueOf(paramdvm).length() + 12 + String.valueOf(paramIntent).length()).append(paramdvm).append(" is queued: ").append(paramIntent);
        }
        u.add(paramdym);
        paramdym.a(1);
        return;
      }
    } while (!a);
    paramdvm = String.valueOf(paramdym.getClass().getSimpleName());
    paramIntent = String.valueOf(parambfd.a());
    new StringBuilder(String.valueOf(paramdvm).length() + 13 + String.valueOf(paramIntent).length()).append(paramdvm).append(" is ignored: ").append(paramIntent);
  }
  
  public static void a(ean paramean)
  {
    p = paramean;
  }
  
  public static void a(eao parameao)
  {
    q = parameao;
  }
  
  public static void a(eap parameap)
  {
    if (!f.contains(parameap)) {
      f.add(parameap);
    }
  }
  
  public static void a(ebi paramebi, int paramInt)
  {
    b(paramebi, a(paramInt, 204));
  }
  
  public static void a(ebi paramebi, int paramInt, dnq paramdnq, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = a(paramInt, 90);
    localIntent.putExtra("chat_acl_key", paramdnq.ordinal());
    localIntent.putExtra("chat_acl_circle_id", paramString1);
    localIntent.putExtra("chat_acl_circle_name", paramString2);
    localIntent.putExtra("chat_acl_level", paramString3);
    b(paramebi, localIntent);
  }
  
  public static void a(ebi paramebi, int paramInt, boolean paramBoolean)
  {
    Intent localIntent = a(paramInt, 19);
    localIntent.putExtra("setselfinfo_bit", 36);
    localIntent.putExtra("setselfinfo_bit_value", true);
    b(paramebi, localIntent);
  }
  
  public static void a(ebi paramebi, Intent paramIntent)
  {
    b(paramebi, paramIntent);
  }
  
  private static void a(ebi paramebi, Intent paramIntent, knq<Intent> paramknq)
  {
    paramIntent.putExtra("rid", paramebi.a());
    c(paramIntent, paramknq);
    if (a)
    {
      paramebi = String.valueOf(paramebi);
      paramIntent = String.valueOf(g(paramIntent.getIntExtra("op", 0)));
      new StringBuilder(String.valueOf(paramebi).length() + 30 + String.valueOf(paramIntent).length()).append("start command request ").append(paramebi).append(" opCode ").append(paramIntent);
    }
  }
  
  public static void a(egy paramegy)
  {
    i.post(new dzr(paramegy));
  }
  
  public static void a(hqe paramhqe, List<eyu<Integer, Boolean>> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramList = (eyu)localIterator.next();
      int i1 = aal.a((Integer)a, 0);
      boolean bool = aal.a((Boolean)b, false);
      switch (i1)
      {
      default: 
        if (a) {
          new StringBuilder(77).append("RichPresenceEnabledStateNotification received for unhandled type: ").append(i1);
        }
        break;
      case 2: 
      case 6: 
        for (paramList = "rich_status_device_reporting_key";; paramList = "last_seen_bool_key")
        {
          paramhqe.c(paramList, bool);
          break;
        }
      }
    }
  }
  
  public static void a(String paramString, bfd parambfd, long paramLong1, long paramLong2, knq<Intent> paramknq)
  {
    parambfd = a(parambfd.g(), 53);
    parambfd.putExtra("timestamp", paramLong1);
    parambfd.putExtra("gcm_handle_timestamps", paramLong2);
    egt.a(parambfd, paramString);
    b(parambfd, paramknq);
  }
  
  public static void a(String paramString, czb paramczb, boolean paramBoolean)
  {
    i.post(new dzo(paramString, paramczb, paramBoolean));
  }
  
  public static void a(String paramString1, String paramString2)
  {
    i.post(new eab(paramString1, paramString2));
  }
  
  public static void a(String paramString, List<czb> paramList)
  {
    i.post(new dzp(paramString, paramList));
  }
  
  private static void a(ArrayList<String> paramArrayList)
  {
    Object localObject1 = dvd.d(false);
    if (localObject1.length == 0) {
      ezi.a("Babel_RTCS", "All accounts removed", new Object[0]);
    }
    int i1;
    do
    {
      return;
      i1 = localObject1[0];
      localObject1 = dvd.e(i1);
      localObject2 = (eot)ilh.a(aal.oJ, eot.class);
    } while ((localObject1 == null) || (dvd.d((bfd)localObject1)) || (((eot)localObject2).a(i1)));
    if (ezi.a("Babel_RTCS", 3)) {
      ezi.a("Babel_RTCS", 56 + "Use account " + i1 + " to unregistered removed accounts", new Object[0]);
    }
    Object localObject2 = paramArrayList.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (String)((Iterator)localObject2).next();
      bfd localbfd = dvd.a(czb.a((String)localObject1));
      if (localbfd != null)
      {
        paramArrayList = String.valueOf(ezi.b(localbfd.a()));
        ezi.e("Babel_RTCS", String.valueOf(paramArrayList).length() + 62 + String.valueOf(localObject1).length() + "Removing a valid account by mistake:accountName=" + paramArrayList + ", accountGaia=" + (String)localObject1, new Object[0]);
        return;
      }
    }
    localObject1 = a(i1, 104);
    ((Intent)localObject1).putStringArrayListExtra("account_gaiaids", paramArrayList);
    c((Intent)localObject1, kmm.a);
  }
  
  public static void a(byte[] paramArrayOfByte)
  {
    Object localObject = dvd.d;
    if (!dvi.a()) {
      return;
    }
    localObject = a(dvd.l().g(), 115);
    ((Intent)localObject).putExtra("mms_wap_push_data", paramArrayOfByte);
    b((Intent)localObject, kmm.a);
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    Intent localIntent = a(paramInt1, 203);
    localIntent.putExtra("affinity", paramInt2);
    return b(localIntent, kmm.a);
  }
  
  public static int b(int paramInt, long paramLong)
  {
    Intent localIntent = a(paramInt, 81);
    localIntent.putExtra("scroll_timestamp", System.currentTimeMillis());
    localIntent.putExtra("scroll_to_item_timestamp", paramLong);
    return b(localIntent, kmm.a);
  }
  
  @Deprecated
  public static int b(Intent paramIntent, knq<Intent> paramknq)
  {
    ebi localebi = ebi.b();
    a(localebi, paramIntent, paramknq);
    return localebi.a();
  }
  
  public static int b(bfd parambfd, String paramString, int paramInt)
  {
    parambfd = a(parambfd.g(), 62, paramString);
    parambfd.putExtra("otr_status", paramInt);
    return b(parambfd, kmm.a);
  }
  
  @Deprecated
  public static int b(bfd parambfd, String paramString, long paramLong)
  {
    parambfd = a(parambfd.g(), 35, paramString);
    if (paramLong > 0L) {
      parambfd.putExtra("watermark", paramLong);
    }
    return b(parambfd, kmm.a);
  }
  
  public static int b(bfd parambfd, String paramString1, String paramString2)
  {
    parambfd = a(parambfd.g(), 58);
    parambfd.putExtra("query", paramString1);
    parambfd.putExtra("requester_id", paramString2);
    return b(parambfd, kmm.a);
  }
  
  public static void b(int paramInt)
  {
    c(a(paramInt, 16), kmm.a);
  }
  
  public static void b(int paramInt, String paramString)
  {
    c(a(paramInt, 103, paramString), kmm.a);
  }
  
  public static void b(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a(paramInt, 147, paramString1);
    paramString1.putExtra("message_text", paramString2);
    c(paramString1, kmm.a);
  }
  
  public static void b(long paramLong1, long paramLong2)
  {
    AlarmManager localAlarmManager = (AlarmManager)aal.oJ.getSystemService("alarm");
    Intent localIntent = new Intent("com.google.android.apps.hangouts.RENEW_ACCOUNT_REGISTRATION");
    localIntent.putExtra("op", 141);
    localAlarmManager.setInexactRepeating(2, paramLong1, paramLong2, PendingIntent.getBroadcast(aal.oJ, eyr.a(111), localIntent, 134217728));
  }
  
  static void b(Intent paramIntent)
  {
    c(paramIntent, kmm.a);
  }
  
  public static void b(bfd parambfd)
  {
    c(a(parambfd.g(), 14), kmm.a);
  }
  
  public static void b(bfd parambfd, long paramLong)
  {
    parambfd = a(parambfd.g(), 169);
    parambfd.putExtra("extra_duration", paramLong);
    b(parambfd, kmm.a);
  }
  
  public static void b(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 69);
    parambfd.putExtra("member_gaiaid", paramString);
    c(parambfd, kmm.a);
  }
  
  public static void b(bfd parambfd, String[] paramArrayOfString)
  {
    parambfd = a(parambfd.g(), 171);
    parambfd.putExtra("conversationids", paramArrayOfString);
    b(parambfd, kmm.a);
  }
  
  public static void b(eap parameap)
  {
    f.remove(parameap);
  }
  
  private static void b(ebi paramebi, Intent paramIntent)
  {
    a(paramebi, paramIntent, kmm.a);
  }
  
  public static void b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    a(localArrayList);
  }
  
  public static boolean b()
  {
    return ((edw)ilh.a(aal.oJ, edw.class)).a();
  }
  
  public static int c(int paramInt1, int paramInt2)
  {
    Intent localIntent = a(paramInt1, 54);
    localIntent.putExtra("conversation_sync_filter", paramInt2);
    return b(localIntent, kmm.a);
  }
  
  public static int c(int paramInt, String paramString)
  {
    Intent localIntent = a(paramInt, 151);
    localIntent.putExtra("phone_number", paramString);
    return b(localIntent, kmm.a);
  }
  
  public static int c(int paramInt, String paramString1, String paramString2)
  {
    hbs.a(paramString1, ezm.g(paramString1));
    hbs.a(paramString2, ezm.g(paramString2));
    Intent localIntent = a(paramInt, 196);
    localIntent.putExtra("phone_number", paramString1);
    localIntent.putExtra("from_phone_number", paramString2);
    return b(localIntent, kmm.a);
  }
  
  public static int c(bfd parambfd, String paramString, long paramLong)
  {
    parambfd = a(parambfd.g(), 82, paramString);
    parambfd.putExtra("scroll_timestamp", System.currentTimeMillis());
    parambfd.putExtra("scroll_to_item_timestamp", paramLong);
    return b(parambfd, kmm.a);
  }
  
  public static int c(bfd parambfd, String paramString1, String paramString2)
  {
    parambfd = a(parambfd.g(), 37, paramString1);
    parambfd.putExtra("conversation_name", paramString2);
    return b(parambfd, kmm.a);
  }
  
  public static dqf c(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle.containsKey("server_response_id"))
    {
      paramIntent = aal.oJ;
      long l1 = localBundle.getLong("server_response_id");
      return eez.a(paramIntent).c(l1);
    }
    if (localBundle.containsKey("server_response")) {
      return efc.b(paramIntent.getByteArrayExtra("server_response"));
    }
    return null;
  }
  
  public static void c()
  {
    Intent localIntent = new Intent(aal.oJ, RealTimeChatService.class);
    localIntent.putExtra("op", 74);
    c(localIntent, kmm.a);
  }
  
  public static void c(int paramInt)
  {
    b(a(paramInt, 188), kmm.a);
  }
  
  public static void c(int paramInt, long paramLong)
  {
    Object localObject = dvd.l();
    if (localObject == null) {
      return;
    }
    localObject = a(((bfd)localObject).g(), 133);
    ((Intent)localObject).putExtra("free_sms_storage_action_index", paramInt);
    ((Intent)localObject).putExtra("free_sms_storage_duration", paramLong);
    b((Intent)localObject, kmm.a);
  }
  
  private static void c(Intent paramIntent, knq<Intent> paramknq)
  {
    paramIntent.putExtra("rqtms", SystemClock.elapsedRealtime());
    if ((a) || (y)) {
      paramIntent.putExtra("rqtns", System.nanoTime());
    }
    Context localContext = aal.oJ;
    for (;;)
    {
      synchronized (w)
      {
        if (x == null) {
          x = ((PowerManager)localContext.getSystemService("power")).newWakeLock(1, "hangouts_rtcs");
        }
        if (a)
        {
          ??? = String.valueOf(g(paramIntent.getIntExtra("op", 0)));
          if (((String)???).length() != 0) {
            "acquiring wakelock for opcode ".concat((String)???);
          }
        }
        else
        {
          x.acquire();
          paramIntent.setClass(localContext, RealTimeChatService.class);
          paramIntent.putExtra("pid", o);
          if (a) {
            paramIntent.putExtra("stack_trace", ezi.a(new Throwable()));
          }
          if (((eec)ilh.a(localContext, eec.class)).a(localContext, paramIntent, paramknq) == null)
          {
            paramknq = String.valueOf(paramIntent);
            ezi.e("Babel_RTCS", String.valueOf(paramknq).length() + 40 + "RTCS failed to start service for intent " + paramknq, new Object[0]);
            int i1 = paramIntent.getIntExtra("account_id", -1);
            ((hba)ilh.a(localContext, hba.class)).a(i1).a(2307).d();
            x.release();
          }
          return;
        }
      }
      new String("acquiring wakelock for opcode ");
    }
  }
  
  public static void c(bfd parambfd)
  {
    eck localeck = eck.a(parambfd);
    if (localeck == null) {}
    do
    {
      return;
      if (l())
      {
        d().a(localeck);
        return;
      }
      if ((localeck.e()) || (localeck.f())) {
        break;
      }
    } while (!a);
    parambfd = String.valueOf(parambfd.a());
    if (parambfd.length() != 0)
    {
      "SetActiveClientOperation is idle: ".concat(parambfd);
      return;
    }
    new String("SetActiveClientOperation is idle: ");
    return;
    c(a(parambfd.g(), 60), kmm.a);
  }
  
  public static void c(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 85);
    parambfd.putExtra("phone_number", paramString);
    c(parambfd, kmm.a);
  }
  
  public static void c(String paramString)
  {
    String[] arrayOfString = paramString.split("\\|");
    if (arrayOfString.length != 4)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "onRequestDiscarded invalid token: ".concat(paramString);; paramString = new String("onRequestDiscarded invalid token: "))
      {
        ezi.e("Babel", paramString, new Object[0]);
        return;
      }
    }
    paramString = a(dvd.a(arrayOfString[2], null).g(), 113, arrayOfString[3]);
    paramString.putExtra("message_row_id", Long.valueOf(arrayOfString[1]));
    b(paramString, kmm.a);
  }
  
  public static int d(bfd parambfd)
  {
    return b(a(parambfd.g(), 96), kmm.a);
  }
  
  public static int d(bfd parambfd, String paramString, long paramLong)
  {
    parambfd = a(parambfd.g(), 149, paramString);
    parambfd.putExtra("timestamp", paramLong);
    return b(parambfd, kmm.a);
  }
  
  public static int d(bfd parambfd, String paramString1, String paramString2)
  {
    return b(a(parambfd.g(), 177, paramString1).putExtra("ringtone_uri", paramString2), kmm.a);
  }
  
  public static bcm d()
  {
    return (bcm)ilh.a(aal.oJ, bcm.class);
  }
  
  public static void d(int paramInt)
  {
    c(a(paramInt, 89), kmm.a);
  }
  
  public static void d(Intent paramIntent)
  {
    Object localObject = dvd.d;
    if (!dvi.a()) {
      return;
    }
    localObject = dvd.l();
    paramIntent.setClass(aal.oJ, RealTimeChatService.class);
    paramIntent.putExtra("op", 109);
    paramIntent.putExtra("account_id", ((bfd)localObject).g());
    b(paramIntent, kmm.a);
  }
  
  private void d(Intent paramIntent, knq<Intent> arg2)
  {
    int i2 = paramIntent.getIntExtra("op", -1);
    int i4 = paramIntent.getIntExtra("account_id", -1);
    Object localObject3 = dvd.e(i4);
    int i1 = paramIntent.getIntExtra("rid", -1);
    Object localObject1;
    if (a)
    {
      localObject1 = String.valueOf(g(i2));
      new StringBuilder(String.valueOf(localObject1).length() + 63).append("processIntent opCode ").append((String)localObject1).append(" account ").append(i4).append(" requestId ").append(i1);
      b.c(g(i2));
    }
    if (q != null) {
      q.a(paramIntent);
    }
    if (localObject3 == null)
    {
      ezi.e("Babel_RTCS", 48 + "Skipping intent for invalid account: " + i4, new Object[0]);
      if (i2 == 78) {
        aal.c(2379);
      }
    }
    boolean bool1;
    label1879:
    label3019:
    int i3;
    Object localObject6;
    label3730:
    label3902:
    Object localObject2;
    do
    {
      for (;;)
      {
        return;
        localObject1 = dvd.e((bfd)localObject3);
        switch (i2)
        {
        default: 
          switch (i2)
          {
          case 34: 
          case 40: 
          case 43: 
          case 45: 
          case 46: 
          case 48: 
          case 49: 
          case 50: 
          case 51: 
          case 52: 
          case 55: 
          case 57: 
          case 61: 
          case 63: 
          case 64: 
          case 66: 
          case 67: 
          case 70: 
          case 72: 
          case 74: 
          case 75: 
          case 76: 
          case 77: 
          case 87: 
          case 88: 
          case 91: 
          case 93: 
          case 94: 
          case 95: 
          case 97: 
          case 100: 
          case 102: 
          case 104: 
          case 105: 
          case 106: 
          case 107: 
          case 108: 
          case 110: 
          case 111: 
          case 114: 
          case 118: 
          case 119: 
          case 120: 
          case 121: 
          case 122: 
          case 123: 
          case 124: 
          case 125: 
          case 126: 
          case 127: 
          case 129: 
          case 130: 
          case 136: 
          case 138: 
          case 139: 
          case 141: 
          case 143: 
          case 144: 
          case 149: 
          case 153: 
          case 154: 
          case 155: 
          case 156: 
          case 158: 
          case 159: 
          case 160: 
          case 161: 
          case 162: 
          case 163: 
          case 164: 
          case 165: 
          case 166: 
          case 168: 
          case 170: 
          case 173: 
          case 174: 
          case 175: 
          case 176: 
          case 187: 
          case 188: 
          case 190: 
          case 192: 
          case 194: 
          case 195: 
          case 197: 
          case 198: 
          case 199: 
          case 200: 
          case 202: 
          default: 
            return;
          case 30: 
          case 185: 
            try
            {
              ??? = (ihb)paramIntent.getSerializableExtra("audience");
              a((dvm)localObject1, paramIntent, new dwc((bfd)localObject3, paramIntent.getStringExtra("conversation_name"), ???, (bfw)paramIntent.getSerializableExtra("conversation_lookup"), paramIntent.getBooleanExtra("conversation_hangout", false), paramIntent.getBooleanExtra("force_group", false), paramIntent.getIntExtra("transport_type", 0), paramIntent.getStringExtra("invite_token_url")));
              return;
            }
            catch (Exception ???)
            {
              bool1 = bff.f(this, i4);
              ezi.d("Babel_RTCS", 45 + "Exception in processIntent, logged off: " + bool1, ???);
              a(paramIntent, new eau(paramIntent.getIntExtra("rid", -1), 2, null), null);
            }
            if (((??? instanceof RuntimeException)) && (!bool1)) {
              throw ((RuntimeException)???);
            }
            break;
          }
        case 14: 
          l(i4);
          aal.g();
          aal.a(((bfd)localObject3).a(), 0, 0);
          if (!dwt.a().c())
          {
            ezi.d("Babel_RTCS", "GCM registration not done. Skip unregistering account", new Object[0]);
            return;
          }
          if (((hpz)ilh.a(aal.k(), hpz.class)).c(i4))
          {
            a((dvm)localObject1, paramIntent, new ede((bfd)localObject3));
            return;
          }
          break;
        case 104: 
          if (!dwt.a().c())
          {
            ezi.e("Babel_RTCS", "GCM registration not done before unregistering account", new Object[0]);
            return;
          }
          a((dvm)localObject1, paramIntent, new edf((bfd)localObject3, paramIntent.getStringArrayListExtra("account_gaiaids")));
          return;
        case 13: 
          if (!dwt.a().c())
          {
            ezi.e("Babel_RTCS", "GCM registration not done before registering account", new Object[0]);
            return;
          }
          a((dvm)localObject1, paramIntent, new eaz((bfd)localObject3, paramIntent.getBooleanExtra("retry_request", false)));
          return;
        case 19: 
          i1 = paramIntent.getIntExtra("setselfinfo_bit", -1);
          if (i1 == -1)
          {
            ezi.e("Babel_RTCS", "OP_SET_SELF_INFO_BIT -- no EXTRA_SETSELFINO_BIT specified", new Object[0]);
            return;
          }
          bool1 = paramIntent.getBooleanExtra("setselfinfo_bit_value", false);
          if (a) {
            new StringBuilder(55).append("OP_SET_SELF_INFO_BIT whichBit: ").append(i1).append(" value: ").append(bool1);
          }
          a((dvm)localObject1, paramIntent, new ect((bfd)localObject3, i1, bool1));
          return;
        case 139: 
          if (exo.c()) {
            new exr().a("rtcs_handle_deferred_notification").a((bfd)localObject3).b();
          }
          ??? = paramIntent.getStringExtra("message_id");
          paramIntent = paramIntent.getStringExtra("conversation_id");
          ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i4, ???, paramIntent);
          return;
        case 55: 
          if (exo.c()) {
            new exr().a("rtcs_handle_warm_sync").a((bfd)localObject3).b();
          }
          l1 = paramIntent.getLongExtra("expected_hash", -1L);
          l2 = new duu(aal.k()).a(((bfd)localObject3).g());
          if ((l1 != -1L) && (l1 == l2))
          {
            if (a)
            {
              paramIntent = String.valueOf(((bfd)localObject3).a());
              if (paramIntent.length() != 0) {
                "RequestWarmSyncOperation is cancelled due to matched hash values for account: ".concat(paramIntent);
              }
              for (;;)
              {
                aal.a((bfd)localObject3, 2310);
                return;
                new String("RequestWarmSyncOperation is cancelled due to matched hash values for account: ");
              }
            }
          }
          else
          {
            ??? = ebo.b(i4);
            if (a)
            {
              localObject3 = String.valueOf(((bfd)localObject3).a());
              if (((String)localObject3).length() == 0) {
                break label1879;
              }
              "RequestWarmSyncOperation is executed directly: ".concat((String)localObject3);
            }
            for (;;)
            {
              ???.o();
              bool1 = paramIntent.getBooleanExtra("suppress_notifications", false);
              ???.a(paramIntent.getBooleanExtra("no_missed_events_expected", false));
              ???.b(bool1);
              ???.a(2);
              ???.b(l1);
              a((dvm)localObject1, paramIntent, ???);
              return;
              new String("RequestWarmSyncOperation is executed directly: ");
            }
          }
          break;
        case 76: 
          paramIntent = paramIntent.getStringExtra("conversation_id");
          new bfz(this, i4).l(paramIntent);
          return;
        case 66: 
          l1 = paramIntent.getLongExtra("dnd_expiration", -1L);
          a((dvm)localObject1, paramIntent, new ecp((bfd)localObject3, l1));
          ((ekq)ilh.a(aal.k(), ekq.class)).a(i4, l1);
          a((bfd)localObject3, l1);
          ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i4, true);
          return;
        case 72: 
          bool1 = paramIntent.getBooleanExtra("archive", true);
          boolean bool2 = paramIntent.getBooleanExtra("perform_locally", false);
          ??? = paramIntent.getStringArrayExtra("conversationids");
          localObject4 = paramIntent.getLongArrayExtra("timestamps");
          if (???.length != localObject4.length) {
            throw new IllegalStateException("Must have same number of conversation ids and timestamps to archive");
          }
          localObject5 = new ArrayList();
          i1 = 0;
          while (i1 < ???.length)
          {
            ((List)localObject5).add(new duz(???[i1], localObject4[i1]));
            i1 += 1;
          }
          ??? = new duy((bfd)localObject3, (List)localObject5, bool1, bool2);
          ???.a(paramIntent.getIntExtra("rid", -1));
          a((dvm)localObject1, paramIntent, ???);
          ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i4, true);
          bft.a(aal.k(), i4);
          return;
        case 91: 
          ??? = new dwk((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), paramIntent.getLongExtra("timestamp", -1L));
          ???.a(paramIntent.getIntExtra("rid", -1));
          a((dvm)localObject1, paramIntent, ???);
          ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i4, true);
          return;
        case 144: 
          ??? = paramIntent.getStringExtra("conversation_id");
          paramIntent = paramIntent.getStringArrayExtra("event_ids");
          a(new bfz(this, i4), ???, paramIntent);
          return;
        case 143: 
          paramIntent = paramIntent.getStringExtra("conversation_id");
          ??? = new dyy();
          bft.a((bfd)localObject3, ???, paramIntent);
          ((dvm)localObject1).a(???.c(), ebi.b().a(), l);
          return;
        case 111: 
          bft.b(new bfz(this, i4), paramIntent.getStringExtra("conversation_id"), paramIntent.getLongExtra("extra_pending_conversation_operations", 0L));
          return;
        case 114: 
          a((dvm)localObject1, paramIntent, new dws((bfd)localObject3));
          return;
        case 192: 
          a((dvm)localObject1, paramIntent, new ecu((bfd)localObject3, paramIntent.getStringExtra("status_message")));
          return;
        case 120: 
          ??? = paramIntent.getStringExtra("gaia_id");
          if (!TextUtils.isEmpty(???))
          {
            a((dvm)localObject1, paramIntent, new dwo((bfd)localObject3, ???));
            return;
          }
          ezi.e("Babel_RTCS", "Dismiss suggested contacts operation scheduled without gaiaid", new Object[0]);
          return;
        case 175: 
          ??? = paramIntent.getStringExtra("member_gaiaid");
          if (!TextUtils.isEmpty(???))
          {
            a((dvm)localObject1, paramIntent, new edd((bfd)localObject3, ???));
            return;
          }
          ezi.e("Babel_RTCS", "Undismiss suggested contacts operation scheduled without gaiaid", new Object[0]);
          return;
        case 199: 
          ??? = paramIntent.getByteArrayExtra("current_version");
          localObject4 = paramIntent.getStringExtra("gaia_id");
          bool1 = paramIntent.getBooleanExtra("remove", false);
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            a((dvm)localObject1, paramIntent, new edj((bfd)localObject3, ???, (String)localObject4, bool1));
            return;
          }
          ezi.e("Babel_RTCS", "Favorite contacts operation scheduled without gaiaid", new Object[0]);
          return;
        case 200: 
          a((dvm)localObject1, paramIntent, new dxa((bfd)localObject3));
          return;
        case 176: 
          ??? = paramIntent.getByteArrayExtra("pdu");
          bool1 = paramIntent.getBooleanExtra("is_sms_read", false);
          bft.a(new SmsMessage[] { SmsMessage.createFromPdu(???) }, (bfd)localObject3, 0, Boolean.valueOf(bool1));
          if (!bool1)
          {
            ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i4, true);
            return;
          }
          break;
        case 121: 
          i1 = paramIntent.getIntExtra("extra_rich_presence_type", -1);
          if ((i1 < 0) || (!paramIntent.hasExtra("extra_rich_presence_type_enabled")))
          {
            if (a)
            {
              if (i1 < 0) {}
              for (paramIntent = " Invalid rich presence type.";; paramIntent = " Unknown if enabled.")
              {
                paramIntent = String.valueOf(paramIntent);
                if (paramIntent.length() == 0) {
                  break;
                }
                "SetRichPresenceEnabledState failed.".concat(paramIntent);
                return;
              }
              new String("SetRichPresenceEnabledState failed.");
            }
          }
          else
          {
            bool1 = paramIntent.getBooleanExtra("extra_rich_presence_type_enabled", false);
            ??? = new ArrayList(1);
            ???.add(new eyu(Integer.valueOf(i1), Boolean.valueOf(bool1)));
            a((dvm)localObject1, paramIntent, new ecs((bfd)localObject3, ???));
            return;
          }
          break;
        case 124: 
          paramIntent = (cyx)paramIntent.getParcelableExtra("participant_entity");
          new bfz(this, i4).a(paramIntent, true);
          return;
        case 136: 
          ??? = new bfz(this, i4);
          localObject1 = paramIntent.getStringExtra("conversation_id");
          paramIntent = ???.e().a("SELECT count(*) from messages WHERE conversation_id=? LIMIT 1", new String[] { localObject1 });
          try
          {
            if ((paramIntent.moveToFirst()) && (paramIntent.getInt(0) == 0)) {
              ???.z((String)localObject1);
            }
            return;
          }
          finally
          {
            if (paramIntent != null) {
              paramIntent.close();
            }
          }
        case 153: 
          ??? = (dvv)paramIntent.getParcelableExtra("recent_call_action_info");
          aal.a((bfd)localObject3, paramIntent.getIntExtra("recent_call_type", 0), ???);
          return;
        case 190: 
          aal.a((bfd)localObject3, paramIntent.getLongExtra("recent_call_timestamp", 0L), paramIntent.getStringExtra("recent_call_rate"), paramIntent.getBooleanExtra("recent_call_is_free_call", true));
          return;
        case 188: 
          aal.a((bfd)localObject3);
          return;
        case 187: 
          aal.a((bfd)localObject3, paramIntent.getStringArrayExtra("recent_call_row_ids"));
          return;
        case 160: 
          new bfz(this, i4).i(paramIntent.getStringExtra("conversation_id"));
          return;
        case 162: 
          if (a)
          {
            paramIntent = String.valueOf(ezi.b(((bfd)localObject3).a()));
            if (paramIntent.length() == 0) {
              break label3019;
            }
            "pollParasiteOperations for account ".concat(paramIntent);
          }
          for (;;)
          {
            a(getApplicationContext(), (bfd)localObject3);
            return;
            new String("pollParasiteOperations for account ");
          }
        case 163: 
          i.post(new ead(this));
          return;
        case 194: 
          a((dvm)localObject1, paramIntent, new dxe((bfd)localObject3, paramIntent.getStringExtra("phone_number")));
          return;
          ??? = c(paramIntent);
          if (??? == null)
          {
            ezi.d("Babel_RTCS", "Received null server response", new Object[0]);
            return;
          }
          f(paramIntent);
          ???.c(System.currentTimeMillis() * 1000L);
          ??? = a(getApplicationContext(), (bfd)localObject3, (dvm)localObject1, ???);
          a(paramIntent, new eau(i1, 1, null), ???);
          return;
          localObject5 = paramIntent.getStringExtra("simulated_event_msg_num");
          localObject4 = new ArrayList();
          synchronized (r)
          {
            localObject5 = ((String)localObject5).split("\\|");
            i2 = localObject5.length;
            i1 = 0;
            while (i1 < i2)
            {
              i3 = Integer.parseInt(localObject5[i1]);
              ((List)localObject4).add(r.get(i3, null));
              r.remove(i3);
              i1 += 1;
            }
            ??? = ((List)localObject4).iterator();
            if (???.hasNext()) {
              a((bfd)localObject3, (dvm)localObject1, (egs)???.next(), 0L, 0L, 0L, knq.c());
            }
          }
        }
      }
      l1 = SystemClock.elapsedRealtime();
      localObject4 = egt.a(paramIntent, i4, true);
      if (localObject4 != null)
      {
        localObject4 = ((List)localObject4).iterator();
        while (((Iterator)localObject4).hasNext())
        {
          localObject5 = (egs)((Iterator)localObject4).next();
          if ((localObject5 instanceof efr)) {
            ((efr)localObject5).a(1);
          }
          a((bfd)localObject3, localdvm1, (egs)localObject5, paramIntent.getLongExtra("timestamp", 0L), paramIntent.getLongExtra("gcm_handle_timestamps", 0L), l1 * 1000L, ???);
        }
      }
      ezi.e("Babel_RTCS", "could not parse ServerUpdate", new Object[0]);
      return;
      a(localdvm1, paramIntent, new dkd((bfd)localObject3, paramIntent.getStringExtra("phone_number")));
      return;
      a(localdvm1, paramIntent, new duw((bfd)localObject3, paramIntent.getByteArrayExtra("broadcast")));
      return;
      ??? = paramIntent.getStringExtra("hangout_id");
      a(localdvm1, paramIntent, new dww((bfd)localObject3, paramIntent.getStringExtra("broadcast_id"), ???));
      return;
      a(localdvm1, paramIntent, new dyg((bfd)localObject3, paramIntent.getByteArrayExtra("broadcast"), paramIntent.getByteArrayExtra("sync_metadata")));
      return;
      a(localdvm1, paramIntent, new ebc((bfd)localObject3, paramIntent.getStringExtra("broadcast_id"), paramIntent.getStringExtra("hangout_id")));
      return;
      a(localdvm1, paramIntent, new djv((bfd)localObject3, paramIntent.getStringExtra("phone_number"), paramIntent.getStringExtra("verification_code"), paramIntent.getBooleanExtra("is_discoverable", false)));
      return;
      a(localdvm1, paramIntent, new eav((bfd)localObject3, paramIntent.getStringExtra("conversation_id")));
      return;
      localObject4 = paramIntent.getStringExtra("conversation_id");
      localObject5 = paramIntent.getStringExtra("message_id");
      str2 = paramIntent.getStringExtra("message_text");
      localObject6 = paramIntent.getStringExtra("uri");
      String str3 = paramIntent.getStringExtra("picasa_photo_id");
      i2 = paramIntent.getIntExtra("rotation", 0);
      i3 = paramIntent.getIntExtra("width", 0);
      int i5 = paramIntent.getIntExtra("height", 0);
      String str4 = paramIntent.getStringExtra("content_type");
      String str5 = paramIntent.getStringExtra("subject");
      bool1 = paramIntent.getBooleanExtra("requires_mms", false);
      ??? = (crx)paramIntent.getParcelableExtra("place");
      int i6;
      if (??? == null)
      {
        ??? = null;
        l1 = paramIntent.getLongExtra("timestamp", 0L);
        i6 = paramIntent.getIntExtra("otr_state", 0);
        bfz localbfz = new bfz(this, i4);
        if ((!dvp.a(i4)) || (aal.f(localbfz.g((String)localObject4)))) {
          break label3902;
        }
      }
      for (??? = new eby(getApplicationContext(), (bfd)localObject3, (String)localObject4, (String)localObject5, str2, (String)localObject6, i2, str3, i3, i5, str4, str5, bool1, ???, l1, i6, localdvm1, i1, l);; ??? = new ebx(getApplicationContext(), (bfd)localObject3, (String)localObject4, (String)localObject5, str2, (String)localObject6, i2, str3, i3, i5, str4, str5, bool1, ???, l1, i6))
      {
        a(localdvm1, paramIntent, ???);
        if (!a) {
          break;
        }
        l1 = paramIntent.getLongExtra("rtcs_timestamp_begin_ms", -1L);
        l2 = SystemClock.elapsedRealtime();
        new StringBuilder(64).append("****** IntentService Delay (SendMessage): ").append(l2 - l1).append("ms");
        return;
        ??? = ???.a();
        break label3730;
      }
      ??? = paramIntent.getStringExtra("conversation_id");
      i1 = paramIntent.getIntExtra("stress_current_message_id", 0);
      i2 = paramIntent.getIntExtra("stress_max_message_id", 0);
      if (a)
      {
        localObject2 = String.valueOf("Sending stress message from RealTimeChatService:");
        new StringBuilder(String.valueOf(localObject2).length() + 11).append((String)localObject2).append(i1);
      }
      localObject2 = aal.m(i1);
      ((efk)ilh.a(getApplicationContext(), efk.class)).a((bfd)localObject3, ???, (String)localObject2, null, 0, null, 0, 0, null, null, false, null, 0);
      a((bfd)localObject3, ???, i1 + 1, i2);
      return;
      ??? = paramIntent.getStringExtra("conversation_id");
      localObject4 = paramIntent.getStringExtra("message_id");
      i1 = paramIntent.getIntExtra("error", 0);
      new StringBuilder(String.valueOf(???).length() + 24 + String.valueOf(localObject4).length()).append("OP_SET_MESSAGE_FAILED: ").append(???).append(" ").append((String)localObject4);
      a((dvm)localObject2, paramIntent, new ecr((bfd)localObject3, ???, (String)localObject4, i1));
      return;
      ??? = paramIntent.getStringExtra("conversation_id");
      bool1 = paramIntent.getBooleanExtra("insert_error_message", false);
      localObject2 = new bfz(this, i4);
      ((bfz)localObject2).a(???, emc.a, emc.d);
      bft.a((bfz)localObject2, ???, ((bfz)localObject2).T(???));
      ((bfz)localObject2).e(???, 4);
    } while (!bool1);
    long l1 = System.currentTimeMillis();
    bft.a((bfz)localObject2, new ArrayList(), ???, ???, l1 * 1000L, -1L);
    return;
    ??? = paramIntent.getStringExtra("conversation_id");
    l1 = paramIntent.getLongExtra("message_row_id", -1L);
    long l2 = paramIntent.getLongExtra("timestamp", 0L);
    a((dvm)localObject2, paramIntent, new ebx(getApplicationContext(), (bfd)localObject3, ???, l1, l2));
    return;
    ??? = paramIntent.getStringExtra("conversation_id");
    Object localObject5 = aal.b((bfd)localObject3, ???);
    i2 = 1;
    String str2 = ba;
    Object localObject4 = new ArrayList();
    i1 = ((ihb)localObject5).h() - 1;
    for (;;)
    {
      if (i1 >= 0)
      {
        localObject6 = ((ihb)localObject5).a(i1).h();
        if (!str2.equals(((cyx)localObject6).b())) {
          ((List)localObject4).add(localObject6);
        }
      }
      else
      {
        i1 = i2;
        if (((List)localObject4).size() > 1) {
          i1 = 2;
        }
        i3 = ((ihb)localObject5).j() - 1;
        i2 = i1;
        i1 = i3;
        while (i1 >= 0)
        {
          ((List)localObject4).add(aal.a(((ihb)localObject5).b(i1).b(), ((ihb)localObject5).b(i1).d()));
          i2 = 2;
          i1 -= 1;
        }
        localObject5 = new ArrayList();
        ((List)localObject5).add(new doz(new dos(???, i2, null, (List)localObject4)));
        a((dvm)localObject2, paramIntent, new eae(this, (bfd)localObject3, (List)localObject5));
        return;
        a((dvm)localObject2, paramIntent, new dwm((bfd)localObject3, paramIntent.getLongArrayExtra("message_row_ids")));
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        i1 = paramIntent.getIntExtra("type", -1);
        hbs.b(Integer.valueOf(i1), Integer.valueOf(-1));
        a((dvm)localObject2, paramIntent, new dwn((bfd)localObject3, ???, emd.values()[i1]));
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        l1 = paramIntent.getLongExtra("message_row_id", -1L);
        localObject2 = new bfz(this, i4);
        bft.a((bfz)localObject2, l1);
        bft.d((bfz)localObject2, ???);
        return;
        a((dvm)localObject2, paramIntent, new dxw((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), (ihb)paramIntent.getSerializableExtra("audience")));
        return;
        a((dvm)localObject2, paramIntent, new dxx((bfd)localObject3, paramIntent.getStringExtra("conversation_id")));
        return;
        a((dvm)localObject2, paramIntent, new edi((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), paramIntent.getLongExtra("watermark", 0L)));
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        i1 = paramIntent.getIntExtra("call_media_type", 0);
        localObject2 = new bfz(this, i4);
        ((bfz)localObject2).a(i1, ((bfz)localObject2).M(???), ???);
        return;
        l1 = paramIntent.getLongExtra("scroll_timestamp", 0L);
        l2 = paramIntent.getLongExtra("scroll_to_item_timestamp", 0L);
        new bfz(this, i4).a(l1, l2);
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        l1 = paramIntent.getLongExtra("scroll_timestamp", 0L);
        l2 = paramIntent.getLongExtra("scroll_to_item_timestamp", 0L);
        new bfz(this, i4).b(???, l1, l2);
        return;
        a((dvm)localObject2, paramIntent, new duv((bfd)localObject3, paramIntent.getByteArrayExtra("hangout_invite_receipt")));
        return;
        paramIntent.getStringExtra("conversation_id");
        a((dvm)localObject2, paramIntent, new ebd((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), paramIntent.getStringExtra("message_id")));
        return;
        localObject4 = paramIntent.getStringExtra("conversation_id");
        ??? = paramIntent.getStringExtra("conversation_name");
        localObject3 = new edg((bfd)localObject3, (String)localObject4);
        ((edg)localObject3).a(???);
        a((dvm)localObject2, paramIntent, (dyx)localObject3);
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        i1 = paramIntent.getIntExtra("notification_level", 0);
        ??? = new bfz(this, i4).ac(???).iterator();
        while (???.hasNext())
        {
          localObject4 = new edg((bfd)localObject3, (String)???.next());
          ((edg)localObject4).a(i1);
          a((dvm)localObject2, paramIntent, (dyx)localObject4);
        }
        localObject4 = paramIntent.getStringExtra("conversation_id");
        ??? = paramIntent.getStringExtra("ringtone_uri");
        localObject3 = new edg((bfd)localObject3, (String)localObject4);
        ((edg)localObject3).b(???);
        a((dvm)localObject2, paramIntent, (dyx)localObject3);
        return;
        localObject4 = paramIntent.getStringExtra("conversation_id");
        ??? = paramIntent.getStringExtra("ringtone_uri");
        localObject3 = new edg((bfd)localObject3, (String)localObject4);
        ((edg)localObject3).c(???);
        a((dvm)localObject2, paramIntent, (dyx)localObject3);
        return;
        a((dvm)localObject2, paramIntent, new ebe((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), paramIntent.getBooleanExtra("accept", false), paramIntent.getBooleanExtra("report_inviter", false), paramIntent.getBooleanExtra("block_inviter", false)));
        return;
        a((dvm)localObject2, paramIntent, new dwj((bfd)localObject3, paramIntent.getIntExtra("affinity", 0)));
        return;
        a((dvm)localObject2, paramIntent, new ebk((bfd)localObject3, paramIntent.getStringExtra("conversation_id")));
        return;
        a((dvm)localObject2, paramIntent, new ebj((bfd)localObject3, paramIntent.getIntExtra("conversation_sync_filter", 1)));
        return;
        ??? = paramIntent.getStringExtra("conversation_id");
        localObject4 = new bfz(this, i4);
        if (((bfz)localObject4).s(???) != 2) {}
        for (l1 = 0L;; l1 = ((bfz)localObject4).O(???))
        {
          a((dvm)localObject2, paramIntent, new ebg((bfd)localObject3, ???, l1));
          return;
        }
        ??? = paramIntent.getStringExtra("gaia_id");
        localObject2 = (ContentValues)paramIntent.getParcelableExtra("content_values");
        new bfz(this, i4).a(???, (ContentValues)localObject2);
        return;
        i1 = paramIntent.getIntExtra("otr_status", 1);
        a((dvm)localObject2, paramIntent, new dyh((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), i1));
        return;
        ??? = new dvt((bfd)localObject3, paramIntent.getStringExtra("member_gaiaid"), paramIntent.getStringExtra("phone_number"), paramIntent.getStringExtra("user_name"), paramIntent.getBooleanExtra("blocked", true), paramIntent.getBooleanExtra("retry_request", true));
        ???.a(paramIntent.getIntExtra("rid", -1));
        a((dvm)localObject2, paramIntent, ???);
        return;
        a((dvm)localObject2, paramIntent, new dxy((bfd)localObject3));
        return;
        a((dvm)localObject2, paramIntent, eck.a((bfd)localObject3), (bfd)localObject3);
        return;
        a((dvm)localObject2, paramIntent, edb.a((bfd)localObject3), (bfd)localObject3);
        return;
        a((dvm)localObject2, paramIntent, new ebu((bfd)localObject3, paramIntent.getStringExtra("query"), paramIntent.getStringExtra("requester_id")));
        return;
        a((dvm)localObject2, paramIntent, new dwz((bfd)localObject3, paramIntent.getParcelableArrayListExtra("com.google.android.apps.hangouts.EntityLookupSpecs"), paramIntent.getStringExtra("batch_gebi_tag"), paramIntent.getBooleanExtra("from_contact_lookup", false)));
        return;
        a((dvm)localObject2, paramIntent, eay.b(i4), (bfd)localObject3);
        return;
        localObject2 = paramIntent.getStringExtra("conversation_id");
        ??? = new bfz(this, i4);
        ???.a();
        try
        {
          bfz.b(???, (String)localObject2);
          ???.b();
          return;
        }
        finally
        {
          ???.c();
        }
        ??? = paramIntent.getStringArrayExtra("conversationids");
        new bfz(this, i4).a(???);
        return;
        a(localdvm2, paramIntent, edq.b(i4), (bfd)localObject3);
        return;
        a(localdvm2, paramIntent, ecz.a(getApplicationContext(), (bfd)localObject3), (bfd)localObject3);
        return;
        ??? = ecx.b(i4);
        bool1 = paramIntent.getBooleanExtra("force_execution", false);
        if (???.g())
        {
          if (!a) {
            break;
          }
          ??? = String.valueOf(((bfd)localObject3).a());
          if (???.length() != 0)
          {
            "SyncBaselineSuggestedContactsOperation already executing, skip: ".concat(???);
            return;
          }
          new String("SyncBaselineSuggestedContactsOperation already executing, skip: ");
          return;
        }
        if ((bool1) || (???.f()))
        {
          if (a)
          {
            localObject4 = String.valueOf("SyncBaselineSuggestedContactsOperation is executed directly: ");
            localObject3 = String.valueOf(((bfd)localObject3).a());
            if (((String)localObject3).length() == 0) {
              break label5875;
            }
            ((String)localObject4).concat((String)localObject3);
          }
          for (;;)
          {
            u.remove(???);
            ???.a(2);
            a(localdvm2, paramIntent, ???);
            return;
            label5875:
            new String((String)localObject4);
          }
        }
        if (!???.e()) {
          break;
        }
        String str1;
        if (a)
        {
          str1 = String.valueOf(((bfd)localObject3).a());
          if (str1.length() == 0) {
            break label5944;
          }
          "SyncBaselineSuggestedContactsOperation is queued: ".concat(str1);
        }
        for (;;)
        {
          u.add(???);
          ???.a(1);
          return;
          label5944:
          new String("SyncBaselineSuggestedContactsOperation is queued: ");
        }
        a(str1, paramIntent, new dxg((bfd)localObject3, paramIntent.getStringExtra("member_gaiaid")));
        return;
        a(str1, paramIntent, new dxd((bfd)localObject3, paramIntent.getStringExtra("hangout_id")));
        return;
        a(str1, paramIntent, new dxc((bfd)localObject3, paramIntent.getStringExtra("conversation_id")));
        return;
        ??? = paramIntent.getStringExtra("hangout_id");
        localObject4 = (Pair)v.remove(???);
        if (localObject4 != null)
        {
          ??? = String.valueOf(???);
          if (???.length() != 0) {}
          for (??? = "Pulled logdata for session ".concat(???);; ??? = new String("Pulled logdata for session "))
          {
            ezi.a("Babel_RTCS", ???, new Object[0]);
            aal.c(2380);
            a(str1, paramIntent, new ebf((bfd)localObject3, (String)first, (kju)second));
            aal.c(2014);
            return;
          }
        }
        ??? = String.valueOf(???);
        if (???.length() != 0) {}
        for (??? = "No logdata for session ".concat(???);; ??? = new String("No logdata for session "))
        {
          ezi.e("Babel_RTCS", ???, new Object[0]);
          aal.c(2239);
          return;
        }
        a(str1, paramIntent, new eds((bfd)localObject3, paramIntent.getStringExtra("compressed_log_file")));
        return;
        a(str1, paramIntent, new dwy((bfd)localObject3));
        return;
        i1 = paramIntent.getIntExtra("chat_acl_key", 0);
        ??? = paramIntent.getStringExtra("chat_acl_circle_id");
        localObject4 = paramIntent.getStringExtra("chat_acl_circle_name");
        localObject5 = paramIntent.getStringExtra("chat_acl_level");
        a(str1, paramIntent, new ecn((bfd)localObject3, dnq.values()[i1], ???, (String)localObject4, (String)localObject5));
        return;
        a(str1, paramIntent, new eco((bfd)localObject3));
        return;
        a(str1, paramIntent, new dxk((bfd)localObject3, paramIntent.getStringExtra("user_id")));
        return;
        ??? = paramIntent.getStringExtra("picasa_photo_id");
        a(str1, paramIntent, new dxl((bfd)localObject3, paramIntent.getStringExtra("gaia_id"), ???));
        return;
        a(str1, paramIntent, new dwv((bfd)localObject3, paramIntent.getStringExtra("picasa_photo_id")));
        return;
        a(str1, paramIntent, new ecc((bfd)localObject3, paramIntent.getStringExtra("email_address")));
        return;
        bft.a((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), paramIntent.getStringExtra("conversation_name"));
        return;
        bft.a((bfd)localObject3, paramIntent.getStringExtra("conversation_id"), 2);
        return;
        bft.a((bfd)localObject3, paramIntent);
        return;
        enn.a(i4, paramIntent.getByteArrayExtra("mms_wap_push_data"));
        return;
        a(str1, paramIntent, new ebs((bfd)localObject3, paramIntent.getStringExtra("mms_content_location"), paramIntent.getByteArrayExtra("mms_transaction_id"), paramIntent.getLongExtra("notification_row_id", -1L), paramIntent.getBooleanExtra("mms_auto_retrieve", false)));
        return;
        bft.a((bfd)localObject3, paramIntent, paramIntent.getBooleanExtra("mms_auto_retrieve", false));
        return;
        bft.b((bfd)localObject3, paramIntent);
        return;
        aal.l();
        return;
        aal.m();
        return;
        enu.a(paramIntent.getIntExtra("free_sms_storage_action_index", -1), paramIntent.getLongExtra("free_sms_storage_duration", -1L));
        return;
        bft.a((bfd)localObject3, paramIntent.getLongExtra("notification_row_id", -1L), paramIntent.getBooleanExtra("mms_auto_retrieve", false), paramIntent.getIntExtra("error", 0));
        return;
        a(str1, paramIntent, new dwe((bfd)localObject3, paramIntent.getIntExtra("hangout_type", 1), paramIntent.getStringExtra("hangout_topic"), paramIntent.getIntExtra("hangout_media_type", 1)));
        return;
        bft.b((bfd)localObject3, paramIntent.getStringExtra("mms_dump_file"));
        return;
        ??? = paramIntent.getStringExtra("message_text");
        localObject4 = paramIntent.getStringExtra("conversation_id");
        if ((localObject4 == null) || (??? == null)) {
          break;
        }
        a(str1, paramIntent, new dwp((bfd)localObject3, (String)localObject4, ???));
        return;
        a(str1, paramIntent, new dxm((bfd)localObject3));
        return;
        a(str1, paramIntent, new dwq((bfd)localObject3));
        return;
        ??? = paramIntent.getStringExtra("phone_number");
        hbs.a(TextUtils.isEmpty(???));
        a(str1, paramIntent, new dwx((bfd)localObject3, ???));
        return;
        a(str1, paramIntent, new dxf((bfd)localObject3));
        return;
        a(str1, paramIntent, new dwr((bfd)localObject3, paramIntent.getStringExtra("phone_number"), paramIntent.getStringExtra("from_phone_number")));
        return;
        l1 = paramIntent.getLongExtra("extra_duration", 0L);
        try
        {
          Thread.sleep(l1);
          return;
        }
        catch (InterruptedException paramIntent)
        {
          return;
        }
        a(str1, paramIntent, new dxb((bfd)localObject3, paramIntent.getStringArrayExtra("image_urls")));
        return;
        ??? = paramIntent.getStringExtra("phone_number");
        a(str1, paramIntent, new ecm((bfd)localObject3, paramIntent.getExtras().getBoolean("callerid_set_unset"), ???));
        return;
      }
      i1 -= 1;
    }
  }
  
  public static void d(String paramString)
  {
    Object localObject = dvd.l();
    if (localObject == null) {
      return;
    }
    localObject = a(((bfd)localObject).g(), 146);
    ((Intent)localObject).putExtra("mms_dump_file", paramString);
    b((Intent)localObject, kmm.a);
  }
  
  public static boolean d(bfd parambfd, String paramString)
  {
    if (a)
    {
      ??? = String.valueOf(e);
      String str1 = d;
      String str2 = String.valueOf(parambfd.a());
      new StringBuilder(String.valueOf(???).length() + 30 + String.valueOf(str1).length() + String.valueOf(paramString).length() + String.valueOf(str2).length()).append("isFocusedConversation ").append((String)???).append("/").append(str1).append(" ?==? ").append(paramString).append("/").append(str2);
    }
    synchronized (c)
    {
      return (TextUtils.equals(parambfd.a(), d)) && (e != null) && (e.contains(paramString));
    }
  }
  
  public static int e(int paramInt)
  {
    return b(a(paramInt, 148), kmm.a);
  }
  
  public static int e(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 143, paramString), kmm.a);
  }
  
  public static int e(bfd parambfd, String paramString1, String paramString2)
  {
    return b(a(parambfd.g(), 178, paramString1).putExtra("ringtone_uri", paramString2), kmm.a);
  }
  
  public static void e()
  {
    int[] arrayOfInt = dvd.d(true);
    int i2 = arrayOfInt.length;
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = arrayOfInt[i1];
      if (dvd.e(i3) != null) {
        a(i3, false, ebq.a);
      }
      i1 += 1;
    }
  }
  
  public static void e(Intent paramIntent)
  {
    bfd localbfd = dvd.l();
    if (localbfd == null) {
      return;
    }
    paramIntent.setClass(aal.oJ, RealTimeChatService.class);
    paramIntent.putExtra("op", 128);
    paramIntent.putExtra("account_id", localbfd.g());
    b(paramIntent, kmm.a);
  }
  
  public static void e(bfd parambfd)
  {
    if (l())
    {
      a(aal.oJ, parambfd);
      return;
    }
    c(a(parambfd.g(), 162), kmm.a);
  }
  
  public static int f(int paramInt)
  {
    return b(a(paramInt, 150), kmm.a);
  }
  
  public static int f(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 117, paramString), kmm.a);
  }
  
  public static int f(bfd parambfd, String paramString1, String paramString2)
  {
    parambfd = a(parambfd.g(), 135);
    parambfd.putExtra("picasa_photo_id", paramString2);
    parambfd.putExtra("gaia_id", paramString1);
    return b(parambfd, kmm.a);
  }
  
  public static void f()
  {
    int i1 = 0;
    int[] arrayOfInt = dvd.d(false);
    int i2 = arrayOfInt.length;
    while (i1 < i2)
    {
      int i3 = arrayOfInt[i1];
      if (a) {
        new StringBuilder(49).append("requestPatchAfterRequestWriterUpgrade ").append(i3);
      }
      b(a(i3, 114), kmm.a);
      i1 += 1;
    }
  }
  
  private void f(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle.containsKey("server_response_id"))
    {
      int i1 = paramIntent.getIntExtra("account_id", -1);
      if (!((hpz)ilh.a(getApplicationContext(), hpz.class)).a(i1).d("preserve_response_data"))
      {
        paramIntent = getApplicationContext();
        long l1 = localBundle.getLong("server_response_id");
        eez.a(paramIntent).d(l1);
      }
    }
  }
  
  public static void f(bfd parambfd)
  {
    i.post(new eaf(parambfd));
  }
  
  public static int g(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 33, paramString), kmm.a);
  }
  
  public static String g(int paramInt)
  {
    switch (paramInt)
    {
    case 15: 
    case 17: 
    case 18: 
    case 20: 
    case 21: 
    case 22: 
    case 23: 
    case 24: 
    case 25: 
    case 26: 
    case 27: 
    case 28: 
    case 29: 
    case 34: 
    case 40: 
    case 43: 
    case 45: 
    case 46: 
    case 48: 
    case 49: 
    case 50: 
    case 51: 
    case 57: 
    case 61: 
    case 63: 
    case 64: 
    case 67: 
    case 70: 
    case 75: 
    case 77: 
    case 87: 
    case 88: 
    case 93: 
    case 95: 
    case 97: 
    case 102: 
    case 105: 
    case 106: 
    case 107: 
    case 108: 
    case 110: 
    case 118: 
    case 119: 
    case 122: 
    case 123: 
    case 125: 
    case 126: 
    case 127: 
    case 129: 
    case 130: 
    case 138: 
    case 154: 
    case 155: 
    case 156: 
    case 158: 
    case 159: 
    case 161: 
    case 164: 
    case 165: 
    case 166: 
    case 168: 
    case 170: 
    case 177: 
    case 178: 
    case 187: 
    case 188: 
    case 190: 
    case 191: 
    case 194: 
    case 195: 
    case 197: 
    case 198: 
    case 201: 
    case 202: 
    default: 
      String str = String.valueOf(Integer.toString(paramInt));
      return String.valueOf(str).length() + 17 + "(unknown opcode " + str + ")";
    case 13: 
      return "OP_REGISTER_ACCOUNT";
    case 14: 
      return "OP_UNREGISTER_ACCOUNT";
    case 16: 
      return "OP_ACCOUNT_REMOVED";
    case 19: 
      return "OP_SET_SELF_INFO_BIT";
    case 30: 
      return "OP_START_CONVERSATION";
    case 31: 
      return "OP_SEND_MESSAGE";
    case 32: 
      return "OP_INVITE_PARTICIPANTS";
    case 33: 
      return "OP_LEAVE_CONVERSATION";
    case 35: 
      return "OP_UPDATE_CONVERSATION_WATERMARK";
    case 36: 
      return "OP_REMOVE_MESSAGE";
    case 37: 
      return "OP_SET_CONVERSATION_NAME";
    case 38: 
      return "OP_SET_CONVERSATION_NOTIFICATION_LEVEL";
    case 39: 
      return "OP_RECEIVE_RESPONSE";
    case 41: 
      return "OP_REPLY_TO_INVITATION";
    case 203: 
      return "OP_DECLINE_ALL_INVITES";
    case 42: 
      return "OP_REQUEST_MORE_EVENTS";
    case 44: 
      return "OP_RETRY_SEND_MESSAGE";
    case 47: 
      return "OP_SET_MESSAGE_FAILED";
    case 52: 
      return "OP_REQUEST_SUGGESTED_CONTACTS";
    case 53: 
      return "OP_RECEIVE_SERVER_UPDATE";
    case 54: 
      return "OP_REQUEST_MORE_CONVERSATIONS";
    case 55: 
      return "OP_REQUEST_WARM_SYNC";
    case 56: 
      return "OP_SYNC_BASELINE_SUGGESTED_CONTACTS";
    case 193: 
      return "OP_CACHE_PRESENCE";
    case 58: 
      return "OP_REQUEST_SEARCH_CONTACTS";
    case 59: 
      return "OP_REQUEST_GET_CONTACT_BY_ID";
    case 60: 
      return "OP_SET_ACTIVE_CLIENT";
    case 62: 
      return "OP_MODIFY_OTR_STATUS";
    case 65: 
      return "OP_REQUEST_CONVERSATION_META_DATA";
    case 66: 
      return "OP_SET_DND_SETTING";
    case 68: 
      return "OP_HANGOUT_CALL_INVITE_ACK";
    case 69: 
      return "OP_GET_PROFILE";
    case 71: 
      return "OP_RECEIVE_SIMULATED_EVENT";
    case 72: 
      return "OP_ARCHIVE_CONVERSATIONS";
    case 73: 
      return "OP_REQUEST_HANGOUT_INFO";
    case 74: 
      return "OP_LOCALE_CHANGED";
    case 76: 
      return "OP_EXPIRE_LAST_MESSAGE";
    case 78: 
      return "OP_REPORT_CALL_PERF_STATS";
    case 79: 
      return "OP_REQUEST_HANGOUT_PARTICIPANTS";
    case 80: 
      return "OP_DELETE_MESSAGE";
    case 81: 
      return "OP_UPDATE_CONVERSATION_SCROLL_TIME";
    case 82: 
      return "OP_UPDATE_MESSAGE_SCROLL_TIME";
    case 83: 
      return "OP_RETRY_CREATE_CONVERSATION";
    case 84: 
      return "OP_SET_CONVERSATION_CREATE_FAILED";
    case 85: 
      return "OP_START_PHONE_VERIFICATION";
    case 86: 
      return "OP_FINISH_PHONE_VERIFICATION";
    case 89: 
      return "OP_GET_CHAT_ACL_SETTINGS";
    case 90: 
      return "OP_SET_CHAT_ACL_SETTING";
    case 204: 
      return "OP_SET_CHAT_ACLS_HAPPY_STATE";
    case 91: 
      return "OP_DELETE_CONVERSATION";
    case 92: 
      return "OP_SET_USER_BLOCK";
    case 94: 
      return "OP_CLEANUP_DB";
    case 96: 
      return "OP_LOAD_BLOCKED_PEOPLE";
    case 98: 
      return "OP_REFRESH_PARTICIPANTS_INFO";
    case 99: 
      return "OP_SEND_OFFNETWORK_INVITATION";
    case 100: 
      return "OP_HANDLE_PACKAGE_REPLACED";
    case 101: 
      return "OP_REVERT_CONVERSATION_NAME";
    case 103: 
      return "OP_SET_CONVERSATION_INVITE_FAILURE";
    case 104: 
      return "OP_UNREGISTER_REMOVED_ACCOUNTS";
    case 109: 
      return "OP_RECEIVE_SMS_MESSAGE";
    case 111: 
      return "OP_SEND_PENDING_CONVERSATION_OPERATIONS";
    case 112: 
      return "OP_RECEIVE_MMS_MESSAGE";
    case 113: 
      return "OP_COMPLETE_CANCEL_SEND_MESSAGE";
    case 114: 
      return "OP_PATCH_AFTER_REQUEST_WRITER_UPGRADE";
    case 115: 
      return "OP_RECEIVE_MMS_WAP_PUSH";
    case 116: 
      return "OP_RETRIEVE_MMS_MESSAGE";
    case 117: 
      return "OP_RESTART_PURGED_CONVERSATION";
    case 192: 
      return "OP_SET_STATUS_MESSAGE";
    case 120: 
      return "OP_DISMISS_SUGGESTED_CONTACT";
    case 121: 
      return "OP_SET_RICH_PRESENCE_ENABLED_STATE";
    case 124: 
      return "OP_INSERT_PARTICIPANT_ENTITY";
    case 128: 
      return "OP_RECEIVE_SMS_DELIVERY_REPORT";
    case 131: 
      return "OP_HANDLE_STORAGE_LOW_SMS";
    case 132: 
      return "OP_HANDLE_STORAGE_OK_SMS";
    case 133: 
      return "OP_FREE_SMS_STORAGE";
    case 134: 
      return "OP_UPLOAD_ANALYTICS";
    case 189: 
      return "OP_GET_USER_PHOTO_ALBUMS";
    case 135: 
      return "OP_GET_VIDEO_DATA";
    case 136: 
      return "OP_REMOVE_CONVERSATION_IF_EMPTY";
    case 137: 
      return "OP_SYNC_SMS_MESSAGES";
    case 139: 
      return "OP_TRIGGER_DEFERRED_NOTIFICATION";
    case 140: 
      return "OP_REVIVE_MMS_NOTIFICATION";
    case 141: 
      return "OP_RENEW_ACCOUNT_REGISTRATION";
    case 142: 
      return "OP_CREATE_HANGOUT_ID";
    case 143: 
      return "OP_LEAVE_CONTINGENCY_FAILED";
    case 144: 
      return "OP_DELETE_CONVERSATION_FAILED";
    case 145: 
      return "OP_UPLOAD_VIDEO_CALL_LOGS";
    case 146: 
      return "OP_RECEIVE_SMSMMS_FROM_DUMP_FILE";
    case 147: 
      return "OP_SEND_EASTER_EGG";
    case 148: 
      return "OP_GET_VOICE_ACCOUNT_INFO";
    case 149: 
      return "OP_CLEANUP_EVENT_SUGGESTIONS";
    case 150: 
      return "OP_ENABLE_VOICE_CALLING";
    case 151: 
      return "OP_GET_CALL_RATE";
    case 152: 
      return "OP_SEND_STRESS_TEST_MESSAGE";
    case 153: 
      return "OP_ADD_RECENT_PSTN_CALL";
    case 157: 
      return "OP_GET_PHONE_LIST";
    case 196: 
      return "OP_FETCH_PROXY_NUMBER";
    case 160: 
      return "OP_CLEAR_CONTINUATION_TOKEN";
    case 162: 
      return "OP_POLL_PARASITE_OPERATIONS";
    case 181: 
      return "OP_ADD_BROADCAST";
    case 182: 
      return "OP_GET_BROADCAST";
    case 183: 
      return "OP_MODIFY_BROADCAST";
    case 184: 
      return "OP_REMOVE_BROADCAST";
    case 163: 
      return "OP_WARN_NO_SIM_FOR_SMS";
    case 167: 
      return "OP_REFRESH_SMS_PARTICIPANTS";
    case 169: 
      return "OP_TEST_WATCHDOG";
    case 171: 
      return "OP_UNMERGE_CONVERSATIONS";
    case 172: 
      return "OP_REQUEST_FIFE_URLS";
    case 173: 
      return "OP_MERGE_ALL_CONVERSATIONS";
    case 174: 
      return "OP_UNMERGE_ALL_CONVERSATIONS";
    case 175: 
      return "OP_UNDISMISS_SUGGESTED_CONTACT";
    case 180: 
      return "OP_UPDATE_CONVERSATION_CALL_MEDIA_TYPE";
    case 176: 
      return "OP_SAVE_SMS_AND_NOTIFY_IF_UNREAD";
    case 179: 
      return "OP_GET_AUDIO_DATA";
    case 185: 
      return "OP_FORK_CONVERSATION";
    case 186: 
      return "OP_TICKLE_GCM";
    case 199: 
      return "OP_UPDATE_FAVORITE_CONTACT";
    }
    return "OP_GET_FAVORITES";
  }
  
  public static void g()
  {
    ((AlarmManager)aal.oJ.getSystemService("alarm")).cancel(m());
  }
  
  public static void g(bfd parambfd)
  {
    b(a(parambfd.g(), 163), kmm.a);
  }
  
  public static void g(bfd arg0, String paramString1, String paramString2)
  {
    synchronized (c)
    {
      if (d(???, paramString1))
      {
        d = ???.a();
        if (e.remove(paramString1)) {
          e.add(paramString2);
        }
      }
    }
    synchronized (t)
    {
      t.put(paramString1, paramString2);
      i.post(new dzs(paramString1, paramString2));
      return;
      ??? = finally;
      throw ???;
    }
  }
  
  public static void h()
  {
    b(i(173), kmm.a);
  }
  
  private static final void h(int paramInt)
  {
    b.b(g(paramInt));
  }
  
  public static void h(bfd parambfd, String paramString)
  {
    if ((bfz.a(paramString)) && (!bfz.b(paramString))) {
      b(a(parambfd.g(), 83, paramString), kmm.a);
    }
  }
  
  private static Intent i(int paramInt)
  {
    Intent localIntent = new Intent(aal.oJ, RealTimeChatService.class);
    localIntent.putExtra("op", paramInt);
    h(paramInt);
    return localIntent;
  }
  
  public static void i()
  {
    b(i(174), kmm.a);
  }
  
  public static void i(bfd parambfd, String paramString)
  {
    b(a(parambfd.g(), 180, paramString).putExtra("call_media_type", 0), kmm.a);
  }
  
  public static int j(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 120);
    parambfd.putExtra("gaia_id", paramString);
    return b(parambfd, kmm.a);
  }
  
  public static void j()
  {
    bfd localbfd = dvd.l();
    if (localbfd == null) {
      return;
    }
    b(a(localbfd.g(), 131), kmm.a);
  }
  
  private static void j(int paramInt)
  {
    eay localeay = eay.b(paramInt);
    if ((!localeay.e()) && (!localeay.f()))
    {
      if (a) {
        new StringBuilder(49).append("RefreshParticipantsOperation is idle: ").append(paramInt);
      }
      return;
    }
    b(a(paramInt, 98), kmm.a);
  }
  
  public static int k(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 42, paramString), kmm.a);
  }
  
  public static void k()
  {
    bfd localbfd = dvd.l();
    if (localbfd == null) {
      return;
    }
    b(a(localbfd.g(), 132), kmm.a);
  }
  
  private static void k(int paramInt)
  {
    edq localedq = edq.b(paramInt);
    if ((!localedq.e()) && (!localedq.f()))
    {
      if (a) {
        new StringBuilder(45).append("UploadAnalyticsOperation is idle: ").append(paramInt);
      }
      return;
    }
    b(a(paramInt, 134), kmm.a);
  }
  
  public static int l(bfd parambfd, String paramString)
  {
    if (bfz.a(paramString)) {
      return 0;
    }
    return b(a(parambfd.g(), 65, paramString), kmm.a);
  }
  
  private static void l(int paramInt)
  {
    Object localObject = (eck)eck.a.remove(Integer.valueOf(paramInt));
    if (localObject != null) {
      u.remove(localObject);
    }
    localObject = ecx.c(paramInt);
    if (localObject != null) {
      u.remove(localObject);
    }
    localObject = eay.c(paramInt);
    if (localObject != null) {
      u.remove(localObject);
    }
  }
  
  private static boolean l()
  {
    return ((edw)ilh.a(aal.oJ, edw.class)).b();
  }
  
  public static int m(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 79, paramString), kmm.a);
  }
  
  private static PendingIntent m()
  {
    Intent localIntent = new Intent("com.google.android.apps.hangouts.CLEANUP_DB");
    localIntent.putExtra("op", 94);
    return PendingIntent.getBroadcast(aal.oJ, eyr.a(102), localIntent, 134217728);
  }
  
  public static int n(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 145);
    parambfd.putExtra("compressed_log_file", paramString);
    return b(parambfd, kmm.a);
  }
  
  public static int o(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 189);
    parambfd.putExtra("user_id", paramString);
    return b(parambfd, kmm.a);
  }
  
  public static int p(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 179);
    parambfd.putExtra("picasa_photo_id", paramString);
    return b(parambfd, kmm.a);
  }
  
  public static int q(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 99);
    parambfd.putExtra("email_address", paramString);
    return b(parambfd, kmm.a);
  }
  
  public static int r(bfd parambfd, String paramString)
  {
    return b(a(parambfd.g(), 160, paramString), kmm.a);
  }
  
  public static int s(bfd parambfd, String paramString)
  {
    parambfd = a(parambfd.g(), 194);
    parambfd.putExtra("phone_number", paramString);
    return b(parambfd, kmm.a);
  }
  
  protected void a(Intent arg1, long paramLong, knq<Intent> paramknq)
  {
    if (??? == null) {
      ezi.d("Babel_RTCS", "RTCS onHandleIntent called with null intent", new Object[0]);
    }
    for (;;)
    {
      return;
      int i1 = ???.getIntExtra("op", 0);
      if (i1 == 78) {
        aal.c(2376);
      }
      int i2 = ???.getIntExtra("account_id", -1);
      long l2 = ???.getLongExtra("rqtms", 0L);
      long l1;
      long l3;
      boolean bool;
      label184:
      String str1;
      String str2;
      if ((a) || (y))
      {
        l1 = ???.getLongExtra("rqtns", 0L);
        if (a)
        {
          l3 = (paramLong - l1) / 1000000L;
          ??? = String.valueOf(g(i1));
          new StringBuilder(String.valueOf(???).length() + 86).append("RTCIntent: start processing intent:").append((String)???).append(" account:").append(i2).append(" delay: ").append(l3).append(" ms");
        }
        if (o != ???.getIntExtra("pid", -1)) {
          break label511;
        }
        bool = true;
        if (a)
        {
          ??? = String.valueOf(???);
          str1 = String.valueOf(???.getAction());
          str2 = String.valueOf(g(i1));
          new StringBuilder(String.valueOf(???).length() + 47 + String.valueOf(str1).length() + String.valueOf(str2).length()).append("onHandleIntent ").append((String)???).append(" ").append(str1).append(" opcode: ").append(str2).append(" respectWakeLock ").append(bool);
        }
        if ((!bool) || ((x != null) && (x.isHeld()))) {
          break label530;
        }
        paramknq = String.valueOf(???);
        ??? = String.valueOf(???.getAction());
        str1 = String.valueOf(g(i1));
        str2 = String.valueOf(x);
        if (x != null) {
          break label517;
        }
      }
      label511:
      label517:
      for (??? = "(null)";; ??? = Boolean.valueOf(x.isHeld()))
      {
        ??? = String.valueOf(???);
        ezi.e("Babel_RTCS", String.valueOf(paramknq).length() + 58 + String.valueOf(???).length() + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(???).length() + "RTCS.onHandleIntent called " + paramknq + " " + (String)??? + " opcode: " + str1 + " sWakeLock: " + str2 + " isHeld: " + ???, new Object[0]);
        if (i1 == 78) {
          aal.c(2377);
        }
        throw new IllegalStateException();
        l1 = 0L;
        break;
        bool = false;
        break label184;
      }
      try
      {
        synchronized (bft.b)
        {
          label530:
          if (bft.c < 0)
          {
            i1 = bft.c;
            throw new IllegalStateException(47 + "sPendingChangeNotificationsCount is " + i1);
          }
        }
        bft.c += 1;
      }
      finally
      {
        bft.a();
        if (bool) {
          x.release();
        }
      }
      switch (i1)
      {
      default: 
        ??? = dvd.e(i2);
        if (??? == null)
        {
          ezi.e("Babel_RTCS", "skipping intent for invalid account", new Object[0]);
          if (i1 == 78) {
            aal.c(2378);
          }
          if (exo.b) {
            exo.d();
          }
          bft.a();
          if (bool) {
            x.release();
          }
          if ((!y) && (!a)) {
            continue;
          }
          l3 = System.nanoTime();
          if ((y) && (h != null)) {
            paramknq = new eak(i1, l2, l1, paramLong, l3);
          }
        }
      case 74: 
      case 94: 
      case 141: 
      case 100: 
      case 16: 
      case 149: 
      case 173: 
      case 174: 
        label730:
        synchronized (j)
        {
          if (h != null) {
            h.a(paramknq);
          }
          if (!a) {
            continue;
          }
          paramLong = (l3 - paramLong) / 1000000L;
          ??? = String.valueOf(g(i1));
          new StringBuilder(String.valueOf(???).length() + 86).append("RTCIntent: finish processing intent:").append(???).append(" account:").append(i2).append(" time: ").append(paramLong).append(" ms");
          return;
          ezi.a("Babel_RTCS", "locale changed.", new Object[0]);
          EsProvider.a(this);
          break label730;
          ezi.a("Babel_RTCS", "clean up database.", new Object[0]);
          ehb.c().a(getApplicationContext());
          break label730;
          ezi.a("Babel_RTCS", "renew accounts.", new Object[0]);
          dvd.p();
          break label730;
          PackageReplacedReceiver.a(getApplicationContext(), ???.getAction(), ???.getStringExtra("package"));
          break label730;
          l(i2);
          if (ehd.a) {
            new StringBuilder(39).append("Removing contact loader for ").append(i2);
          }
          ehd.c.remove(Integer.valueOf(i2));
          ehi.a(i2);
          ebo.c(i2);
          break label730;
          paramknq = ???.getStringExtra("conversation_id");
          l3 = ???.getLongExtra("timestamp", 0L);
          int i3 = new bfz(this, i2).e(paramknq, l3);
          if (!a) {
            break label730;
          }
          new StringBuilder(String.valueOf(paramknq).length() + 152).append("Deleted ").append(i3).append(" played event suggestions for conversation ").append(paramknq).append(" on account ").append(i2).append(" where the last played event was at timestamp ").append(l3).append(".");
          break label730;
          bfz.a(this);
          break label730;
          bfz.b(this);
          break label730;
          if ((!dvd.d((bfd)???)) || (a(???)) || (i1 == 19))
          {
            d(???, paramknq);
            break label730;
          }
          if (i1 == 78) {
            aal.c(2525);
          }
          aal.c(i2, 2566).a(i1).d();
        }
      }
    }
  }
  
  public void a(Intent paramIntent, knq<Intent> paramknq)
  {
    if ((a) || (y)) {}
    for (long l1 = System.nanoTime();; l1 = 0L)
    {
      if (m != null) {
        m.b(paramIntent);
      }
      a(paramIntent, l1, paramknq);
      if (m != null) {
        m.a();
      }
      return;
    }
  }
  
  protected boolean a(Intent paramIntent)
  {
    switch (paramIntent.getIntExtra("op", -1))
    {
    default: 
      return false;
    case 13: 
    case 14: 
      return true;
    }
    paramIntent = paramIntent.getStringExtra("server_response_type");
    return drz.class.getName().equals(paramIntent);
  }
  
  public void onCreate()
  {
    super.onCreate();
    DebugActivity.b(getApplicationContext());
    if (!B)
    {
      if (a) {
        ezi.a("Babel_RTCS", "start and bind to the request writer", new Object[0]);
      }
      getApplicationContext().startService(RequestWriter.k());
      bindService(new Intent(this, RequestWriter.class), C, 1);
      B = true;
    }
    new eai(this).execute(new Void[0]);
  }
  
  public void onDestroy()
  {
    if (B)
    {
      if (a) {
        ezi.a("Babel_RTCS", "unbind to the request writer", new Object[0]);
      }
      unbindService(C);
      l = null;
      B = false;
    }
    super.onDestroy();
    if (m != null) {
      m.b();
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) != 0)
    {
      String str1 = String.valueOf(paramIntent);
      String str2 = String.valueOf(paramIntent.getAction());
      String str3 = String.valueOf(g(paramIntent.getIntExtra("op", 0)));
      ezi.d("Babel_RTCS", String.valueOf(str1).length() + 98 + String.valueOf(str2).length() + String.valueOf(str3).length() + "RTCS.onStartCommand called for redelivery / retry " + str1 + " " + str2 + " opcode: " + str3 + " flags " + paramInt1 + " startId " + paramInt2, new Object[0]);
    }
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.RealTimeChatService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */