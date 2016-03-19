import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.google.android.apps.hangouts.fragments.ConversationParticipantsFragment;

final class cdg
  implements DialogInterface.OnClickListener
{
  cdg(cde paramcde, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((ConversationParticipantsFragment)b.getTargetFragment()).a(a.getText().toString().trim());
  }
}

/* Location:
 * Qualified Name:     cdg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */