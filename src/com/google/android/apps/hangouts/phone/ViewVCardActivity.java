package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import aet;
import aeu;
import aex;
import aey;
import afc;
import aff;
import afg;
import afh;
import afj;
import afm;
import afn;
import afp;
import afy;
import age;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Im;
import android.provider.ContactsContract.CommonDataKinds.Organization;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.Toast;
import cdu;
import com.google.android.apps.hangouts.hangout.StressMode;
import djp;
import djq;
import djr;
import djt;
import ezi;
import hpu;
import hq;
import hqo;
import imx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import qe;

public class ViewVCardActivity
  extends cdu
{
  private static final boolean r = false;
  public final hpu j = new hqo(this, B).a(A);
  public boolean k;
  public Uri l;
  public List<Map<String, ?>> n = new ArrayList();
  public List<List<Map<String, ?>>> o = new ArrayList();
  public ExpandableListView p;
  public Handler q = new djt(this);
  private Uri s;
  private final ExpandableListView.OnChildClickListener t = new djp(this);
  
  static
  {
    imx localimx = ezi.k;
  }
  
  public static void a(String paramString)
  {
    if (r)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        "[ViewVCardActivity]: ".concat(paramString);
      }
    }
    else
    {
      return;
    }
    new String("[ViewVCardActivity]: ");
  }
  
  /* Error */
  private boolean a(Uri paramUri, int paramInt, afq paramafq, boolean paramBoolean, List<String> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 106	com/google/android/apps/hangouts/phone/ViewVCardActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 7
    //   6: aload 7
    //   8: aload_1
    //   9: invokevirtual 112	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   12: astore 6
    //   14: new 114	afv
    //   17: dup
    //   18: iconst_0
    //   19: invokespecial 117	afv:<init>	(B)V
    //   22: astore 8
    //   24: aload 8
    //   26: aload_3
    //   27: invokevirtual 122	afr:a	(Lafq;)V
    //   30: aload 6
    //   32: astore 5
    //   34: aload 8
    //   36: aload 6
    //   38: invokevirtual 125	afr:a	(Ljava/io/InputStream;)V
    //   41: aload 6
    //   43: ifnull +8 -> 51
    //   46: aload 6
    //   48: invokevirtual 130	java/io/InputStream:close	()V
    //   51: iconst_1
    //   52: ireturn
    //   53: astore_1
    //   54: ldc -124
    //   56: ldc -122
    //   58: aload_1
    //   59: invokestatic 140	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   62: pop
    //   63: goto -12 -> 51
    //   66: astore_1
    //   67: aload_1
    //   68: invokevirtual 144	java/io/IOException:getMessage	()Ljava/lang/String;
    //   71: invokestatic 81	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   74: astore_1
    //   75: aload_1
    //   76: invokevirtual 85	java/lang/String:length	()I
    //   79: ifeq +198 -> 277
    //   82: ldc -110
    //   84: aload_1
    //   85: invokevirtual 91	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   88: astore_1
    //   89: ldc -124
    //   91: aload_1
    //   92: invokestatic 149	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   95: pop
    //   96: iconst_0
    //   97: ireturn
    //   98: astore 5
    //   100: aload 6
    //   102: astore 5
    //   104: aload 6
    //   106: invokevirtual 130	java/io/InputStream:close	()V
    //   109: aload 6
    //   111: astore 5
    //   113: aload_3
    //   114: instanceof 151
    //   117: ifeq +14 -> 131
    //   120: aload 6
    //   122: astore 5
    //   124: aload_3
    //   125: checkcast 151	afn
    //   128: invokevirtual 154	afn:c	()V
    //   131: aload 6
    //   133: astore 5
    //   135: aload 7
    //   137: aload_1
    //   138: invokevirtual 112	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   141: astore_1
    //   142: aload_1
    //   143: astore 5
    //   145: new 156	afw
    //   148: dup
    //   149: iload_2
    //   150: invokespecial 159	afw:<init>	(I)V
    //   153: astore 6
    //   155: aload_1
    //   156: astore 5
    //   158: aload 6
    //   160: aload_3
    //   161: invokevirtual 122	afr:a	(Lafq;)V
    //   164: aload_1
    //   165: astore 5
    //   167: aload 6
    //   169: aload_1
    //   170: invokevirtual 125	afr:a	(Ljava/io/InputStream;)V
    //   173: aload_1
    //   174: ifnull -123 -> 51
    //   177: aload_1
    //   178: invokevirtual 130	java/io/InputStream:close	()V
    //   181: goto -130 -> 51
    //   184: astore_1
    //   185: ldc -124
    //   187: ldc -122
    //   189: aload_1
    //   190: invokestatic 140	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   193: pop
    //   194: goto -143 -> 51
    //   197: astore_1
    //   198: aload_1
    //   199: instanceof 161
    //   202: ifeq +88 -> 290
    //   205: iload 4
    //   207: ifeq +83 -> 290
    //   210: aload_1
    //   211: checkcast 161	age
    //   214: athrow
    //   215: astore 8
    //   217: aload 6
    //   219: astore 5
    //   221: ldc -124
    //   223: ldc -122
    //   225: aload 8
    //   227: invokestatic 140	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   230: pop
    //   231: goto -122 -> 109
    //   234: astore_1
    //   235: aload 5
    //   237: ifnull +8 -> 245
    //   240: aload 5
    //   242: invokevirtual 130	java/io/InputStream:close	()V
    //   245: aload_1
    //   246: athrow
    //   247: astore_1
    //   248: iconst_0
    //   249: ireturn
    //   250: astore_3
    //   251: aload_1
    //   252: astore 5
    //   254: new 100	agc
    //   257: dup
    //   258: ldc -93
    //   260: invokespecial 164	agc:<init>	(Ljava/lang/String;)V
    //   263: athrow
    //   264: astore_3
    //   265: ldc -124
    //   267: ldc -122
    //   269: aload_3
    //   270: invokestatic 140	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   273: pop
    //   274: goto -29 -> 245
    //   277: new 77	java/lang/String
    //   280: dup
    //   281: ldc -110
    //   283: invokespecial 93	java/lang/String:<init>	(Ljava/lang/String;)V
    //   286: astore_1
    //   287: goto -198 -> 89
    //   290: iconst_0
    //   291: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	ViewVCardActivity
    //   0	292	1	paramUri	Uri
    //   0	292	2	paramInt	int
    //   0	292	3	paramafq	afq
    //   0	292	4	paramBoolean	boolean
    //   0	292	5	paramList	List<String>
    //   12	206	6	localObject	Object
    //   4	132	7	localContentResolver	android.content.ContentResolver
    //   22	13	8	localafv	afv
    //   215	11	8	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   46	51	53	java/io/IOException
    //   6	30	66	java/io/IOException
    //   54	63	66	java/io/IOException
    //   185	194	66	java/io/IOException
    //   245	247	66	java/io/IOException
    //   265	274	66	java/io/IOException
    //   34	41	98	agg
    //   177	181	184	java/io/IOException
    //   6	30	197	agf
    //   46	51	197	agf
    //   54	63	197	agf
    //   177	181	197	agf
    //   185	194	197	agf
    //   240	245	197	agf
    //   245	247	197	agf
    //   265	274	197	agf
    //   104	109	215	java/io/IOException
    //   34	41	234	finally
    //   104	109	234	finally
    //   113	120	234	finally
    //   124	131	234	finally
    //   135	142	234	finally
    //   145	155	234	finally
    //   158	164	234	finally
    //   167	173	234	finally
    //   221	231	234	finally
    //   254	264	234	finally
    //   6	30	247	agc
    //   46	51	247	agc
    //   54	63	247	agc
    //   177	181	247	agc
    //   185	194	247	agc
    //   240	245	247	agc
    //   245	247	247	agc
    //   265	274	247	agc
    //   145	155	250	agg
    //   158	164	250	agg
    //   167	173	250	agg
    //   240	245	264	java/io/IOException
  }
  
  public void a(aeu paramaeu, List<Map<String, ?>> paramList, List<List<Map<String, ?>>> paramList1)
  {
    Object localObject3 = getResources();
    Object localObject2 = new hq();
    paramList.add(localObject2);
    Object localObject1 = paramaeu.b();
    paramList = (List<Map<String, ?>>)localObject1;
    if (localObject1 == null)
    {
      paramaeu.a();
      paramList = paramaeu.b();
    }
    ((hq)localObject2).put("data", paramList);
    paramList = String.valueOf(paramList);
    if (paramList.length() != 0) {
      paramList = "name: ".concat(paramList);
    }
    label105:
    Object localObject5;
    label150:
    int i;
    Object localObject4;
    for (;;)
    {
      a(paramList);
      localObject2 = new ArrayList();
      paramList = a;
      if (paramList != null)
      {
        localObject1 = paramList.iterator();
        if (((Iterator)localObject1).hasNext())
        {
          localObject5 = (afh)((Iterator)localObject1).next();
          paramList = String.valueOf(((afh)localObject5).b());
          if (paramList.length() != 0)
          {
            paramList = "phone.data is ".concat(paramList);
            a(paramList);
            i = ((afh)localObject5).c();
            a(25 + "phone.type is " + i);
            paramList = String.valueOf(((afh)localObject5).d());
            if (paramList.length() == 0) {
              break label305;
            }
            paramList = "phone.label is ".concat(paramList);
            a(paramList);
            localObject4 = new hq();
            ((List)localObject2).add(localObject4);
            ((hq)localObject4).put("data", ((afh)localObject5).b());
          }
          try
          {
            paramList = ContactsContract.CommonDataKinds.Phone.getTypeLabel((Resources)localObject3, ((afh)localObject5).c(), ((afh)localObject5).d()).toString();
            ((hq)localObject4).put("type", paramList);
            break label105;
            paramList = new String("name: ");
            continue;
            paramList = new String("phone.data is ");
            break label150;
            label305:
            paramList = new String("phone.label is ");
          }
          catch (Resources.NotFoundException paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 36 + "createContactItem NotFoundException:" + paramList);
              paramList = localObject3.getStringArray(17235971)[6];
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 34 + "createContactItem phone Exception:" + paramList);
              paramList = localObject3.getStringArray(17235971)[6];
            }
          }
        }
      }
    }
    paramList = b;
    if (paramList != null)
    {
      localObject1 = paramList.iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject4 = (aey)((Iterator)localObject1).next();
          paramList = String.valueOf(((aey)localObject4).d());
          if (paramList.length() != 0)
          {
            paramList = "email.type is ".concat(paramList);
            label489:
            a(paramList);
            paramList = String.valueOf(((aey)localObject4).b());
            if (paramList.length() == 0) {
              break label629;
            }
            paramList = "email.data is ".concat(paramList);
            label517:
            a(paramList);
            paramList = String.valueOf(((aey)localObject4).d());
            if (paramList.length() == 0) {
              break label643;
            }
            paramList = "email.auxdata is ".concat(paramList);
            a(paramList);
            localObject5 = new hq();
            ((List)localObject2).add(localObject5);
            ((hq)localObject5).put("data", ((aey)localObject4).b());
          }
          try
          {
            paramList = ContactsContract.CommonDataKinds.Email.getTypeLabel((Resources)localObject3, ((aey)localObject4).c(), ((aey)localObject4).d()).toString();
            ((hq)localObject5).put("type", paramList);
            continue;
            paramList = new String("email.type is ");
            break label489;
            label629:
            paramList = new String("email.data is ");
            break label517;
            label643:
            paramList = new String("email.auxdata is ");
          }
          catch (Resources.NotFoundException paramList)
          {
            for (;;)
            {
              paramList = localObject3.getStringArray(17235968)[2];
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 34 + "createContactItem email Exception:" + paramList);
              paramList = localObject3.getStringArray(17235968)[2];
            }
          }
        }
      }
    }
    paramList = c;
    label821:
    Object localObject6;
    if (paramList != null)
    {
      localObject1 = paramList.iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject4 = (afj)((Iterator)localObject1).next();
          i = ((afj)localObject4).i();
          a(26 + "Postal.type is " + i);
          paramList = String.valueOf(((afj)localObject4).h());
          if (paramList.length() != 0)
          {
            paramList = "Postal.data is ".concat(paramList);
            a(paramList);
            paramList = String.valueOf(((afj)localObject4).j());
            if (paramList.length() == 0) {
              break label1126;
            }
            paramList = "Postal.auxdata is ".concat(paramList);
            a(paramList);
            localObject5 = new hq();
            ((List)localObject2).add(localObject5);
            paramList = new StringBuilder();
            localObject6 = ((afj)localObject4).b();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).c();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).d();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).e();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).f();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).g();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6).append(" ");
            }
            localObject6 = ((afj)localObject4).h();
            if (!TextUtils.isEmpty((CharSequence)localObject6)) {
              paramList.append((String)localObject6);
            }
            ((hq)localObject5).put("data", paramList.toString());
          }
          try
          {
            paramList = localObject3.getStringArray(17235972)[(localObject4.i() - 1)];
            ((hq)localObject5).put("type", paramList);
            continue;
            paramList = new String("Postal.data is ");
            break label821;
            label1126:
            paramList = new String("Postal.auxdata is ");
          }
          catch (Resources.NotFoundException paramList)
          {
            for (;;)
            {
              paramList = localObject3.getStringArray(17235972)[2];
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 35 + "createContactItem postal Exception:" + paramList);
              paramList = localObject3.getStringArray(17235972)[2];
            }
          }
        }
      }
    }
    paramList = e;
    if (paramList != null)
    {
      localObject1 = paramList.iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject5 = (afc)((Iterator)localObject1).next();
          i = ((afc)localObject5).c();
          a(22 + "im.type is " + i);
          paramList = String.valueOf(((afc)localObject5).b());
          if (paramList.length() != 0)
          {
            paramList = "im.data is ".concat(paramList);
            a(paramList);
            localObject4 = new hq();
            ((List)localObject2).add(localObject4);
            ((hq)localObject4).put("data", ((afc)localObject5).b());
          }
          try
          {
            paramList = ((Resources)localObject3).getString(ContactsContract.CommonDataKinds.Im.getProtocolLabelResource(((afc)localObject5).c()));
            ((hq)localObject4).put("type", paramList);
            continue;
            paramList = new String("im.data is ");
          }
          catch (Resources.NotFoundException paramList)
          {
            for (;;)
            {
              paramList = getString(StressMode.hk);
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 31 + "createContactItem IM Exception:" + paramList);
              paramList = getString(StressMode.hk);
            }
          }
        }
      }
    }
    paramList = d;
    if (paramList != null)
    {
      localObject4 = paramList.iterator();
      for (;;)
      {
        if (((Iterator)localObject4).hasNext())
        {
          localObject6 = (afg)((Iterator)localObject4).next();
          paramList = String.valueOf(((afg)localObject6).c());
          if (paramList.length() != 0)
          {
            paramList = "Organization.Organization is ".concat(paramList);
            a(paramList);
            i = ((afg)localObject6).e();
            a(32 + "Organization.type is " + i);
            localObject5 = new hq();
            ((List)localObject2).add(localObject5);
            localObject1 = ((afg)localObject6).d();
            i = StressMode.sx;
            String str = ((afg)localObject6).c();
            paramList = (List<Map<String, ?>>)localObject1;
            if (localObject1 == null) {
              paramList = "";
            }
            ((hq)localObject5).put("data", ((Resources)localObject3).getString(i, new Object[] { str, paramList }));
          }
          try
          {
            paramList = ((Resources)localObject3).getString(ContactsContract.CommonDataKinds.Organization.getTypeLabelResource(((afg)localObject6).e()));
            ((hq)localObject5).put("type", paramList);
            continue;
            paramList = new String("Organization.Organization is ");
          }
          catch (Resources.NotFoundException paramList)
          {
            for (;;)
            {
              paramList = localObject3.getStringArray(17235970)[1];
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              paramList = String.valueOf(paramList);
              a(String.valueOf(paramList).length() + 41 + "createContactItem Organization Exception:" + paramList);
              paramList = localObject3.getStringArray(17235970)[1];
            }
          }
        }
      }
    }
    paramList = f;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject1 = (afm)paramList.next();
        localObject3 = String.valueOf(localObject1);
        a(String.valueOf(localObject3).length() + 11 + "website is " + (String)localObject3);
        if ((localObject1 != null) && (TextUtils.isGraphic(((afm)localObject1).b())))
        {
          localObject3 = new hq();
          ((List)localObject2).add(localObject3);
          ((hq)localObject3).put("data", ((afm)localObject1).b());
          ((hq)localObject3).put("type", getString(StressMode.ti));
        }
      }
    }
    if (h != null) {}
    for (paramList = h.a;; paramList = null)
    {
      if (paramList != null)
      {
        localObject1 = new hq();
        if (TextUtils.isGraphic(paramList))
        {
          ((List)localObject2).add(localObject1);
          ((hq)localObject1).put("data", paramList);
          ((hq)localObject1).put("type", getString(StressMode.cd));
        }
      }
      paramaeu = g;
      if (paramaeu == null) {
        break;
      }
      paramaeu = paramaeu.iterator();
      while (paramaeu.hasNext())
      {
        paramList = (aff)paramaeu.next();
        if (TextUtils.isGraphic(paramList.b()))
        {
          localObject1 = new hq();
          ((List)localObject2).add(localObject1);
          ((hq)localObject1).put("data", paramList.b());
          ((hq)localObject1).put("type", getString(StressMode.fa));
        }
      }
    }
    paramList1.add(localObject2);
  }
  
  public void a(Uri paramUri, afy paramafy)
  {
    int m = paramafy.c();
    int i = m;
    if (m == 0) {
      i = aet.a(getString(StressMode.am));
    }
    paramafy = new afn(i);
    paramafy.a(new afp(this, q));
    try
    {
      a(paramUri, i, paramafy, false, null);
      return;
    }
    catch (age paramUri)
    {
      Log.e("Babel", "Never reach here.");
    }
  }
  
  /* Error */
  public Uri b(int paramInt)
  {
    // Byte code:
    //   0: iload_1
    //   1: getstatic 450	bzw:bz	Ljava/util/Random;
    //   4: invokevirtual 456	java/util/Random:nextLong	()J
    //   7: invokestatic 462	java/lang/Math:abs	(J)J
    //   10: invokestatic 467	com/google/android/apps/hangouts/content/EsProvider:a	(IJ)Landroid/net/Uri;
    //   13: astore 6
    //   15: aload_0
    //   16: invokevirtual 106	com/google/android/apps/hangouts/phone/ViewVCardActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   19: astore_3
    //   20: aload_3
    //   21: aload 6
    //   23: invokevirtual 471	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   26: astore_2
    //   27: aload_3
    //   28: aload_0
    //   29: getfield 473	com/google/android/apps/hangouts/phone/ViewVCardActivity:s	Landroid/net/Uri;
    //   32: invokevirtual 112	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   35: astore_3
    //   36: aload_2
    //   37: astore 5
    //   39: aload_3
    //   40: astore 4
    //   42: sipush 1024
    //   45: newarray <illegal type>
    //   47: astore 7
    //   49: aload_2
    //   50: astore 5
    //   52: aload_3
    //   53: astore 4
    //   55: aload_3
    //   56: aload 7
    //   58: iconst_0
    //   59: sipush 1024
    //   62: invokevirtual 477	java/io/InputStream:read	([BII)I
    //   65: istore_1
    //   66: iload_1
    //   67: iconst_m1
    //   68: if_icmpeq +58 -> 126
    //   71: aload_2
    //   72: astore 5
    //   74: aload_3
    //   75: astore 4
    //   77: aload_2
    //   78: aload 7
    //   80: iconst_0
    //   81: iload_1
    //   82: invokevirtual 483	java/io/OutputStream:write	([BII)V
    //   85: goto -36 -> 49
    //   88: astore 6
    //   90: aload_2
    //   91: astore 5
    //   93: aload_3
    //   94: astore 4
    //   96: ldc -124
    //   98: ldc_w 485
    //   101: aload 6
    //   103: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   106: aload_3
    //   107: ifnull +7 -> 114
    //   110: aload_3
    //   111: invokevirtual 130	java/io/InputStream:close	()V
    //   114: aload_2
    //   115: ifnull +7 -> 122
    //   118: aload_2
    //   119: invokevirtual 489	java/io/OutputStream:close	()V
    //   122: aconst_null
    //   123: astore_3
    //   124: aload_3
    //   125: areturn
    //   126: aload_2
    //   127: astore 5
    //   129: aload_3
    //   130: astore 4
    //   132: aload_2
    //   133: invokevirtual 492	java/io/OutputStream:flush	()V
    //   136: aload_3
    //   137: ifnull +7 -> 144
    //   140: aload_3
    //   141: invokevirtual 130	java/io/InputStream:close	()V
    //   144: aload 6
    //   146: astore_3
    //   147: aload_2
    //   148: ifnull -24 -> 124
    //   151: aload_2
    //   152: invokevirtual 489	java/io/OutputStream:close	()V
    //   155: aload 6
    //   157: areturn
    //   158: astore_2
    //   159: ldc -124
    //   161: ldc_w 494
    //   164: aload_2
    //   165: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   168: aload 6
    //   170: areturn
    //   171: astore_3
    //   172: ldc -124
    //   174: ldc_w 494
    //   177: aload_3
    //   178: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   181: goto -37 -> 144
    //   184: astore_3
    //   185: ldc -124
    //   187: ldc_w 494
    //   190: aload_3
    //   191: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   194: goto -80 -> 114
    //   197: astore_2
    //   198: ldc -124
    //   200: ldc_w 494
    //   203: aload_2
    //   204: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   207: goto -85 -> 122
    //   210: astore_3
    //   211: aconst_null
    //   212: astore_2
    //   213: aconst_null
    //   214: astore 4
    //   216: aload 4
    //   218: ifnull +8 -> 226
    //   221: aload 4
    //   223: invokevirtual 130	java/io/InputStream:close	()V
    //   226: aload_2
    //   227: ifnull +7 -> 234
    //   230: aload_2
    //   231: invokevirtual 489	java/io/OutputStream:close	()V
    //   234: aload_3
    //   235: athrow
    //   236: astore 4
    //   238: ldc -124
    //   240: ldc_w 494
    //   243: aload 4
    //   245: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   248: goto -22 -> 226
    //   251: astore_2
    //   252: ldc -124
    //   254: ldc_w 494
    //   257: aload_2
    //   258: invokestatic 488	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   261: goto -27 -> 234
    //   264: astore_3
    //   265: aconst_null
    //   266: astore 4
    //   268: goto -52 -> 216
    //   271: astore_3
    //   272: aload 5
    //   274: astore_2
    //   275: goto -59 -> 216
    //   278: astore 6
    //   280: aconst_null
    //   281: astore_2
    //   282: aconst_null
    //   283: astore_3
    //   284: goto -194 -> 90
    //   287: astore 6
    //   289: aconst_null
    //   290: astore_3
    //   291: goto -201 -> 90
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	294	0	this	ViewVCardActivity
    //   0	294	1	paramInt	int
    //   26	126	2	localOutputStream1	java.io.OutputStream
    //   158	7	2	localIOException1	java.io.IOException
    //   197	7	2	localIOException2	java.io.IOException
    //   212	19	2	localObject1	Object
    //   251	7	2	localIOException3	java.io.IOException
    //   274	8	2	localObject2	Object
    //   19	128	3	localObject3	Object
    //   171	7	3	localIOException4	java.io.IOException
    //   184	7	3	localIOException5	java.io.IOException
    //   210	25	3	localObject4	Object
    //   264	1	3	localObject5	Object
    //   271	1	3	localObject6	Object
    //   283	8	3	localObject7	Object
    //   40	182	4	localObject8	Object
    //   236	8	4	localIOException6	java.io.IOException
    //   266	1	4	localObject9	Object
    //   37	236	5	localOutputStream2	java.io.OutputStream
    //   13	9	6	localUri	Uri
    //   88	81	6	localIOException7	java.io.IOException
    //   278	1	6	localIOException8	java.io.IOException
    //   287	1	6	localIOException9	java.io.IOException
    //   47	32	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   42	49	88	java/io/IOException
    //   55	66	88	java/io/IOException
    //   77	85	88	java/io/IOException
    //   132	136	88	java/io/IOException
    //   151	155	158	java/io/IOException
    //   140	144	171	java/io/IOException
    //   110	114	184	java/io/IOException
    //   118	122	197	java/io/IOException
    //   15	27	210	finally
    //   221	226	236	java/io/IOException
    //   230	234	251	java/io/IOException
    //   27	36	264	finally
    //   42	49	271	finally
    //   55	66	271	finally
    //   77	85	271	finally
    //   96	106	271	finally
    //   132	136	271	finally
    //   15	27	278	java/io/IOException
    //   27	36	287	java/io/IOException
  }
  
  public void j()
  {
    Toast.makeText(this, StressMode.sL, 0).show();
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.gR);
    paramBundle = findViewById(aen.bZ);
    p = ((ExpandableListView)findViewById(aen.dN));
    p.setEmptyView(paramBundle);
    p.setFocusable(true);
    p.setOnChildClickListener(t);
    paramBundle = getIntent();
    String str = String.valueOf(paramBundle);
    a(String.valueOf(str).length() + 10 + "intent is " + str);
    s = paramBundle.getData();
    for (;;)
    {
      try
      {
        if (s == null) {
          continue;
        }
        paramBundle = String.valueOf(s.toString());
        if (paramBundle.length() == 0) {
          continue;
        }
        paramBundle = "mUri is ".concat(paramBundle);
        a(paramBundle);
        new Thread(new djr(this, s)).start();
      }
      catch (Exception paramBundle)
      {
        paramBundle = String.valueOf(paramBundle);
        a(String.valueOf(paramBundle).length() + 19 + "onCreate Exception " + paramBundle);
        continue;
        j();
        continue;
      }
      g().a(true);
      return;
      paramBundle = new String("mUri is ");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    paramMenu.add(0, 0, 0, StressMode.eN).setShowAsAction(1);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 0)
    {
      paramMenuItem = String.valueOf(s);
      a(String.valueOf(paramMenuItem).length() + 12 + "save vcard: " + paramMenuItem);
      if ((s != null) && (j.b())) {
        new djq(this).execute(new Uri[] { l });
      }
    }
    while (paramMenuItem.getItemId() != 16908332) {
      return true;
    }
    onBackPressed();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    if (k)
    {
      paramMenu.findItem(0).setVisible(true);
      return true;
    }
    paramMenu.findItem(0).setVisible(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ViewVCardActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */