import android.accounts.Account;
import android.os.IInterface;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.CheckServerAuthResult;
import com.google.android.gms.signin.internal.RecordConsentRequest;

public abstract interface gqn
  extends IInterface
{
  public abstract void a(int paramInt);
  
  public abstract void a(int paramInt, Account paramAccount, gqk paramgqk);
  
  public abstract void a(AuthAccountRequest paramAuthAccountRequest, gqk paramgqk);
  
  public abstract void a(ResolveAccountRequest paramResolveAccountRequest, fmd paramfmd);
  
  public abstract void a(CheckServerAuthResult paramCheckServerAuthResult);
  
  public abstract void a(RecordConsentRequest paramRecordConsentRequest, gqk paramgqk);
  
  public abstract void a(fks paramfks, int paramInt, boolean paramBoolean);
  
  public abstract void a(gqk paramgqk);
  
  public abstract void a(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     gqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */