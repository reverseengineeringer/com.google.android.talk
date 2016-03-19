import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class cds
  implements DialogInterface.OnClickListener
{
  cds(cdr paramcdr, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a();
    RealTimeChatService.c(a, enu.b(cdn.a));
    b.getActivity().finish();
    aal.n();
  }
}

/* Location:
 * Qualified Name:     cds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */