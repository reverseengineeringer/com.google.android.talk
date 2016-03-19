import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Telephony.Threads;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dwk
  extends dyx
{
  private final String a;
  private final long e;
  private int f = 0;
  
  public dwk(bfd parambfd, String paramString, long paramLong)
  {
    super(parambfd);
    a = paramString;
    e = paramLong;
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void p_()
  {
    Object localObject1 = new bfz(aal.oJ, b.a);
    boolean bool = bfz.b(a);
    if ((!bool) && (((bfz)localObject1).g(a) != 2) && (((bfz)localObject1).p(a) != 1))
    {
      String str1 = String.valueOf("Tried to delete a Hangouts group conversation, but they are not deletable.\n\tAccountIndex: ");
      int i = b.a;
      String str2 = String.valueOf(ezi.b(a));
      int j = ((bfz)localObject1).g(a);
      int k = ((bfz)localObject1).p(a);
      ezi.e("Babel", String.valueOf(str1).length() + 118 + String.valueOf(str2).length() + str1 + i + "\n\tConversationId: " + str2 + "\n\tisSmsConv: false\n\tConversationTransportType: " + j + "\n\tConversationType: " + k, new Object[0]);
      throw new IllegalArgumentException("Hangouts group conversations are not deletable");
    }
    if (bool) {}
    for (long l = ((bfz)localObject1).W(a);; l = -1L)
    {
      ((bfz)localObject1).a();
      for (;;)
      {
        try
        {
          if (bfz.a(a))
          {
            if ((bool) || (e < 0L))
            {
              ((bfz)localObject1).d(a, Long.MAX_VALUE);
              bft.d((bfz)localObject1);
              ((bfz)localObject1).b();
              ((bfz)localObject1).c();
              if (l != -1L)
              {
                if (Build.VERSION.SDK_INT < 19) {
                  break label463;
                }
                localObject1 = Telephony.Threads.CONTENT_URI;
                localObject1 = ContentUris.withAppendedId((Uri)localObject1, l);
                aal.oJ.getContentResolver().delete((Uri)localObject1, null, null);
              }
              if (bfz.a(a))
              {
                localObject1 = new jyo();
                responseHeader = new kdp();
                responseHeader.a = Integer.valueOf(1);
                localObject1 = new dqn((jyo)localObject1);
                localObject1 = new eau(f, 1, (dqf)localObject1);
                RealTimeChatService.a(f, b.b, (eau)localObject1);
              }
              return;
            }
            ((bfz)localObject1).q(a);
            ((bfz)localObject1).m(a, 2L);
            continue;
          }
          new dwl(a, e, null).a(this);
        }
        finally
        {
          ((bfz)localObject1).c();
        }
        ((bfz)localObject1).q(a);
        continue;
        label463:
        localObject1 = Uri.withAppendedPath(Uri.parse("content://mms-sms/"), "conversations");
      }
    }
  }
}

/* Location:
 * Qualified Name:     dwk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */