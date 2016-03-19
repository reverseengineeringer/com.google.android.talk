import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class bie
  implements beh, Serializable
{
  public static AtomicReference<bii> a = new AtomicReference(null);
  private static final long serialVersionUID = 1L;
  
  public static int a(int paramInt, bih parambih, dnq paramdnq)
  {
    if ((paramInt == -1) || (parambih == null))
    {
      ezi.d("Babel", "OzChatAclSettings.setRemote: empty account or acl", new Object[0]);
      return -1;
    }
    if (ezi.a("Babel", 3))
    {
      localObject = String.valueOf("OzChatAclSettings.setRemote:aclType=");
      String str1 = String.valueOf(paramdnq);
      String str2 = b;
      String str3 = c;
      String str4 = d;
      ezi.a("Babel", String.valueOf(localObject).length() + 32 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + (String)localObject + str1 + ",circleId=" + str2 + ",circleName=" + str3 + ",newLevel=" + str4, new Object[0]);
    }
    Object localObject = ebi.b();
    RealTimeChatService.a(new bif((ebi)localObject, paramInt));
    RealTimeChatService.a((ebi)localObject, paramInt, paramdnq, b, c, d);
    return ((ebi)localObject).a();
  }
  
  public static int a(String paramString)
  {
    if (TextUtils.equals("RING", paramString)) {
      return 50;
    }
    if (TextUtils.equals("INVITE", paramString)) {
      return 20;
    }
    if (TextUtils.equals("BLOCKED", paramString)) {
      return 10;
    }
    return 0;
  }
  
  private static bih a(String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      try
      {
        if (paramString2.startsWith(paramString1))
        {
          Object localObject = paramString2.substring(paramString1.length() + 1).split("_");
          if (localObject.length > 1)
          {
            paramString1 = Base64.decode(localObject[0], 2);
            localObject = Base64.decode(localObject[1], 2);
            if ((paramString1 != null) && (localObject != null))
            {
              paramString1 = new bih(paramString2, new String(paramString1, "UTF-8"), new String((byte[])localObject, "UTF-8"));
              return paramString1;
            }
          }
        }
      }
      catch (UnsupportedEncodingException paramString1) {}
    }
    return null;
  }
  
  private static if<String, bih> a(hqb paramhqb)
  {
    int i = 0;
    if localif = new if();
    paramhqb = paramhqb.e("chat_acl_settings_circle");
    int j = paramhqb.a("count", 0);
    while (i < j)
    {
      hqb localhqb = paramhqb.e(Integer.toString(i));
      bih localbih = new bih(null, localhqb.b("id"), localhqb.b("name"));
      d = localhqb.b("level");
      localif.put(b, localbih);
      i += 1;
    }
    return localif;
  }
  
  private static String a(int paramInt, String paramString)
  {
    return ((hpz)ilh.a(aal.oJ, hpz.class)).a(paramInt).a(paramString, "INVITE");
  }
  
  static void a()
  {
    bii localbii = (bii)a.get();
    if (localbii != null) {
      localbii.L_();
    }
  }
  
  public static void a(int paramInt)
  {
    if (paramInt == -1)
    {
      ezi.d("Babel", "OzChatAclSettings.syncRemote: empty account", new Object[0]);
      return;
    }
    ezi.a("Babel", 53 + "OzChatAclSettings.syncRemote: syncing for " + paramInt, new Object[0]);
    RealTimeChatService.d(paramInt);
  }
  
  public static void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<dqz> paramList)
  {
    hqc localhqc1 = ((hpz)ilh.a(aal.oJ, hpz.class)).b(paramInt1);
    Object localObject1 = f(paramInt2);
    boolean bool1 = a(localhqc1, "chat_acl_settings_public", localhqc1.a("chat_acl_settings_public", ""), (String)localObject1);
    localObject1 = f(paramInt3);
    boolean bool2 = a(localhqc1, "chat_acl_settings_phone", localhqc1.a("chat_acl_settings_phone", ""), (String)localObject1);
    localObject1 = f(paramInt4);
    paramInt1 = a(localhqc1, "chat_acl_settings_email", localhqc1.a("chat_acl_settings_email", ""), (String)localObject1) | bool1 | false | bool2;
    localObject1 = a(localhqc1);
    int i = ((if)localObject1).size();
    hqc localhqc2 = localhqc1.g("chat_acl_settings_circle");
    Object localObject2;
    Object localObject3;
    String str;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      paramInt2 = 0;
      paramInt3 = paramInt2;
      paramInt4 = paramInt1;
      if (!paramList.hasNext()) {
        break label402;
      }
      localObject2 = (dqz)paramList.next();
      if ((!TextUtils.isEmpty(a)) && (!TextUtils.isEmpty(b)))
      {
        localObject3 = (bih)((if)localObject1).get(a);
        str = f(c);
        if ((localObject3 != null) && (b.equals(c)) && (str.equals(d))) {
          break label488;
        }
        paramInt1 = 1;
      }
    }
    label402:
    label488:
    for (;;)
    {
      localhqc2.h(Integer.toString(paramInt2)).c("id", a).c("name", b).c("level", str);
      paramInt2 += 1;
      break;
      localObject3 = String.valueOf("OzChatAclSettings.save: received empty circle id or name:circleId=");
      str = a;
      localObject2 = b;
      ezi.d("Babel", String.valueOf(localObject3).length() + 13 + String.valueOf(str).length() + String.valueOf(localObject2).length() + (String)localObject3 + str + ", circleName=" + (String)localObject2, new Object[0]);
      break;
      paramInt3 = 0;
      paramInt4 = paramInt1;
      localhqc2.c("count", paramInt3);
      if (paramInt3 < i) {
        paramInt1 = 1;
      }
      while (paramInt3 < i)
      {
        localhqc2.h(Integer.toString(paramInt3)).i("id").i("name").i("level");
        paramInt3 += 1;
        continue;
        paramInt1 = 0;
      }
      if ((paramInt1 | paramInt4) != 0)
      {
        localhqc1.d();
        a();
      }
      return;
    }
  }
  
  private static boolean a(hqe paramhqe, String paramString1, String paramString2, String paramString3)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool1 = bool2;
      if (!TextUtils.equals(paramString3, paramString2))
      {
        paramhqe.c(paramString1, paramString3);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static List<bih> b(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    hqb localhqb1 = ((hpz)ilh.a(aal.oJ, hpz.class)).a(paramInt).e("chat_acl_settings_circle");
    int j = localhqb1.a("count", 0);
    int i = 0;
    while (i < j)
    {
      hqb localhqb2 = localhqb1.e(Integer.toString(i));
      Object localObject = String.valueOf("chat_acl_settings_circle");
      String str = String.valueOf("level");
      localObject = new bih(String.valueOf(localObject).length() + 25 + String.valueOf(str).length() + paramInt + "." + (String)localObject + "." + i + "." + str, localhqb2.b("id"), localhqb2.b("name"));
      d = localhqb2.b("level");
      localArrayList.add(localObject);
      i += 1;
    }
    return localArrayList;
  }
  
  public static void b(int paramInt, bih parambih, dnq paramdnq)
  {
    Object localObject = ((hpz)ilh.a(aal.oJ, hpz.class)).a(paramInt);
    if localif = a((hqb)localObject);
    int k = a(((hqb)localObject).a("chat_acl_settings_public", ""));
    int j = a(((hqb)localObject).a("chat_acl_settings_phone", ""));
    int i = a(((hqb)localObject).a("chat_acl_settings_email", ""));
    switch (big.a[paramdnq.ordinal()])
    {
    }
    for (;;)
    {
      parambih = new ArrayList();
      int m = 0;
      while (m < localif.size())
      {
        paramdnq = (bih)localif.c(m);
        localObject = new dqz();
        b = c;
        a = b;
        c = a(d);
        parambih.add(localObject);
        m += 1;
      }
      k = a(d);
      continue;
      j = a(d);
      continue;
      i = a(d);
      continue;
      localif.put(b, parambih);
    }
    a(paramInt, k, j, i, parambih);
  }
  
  public static String c(int paramInt)
  {
    return a(paramInt, "chat_acl_settings_public");
  }
  
  public static String d(int paramInt)
  {
    return a(paramInt, "chat_acl_settings_phone");
  }
  
  public static String e(int paramInt)
  {
    return a(paramInt, "chat_acl_settings_email");
  }
  
  private static String f(int paramInt)
  {
    if (paramInt == 20) {
      return "INVITE";
    }
    if (paramInt == 50) {
      return "RING";
    }
    if (paramInt == 10) {
      return "BLOCKED";
    }
    return null;
  }
  
  public void a(hqe paramhqe, SharedPreferences paramSharedPreferences, SharedPreferences.Editor paramEditor)
  {
    ArrayList localArrayList = new ArrayList();
    paramSharedPreferences = paramSharedPreferences.getAll();
    if (paramSharedPreferences != null)
    {
      paramSharedPreferences = paramSharedPreferences.entrySet().iterator();
      while (paramSharedPreferences.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramSharedPreferences.next();
        bih localbih = a("chat_acl_settings_circle", (String)localEntry.getKey());
        if (localbih != null)
        {
          d = ((String)localEntry.getValue());
          localArrayList.add(localbih);
          paramEditor.remove((String)localEntry.getKey());
        }
      }
    }
    paramhqe = paramhqe.h("chat_acl_settings_circle");
    paramhqe.c("count", localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      paramSharedPreferences = (bih)localArrayList.get(i);
      paramhqe.h(Integer.toString(i)).c("id", b).c("name", c).c("level", d);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */