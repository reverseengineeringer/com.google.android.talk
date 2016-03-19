import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

public class ekh
{
  private final hpz a;
  private final SharedPreferences b;
  
  ekh(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ijs.b(paramContext);
  }
  
  public void a(int paramInt, String paramString1, String paramString2, long paramLong)
  {
    if (paramInt != -1) {
      a.b(paramInt).b("LAST_CALL_LOCAL_SESSION", paramString1).b("LAST_CALL_LOGS_PATH", paramString2).b("LAST_CALL_START_TIME", paramLong).d();
    }
    b.edit().putString("LAST_CALL_LOCAL_SESSION", paramString1).putString("LAST_CALL_LOGS_PATH", paramString2).putLong("LAST_CALL_START_TIME", paramLong).apply();
  }
  
  public boolean a(int paramInt)
  {
    return a.a(paramInt).a("improve_hangouts_key", true);
  }
  
  /* Error */
  public boolean a(int paramInt1, int paramInt2, long paramLong)
  {
    // Byte code:
    //   0: iload_1
    //   1: iconst_m1
    //   2: if_icmpne +177 -> 179
    //   5: aload_0
    //   6: getfield 29	ekh:b	Landroid/content/SharedPreferences;
    //   9: ldc 87
    //   11: ldc 89
    //   13: invokeinterface 93 3 0
    //   18: astore 11
    //   20: iload_2
    //   21: invokestatic 99	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   24: astore 12
    //   26: aload 11
    //   28: invokestatic 105	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   31: ifne +274 -> 305
    //   34: new 107	org/json/JSONObject
    //   37: dup
    //   38: aload 11
    //   40: invokespecial 110	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   43: astore 10
    //   45: aload 10
    //   47: aload 12
    //   49: ldc2_w 111
    //   52: invokevirtual 116	org/json/JSONObject:optLong	(Ljava/lang/String;J)J
    //   55: lstore 5
    //   57: iconst_0
    //   58: istore 9
    //   60: invokestatic 122	java/lang/System:currentTimeMillis	()J
    //   63: ldc2_w 123
    //   66: ldiv
    //   67: lstore 7
    //   69: lload 5
    //   71: ldc2_w 111
    //   74: lcmp
    //   75: ifeq +11 -> 86
    //   78: lload 5
    //   80: lload 7
    //   82: lcmp
    //   83: ifge +214 -> 297
    //   86: iconst_1
    //   87: istore 9
    //   89: aload 10
    //   91: astore 11
    //   93: aload 10
    //   95: ifnonnull +37 -> 132
    //   98: new 107	org/json/JSONObject
    //   101: dup
    //   102: invokespecial 125	org/json/JSONObject:<init>	()V
    //   105: astore 11
    //   107: ldc 127
    //   109: ldc -127
    //   111: iconst_1
    //   112: anewarray 4	java/lang/Object
    //   115: dup
    //   116: iconst_0
    //   117: iload_1
    //   118: invokestatic 134	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   121: aastore
    //   122: invokestatic 138	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   125: iconst_0
    //   126: anewarray 4	java/lang/Object
    //   129: invokestatic 143	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   132: lload 7
    //   134: lload_3
    //   135: ladd
    //   136: lstore_3
    //   137: aload 11
    //   139: aload 12
    //   141: lload_3
    //   142: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   145: pop
    //   146: iload_1
    //   147: iconst_m1
    //   148: if_icmpne +91 -> 239
    //   151: aload_0
    //   152: getfield 29	ekh:b	Landroid/content/SharedPreferences;
    //   155: invokeinterface 58 1 0
    //   160: ldc 87
    //   162: aload 11
    //   164: invokevirtual 151	org/json/JSONObject:toString	()Ljava/lang/String;
    //   167: invokeinterface 64 3 0
    //   172: invokeinterface 71 1 0
    //   177: iconst_1
    //   178: ireturn
    //   179: aload_0
    //   180: getfield 22	ekh:a	Lhpz;
    //   183: iload_1
    //   184: invokeinterface 75 2 0
    //   189: ldc 87
    //   191: ldc 89
    //   193: invokeinterface 153 3 0
    //   198: astore 11
    //   200: goto -180 -> 20
    //   203: astore 10
    //   205: aconst_null
    //   206: astore 10
    //   208: ldc 127
    //   210: ldc -101
    //   212: iconst_1
    //   213: anewarray 4	java/lang/Object
    //   216: dup
    //   217: iconst_0
    //   218: aload 11
    //   220: aastore
    //   221: invokestatic 138	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   224: iconst_0
    //   225: anewarray 4	java/lang/Object
    //   228: invokestatic 157	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   231: ldc2_w 111
    //   234: lstore 5
    //   236: goto -179 -> 57
    //   239: aload_0
    //   240: getfield 22	ekh:a	Lhpz;
    //   243: iload_1
    //   244: invokeinterface 34 2 0
    //   249: ldc 87
    //   251: aload 11
    //   253: invokevirtual 151	org/json/JSONObject:toString	()Ljava/lang/String;
    //   256: invokevirtual 41	hqc:b	(Ljava/lang/String;Ljava/lang/String;)Lhqc;
    //   259: invokevirtual 52	hqc:d	()I
    //   262: pop
    //   263: iconst_1
    //   264: ireturn
    //   265: astore 10
    //   267: ldc 127
    //   269: ldc -97
    //   271: iconst_2
    //   272: anewarray 4	java/lang/Object
    //   275: dup
    //   276: iconst_0
    //   277: lload_3
    //   278: invokestatic 164	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   281: aastore
    //   282: dup
    //   283: iconst_1
    //   284: aload 12
    //   286: aastore
    //   287: invokestatic 138	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   290: iconst_0
    //   291: anewarray 4	java/lang/Object
    //   294: invokestatic 167	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   297: iload 9
    //   299: ireturn
    //   300: astore 13
    //   302: goto -94 -> 208
    //   305: aconst_null
    //   306: astore 10
    //   308: ldc2_w 111
    //   311: lstore 5
    //   313: goto -256 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	316	0	this	ekh
    //   0	316	1	paramInt1	int
    //   0	316	2	paramInt2	int
    //   0	316	3	paramLong	long
    //   55	257	5	l1	long
    //   67	66	7	l2	long
    //   58	240	9	bool	boolean
    //   43	51	10	localJSONObject	org.json.JSONObject
    //   203	1	10	localJSONException1	org.json.JSONException
    //   206	1	10	localObject1	Object
    //   265	1	10	localJSONException2	org.json.JSONException
    //   306	1	10	localObject2	Object
    //   18	234	11	localObject3	Object
    //   24	261	12	str	String
    //   300	1	13	localJSONException3	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   34	45	203	org/json/JSONException
    //   137	146	265	org/json/JSONException
    //   151	177	265	org/json/JSONException
    //   239	263	265	org/json/JSONException
    //   45	57	300	org/json/JSONException
  }
  
  public void b(int paramInt)
  {
    a.b(paramInt).b("improve_hangouts_key", true).d();
  }
  
  public void c(int paramInt)
  {
    if (paramInt != -1) {
      a.b(paramInt).f("THROTTLED_IMPRESSIONS").d();
    }
    b.edit().remove("THROTTLED_IMPRESSIONS").apply();
  }
  
  public String d(int paramInt)
  {
    if (paramInt == -1) {}
    for (String str1 = "";; str1 = a.a(paramInt).b("LAST_CALL_LOCAL_SESSION"))
    {
      String str2 = str1;
      if (TextUtils.isEmpty(str1)) {
        str2 = b.getString("LAST_CALL_LOCAL_SESSION", "");
      }
      return str2;
    }
  }
  
  public String e(int paramInt)
  {
    if (paramInt == -1) {}
    for (String str1 = "";; str1 = a.a(paramInt).b("LAST_CALL_LOGS_PATH"))
    {
      String str2 = str1;
      if (TextUtils.isEmpty(str1)) {
        str2 = b.getString("LAST_CALL_LOGS_PATH", "");
      }
      return str2;
    }
  }
  
  public long f(int paramInt)
  {
    if (paramInt == -1) {}
    for (long l1 = -1L;; l1 = a.a(paramInt).a("LAST_CALL_START_TIME", -1L))
    {
      long l2 = l1;
      if (l1 == -1L) {
        l2 = b.getLong("LAST_CALL_START_TIME", -1L);
      }
      return l2;
    }
  }
}

/* Location:
 * Qualified Name:     ekh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */