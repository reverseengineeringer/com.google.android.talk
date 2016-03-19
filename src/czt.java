import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.AdapterView.OnItemClickListener;

public final class czt
  extends hpj<czq>
{
  ill aj;
  ilh ak;
  iog al = new iog();
  bfd am;
  bjp an;
  axq ao;
  bdy ap;
  bkw aq;
  private final bjq ar = new czu(this);
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    aj = new ill(paramActivity, ilh.a(paramActivity, getParentFragment()));
    ak = aj.getBinder();
    al.a(new czv(this));
    ak.a(bjq.class, ar);
    am = dvd.e(((hpu)ak.a(hpu.class)).a());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      ap = ((bdy)getArguments().getSerializable("action_sheet_hangouts_contact"));
      if (aq == null) {
        break label122;
      }
      an = ((bjr)ak.a(bjr.class)).a(aj, al, 0, this, ao, aq);
    }
    for (;;)
    {
      al.c(paramBundle);
      return;
      ap = ((bdy)paramBundle.getSerializable("action_sheet_hangouts_contact"));
      ao = ((axq)paramBundle.getSerializable("action_sheet_edit_participants_model"));
      aq = ((bkw)paramBundle.getSerializable("action_sheet_conversation_type"));
      break;
      label122:
      aal.a(am, 2504);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    al.c();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (aq == null) {
      aal.a(am, 2505);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putSerializable("action_sheet_hangouts_contact", ap);
    paramBundle.putSerializable("action_sheet_edit_participants_model", ao);
    paramBundle.putSerializable("action_sheet_conversation_type", aq);
    al.d(paramBundle);
  }
  
  protected int q()
  {
    return 0;
  }
  
  protected String r()
  {
    return null;
  }
  
  protected AdapterView.OnItemClickListener s()
  {
    return new czw(this);
  }
}

/* Location:
 * Qualified Name:     czt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */