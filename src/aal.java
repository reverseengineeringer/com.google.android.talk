import android.accounts.Account;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PackageStats;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.MediaMetadataRetriever;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.opengl.GLES20;
import android.os.Binder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.preference.PreferenceManager;
import android.telecom.DisconnectCause;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextUtils.SimpleStringSplitter;
import android.text.TextUtils.StringSplitter;
import android.text.format.DateUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.text.style.TtsSpan;
import android.text.style.TtsSpan.DigitsBuilder;
import android.text.style.TtsSpan.TextBuilder;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.MimeTypeMap;
import android.widget.EdgeEffect;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.HangoutSupportInitializationActivity;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.AccountSelectionActivity;
import com.google.android.apps.hangouts.phone.ApnEditorActivity;
import com.google.android.apps.hangouts.phone.ArchivedConversationListActivity;
import com.google.android.apps.hangouts.phone.BabelPhotoViewActivity;
import com.google.android.apps.hangouts.phone.BlockedContactsActivity;
import com.google.android.apps.hangouts.phone.ConversationActivity;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.phone.EditAudienceActivity;
import com.google.android.apps.hangouts.phone.GoogleVoiceTermsOfServiceActivity;
import com.google.android.apps.hangouts.phone.InvitationActivity;
import com.google.android.apps.hangouts.phone.ShowDialerActivity;
import com.google.android.apps.hangouts.phone.SmsStorageLowWarningActivity;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import com.google.android.apps.hangouts.telephony.TeleFeedback.FeedbackActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.herrevad.PredictedNetworkQuality;
import com.google.android.gms.location.places.internal.PlaceImpl;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wearable.Asset;
import dalvik.system.DexFile;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.TypeVariable<*>;
import java.lang.reflect.WildcardType;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.nio.charset.Charset;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class aal
  implements gu
{
  public static final int A = 2131755013;
  public static final int B = 2131624406;
  public static final int C = 2131427573;
  public static final int D = 2131427572;
  public static final int E = 2131427571;
  public static final int F = 2131427577;
  public static final int G = 2130837506;
  public static final int H = 2130837508;
  public static final int I = 2130837509;
  public static final int J = 2130837512;
  public static final int K = 2130837513;
  public static final int L = 2130837514;
  public static final int M = 2130837521;
  public static final int N = 2130837522;
  public static final int O = 2130837523;
  public static final int P = 2130837527;
  public static final int Q = 2130837528;
  public static final int R = 2130837529;
  public static final int S = 2130837530;
  public static final int T = 2130837531;
  public static final int U = 2130837532;
  public static final int V = 2130837533;
  public static final int W = 2130837534;
  public static final int X = 2130837535;
  public static final int Y = 2130837536;
  public static final int Z = 2130837537;
  public static final int aA = 2131558572;
  public static final int aB = 2131558546;
  public static final int aC = 2131558547;
  public static final int aD = 2131558559;
  public static final int aE = 2131558554;
  public static final int aF = 2131558560;
  public static final int aG = 2131558566;
  public static final int aH = 2131558565;
  public static final int aI = 2131558574;
  public static final int aJ = 2131558550;
  public static final int aK = 2131558548;
  public static final int aL = 2131558552;
  public static final int aM = 2131558549;
  public static final int aN = 2131558551;
  public static final int aO = 2131558556;
  public static final int aP = 2131558564;
  public static final int aQ = 2131558561;
  public static final int aR = 2131558562;
  public static final int aS = 2131558569;
  public static final int aT = 2131558555;
  public static final int aU = 2131558435;
  public static final int aV = 2131558563;
  public static final int aW = 2131558553;
  public static final int aX = 2131558558;
  public static final int aY = 2131558557;
  public static final int aZ = 2131689515;
  public static final int aa = 2130837538;
  public static final int ab = 2130837539;
  public static final int ac = 2130837542;
  public static final int ad = 2130837553;
  public static final int ae = 2130837554;
  public static final int af = 2130837555;
  public static final int ag = 2130837561;
  public static final int ah = 2130837562;
  public static final int ai = 2130837563;
  public static final int aj = 2130837564;
  public static final int ak = 2130837565;
  public static final int al = 2130837566;
  public static final int am = 2130837567;
  public static final int an = 2130837569;
  public static final int ao = 2130837570;
  public static final int ap = 2130837571;
  public static final int aq = 2130837572;
  public static final int ar = 2130837573;
  public static final int as = 2130837574;
  public static final int at = 2131558576;
  public static final int au = 2131558434;
  public static final int av = 2131558575;
  public static final int aw = 2131558545;
  public static final int ax = 2131558544;
  public static final int ay = 2131558577;
  public static final int az = 2131558437;
  public static final int bA = 2131427522;
  public static final int bB = 2131492954;
  public static final int bC = 2131755009;
  public static final int bD = 2131623989;
  public static final int bE = 2131623990;
  public static final int bF = 2131427468;
  public static final int bG = 2131427467;
  public static final int bH = 2131427471;
  public static final int bI = 2130837664;
  public static final int bJ = 2131559113;
  public static final int bK = 2131559114;
  public static final int bL = 2131559112;
  public static final int bM = 2131559103;
  public static final int bN = 2131559102;
  public static final int bO = 2131559105;
  public static final int bP = 2131559110;
  public static final int bQ = 2131559111;
  public static final int bR = 2131559109;
  public static final int bS = 2131559104;
  public static final int bT = 2131559115;
  public static final int bU = 2131689492;
  public static final int bV = 2130968825;
  public static final int bW = 2130968826;
  public static final int bX = 2131362199;
  public static final int bY = 2131362197;
  public static final int bZ = 2131362200;
  public static final int ba = 2130968576;
  public static final int bb = 2130968579;
  public static final int bc = 2130968580;
  public static final int bd = 2130968582;
  public static final int be = 2130968583;
  public static final int bf = 2130968584;
  public static final int bg = 2130968587;
  public static final int bh = 2130968588;
  public static final int bi = 2130968589;
  public static final int bj = 2130968590;
  public static final int bk = 2130968591;
  public static final int bl = 2130968592;
  public static final int bm = 2130968593;
  public static final int bn = 2130968595;
  public static final int bo = 2130968596;
  public static final int bp = 2130968597;
  public static final int bq = 2131364473;
  public static final int br = 2131364485;
  public static final int bs = 2131364484;
  public static final int bt = 2131364487;
  public static final int bu = 2131364486;
  public static final int bv = 2131493209;
  public static final int bw = 2131493286;
  public static final int bx = 2131493274;
  public static final int by = 2131624015;
  public static final int bz = 2131624014;
  public static final int cA = 2131296274;
  public static final int cB = 2131296275;
  public static final int cC = 2131296272;
  public static final int cD = 2131296267;
  public static final int cE = 2131296262;
  public static final int cF = 2131296261;
  public static final int cG = 2131296260;
  public static final int cH = 2131296259;
  public static final int cI = 2131296268;
  public static final int cJ = 2130772373;
  public static final int cK = 2130772145;
  public static final int cL = 2130772371;
  public static final int cM = 2130772370;
  public static final int cN = 2130772372;
  public static final int cO = 2131755018;
  public static final int cP = 2131624598;
  public static final int cQ = 2131624596;
  public static final int cR = 2131624472;
  public static final int cS = 2131623965;
  public static final int cT = 2131624467;
  public static final int cU = 2131624584;
  public static final int cV = 2131624585;
  public static final int cW = 2131624581;
  public static final int cX = 2131624047;
  public static final int cY = 2131624564;
  public static final int cZ = 2131624593;
  public static final int ca = 2131363072;
  public static final int cb = 2131363071;
  public static final int cc = 2131363070;
  public static final int cd = 2131363073;
  public static final int ce = 2131363069;
  public static final int cf = 2131363074;
  public static final int cg = 2131363080;
  public static final int ch = 2131034123;
  public static final int ci = 2131034124;
  public static final int cj = 2131034130;
  public static final int ck = 2131034131;
  public static final int cl = 2131034132;
  public static final int cm = 2131034133;
  public static final int cn = 2131034134;
  public static final int co = 2131034137;
  public static final int cp = 2131034138;
  public static final int cq = 2131034149;
  public static final int cr = 2131034150;
  public static final int cs = 2131296263;
  public static final int ct = 2131296265;
  public static final int cu = 2131296264;
  public static final int cv = 2131296266;
  public static final int cw = 2131296270;
  public static final int cx = 2131296269;
  public static final int cy = 2131296273;
  public static final int cz = 2131296271;
  public static final int dA = 2131624595;
  public static final int dB = 2131624594;
  public static final int dC = 2131624061;
  public static final int dD = 2131624046;
  public static final int dE = 2131624566;
  public static final int dF = 2131624565;
  public static final int dG = 2131624567;
  public static final int dH = 2131624468;
  public static final int dI = 2131624597;
  public static final int dJ = 2131427839;
  public static final int dK = 2131427838;
  public static final int dL = 2131427722;
  public static final int dM = 2131427796;
  public static final int dN = 2131427790;
  public static final int dO = 2131427799;
  public static final int dP = 2131427804;
  public static final int dQ = 2131427802;
  public static final int dR = 2131427803;
  public static final int dS = 2131427672;
  public static final int dT = 2131427674;
  public static final int dU = 2131427671;
  public static final int dV = 2131427670;
  public static final int dW = 2131427675;
  public static final int dX = 2131427673;
  public static final int dY = 2131427668;
  public static final int dZ = 2131427669;
  public static final int da = 2131624592;
  public static final int db = 2131624494;
  public static final int dc = 2131624057;
  public static final int dd = 2131624058;
  public static final int de = 2131624059;
  public static final int df = 2131624060;
  public static final int dg = 2131623969;
  public static final int dh = 2131624041;
  public static final int di = 2131624080;
  public static final int dj = 2131624166;
  public static final int dk = 2131624169;
  public static final int dl = 2131624171;
  public static final int dm = 2131624172;
  public static final int dn = 2131624105;
  public static final int jdField_do = 2131624085;
  public static final int dp = 2131624086;
  public static final int dq = 2131624515;
  public static final int dr = 2131624517;
  public static final int ds = 2131624516;
  public static final int dt = 2131624518;
  public static final int du = 2131624511;
  public static final int dv = 2131624513;
  public static final int dw = 2131624512;
  public static final int dx = 2131624514;
  public static final int dy = 2131624525;
  public static final int dz = 2131624524;
  public static final int eA = 2131427558;
  public static final int eB = 2131427478;
  public static final int eC = 2131427390;
  public static final int eD = 2131427859;
  public static final int eE = 2131427857;
  public static final int eF = 2131427858;
  public static final int eG = 2131427789;
  public static final int eH = 2131427694;
  public static final int eI = 2131427742;
  public static final int eJ = 2131427561;
  public static final int eK = 2131689531;
  public static final int eL = 2131689530;
  public static final int eM = 2131689523;
  public static final int eN = 2131689520;
  public static final int eO = 2131689528;
  public static final int eP = 2131689522;
  public static final int eQ = 2131689521;
  public static final int eR = 2130968613;
  public static final int eS = 2130968618;
  public static final int eT = 2130968624;
  public static final int eU = 2130968628;
  public static final int eV = 2130968630;
  public static final int eW = 2130968631;
  public static final int eX = 2130968633;
  public static final int eY = 2130968634;
  public static final int eZ = 2130968635;
  public static final int ea = 2131427693;
  public static final int eb = 2131427768;
  public static final int ec = 2131427865;
  public static final int ed = 2131427775;
  public static final int ee = 2131427777;
  public static final int ef = 2131427774;
  public static final int eg = 2131427848;
  public static final int eh = 2131427849;
  public static final int ei = 2131427557;
  public static final int ej = 2131427481;
  public static final int ek = 2131427480;
  public static final int el = 2131427717;
  public static final int em = 2131427707;
  public static final int en = 2131427652;
  public static final int eo = 2131427651;
  public static final int ep = 2131427653;
  public static final int eq = 2131427706;
  public static final int er = 2131427654;
  public static final int es = 2131427743;
  public static final int et = 2131427788;
  public static final int eu = 2131427730;
  public static final int ev = 2131427731;
  public static final int ew = 2131427727;
  public static final int ex = 2131427726;
  public static final int ey = 2131427562;
  public static final int ez = 2131427556;
  public static final int fA = 2130968706;
  public static final int fB = 2130968713;
  public static final int fC = 2130968715;
  public static final int fD = 2130968716;
  public static final int fE = 2130968722;
  public static final int fF = 2130968724;
  public static final int fG = 2130968725;
  public static final int fH = 2130968730;
  public static final int fI = 2130968738;
  public static final int fJ = 2130968741;
  public static final int fK = 2130968742;
  public static final int fL = 2130968743;
  public static final int fM = 2130968744;
  public static final int fN = 2130968745;
  public static final int fO = 2130968747;
  public static final int fP = 2130968748;
  public static final int fQ = 2130968749;
  public static final int fR = 2130968750;
  public static final int fS = 2130968751;
  public static final int fT = 2130968752;
  public static final int fU = 2130968753;
  public static final int fV = 2130968754;
  public static final int fW = 2130968756;
  public static final int fX = 2130968759;
  public static final int fY = 2130968762;
  public static final int fZ = 2130968763;
  public static final int fa = 2130968643;
  public static final int fb = 2130968644;
  public static final int fc = 2130968647;
  public static final int fd = 2130968667;
  public static final int fe = 2130968668;
  public static final int ff = 2130968669;
  public static final int fg = 2130968670;
  public static final int fh = 2130968671;
  public static final int fi = 2130968672;
  public static final int fj = 2130968673;
  public static final int fk = 2130968674;
  public static final int fl = 2130968676;
  public static final int fm = 2130968677;
  public static final int fn = 2130968678;
  public static final int fo = 2130968679;
  public static final int fp = 2130968680;
  public static final int fq = 2130968681;
  public static final int fr = 2130968682;
  public static final int fs = 2130968687;
  public static final int ft = 2130968688;
  public static final int fu = 2130968689;
  public static final int fv = 2130968690;
  public static final int fw = 2130968691;
  public static final int fx = 2130968692;
  public static final int fy = 2130968693;
  public static final int fz = 2130968694;
  public static final int gA = 2130968818;
  public static final int gB = 2130968821;
  public static final int gC = 2130968829;
  public static final int gD = 2130968852;
  public static final int gE = 2130968854;
  public static final int gF = 2130968859;
  public static final int gG = 2130968861;
  public static final int gH = 2130968863;
  public static final int gI = 2130968864;
  public static final int gJ = 2130968868;
  public static final int gK = 2130968872;
  public static final int gL = 2130968882;
  public static final int gM = 2130968883;
  public static final int gN = 2130968893;
  public static final int gO = 2130968894;
  public static final int gP = 2130968895;
  public static final int gQ = 2130968896;
  public static final int gR = 2130968898;
  public static final int gS = 2130968899;
  public static final int gT = 2130968900;
  public static final int gU = 2130968901;
  public static final int gV = 2130968902;
  public static final int gW = 2130968903;
  public static final int gX = 2131886080;
  public static final int gY = 2131886081;
  public static final int gZ = 2131886082;
  public static final int ga = 2130968764;
  public static final int gb = 2130968765;
  public static final int gc = 2130968768;
  public static final int gd = 2130968769;
  public static final int ge = 2130968770;
  public static final int gf = 2130968771;
  public static final int gg = 2130968772;
  public static final int gh = 2130968773;
  public static final int gi = 2130968775;
  public static final int gj = 2130968777;
  public static final int gk = 2130968779;
  public static final int gl = 2130968780;
  public static final int gm = 2130968782;
  public static final int gn = 2130968786;
  public static final int go = 2130968789;
  public static final int gp = 2130968790;
  public static final int gq = 2130968791;
  public static final int gr = 2130968792;
  public static final int gs = 2130968794;
  public static final int gt = 2130968795;
  public static final int gu = 2130968796;
  public static final int gv = 2130968807;
  public static final int gw = 2130968808;
  public static final int gx = 2130968809;
  public static final int gy = 2130968811;
  public static final int gz = 2130968814;
  public static final int h = 2131034128;
  public static final int hA = 2131820573;
  public static final int hB = 2131820579;
  public static final int hC = 2131820580;
  public static final int hD = 2131820583;
  public static final int hE = 2131820591;
  public static final int hF = 2131820593;
  public static final int hG = 2131230726;
  public static final int hH = 2131230727;
  public static final int hI = 2131230728;
  public static final int hJ = 2131230729;
  public static final int hK = 2131230730;
  public static final int hL = 2131230732;
  public static final int hM = 2131230733;
  public static final int hN = 2131493453;
  public static final int hO = 2131493452;
  public static final int hP = 2131493422;
  public static final int hQ = 2131493423;
  public static final int hR = 2131492908;
  public static final int hS = 2131492907;
  public static final int hT = 2131493419;
  public static final int hU = 2131165184;
  public static final int hV = 2131165185;
  public static final int hW = 2131165186;
  public static final int hX = 2131165191;
  public static final int hY = 2131362166;
  public static final int hZ = 2131362165;
  public static final int ha = 2131886085;
  public static final int hb = 2131886087;
  public static final int hc = 2131886088;
  public static final int hd = 2131886090;
  public static final int he = 2131886091;
  public static final int hf = 2130903042;
  public static final int hg = 2131820568;
  public static final int hh = 2131820569;
  public static final int hi = 2131820581;
  public static final int hj = 2131820582;
  public static final int hk = 2131820584;
  public static final int hl = 2131820596;
  public static final int hm = 2131820577;
  public static final int hn = 2131820578;
  public static final int ho = 2131820588;
  public static final int hp = 2131820587;
  public static final int hq = 2131820586;
  public static final int hr = 2131820590;
  public static final int hs = 2131820592;
  public static final int ht = 2131820571;
  public static final int hu = 2131820585;
  public static final int hv = 2131820594;
  public static final int hw = 2131820595;
  public static final int hx = 2131820575;
  public static final int hy = 2131820574;
  public static final int hz = 2131820572;
  public static final int i = 2131034129;
  public static final int iA = 2131362130;
  public static final int iB = 2131362125;
  public static final int iC = 2131362134;
  public static final int iD = 2131362131;
  public static final int iE = 2131362140;
  public static final int iF = 2131362146;
  public static final int iG = 2131362143;
  public static final int iH = 2131362139;
  public static final int iI = 2131362144;
  public static final int iJ = 2131362145;
  public static final int iK = 2131362142;
  public static final int iL = 2131362136;
  public static final int iM = 2131362138;
  public static final int iN = 2131362135;
  public static final int iO = 2131362137;
  public static final int iP = 2131362124;
  public static final int iQ = 2131362123;
  public static final int iR = 2130968709;
  public static final int iS = 2130968710;
  public static final int iT = 2130968737;
  public static final int iU = 2131362115;
  public static final int iV = 2131362111;
  public static final int iW = 2131362116;
  public static final int iX = 2131362117;
  public static final int iY = 2131362114;
  public static final int iZ = 2131362110;
  public static final int ia = 2131362161;
  public static final int ib = 2131362162;
  public static final int ic = 2131362164;
  public static final int id = 2131362163;
  public static final int ie = 2131624241;
  public static final int jdField_if = 2131558688;
  public static final int ig = 2131558687;
  public static final int ih = 2131559134;
  public static final int ii = 2131559135;
  public static final int ij = 2131558689;
  public static final int ik = 2130968642;
  public static final int il = 2131230720;
  public static final int im = 2130968645;
  public static final int in = 2130968822;
  public static final int io = 2131362152;
  public static final int ip = 2131362154;
  public static final int iq = 2131362155;
  public static final int ir = 2131362151;
  public static final int is = 2131362153;
  public static final int it = 2131362156;
  public static final int iu = 2131362149;
  public static final int iv = 2131362150;
  public static final int iw = 2131362148;
  public static final int ix = 2131362147;
  public static final int iy = 2131362128;
  public static final int iz = 2131362126;
  public static final int j = 2130772234;
  public static final int jA = 2131427458;
  public static final int jB = 2131427457;
  public static final int jC = 2131427459;
  public static final int jD = 2130838633;
  public static final int jE = 2130839102;
  public static final int jF = 2131558886;
  public static final int jG = 2131558887;
  public static final int jH = 2131558884;
  public static final int jI = 2131558885;
  public static final int jJ = 2131558638;
  public static final int jK = 2131558640;
  public static final int jL = 2131558883;
  public static final int jM = 2131558882;
  public static final int jN = 2131558639;
  public static final int jO = 2131558418;
  public static final int jP = 2131558419;
  public static final int jQ = 2131558420;
  public static final int jR = 2131558416;
  public static final int jS = 2131558410;
  public static final int jT = 2131558409;
  public static final int jU = 2131558411;
  public static final int jV = 2131558413;
  public static final int jW = 2131558414;
  public static final int jX = 2131559212;
  public static final int jY = 2131559213;
  public static final int jZ = 2131559216;
  public static final int ja = 2131362121;
  public static final int jb = 2131362120;
  public static final int jc = 2131362118;
  public static final int jd = 2131362122;
  public static final int je = 2130838988;
  public static final int jf = 2130839031;
  public static final int jg = 2130839054;
  public static final int jh = 2131362083;
  public static final int ji = 2131362084;
  public static final int jj = 2131362086;
  public static final int jk = 2131362087;
  public static final int jl = 2131361930;
  public static final int jm = 2131362091;
  public static final int jn = 2131362088;
  public static final int jo = 2131362082;
  public static final int jp = 2131362096;
  public static final int jq = 2131362085;
  public static final int jr = 2131362090;
  public static final int js = 2131362089;
  public static final int jt = 2131558408;
  public static final int ju = 2131362064;
  public static final int jv = 2131623984;
  public static final int jw = 2131623983;
  public static final int jx = 2131623982;
  public static final int jy = 2131624612;
  public static final int jz = 2131624168;
  public static final int k = 2131427494;
  public static final int kA = 2131558895;
  public static final int kB = 2131558897;
  public static final int kC = 2131558903;
  public static final int kD = 2131558899;
  public static final int kE = 2131558901;
  public static final int kF = 2131558904;
  public static final int kG = 2131558900;
  public static final int kH = 2131558894;
  public static final int kI = 2131558893;
  public static final int kJ = 2131558406;
  public static final int kK = 2131558902;
  public static final int kL = 2131820547;
  public static final int kM = 2131362057;
  public static final int kN = 2131362058;
  public static final int kO = 2131362059;
  public static final int kP = 2130968783;
  public static final int kQ = 2130968784;
  public static final int kR = 2130968785;
  public static final int kS = 2131623978;
  public static final int kT = 2131427451;
  public static final int kU = 2131427453;
  public static final int kV = 2130838870;
  public static final int kW = 2130839003;
  public static final int kX = 2131689485;
  public static final int kY = 2131689486;
  public static final int kZ = 2130968619;
  public static final int ka = 2131559214;
  public static final int kb = 2131559211;
  public static final int kc = 2130968623;
  public static final int kd = 2130968729;
  public static final int ke = 2130968881;
  public static final int kf = 2131362074;
  public static final int kg = 2131362067;
  public static final int kh = 2131362080;
  public static final int ki = 2131362075;
  public static final int kj = 2131362077;
  public static final int kk = 2131362079;
  public static final int kl = 2131362069;
  public static final int km = 2131362073;
  public static final int kn = 2131362072;
  public static final int ko = 2131362071;
  public static final int kp = 2131362081;
  public static final int kq = 2131362068;
  public static final int kr = 2130968646;
  public static final int ks = 2131362061;
  public static final int kt = 2131558876;
  public static final int ku = 2131558869;
  public static final int kv = 2130968720;
  public static final int kw = 2130968723;
  public static final int kx = 2130968726;
  public static final int ky = 2131427455;
  public static final int kz = 2131558896;
  public static final int l = 2131427507;
  public static final int lA = 2131689482;
  public static final int lB = 2131362044;
  public static final int lC = 2131362043;
  public static final int lD = 2131362045;
  public static final int lE = 2131558908;
  public static final int lF = 2131558909;
  public static final int lG = 2131558910;
  public static final int lH = 2130968736;
  public static final int lI = 2131362039;
  public static final int lJ = 2131362042;
  public static final int lK = 2130838980;
  public static final int lL = 2130838987;
  public static final int lM = 2130839013;
  public static final int lN = 2131624128;
  public static final int lO = 2130838972;
  public static final int lP = 2130838978;
  public static final int lQ = 2130838981;
  public static final int lR = 2130838983;
  public static final int lS = 2130838984;
  public static final int lT = 2130838985;
  public static final int lU = 2130839006;
  public static final int lV = 2130839007;
  public static final int lW = 2130839008;
  public static final int lX = 2131558953;
  public static final int lY = 2131558955;
  public static final int lZ = 2131558956;
  public static final int la = 2130968733;
  public static final int lb = 2130968876;
  public static final int lc = 2130968877;
  public static final int ld = 2130968878;
  public static final int le = 2131624170;
  public static final int lf = 2131558827;
  public static final int lg = 2131559133;
  public static final int lh = 2130968707;
  public static final int li = 2131362046;
  public static final int lj = 2131034139;
  public static final int lk = 2131427443;
  public static final int ll = 2131427442;
  public static final int lm = 2131427441;
  public static final int ln = 2131427447;
  public static final int lo = 2131427448;
  public static final int lp = 2131559141;
  public static final int lq = 2131558892;
  public static final int lr = 2131558891;
  public static final int ls = 2131559140;
  public static final int lt = 2131559138;
  public static final int lu = 2131559139;
  public static final int lv = 2131559137;
  public static final int lw = 2131689481;
  public static final int lx = 2131689479;
  public static final int ly = 2131689480;
  public static final int lz = 2131689478;
  public static final int m = 2131427508;
  public static final int mA = 2131558677;
  public static final int mB = 2131558735;
  public static final int mC = 2131558734;
  public static final int mD = 2131558731;
  public static final int mE = 2131558729;
  public static final int mF = 2131558732;
  public static final int mG = 2131558733;
  public static final int mH = 2131558666;
  public static final int mI = 2131558743;
  public static final int mJ = 2131558724;
  public static final int mK = 2131558739;
  public static final int mL = 2131558740;
  public static final int mM = 2130968656;
  public static final int mN = 2130968657;
  public static final int mO = 2130968658;
  public static final int mP = 2130968659;
  public static final int mQ = 2130968661;
  public static final int mR = 2130968663;
  public static final int mS = 2130968664;
  public static final int mT = 2130968665;
  public static final int mU = 2131820544;
  public static final int mV = 2131820545;
  public static final int mW = 2131820546;
  public static final int mX = 2131623960;
  public static final int mY = 2131623963;
  public static final int mZ = 2130837575;
  public static final int ma = 2131558954;
  public static final int mb = 2131559291;
  public static final int mc = 2130968746;
  public static final int md = 2131886089;
  public static final int me = 2130838652;
  public static final int mf = 2131558993;
  public static final int mg = 2131558992;
  public static final int mh = 2130968757;
  public static final int mi = 2130839002;
  public static final int mj = 2131559283;
  public static final int mk = 2131559057;
  public static final int ml = 2130968797;
  public static final int mm = 2131886086;
  public static final int mn = 2131361995;
  public static final int mo = 2131361998;
  public static final int mp = 2131362000;
  public static final int mq = 2131361997;
  public static final int mr = 2131361996;
  public static final int ms = 2131361999;
  public static final int mt = 2130838634;
  public static final int mu = 2130838899;
  public static final int mv = 2131558678;
  public static final int mw = 2131558726;
  public static final int mx = 2131558737;
  public static final int my = 2131558725;
  public static final int mz = 2131558741;
  public static final int n = 2131558822;
  public static final int nA = 2131689489;
  public static final int nB = 2131689491;
  public static final int nC = 2131689487;
  public static final int nD = 2131361949;
  public static final int nE = 2131361948;
  public static final int nF = 2131361950;
  public static final int nG = 2131361947;
  public static final int nH = 2130968787;
  public static final int nI = 2131361946;
  public static final int nJ = 2131361944;
  public static final int nK = 2131361945;
  public static final int nL = 2131361943;
  public static final int nM = 2131361942;
  public static final int nN = 2131361941;
  public static final int nO = 2131624226;
  public static final int nP = 2130968655;
  public static final int nQ = 2131230721;
  public static final int nR = 2131361939;
  public static final int nS = 2131361937;
  public static final int nT = 2131361940;
  public static final int nU = 2131624126;
  public static final int nV = 2130838925;
  public static final int nW = 2130838938;
  public static final int nX = 2131361935;
  public static final int nY = 2131361936;
  public static final int nZ = 2131361933;
  public static final int na = 2130903043;
  public static final int nb = 2131361974;
  public static final int nc = 2131361972;
  public static final int nd = 2131361973;
  public static final int ne = 2131361975;
  public static final int nf = 2130838907;
  public static final int ng = 2130838908;
  public static final int nh = 2130838909;
  public static final int ni = 2131559073;
  public static final int nj = 2131559075;
  public static final int nk = 2131559074;
  public static final int nl = 2131559070;
  public static final int nm = 2131559071;
  public static final int nn = 2131559069;
  public static final int no = 2131559067;
  public static final int np = 2131559072;
  public static final int nq = 2131559068;
  public static final int nr = 2130968806;
  public static final int ns = 2131558622;
  public static final int nt = 2131558623;
  public static final int nu = 2130968776;
  public static final int nv = 2131361952;
  public static final int nw = 2131427465;
  public static final int nx = 2131427466;
  public static final int ny = 2131689488;
  public static final int nz = 2131689490;
  public static final int o = 2131558821;
  public static final int oA = 2130968841;
  public static final int oB = 2131559150;
  public static final int oC = 2131558404;
  public static final int oD = 2131558403;
  public static final int oE = 2131559148;
  public static final int oF = 2131559149;
  public static final int oG = 2130968851;
  public static final int oH = 2131362003;
  public static gyu oI;
  public static volatile Context oJ;
  public static volatile boolean oK = false;
  public static List<dju> oL;
  public static final int oM = 2130968620;
  public static final int oN = 2130968683;
  public static final int oO = 2130968824;
  public static final int oP = 2130968873;
  public static final int oQ = 2130968874;
  public static final int oR = 2130968875;
  public static final int oS = 2131361883;
  public static final int oT = 2131361887;
  public static final int oU = 2131361876;
  public static final int oV = 2131361885;
  public static final int oW = 2131361884;
  public static final int oX = 2131361898;
  public static final int oY = 2131361877;
  public static final int oZ = 2131361882;
  public static final int oa = 2131361934;
  public static final int ob = 2131034141;
  public static final int oc = 2131623954;
  public static final int od = 2131623955;
  public static final int oe = 2131623952;
  public static final int of = 2131623951;
  public static final int og = 2131623946;
  public static final int oh = 2131623947;
  public static final int oi = 2131623948;
  public static final int oj = 2131427385;
  public static final int ok = 2131427362;
  public static final int ol = 2131427370;
  public static final int om = 2131427369;
  public static final int on = 2131689474;
  public static final int oo = 2131689476;
  public static final int op = 2130968615;
  public static final int oq = 2130968717;
  public static final int or = 2130968718;
  public static final int os = 2130968810;
  public static final int ot = 2130968812;
  public static final int ou = 2130968813;
  public static final int ov = 2130968815;
  public static final int ow = 2130968816;
  public static final int ox = 2130968817;
  public static final int oy = 2130968819;
  public static final int oz = 2130968820;
  public static final int p = 2131558818;
  public static final int pA = 2131559147;
  public static final int pB = 2131558708;
  public static final int pC = 2131559143;
  public static final int pD = 2131559146;
  public static final int pE = 2131559142;
  public static final int pF = 2131559145;
  public static final int pG = 2130968850;
  public static final int pH = 2131361867;
  public static final int pI = 2131361870;
  public static final int pJ = 2131361869;
  public static final int pK = 2131361868;
  public static final int pL = 2131559184;
  public static final int pM = 2131559183;
  public static final int pN = 2131559181;
  public static final int pO = 2130968866;
  public static final int pP = 2130968867;
  public static final int pQ = 2131362184;
  public static final int pR = 2131362183;
  public static final int pS = 2131362182;
  public static final int pT = 2131362186;
  public static final int pU = 2131362185;
  public static final int pV = 2131624020;
  public static final int pW = 2131559028;
  public static final int pX = 2131559029;
  public static final int pY = 2131689472;
  public static final int pZ = 2131559176;
  public static final int pa = 2131361895;
  public static final int pb = 2131361875;
  public static final int pc = 2131361886;
  public static final int pd = 2131361897;
  public static final int pe = 2131361896;
  public static final int pf = 2131361891;
  public static final int pg = 2131361893;
  public static final int ph = 2131559128;
  public static final int pi = 2131559130;
  public static final int pj = 2131558429;
  public static final int pk = 2130968844;
  public static final int pl = 2130968846;
  public static final int pm = 2130968847;
  public static final int pn = 2131034147;
  public static final int po = 2131034148;
  public static final int pp = 2131034151;
  public static final int pq = 2131034152;
  public static final int pr = 2131559132;
  public static final int ps = 2131689473;
  public static final int pt = 2130968845;
  public static final int pu = 2131361874;
  public static final int pv = 2131623941;
  public static final int pw = 2130839040;
  public static final int px = 2130839069;
  public static final int py = 2130839070;
  public static final int pz = 2131559121;
  public static final int q = 2131558817;
  public static final int qA = 2131361805;
  public static final int qB = 2131361803;
  public static final int qC = 2131361802;
  public static final int qD = 2131361842;
  public static final int qE = 2131361835;
  public static final int qF = 2131361834;
  public static final int qG = 2131361836;
  public static final int qH = 2131361804;
  public static final int qI = 2131361843;
  public static final int qJ = 2131361840;
  public static final int qK = 2131361841;
  public static final int qL = 2131361837;
  public static final int qM = 2131361839;
  public static final int qN = 2131361838;
  public static final int qO = 2131361844;
  public static final int qP = 2131361806;
  public static final int qQ = 2131361832;
  public static final int qR = 2131361831;
  public static final int qS = 2131361833;
  public static final int qT = 2131361827;
  public static final int qU = 2131361829;
  public static final int qV = 2131361830;
  public static final int qW = 2131361828;
  public static final int qX = 2131361824;
  public static final int qY = 2131361826;
  public static final int qZ = 2131361825;
  public static final int qa = 2131559177;
  public static final int qb = 2130968865;
  public static final int qc = 2130968871;
  public static final int qd = 2131296258;
  public static final int qe = 2131296257;
  public static final int qf = 2131623937;
  public static final int qg = 2130838667;
  public static final int qh = 2130838668;
  public static final int qi = 2130838816;
  public static final int qj = 2130838826;
  public static final int qk = 2130838827;
  public static final int ql = 2130838843;
  public static final int qm = 2130838865;
  public static final int qn = 2130838866;
  public static final int qo = 2130839025;
  public static final int qp = 2130839026;
  public static final int qq = 2131230723;
  public static final int qr = 2131361808;
  public static final int qs = 2131361809;
  public static final int qt = 2131361818;
  public static final int qu = 2131361817;
  public static final int qv = 2131361813;
  public static final int qw = 2131361812;
  public static final int qx = 2131361816;
  public static final int qy = 2131361811;
  public static final int qz = 2131361807;
  public static final int r = 2130968696;
  public static final int rA = 2131820551;
  public static final int rB = 2131820552;
  public static final int rC = 2131820549;
  public static final int rD = 2131820550;
  public static final int rE = 2131820557;
  public static final int rF = 2131820558;
  public static final int rG = 2131820555;
  public static final int rH = 2131820556;
  public static final int rI = 2131820565;
  public static final int rJ = 2131820564;
  public static final int rK = 2131820561;
  public static final int rL = 2131820548;
  public static final int rM = 2131820559;
  public static final int rN = 2131362196;
  public static final int rO = 2131362188;
  public static final int rP = 2131362189;
  public static final int rQ = 2131362190;
  public static final int rR = 2131362191;
  public static final int rS = 2131362194;
  public static final int rT = 2131362195;
  public static final int rU = 2131362192;
  public static final int rV = 2131362193;
  public static final int rW = 2131362169;
  public static final int rX = 2131362095;
  public static final int rY = 2131623936;
  public static final int rZ = 2130837626;
  public static boolean ra = false;
  public static boolean rb = false;
  public static final int rc = 2131361861;
  public static final int rd = 2131361862;
  public static boolean re = false;
  public static final int rf = 2131559218;
  public static final int rg = 2131559219;
  public static final int rh = 2130968884;
  public static final int ri = 2130968886;
  public static final int rj = 2130968887;
  public static final int rk = 2130968888;
  public static final int rl = 2130968889;
  public static final int rm = 2131361855;
  public static final int rn = 2131361859;
  public static final int ro = 2131361858;
  public static final int rp = 2131361857;
  public static final int rq = 2131361854;
  public static final int rr = 2131361853;
  public static final int rs = 2131165192;
  public static Pattern rt;
  public static Pattern ru;
  public static final int rv = 2131820562;
  public static final int rw = 2131820563;
  public static final int rx = 2131820560;
  public static final int ry = 2131820553;
  public static final int rz = 2131820554;
  public static final int s = 2130968705;
  public static final int sA = 2131363173;
  public static final int sB = 2131363185;
  public static boolean sC = false;
  public static gfn sD;
  public static gjo sE;
  public static final int sF = 2130772352;
  public static final int sG = 2131624461;
  public static final int sH = 2131427647;
  public static final int sI = 2131427642;
  public static final int sJ = 2131427648;
  public static final int sK = 2130837577;
  public static final int sL = 2130837596;
  public static final int sM = 2131558592;
  public static final int sN = 2131559162;
  public static final int sO = 2131559166;
  public static final int sP = 2131559160;
  public static final int sQ = 2131559157;
  public static final int sR = 2131559161;
  public static final int sS = 2131558598;
  public static final int sT = 2131558440;
  public static final int sU = 2131558649;
  public static final int sV = 2131558651;
  public static final int sW = 2131558652;
  public static final int sX = 2131559008;
  public static final int sY = 2131558648;
  public static final int sZ = 2131558650;
  public static final int sa = 2130837627;
  public static final int sb = 2131363159;
  public static final int sc = 2131363172;
  public static final int sd = 2131363170;
  public static final int se = 2131363186;
  public static final int sf = 2131363168;
  public static final int sg = 2131363167;
  public static final int sh = 2131363166;
  public static final int si = 2131363165;
  public static final int sj = 2131363163;
  public static final int sk = 2131363164;
  public static final int sl = 2131363162;
  public static final int sm = 2131363178;
  public static final int sn = 2131363177;
  public static final int so = 2131363176;
  public static final int sp = 2131363175;
  public static final int sq = 2131363157;
  public static final int sr = 2131363188;
  public static final int ss = 2131363187;
  public static final int st = 2131363179;
  public static final int su = 2131363181;
  public static final int sv = 2131363180;
  public static final int sw = 2131363182;
  public static final int sx = 2131363171;
  public static final int sy = 2131363169;
  public static final int sz = 2131363174;
  public static Field t;
  public static final int tA = 2131558400;
  public static int tB = 0;
  public static int tC = 0;
  public static int tD = 0;
  public static int tE = 0;
  public static Bitmap tF;
  public static Bitmap tG;
  public static Bitmap tH;
  public static Bitmap tI;
  public static Bitmap tJ;
  public static Bitmap tK;
  public static Bitmap tL;
  public static Bitmap tM;
  public static Bitmap tN;
  public static Bitmap tO;
  public static Bitmap tP;
  public static Bitmap tQ;
  public static float tR = 0.0F;
  public static final int tS = 2131623992;
  public static final int tT = 2130837593;
  public static final int tU = 2130838891;
  public static final int tV = 2131363150;
  public static final int tW = 2131363148;
  public static final int tX = 2131363151;
  public static final int tY = 2131363149;
  public static final int tZ = 2131558880;
  public static final int ta = 2131559165;
  public static final int tb = 2131559164;
  public static final int tc = 2131558647;
  public static final int td = 2131559158;
  public static final int te = 2131559163;
  public static final int tf = 2131559159;
  public static final int tg = 2131689517;
  public static final int th = 2131689516;
  public static volatile boolean ti = false;
  public static final int tj = 2131624081;
  public static final int tk = 2130968636;
  public static final int tl = 2130968637;
  public static final int tm = 2130968639;
  public static final int tn = 2130968640;
  public static final int to = 2130968641;
  public static final int tp = 2131492910;
  public static final int tq = 2131427543;
  public static final int tr = 2131427544;
  public static final int ts = 2131427545;
  public static final int tt = 2131427546;
  public static final int tu = 2131492988;
  public static final int tv = 2130772122;
  public static final int tw = 2131559171;
  public static final int tx = 2131558834;
  public static final int ty = 2130968869;
  public static final int tz = 2131492986;
  public static boolean u = false;
  public static final int uA = 2131361797;
  public static final int uB = 2131558421;
  public static final int uC = 2131363094;
  public static final int uD = 2131363095;
  public static final int uE = 2131558595;
  public static final int uF = 2131558593;
  public static final int uG = 2131558597;
  public static final int uH = 2131558596;
  public static final int uI = 2131558594;
  public static final int uJ = 2130968602;
  public static final int uK = 2130772109;
  public static final int uL = 2130772111;
  public static final int uM = 2130772104;
  public static final int uN = 2130772105;
  public static final int uO = 2130772107;
  public static final int uP = 2130772113;
  public static final int uQ = 2130772116;
  public static final int uR = 2131624025;
  public static final int uS = 2130968828;
  public static final int uT = 2130968834;
  public static final int uU = 2130968835;
  public static final int uV = 2130968621;
  public static final int uW = 2130968711;
  public static final int uX = 2131230736;
  public static Integer uY;
  public static Integer uZ;
  public static final int ua = 2131558881;
  public static final int ub = 2131558665;
  public static final int uc = 2131689493;
  public static final int ud = 2131689499;
  public static final int ue = 2131689498;
  public static final int uf = 2131689501;
  public static final int ug = 2131689500;
  public static final int uh = 2131689504;
  public static final int ui = 2131689502;
  public static final int uj = 2131689506;
  public static final int uk = 2131689505;
  public static final int ul = 2131689503;
  public static final int um = 2131689495;
  public static final int un = 2131689496;
  public static final int uo = 2131689494;
  public static final int up = 2131689497;
  public static final int uq = 2130968617;
  public static final int ur = 2131361794;
  public static final int us = 2131361793;
  public static final int ut = 2131361796;
  public static final int uu = 2131361795;
  public static final int uv = 2131492864;
  public static final int uw = 2131361798;
  public static final int ux = 2131361801;
  public static final int uy = 2131361799;
  public static final int uz = 2131361800;
  public static Field v;
  public static Integer va;
  public static Integer vb;
  public static final int vc = 2131363091;
  public static final int vd = 2131363093;
  public static final int ve = 2131363092;
  public static Method vf;
  public static Thread vg;
  public static Handler vh;
  public static boolean w = false;
  public static final int x = 2131755010;
  public static final int y = 2131755011;
  public static final int z = 2131755015;
  int a;
  int b;
  int c;
  int d;
  Interpolator e;
  boolean f;
  int g;
  
  public static Bitmap A(Context paramContext)
  {
    if (tF == null) {
      tF = ipi.a(E(paramContext), z(paramContext));
    }
    return tF;
  }
  
  private static String A()
  {
    return String.valueOf(oJ.getPackageName()).concat(":smsstoragelow");
  }
  
  public static String A(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i1;
    do
    {
      return str;
      i1 = paramString.indexOf('/');
      str = paramString;
    } while (i1 < 0);
    return paramString.substring(i1 + 1);
  }
  
  public static int B(Context paramContext)
  {
    if (tC == 0) {
      tC = paramContext.getApplicationContext().getResources().getDimensionPixelSize(aen.kl);
    }
    return tC;
  }
  
  private static Method B()
  {
    try
    {
      Method localMethod = PackageManager.class.getMethod("getPackageSizeInfo", new Class[] { String.class, e.class });
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e("PackageStatsCapture", "couldn't get getPackageSizeInfo method", localNoSuchMethodException);
    }
    return null;
  }
  
  public static void B(String paramString)
  {
    hbs.c();
    int i1 = GLES20.glGetError();
    if (i1 != 0)
    {
      hlk.a(6, "vclib", String.valueOf(paramString).length() + 21 + paramString + ": glError " + i1);
      throw new RuntimeException(String.valueOf(paramString).length() + 21 + paramString + ": glError " + i1);
    }
  }
  
  public static Bitmap C(Context paramContext)
  {
    if (tI == null) {
      tI = ipi.a(E(paramContext), B(paramContext));
    }
    return tI;
  }
  
  public static void C(String paramString)
  {
    
    for (;;)
    {
      int i1 = GLES20.glGetError();
      if (i1 == 0) {
        break;
      }
      hlk.a(6, "vclib", String.valueOf(paramString).length() + 21 + paramString + ": glError " + i1);
    }
  }
  
  public static int D(Context paramContext)
  {
    if (tD == 0) {
      tD = paramContext.getApplicationContext().getResources().getDimensionPixelSize(aen.kn);
    }
    return tD;
  }
  
  public static String D(String paramString)
  {
    long l1 = 1125899906842597L;
    int i1 = paramString.length();
    for (;;)
    {
      i1 -= 1;
      if (i1 < 0) {
        break;
      }
      l1 = l1 * 31L + paramString.charAt(i1);
    }
    return Long.toHexString(0xFFFFFFFFFFFFFFF & l1);
  }
  
  public static Bitmap E(Context paramContext)
  {
    if (tL == null) {
      tL = ipi.a(G(paramContext), D(paramContext));
    }
    return tL;
  }
  
  public static String E(String paramString)
  {
    String str = paramString;
    if (!TextUtils.isEmpty(paramString))
    {
      str = paramString;
      if (!paramString.startsWith("http:"))
      {
        str = paramString;
        if (!paramString.startsWith("https:"))
        {
          paramString = String.valueOf(paramString);
          if (paramString.length() == 0) {
            break label57;
          }
        }
      }
    }
    label57:
    for (paramString = "https:".concat(paramString);; paramString = new String("https:"))
    {
      str = paramString;
      return str;
    }
  }
  
  public static int F(Context paramContext)
  {
    if (tE == 0) {
      tE = paramContext.getApplicationContext().getResources().getDimensionPixelSize(aen.km);
    }
    return tE;
  }
  
  public static String F(String paramString)
  {
    int i2 = paramString.length();
    int i1 = 0;
    for (;;)
    {
      String str = paramString;
      if (i1 < i2)
      {
        if (b(paramString.charAt(i1)))
        {
          paramString = paramString.toCharArray();
          while (i1 < i2)
          {
            char c1 = paramString[i1];
            if (b(c1)) {
              paramString[i1] = ((char)(c1 ^ 0x20));
            }
            i1 += 1;
          }
          str = String.valueOf(paramString);
        }
      }
      else {
        return str;
      }
      i1 += 1;
    }
  }
  
  public static Bitmap G(Context paramContext)
  {
    if (tO == null) {
      tO = ((BitmapDrawable)paramContext.getApplicationContext().getResources().getDrawable(tT)).getBitmap();
    }
    return tO;
  }
  
  private static String G(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 0;
    if (i1 < paramString.length())
    {
      char c1 = paramString.charAt(i1);
      if (i1 == 0) {
        localStringBuffer.append(Character.toLowerCase(c1));
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (Character.isUpperCase(c1)) {
          localStringBuffer.append('_').append(Character.toLowerCase(c1));
        } else {
          localStringBuffer.append(c1);
        }
      }
    }
    return localStringBuffer.toString();
  }
  
  public static float H(Context paramContext)
  {
    if (tR == 0.0F) {
      tR = paramContext.getResources().getDimension(aen.ko);
    }
    return tR;
  }
  
  private static String H(String paramString)
  {
    int i2 = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i2);
    int i1 = 0;
    if (i1 < i2)
    {
      char c1 = paramString.charAt(i1);
      if ((c1 >= ' ') && (c1 <= '~') && (c1 != '"') && (c1 != '\'')) {
        localStringBuilder.append(c1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        localStringBuilder.append(String.format("\\u%04x", new Object[] { Integer.valueOf(c1) }));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static int I(Context paramContext)
  {
    try
    {
      if (uY == null) {
        V(paramContext);
      }
      int i1 = uY.intValue();
      return i1;
    }
    finally {}
  }
  
  private static int I(String paramString)
  {
    hww localhww = new hww();
    try
    {
      localhww.a(paramString);
      paramString = localhww.b(hww.j);
      if (paramString == null) {
        return 0;
      }
      return hww.b(paramString.shortValue());
    }
    catch (IOException paramString) {}
    return 0;
  }
  
  public static int J(Context paramContext)
  {
    try
    {
      if (uZ == null) {
        V(paramContext);
      }
      int i1 = uZ.intValue();
      return i1;
    }
    finally {}
  }
  
  private static String J(String paramString)
  {
    String str = "";
    int i2 = 0;
    int i1 = 1;
    if (i2 < paramString.length())
    {
      char c1 = paramString.charAt(i2);
      if (c1 == '_') {
        i1 = 1;
      }
      for (;;)
      {
        i2 += 1;
        break;
        if (i1 != 0)
        {
          str = String.valueOf(str);
          c1 = Character.toUpperCase(c1);
          str = String.valueOf(str).length() + 1 + str + c1;
          i1 = 0;
        }
        else
        {
          str = String.valueOf(str);
          c1 = Character.toLowerCase(c1);
          str = String.valueOf(str).length() + 1 + str + c1;
        }
      }
    }
    return str;
  }
  
  public static int K(Context paramContext)
  {
    try
    {
      if (va == null) {
        V(paramContext);
      }
      int i1 = va.intValue();
      return i1;
    }
    finally {}
  }
  
  private static String K(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 0;
    if (i1 < paramString.length())
    {
      char c1 = paramString.charAt(i1);
      if (i1 == 0) {
        localStringBuffer.append(Character.toLowerCase(c1));
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (Character.isUpperCase(c1)) {
          localStringBuffer.append('_').append(Character.toLowerCase(c1));
        } else {
          localStringBuffer.append(c1);
        }
      }
    }
    return localStringBuffer.toString();
  }
  
  public static int L(Context paramContext)
  {
    try
    {
      if (vb == null) {
        V(paramContext);
      }
      int i1 = vb.intValue();
      return i1;
    }
    finally {}
  }
  
  private static String L(String paramString)
  {
    String str = paramString;
    if (!paramString.startsWith("http"))
    {
      str = paramString;
      if (paramString.length() > 200) {
        str = String.valueOf(paramString.substring(0, 200)).concat("[...]");
      }
    }
    int i2 = str.length();
    paramString = new StringBuilder(i2);
    int i1 = 0;
    if (i1 < i2)
    {
      char c1 = str.charAt(i1);
      if ((c1 >= ' ') && (c1 <= '~') && (c1 != '"') && (c1 != '\'')) {
        paramString.append(c1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        paramString.append(String.format("\\u%04x", new Object[] { Integer.valueOf(c1) }));
      }
    }
    return paramString.toString();
  }
  
  public static DisplayMetrics M(Context paramContext)
  {
    paramContext = (WindowManager)paramContext.getSystemService("window");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  private static String M(String paramString)
  {
    if (paramString.startsWith("cr_")) {
      return paramString;
    }
    int i1 = 0;
    if (paramString.startsWith("cr.")) {
      i1 = 3;
    }
    return "cr_" + paramString.substring(i1, paramString.length());
  }
  
  public static boolean N(Context paramContext)
  {
    paramContext = M(paramContext);
    return Math.min(widthPixels / density, heightPixels / density) > 550.0F;
  }
  
  public static int O(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    if (Build.VERSION.SDK_INT >= 11) {
      try
      {
        if ((getPackageManagergetApplicationInfogetPackageName0flags & 0x100000) != 0)
        {
          int i1 = localActivityManager.getLargeMemoryClass();
          return i1;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        throw new RuntimeException(paramContext);
      }
    }
    return localActivityManager.getMemoryClass();
  }
  
  public static jto P(Context paramContext)
  {
    return ((jsq)((jry)paramContext.getApplicationContext()).a()).d();
  }
  
  public static PackageInfo Q(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext = localPackageManager.getPackageInfo(paramContext.getApplicationContext().getPackageName(), 0);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new AssertionError("Failed to retrieve own package info");
    }
  }
  
  private static boolean R(Context paramContext)
  {
    boolean bool = false;
    int i1 = a(paramContext, "babel_dialer_versioncode_for_callerid", 1376);
    try
    {
      int i2 = getPackageManagergetPackageInfo"com.google.android.apps.hangoutsdialer"0versionCode;
      if (i2 >= i1) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private static boolean S(Context paramContext)
  {
    return f(paramContext).contains("gms_core_status_code");
  }
  
  /* Error */
  private static String T(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 2700
    //   4: invokestatic 2705	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   7: checkcast 2700	gwk
    //   10: ldc_w 2707
    //   13: invokeinterface 2710 2 0
    //   18: astore_0
    //   19: aload_0
    //   20: arraylength
    //   21: istore_2
    //   22: iconst_0
    //   23: istore_1
    //   24: iload_1
    //   25: iload_2
    //   26: if_icmpge +45 -> 71
    //   29: aload_0
    //   30: iload_1
    //   31: aaload
    //   32: astore_3
    //   33: aload_3
    //   34: getfield 2716	android/accounts/Account:name	Ljava/lang/String;
    //   37: ldc_w 2718
    //   40: invokevirtual 2721	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   43: ifeq +10 -> 53
    //   46: aload_3
    //   47: getfield 2716	android/accounts/Account:name	Ljava/lang/String;
    //   50: astore_0
    //   51: aload_0
    //   52: areturn
    //   53: iload_1
    //   54: iconst_1
    //   55: iadd
    //   56: istore_1
    //   57: goto -33 -> 24
    //   60: astore_0
    //   61: ldc_w 2723
    //   64: ldc_w 2725
    //   67: aload_0
    //   68: invokestatic 2730	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   71: aconst_null
    //   72: areturn
    //   73: astore_0
    //   74: goto -13 -> 61
    //   77: astore_0
    //   78: goto -17 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	paramContext	Context
    //   23	34	1	i1	int
    //   21	6	2	i2	int
    //   32	15	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	22	60	gxh
    //   33	51	60	gxh
    //   0	22	73	gxg
    //   33	51	73	gxg
    //   0	22	77	android/os/RemoteException
    //   33	51	77	android/os/RemoteException
  }
  
  private static boolean U(Context paramContext)
  {
    try
    {
      boolean bool = ((PowerManager)paramContext.getSystemService("power")).isPowerSaveMode();
      return bool;
    }
    catch (NoSuchMethodError paramContext) {}
    return false;
  }
  
  /* Error */
  private static void V(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: iconst_0
    //   4: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   7: putstatic 2523	aal:uY	Ljava/lang/Integer;
    //   10: iconst_0
    //   11: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   14: putstatic 2550	aal:uZ	Ljava/lang/Integer;
    //   17: iconst_0
    //   18: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   21: putstatic 2557	aal:va	Ljava/lang/Integer;
    //   24: iconst_0
    //   25: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   28: putstatic 2559	aal:vb	Ljava/lang/Integer;
    //   31: aload_0
    //   32: invokevirtual 2627	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   35: aload_0
    //   36: invokevirtual 2305	android/content/Context:getPackageName	()Ljava/lang/String;
    //   39: iconst_0
    //   40: invokevirtual 2662	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   43: astore_0
    //   44: aload_0
    //   45: getfield 2681	android/content/pm/PackageInfo:versionCode	I
    //   48: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   51: putstatic 2523	aal:uY	Ljava/lang/Integer;
    //   54: aload_0
    //   55: getfield 2745	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   58: astore_0
    //   59: aload_0
    //   60: ifnull +13 -> 73
    //   63: ldc_w 2747
    //   66: aload_0
    //   67: invokevirtual 2751	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +34 -> 104
    //   73: ldc_w 2752
    //   76: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   79: putstatic 2550	aal:uZ	Ljava/lang/Integer;
    //   82: ldc_w 2752
    //   85: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: putstatic 2557	aal:va	Ljava/lang/Integer;
    //   91: ldc_w 2752
    //   94: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   97: putstatic 2559	aal:vb	Ljava/lang/Integer;
    //   100: ldc 2
    //   102: monitorexit
    //   103: return
    //   104: aload_0
    //   105: ldc_w 2754
    //   108: invokevirtual 2758	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   111: astore_0
    //   112: aload_0
    //   113: arraylength
    //   114: ifle +15 -> 129
    //   117: aload_0
    //   118: iconst_0
    //   119: aaload
    //   120: invokestatic 2761	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   123: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   126: putstatic 2550	aal:uZ	Ljava/lang/Integer;
    //   129: aload_0
    //   130: arraylength
    //   131: iconst_1
    //   132: if_icmple +15 -> 147
    //   135: aload_0
    //   136: iconst_1
    //   137: aaload
    //   138: invokestatic 2761	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   141: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   144: putstatic 2557	aal:va	Ljava/lang/Integer;
    //   147: aload_0
    //   148: arraylength
    //   149: iconst_2
    //   150: if_icmple -50 -> 100
    //   153: aload_0
    //   154: iconst_2
    //   155: aaload
    //   156: invokestatic 2761	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   159: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   162: putstatic 2559	aal:vb	Ljava/lang/Integer;
    //   165: goto -65 -> 100
    //   168: astore_0
    //   169: goto -69 -> 100
    //   172: astore_0
    //   173: ldc 2
    //   175: monitorexit
    //   176: aload_0
    //   177: athrow
    //   178: astore_0
    //   179: goto -79 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   31	59	168	android/content/pm/PackageManager$NameNotFoundException
    //   63	73	168	android/content/pm/PackageManager$NameNotFoundException
    //   73	100	168	android/content/pm/PackageManager$NameNotFoundException
    //   104	129	168	android/content/pm/PackageManager$NameNotFoundException
    //   129	147	168	android/content/pm/PackageManager$NameNotFoundException
    //   147	165	168	android/content/pm/PackageManager$NameNotFoundException
    //   3	31	172	finally
    //   31	59	172	finally
    //   63	73	172	finally
    //   73	100	172	finally
    //   104	129	172	finally
    //   129	147	172	finally
    //   147	165	172	finally
    //   31	59	178	java/lang/NumberFormatException
    //   63	73	178	java/lang/NumberFormatException
    //   73	100	178	java/lang/NumberFormatException
    //   104	129	178	java/lang/NumberFormatException
    //   129	147	178	java/lang/NumberFormatException
    //   147	165	178	java/lang/NumberFormatException
  }
  
  public static byte a(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      if (paramBoolean.booleanValue()) {
        return 1;
      }
      return 0;
    }
    return -1;
  }
  
  public static char a(char paramChar)
  {
    char c1 = paramChar;
    if (PhoneNumberUtils.is12Key(paramChar)) {
      c1 = '*';
    }
    return c1;
  }
  
  public static double a(Double paramDouble)
  {
    if (paramDouble == null) {
      return 0.0D;
    }
    return paramDouble.doubleValue();
  }
  
  public static float a(Float paramFloat)
  {
    if (paramFloat == null) {
      return 0.0F;
    }
    return paramFloat.floatValue();
  }
  
  private static int a(double paramDouble)
  {
    double d2 = Math.rint(paramDouble);
    double d1 = d2;
    if (Math.abs(paramDouble - d2) == 0.5D) {
      d1 = Math.copySign(0.5D, paramDouble) + paramDouble;
    }
    return (int)d1;
  }
  
  public static int a(double paramDouble, int paramInt)
  {
    return a(Double.doubleToLongBits(paramDouble), paramInt);
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    int i1 = Color.alpha(paramInt2);
    int i2 = Color.alpha(paramInt1);
    int i3 = 255 - (255 - i1) * (255 - i2) / 255;
    return Color.argb(i3, a(Color.red(paramInt1), i2, Color.red(paramInt2), i1, i3), a(Color.green(paramInt1), i2, Color.green(paramInt2), i1, i3), a(Color.blue(paramInt1), i2, Color.blue(paramInt2), i1, i3));
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt5 == 0) {
      return 0;
    }
    return (paramInt1 * 255 * paramInt2 + paramInt3 * paramInt4 * (255 - paramInt2)) / (paramInt5 * 255);
  }
  
  public static int a(long paramLong, int paramInt)
  {
    return (int)(paramLong >>> 32 ^ paramLong) + paramInt * 31;
  }
  
  private static int a(acv paramacv, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = 1;
    int i1 = paramInt1;
    if (paramBoolean)
    {
      i1 = paramInt1 + (paramInt2 - 1);
      i2 = -1;
    }
    paramInt1 = 0;
    while (paramInt2 > 0)
    {
      paramInt1 = paramInt1 << 8 | paramacv.a(i1) & 0xFF;
      i1 += i2;
      paramInt2 -= 1;
    }
    return paramInt1;
  }
  
  public static int a(ContentResolver paramContentResolver, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      int i1 = paramContentResolver.update(paramUri, paramContentValues, null, null);
      return i1;
    }
    catch (SQLiteException paramContentResolver)
    {
      return -1;
    }
    catch (IllegalArgumentException paramContentResolver) {}
    return -1;
  }
  
  public static int a(Context paramContext, String paramString, int paramInt)
  {
    return ((bdp)ilh.a(paramContext, bdp.class)).a(paramString, paramInt);
  }
  
  public static int a(Parcel paramParcel)
  {
    int i2 = paramParcel.readInt();
    int i3 = a(paramParcel, i2);
    int i1 = paramParcel.dataPosition();
    if ((0xFFFF & i2) != 20293) {
      throw new ax("Expected object header. Got 0x" + Integer.toHexString(i2), paramParcel);
    }
    i2 = i1 + i3;
    if ((i2 < i1) || (i2 > paramParcel.dataSize())) {
      throw new ax("Size read is invalid start=" + i1 + " end=" + i2, paramParcel);
    }
    return i2;
  }
  
  public static int a(Parcel paramParcel, int paramInt)
  {
    if ((paramInt & 0xFFFF0000) != -65536) {
      return paramInt >> 16 & 0xFFFF;
    }
    return paramParcel.readInt();
  }
  
  private static int a(bdp parambdp, Collection<String> paramCollection, String paramString, int paramInt)
  {
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramCollection = String.valueOf(paramString);
      str = String.valueOf(str);
      if (str.length() != 0) {}
      for (paramCollection = paramCollection.concat(str);; paramCollection = new String(paramCollection))
      {
        int i1 = parambdp.a(paramCollection, -1);
        if (i1 == -1) {
          break;
        }
        return i1;
      }
    }
    return parambdp.a(paramString, paramInt);
  }
  
  private static int a(InputStream paramInputStream)
  {
    hww localhww = new hww();
    try
    {
      localhww.a(paramInputStream);
      paramInputStream = localhww.b(hww.j);
      if (paramInputStream == null) {
        return 0;
      }
      return hww.b(paramInputStream.shortValue());
    }
    catch (IOException paramInputStream) {}
    return 0;
  }
  
  public static int a(InputStream paramInputStream, long paramLong)
  {
    if (paramInputStream == null) {}
    label45:
    label51:
    label201:
    label571:
    for (;;)
    {
      return 0;
      paramInputStream = new acv(paramInputStream);
      int i1;
      int i2;
      int i3;
      if (a(paramInputStream, paramLong, 1))
      {
        if ((paramInputStream.a(0) == -1) && (paramInputStream.a(1) == -40))
        {
          i1 = 1;
          if (i1 == 0) {
            break label201;
          }
        }
      }
      else
      {
        i1 = 0;
        for (;;)
        {
          if (a(paramInputStream, paramLong, i1 + 3))
          {
            i2 = i1 + 1;
            if ((paramInputStream.a(i1) & 0xFF) == 255)
            {
              i3 = paramInputStream.a(i2) & 0xFF;
              if (i3 != 255)
              {
                i2 += 1;
                i1 = i2;
                if (i3 == 216) {
                  continue;
                }
                i1 = i2;
                if (i3 == 1) {
                  continue;
                }
                if ((i3 == 217) || (i3 == 218))
                {
                  paramInputStream.c(i2 - 4);
                  i1 = 0;
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        if (i1 <= 8) {
          break label571;
        }
        i3 = a(paramInputStream, i2, 4, false);
        if ((i3 != 1229531648) && (i3 != 1296891946))
        {
          Log.e("CameraExif", "Invalid byte order");
          return 0;
          i1 = 0;
          break label45;
          break;
          i1 = a(paramInputStream, i2, 2, false);
          if ((i1 < 2) || (!a(paramInputStream, paramLong, i2 + i1 - 1)))
          {
            Log.e("CameraExif", "Invalid length");
            return 0;
          }
          if ((i3 == 225) && (i1 >= 8) && (a(paramInputStream, i2 + 2, 4, false) == 1165519206) && (a(paramInputStream, i2 + 6, 2, false) == 0))
          {
            i2 += 8;
            paramInputStream.c(i2 - 4);
            i1 -= 8;
            continue;
          }
          i1 = i2 + i1;
          paramInputStream.c(i1 - 4);
          break label51;
        }
        if (i3 == 1229531648) {}
        for (boolean bool = true;; bool = false)
        {
          i3 = a(paramInputStream, i2 + 4, 4, bool) + 2;
          if ((i3 >= 10) && (i3 <= i1)) {
            break;
          }
          Log.e("CameraExif", "Invalid offset");
          return 0;
        }
        i2 += i3;
        paramInputStream.c(i2 - 4);
        int i4 = a(paramInputStream, i2 - 2, 2, bool);
        i1 -= i3;
        i3 = i2;
        i2 = i1;
        i1 = i4;
        while ((i1 > 0) && (i2 >= 12))
        {
          if (a(paramInputStream, i3, 2, bool) == 274)
          {
            switch (a(paramInputStream, i3 + 8, 2, bool))
            {
            case 1: 
            case 2: 
            case 4: 
            case 5: 
            case 7: 
            default: 
              return 0;
            case 3: 
              return 180;
            case 6: 
              return 90;
            }
            return 270;
          }
          i3 += 12;
          paramInputStream.c(i3 - 4);
          i2 -= 12;
          i1 -= 1;
        }
        break;
        i1 = i2;
        break label51;
        i1 = 0;
        continue;
        i3 = 0;
        i2 = i1;
        i1 = i3;
      }
    }
  }
  
  public static int a(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    fii.a(paramInputStream);
    fii.a(paramArrayOfByte);
    if (paramInt2 < 0) {
      throw new IndexOutOfBoundsException("len is negative");
    }
    int i1 = 0;
    while (i1 < paramInt2)
    {
      int i2 = paramInputStream.read(paramArrayOfByte, paramInt1 + i1, paramInt2 - i1);
      if (i2 == -1) {
        break;
      }
      i1 += i2;
    }
    return i1;
  }
  
  public static int a(Integer paramInteger, int paramInt)
  {
    if (paramInteger == null) {
      return paramInt;
    }
    return paramInteger.intValue();
  }
  
  public static int a(Object paramObject, int paramInt)
  {
    if (paramObject == null) {}
    for (int i1 = 0;; i1 = paramObject.hashCode()) {
      return i1 + paramInt * 31;
    }
  }
  
  private static int a(String paramString, gbd[] paramArrayOfgbd)
  {
    int i4 = paramArrayOfgbd.length;
    int i1 = 0;
    int i2 = 14;
    if (i1 < i4)
    {
      gbd localgbd = paramArrayOfgbd[i1];
      int i3;
      if (i2 == 14) {
        if ((a == 9) || (a == 2) || (a == 6)) {
          i3 = a;
        }
      }
      do
      {
        do
        {
          i1 += 1;
          i2 = i3;
          break;
          i3 = i2;
        } while (a == 14);
        throw new IllegalArgumentException("Unexpected TypedValue type: " + a + " for key " + paramString);
        i3 = i2;
      } while (a == i2);
      throw new IllegalArgumentException("The ArrayList elements should all be the same type, but ArrayList with key " + paramString + " contains items of type " + i2 + " and " + a);
    }
    return i2;
  }
  
  private static int a(ArrayList<cyx> paramArrayList)
  {
    int i1 = 0;
    if (paramArrayList != null)
    {
      paramArrayList = paramArrayList.iterator();
      i1 = 0;
      while (paramArrayList.hasNext()) {
        if (((cyx)paramArrayList.next()).g()) {
          i1 |= 0x1;
        } else {
          i1 |= 0x2;
        }
      }
    }
    int i2 = i1;
    if (i1 == 0) {
      i2 = 2;
    }
    return i2;
  }
  
  public static <E> int a(List<? extends E> paramList, E paramE, Comparator<? super E> paramComparator, kyh paramkyh, kyd paramkyd)
  {
    fii.a(paramComparator);
    fii.a(paramList);
    fii.a(paramkyh);
    fii.a(paramkyd);
    Object localObject = paramList;
    if (!(paramList instanceof RandomAccess)) {
      localObject = aen.a(paramList);
    }
    int i1 = 0;
    int i2 = ((List)localObject).size() - 1;
    while (i1 <= i2)
    {
      int i3 = i1 + i2 >>> 1;
      int i4 = paramComparator.compare(paramE, ((List)localObject).get(i3));
      if (i4 < 0) {
        i2 = i3 - 1;
      } else if (i4 > 0) {
        i1 = i3 + 1;
      } else {
        return paramkyh.a(paramComparator, paramE, ((List)localObject).subList(i1, i2 + 1), i3 - i1) + i1;
      }
    }
    return paramkyd.a(i1);
  }
  
  public static int a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i1 = c(paramBoolean2, paramBoolean3);
    if (i1 == 0) {
      ((NotificationManager)oJ.getSystemService("notification")).cancel(z(), 8);
    }
    while (!paramBoolean1) {
      return i1;
    }
    Object localObject1 = oJ;
    Object localObject2 = ((Context)localObject1).getResources();
    String str = ((Resources)localObject2).getString(StressMode.cj);
    localObject2 = ((Resources)localObject2).getString(StressMode.ck);
    Object localObject3 = d(null);
    PendingIntent localPendingIntent = PendingIntent.getActivity((Context)localObject1, eyr.a(8), (Intent)localObject3, 134217728);
    localObject3 = (NotificationManager)((Context)localObject1).getSystemService("notification");
    localObject1 = new cy((Context)localObject1).a(R.drawable.cm).c(str).a(System.currentTimeMillis()).a((CharSequence)localObject2).b(str).a(localPendingIntent).g();
    ((NotificationManager)localObject3).notify(z(), 8, (Notification)localObject1);
    return i1;
  }
  
  public static long a(Context paramContext, String paramString, long paramLong)
  {
    return ((bdp)ilh.a(paramContext, bdp.class)).a(paramString, paramLong);
  }
  
  public static long a(isq paramisq)
  {
    irj localirj = new irj();
    try
    {
      paramisq.writeTo(localirj);
      return a;
    }
    finally
    {
      localirj.close();
    }
  }
  
  public static long a(File paramFile)
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    try
    {
      long l1 = a(paramFile, a(paramFile));
      return l1;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  private static long a(RandomAccessFile paramRandomAccessFile, gah paramgah)
  {
    CRC32 localCRC32 = new CRC32();
    long l1 = b;
    paramRandomAccessFile.seek(a);
    int i1 = (int)Math.min(16384L, l1);
    paramgah = new byte['䀀'];
    for (i1 = paramRandomAccessFile.read(paramgah, 0, i1); i1 != -1; i1 = paramRandomAccessFile.read(paramgah, 0, (int)Math.min(16384L, l1)))
    {
      localCRC32.update(paramgah, 0, i1);
      l1 -= i1;
      if (l1 == 0L) {
        break;
      }
    }
    return localCRC32.getValue();
  }
  
  public static long a(Long paramLong, long paramLong1)
  {
    if (paramLong == null) {
      return 0L;
    }
    return paramLong.longValue();
  }
  
  public static abp a(Context paramContext, Class<? extends ack> paramClass)
  {
    return new abp(paramContext, paramClass);
  }
  
  public static Animator a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.setStartDelay(0L);
    localAnimatorSet.playTogether(new Animator[] { ObjectAnimator.ofFloat(null, View.SCALE_X, new float[] { paramFloat1, paramFloat2 }), ObjectAnimator.ofFloat(null, View.SCALE_Y, new float[] { paramFloat1, paramFloat2 }), ObjectAnimator.ofFloat(null, View.ALPHA, new float[] { paramFloat3, paramFloat4 }) });
    return localAnimatorSet;
  }
  
  public static Notification.Action a(do paramdo)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramdo.a(), paramdo.b(), paramdo.c()).addExtras(paramdo.d());
    paramdo = paramdo.e();
    if (paramdo != null)
    {
      paramdo = a(paramdo);
      int i2 = paramdo.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localBuilder.addRemoteInput(paramdo[i1]);
        i1 += 1;
      }
    }
    return localBuilder.build();
  }
  
  private static PendingIntent a(Context paramContext, int paramInt1, Bundle paramBundle, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new Intent(paramContext, TeleFeedback.FeedbackActivity.class).putExtra("telephony_call_info", paramBundle).putExtra("account_id", paramInt2).putExtra("telephony_id", paramInt1).putExtra("telephony_rating", paramInt3).putExtra("call_type", paramInt4).putExtra("is_incoming", paramBoolean1).putExtra("handoff_attempted", paramBoolean2).putExtra("participant_log_id", paramString1);
    paramBundle = paramString2;
    if (paramString2 == null) {
      paramBundle = "";
    }
    paramString1 = paramString1.putExtra("local_session_id", paramBundle);
    paramBundle = paramString3;
    if (paramString3 == null) {
      paramBundle = "";
    }
    return PendingIntent.getActivity(paramContext, paramInt1, paramString1.putExtra("remote_session_id", paramBundle).setData(Uri.fromParts("vnd.hangouts", 17 + "unique" + paramInt3, null)), 1073741824);
  }
  
  public static Intent a(int paramInt1, String paramString, int paramInt2)
  {
    return a(ConversationActivity.class, paramInt1, paramString, paramInt2);
  }
  
  public static Intent a(int paramInt1, String paramString, czb paramczb, int paramInt2, long paramLong)
  {
    paramString = a(InvitationActivity.class, paramInt1, paramString, paramInt2);
    paramString.putExtra("inviter_gaia_id", a);
    paramString.putExtra("inviter_chat_id", b);
    paramString.putExtra("invite_timestamp", paramLong);
    return paramString;
  }
  
  /* Error */
  public static Intent a(Activity paramActivity)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: sipush 512
    //   6: istore 8
    //   8: iconst_1
    //   9: istore 5
    //   11: aconst_null
    //   12: putstatic 3300	aal:oI	Lgyu;
    //   15: aload_0
    //   16: invokevirtual 3306	android/app/Activity:getWindow	()Landroid/view/Window;
    //   19: invokevirtual 3312	android/view/Window:getDecorView	()Landroid/view/View;
    //   22: invokevirtual 3315	android/view/View:getRootView	()Landroid/view/View;
    //   25: astore 12
    //   27: aload 12
    //   29: astore 11
    //   31: aload 11
    //   33: ifnull +586 -> 619
    //   36: aload 11
    //   38: invokevirtual 3318	android/view/View:isDrawingCacheEnabled	()Z
    //   41: ifne +572 -> 613
    //   44: aload 11
    //   46: iconst_1
    //   47: invokevirtual 3322	android/view/View:setDrawingCacheEnabled	(Z)V
    //   50: aload 11
    //   52: astore 12
    //   54: iload 5
    //   56: istore 6
    //   58: aload 11
    //   60: invokevirtual 3325	android/view/View:getDrawingCache	()Landroid/graphics/Bitmap;
    //   63: astore 14
    //   65: aload 14
    //   67: ifnonnull +104 -> 171
    //   70: aconst_null
    //   71: astore 13
    //   73: aload 11
    //   75: astore 12
    //   77: iload 5
    //   79: istore 6
    //   81: aload_0
    //   82: ldc_w 3327
    //   85: invokestatic 2705	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   88: checkcast 3327	gyu
    //   91: putstatic 3300	aal:oI	Lgyu;
    //   94: iload 5
    //   96: istore 7
    //   98: aload 13
    //   100: ifnull +46 -> 146
    //   103: iload 5
    //   105: istore 7
    //   107: aload 11
    //   109: astore 12
    //   111: iload 5
    //   113: istore 6
    //   115: aload 13
    //   117: invokevirtual 3332	android/graphics/Bitmap:isRecycled	()Z
    //   120: ifne +26 -> 146
    //   123: aload 11
    //   125: astore 12
    //   127: iload 5
    //   129: istore 6
    //   131: getstatic 3300	aal:oI	Lgyu;
    //   134: aload 13
    //   136: invokeinterface 3335 2 0
    //   141: pop
    //   142: iload 5
    //   144: istore 7
    //   146: iload 7
    //   148: ifeq +9 -> 157
    //   151: aload 11
    //   153: iconst_0
    //   154: invokevirtual 3322	android/view/View:setDrawingCacheEnabled	(Z)V
    //   157: new 3218	android/content/Intent
    //   160: dup
    //   161: getstatic 2300	aal:oJ	Landroid/content/Context;
    //   164: ldc_w 3337
    //   167: invokespecial 3221	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   170: areturn
    //   171: aload 11
    //   173: astore 12
    //   175: iload 5
    //   177: istore 6
    //   179: aload 14
    //   181: invokevirtual 3340	android/graphics/Bitmap:getWidth	()I
    //   184: istore 9
    //   186: aload 11
    //   188: astore 12
    //   190: iload 5
    //   192: istore 6
    //   194: aload 14
    //   196: invokevirtual 3343	android/graphics/Bitmap:getHeight	()I
    //   199: istore 10
    //   201: iload 9
    //   203: sipush 512
    //   206: if_icmpgt +114 -> 320
    //   209: iload 10
    //   211: sipush 512
    //   214: if_icmpgt +106 -> 320
    //   217: aload 14
    //   219: astore 13
    //   221: aload 11
    //   223: astore 12
    //   225: iload 5
    //   227: istore 6
    //   229: ldc_w 3345
    //   232: iconst_3
    //   233: invokestatic 3348	ezi:a	(Ljava/lang/String;I)Z
    //   236: ifeq -163 -> 73
    //   239: aload 11
    //   241: astore 12
    //   243: iload 5
    //   245: istore 6
    //   247: ldc_w 3345
    //   250: ldc_w 3350
    //   253: iconst_2
    //   254: anewarray 5	java/lang/Object
    //   257: dup
    //   258: iconst_0
    //   259: iload 9
    //   261: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   264: aastore
    //   265: dup
    //   266: iconst_1
    //   267: iload 10
    //   269: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   272: aastore
    //   273: invokestatic 2521	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   276: iconst_0
    //   277: anewarray 5	java/lang/Object
    //   280: invokestatic 3353	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   283: aload 14
    //   285: astore 13
    //   287: goto -214 -> 73
    //   290: astore_0
    //   291: aload 11
    //   293: astore_0
    //   294: ldc_w 3345
    //   297: ldc_w 3355
    //   300: iconst_0
    //   301: anewarray 5	java/lang/Object
    //   304: invokestatic 3357	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   307: iload 5
    //   309: ifeq -152 -> 157
    //   312: aload_0
    //   313: iconst_0
    //   314: invokevirtual 3322	android/view/View:setDrawingCacheEnabled	(Z)V
    //   317: goto -160 -> 157
    //   320: iload 9
    //   322: iload 10
    //   324: if_icmple +134 -> 458
    //   327: ldc2_w 3358
    //   330: iload 9
    //   332: i2d
    //   333: ddiv
    //   334: dstore_1
    //   335: iload 10
    //   337: i2d
    //   338: dstore_3
    //   339: aload 11
    //   341: astore 12
    //   343: iload 5
    //   345: istore 6
    //   347: dload_1
    //   348: dload_3
    //   349: dmul
    //   350: invokestatic 3361	aal:a	(D)I
    //   353: istore 7
    //   355: aload 11
    //   357: astore 12
    //   359: iload 5
    //   361: istore 6
    //   363: ldc_w 3345
    //   366: ldc_w 3363
    //   369: iconst_4
    //   370: anewarray 5	java/lang/Object
    //   373: dup
    //   374: iconst_0
    //   375: iload 9
    //   377: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   380: aastore
    //   381: dup
    //   382: iconst_1
    //   383: iload 10
    //   385: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   388: aastore
    //   389: dup
    //   390: iconst_2
    //   391: iload 8
    //   393: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   396: aastore
    //   397: dup
    //   398: iconst_3
    //   399: iload 7
    //   401: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   404: aastore
    //   405: invokestatic 2521	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   408: iconst_0
    //   409: anewarray 5	java/lang/Object
    //   412: invokestatic 3365	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   415: aload 11
    //   417: astore 12
    //   419: iload 5
    //   421: istore 6
    //   423: aload 14
    //   425: iload 8
    //   427: iload 7
    //   429: iconst_1
    //   430: invokestatic 3369	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   433: astore 13
    //   435: aload 13
    //   437: aload 14
    //   439: if_acmpeq +186 -> 625
    //   442: aload 11
    //   444: astore 12
    //   446: iload 5
    //   448: istore 6
    //   450: aload 14
    //   452: invokevirtual 3372	android/graphics/Bitmap:recycle	()V
    //   455: goto +170 -> 625
    //   458: aload 11
    //   460: astore 12
    //   462: iload 5
    //   464: istore 6
    //   466: ldc2_w 3358
    //   469: iload 10
    //   471: i2d
    //   472: ddiv
    //   473: iload 9
    //   475: i2d
    //   476: dmul
    //   477: invokestatic 3361	aal:a	(D)I
    //   480: istore 8
    //   482: sipush 512
    //   485: istore 7
    //   487: goto -132 -> 355
    //   490: astore_0
    //   491: aconst_null
    //   492: astore 11
    //   494: iconst_0
    //   495: istore 5
    //   497: aload 11
    //   499: astore 12
    //   501: iload 5
    //   503: istore 6
    //   505: ldc_w 3345
    //   508: ldc_w 3374
    //   511: iconst_0
    //   512: anewarray 5	java/lang/Object
    //   515: invokestatic 3357	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   518: iload 5
    //   520: ifeq -363 -> 157
    //   523: aload 11
    //   525: iconst_0
    //   526: invokevirtual 3322	android/view/View:setDrawingCacheEnabled	(Z)V
    //   529: goto -372 -> 157
    //   532: astore_0
    //   533: iconst_0
    //   534: istore 5
    //   536: aconst_null
    //   537: astore 11
    //   539: iload 5
    //   541: ifeq +9 -> 550
    //   544: aload 11
    //   546: iconst_0
    //   547: invokevirtual 3322	android/view/View:setDrawingCacheEnabled	(Z)V
    //   550: aload_0
    //   551: athrow
    //   552: astore_0
    //   553: iconst_0
    //   554: istore 5
    //   556: goto -17 -> 539
    //   559: astore_0
    //   560: aload 12
    //   562: astore 11
    //   564: iload 6
    //   566: istore 5
    //   568: goto -29 -> 539
    //   571: astore 12
    //   573: aload_0
    //   574: astore 11
    //   576: aload 12
    //   578: astore_0
    //   579: goto -40 -> 539
    //   582: astore_0
    //   583: iconst_0
    //   584: istore 5
    //   586: goto -89 -> 497
    //   589: astore_0
    //   590: goto -93 -> 497
    //   593: astore_0
    //   594: iconst_0
    //   595: istore 5
    //   597: aload 11
    //   599: astore_0
    //   600: goto -306 -> 294
    //   603: astore_0
    //   604: aload 11
    //   606: astore_0
    //   607: iconst_0
    //   608: istore 5
    //   610: goto -316 -> 294
    //   613: iconst_0
    //   614: istore 5
    //   616: goto -566 -> 50
    //   619: iconst_0
    //   620: istore 7
    //   622: goto -476 -> 146
    //   625: goto -552 -> 73
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	628	0	paramActivity	Activity
    //   334	14	1	d1	double
    //   338	11	3	d2	double
    //   9	606	5	i1	int
    //   56	509	6	i2	int
    //   96	525	7	i3	int
    //   6	475	8	i4	int
    //   184	290	9	i5	int
    //   199	271	10	i6	int
    //   1	604	11	localObject1	Object
    //   25	536	12	localObject2	Object
    //   571	6	12	localObject3	Object
    //   71	365	13	localBitmap1	Bitmap
    //   63	388	14	localBitmap2	Bitmap
    // Exception table:
    //   from	to	target	type
    //   58	65	290	java/lang/OutOfMemoryError
    //   81	94	290	java/lang/OutOfMemoryError
    //   115	123	290	java/lang/OutOfMemoryError
    //   131	142	290	java/lang/OutOfMemoryError
    //   179	186	290	java/lang/OutOfMemoryError
    //   194	201	290	java/lang/OutOfMemoryError
    //   229	239	290	java/lang/OutOfMemoryError
    //   247	283	290	java/lang/OutOfMemoryError
    //   347	355	290	java/lang/OutOfMemoryError
    //   363	415	290	java/lang/OutOfMemoryError
    //   423	435	290	java/lang/OutOfMemoryError
    //   450	455	290	java/lang/OutOfMemoryError
    //   466	482	290	java/lang/OutOfMemoryError
    //   15	27	490	java/lang/Exception
    //   15	27	532	finally
    //   36	50	552	finally
    //   58	65	559	finally
    //   81	94	559	finally
    //   115	123	559	finally
    //   131	142	559	finally
    //   179	186	559	finally
    //   194	201	559	finally
    //   229	239	559	finally
    //   247	283	559	finally
    //   347	355	559	finally
    //   363	415	559	finally
    //   423	435	559	finally
    //   450	455	559	finally
    //   466	482	559	finally
    //   505	518	559	finally
    //   294	307	571	finally
    //   36	50	582	java/lang/Exception
    //   58	65	589	java/lang/Exception
    //   81	94	589	java/lang/Exception
    //   115	123	589	java/lang/Exception
    //   131	142	589	java/lang/Exception
    //   179	186	589	java/lang/Exception
    //   194	201	589	java/lang/Exception
    //   229	239	589	java/lang/Exception
    //   247	283	589	java/lang/Exception
    //   347	355	589	java/lang/Exception
    //   363	415	589	java/lang/Exception
    //   423	435	589	java/lang/Exception
    //   450	455	589	java/lang/Exception
    //   466	482	589	java/lang/Exception
    //   15	27	593	java/lang/OutOfMemoryError
    //   36	50	603	java/lang/OutOfMemoryError
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    String str;
    if (((dcj)ilh.a(paramContext, dcj.class)).a("android.permission.CALL_PHONE"))
    {
      paramContext = "android.intent.action.CALL";
      str = String.valueOf(paramContext);
      if (str.length() == 0) {
        break label101;
      }
      str = "Intenting out to external dialer for audio call using action: ".concat(str);
      label45:
      ezi.a("Babel", str, new Object[0]);
      str = String.valueOf("tel:");
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label115;
      }
    }
    label101:
    label115:
    for (paramString = str.concat(paramString);; paramString = new String(str))
    {
      return new Intent(paramContext, Uri.parse(paramString));
      paramContext = "android.intent.action.DIAL";
      break;
      str = new String("Intenting out to external dialer for audio call using action: ");
      break label45;
    }
  }
  
  public static Intent a(bfd parambfd, dvv paramdvv)
  {
    Intent localIntent = new Intent(oJ, GoogleVoiceTermsOfServiceActivity.class);
    localIntent.putExtra("account_id", parambfd.g());
    localIntent.putExtra("com.google.android.apps.hangouts.voiceCallActionInfo", paramdvv);
    return localIntent;
  }
  
  public static Intent a(bfd parambfd, String paramString)
  {
    return a(parambfd, paramString, 0, "com.google.android.apps.hangouts.phone.conversationlist");
  }
  
  public static Intent a(bfd parambfd, String paramString1, int paramInt, String paramString2)
  {
    Intent localIntent = new Intent();
    switch (paramInt)
    {
    case 1: 
    default: 
      throw new AssertionError(33 + "Unknown display mode: " + paramInt);
    case 0: 
      localIntent.setClassName(oJ, "com.google.android.talk.SigningInActivity");
    }
    for (;;)
    {
      localIntent.setAction(paramString2);
      if (parambfd != null)
      {
        paramInt = parambfd.g();
        hbs.b("Invalid account", Integer.valueOf(paramInt), Integer.valueOf(-1));
        localIntent.putExtra("account_id", paramInt);
      }
      if (!TextUtils.isEmpty(paramString1))
      {
        localIntent.putExtra("conversation_id", paramString1);
        localIntent.putExtra("client_conversation_type", 0);
      }
      localIntent.setFlags(872415232);
      return localIntent;
      localIntent.setClass(oJ, ArchivedConversationListActivity.class);
    }
  }
  
  public static Intent a(bfd parambfd, String paramString, Collection<cyx> paramCollection, dhm paramdhm, bkw parambkw)
  {
    Intent localIntent = new Intent(oJ, EditAudienceActivity.class);
    if (parambfd != null) {
      localIntent.putExtra("account_id", parambfd.g());
    }
    if (paramString != null) {
      localIntent.putExtra("conversation_id", paramString);
    }
    if (paramCollection != null) {
      localIntent.putExtra("audience", c(paramCollection));
    }
    localIntent.putExtra("edit_audience_mode", paramdhm);
    localIntent.putExtra("conversation_type", parambkw);
    return localIntent;
  }
  
  public static Intent a(cgs paramcgs, cyx paramcyx, boolean paramBoolean, int paramInt1, int paramInt2, long paramLong)
  {
    return a(paramcgs, null, false, paramcyx, paramBoolean, true, paramInt1, paramInt2, paramLong, 0, false, false);
  }
  
  public static Intent a(cgs paramcgs, ArrayList<cyx> paramArrayList, boolean paramBoolean, int paramInt, long paramLong)
  {
    return a(paramcgs, paramArrayList, false, null, true, paramBoolean, paramInt, a(paramArrayList), paramLong, 0, false, false);
  }
  
  public static Intent a(cgs paramcgs, ArrayList<cyx> paramArrayList, boolean paramBoolean1, int paramInt1, long paramLong, int paramInt2, boolean paramBoolean2, boolean paramBoolean3)
  {
    return a(paramcgs, paramArrayList, false, null, true, paramBoolean1, paramInt1, a(paramArrayList), paramLong, paramInt2, paramBoolean2, paramBoolean3);
  }
  
  public static Intent a(cgs paramcgs, ArrayList<cyx> paramArrayList, boolean paramBoolean1, cyx paramcyx, boolean paramBoolean2, boolean paramBoolean3, int paramInt1, int paramInt2, long paramLong, int paramInt3, boolean paramBoolean4, boolean paramBoolean5)
  {
    Bundle localBundle = new Bundle();
    bfd localbfd = dvd.a(paramcgs.a(), null);
    int i1;
    if (localbfd == null)
    {
      i1 = -1;
      localBundle.putInt("account_id", i1);
      localBundle.putParcelable("hangout_room_info", paramcgs);
      if (paramArrayList != null) {
        localBundle.putParcelableArrayList("hangout_invitee_users", paramArrayList);
      }
      localBundle.putBoolean("hangout_is_joining_non_empty_hangout", paramBoolean1);
      if (paramcyx != null) {
        localBundle.putParcelable("pstn_caller", paramcyx);
      }
      localBundle.putBoolean("hangout_camera_on", paramBoolean2);
      localBundle.putInt("hangout_video_source", paramInt3);
      localBundle.putBoolean("hangout_mute_microphone", paramBoolean4);
      localBundle.putBoolean("hangout_mute_playback", paramBoolean5);
      localBundle.putBoolean("hangout_auto_join", paramBoolean3);
      localBundle.putInt("hangout_start_source", paramInt1);
      localBundle.putInt("hangout_pstn_call", paramInt2);
      localBundle.putLong("extra_hangout_start_time", paramLong);
      if (!cfc.a().c()) {
        break label252;
      }
    }
    label252:
    for (paramcgs = ((cjv)ilh.a(oJ, cjv.class)).a();; paramcgs = HangoutSupportInitializationActivity.class)
    {
      paramcgs = new Intent(oJ, paramcgs);
      paramLong = System.currentTimeMillis();
      paramcgs.setAction(26 + "unique" + paramLong);
      paramcgs.putExtras(localBundle);
      return paramcgs;
      i1 = localbfd.g();
      break;
    }
  }
  
  private static Intent a(Class<?> paramClass, int paramInt1, String paramString, int paramInt2)
  {
    paramClass = new Intent(oJ, paramClass);
    hbs.b("Invalid account", Integer.valueOf(paramInt1), Integer.valueOf(-1));
    paramClass.putExtra("account_id", paramInt1);
    if (!TextUtils.isEmpty(paramString))
    {
      paramClass.putExtra("conversation_id", paramString);
      paramClass.putExtra("client_conversation_type", paramInt2);
    }
    paramClass.setFlags(335544320);
    return paramClass;
  }
  
  public static Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    try
    {
      paramContentResolver = paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
      return paramContentResolver;
    }
    catch (SQLiteException paramContentResolver)
    {
      return null;
    }
    catch (IllegalArgumentException paramContentResolver) {}
    return null;
  }
  
  public static Bitmap a(ContentResolver paramContentResolver, Uri paramUri, int paramInt)
  {
    localInputStream = null;
    if (paramInt > 0)
    {
      localObject1 = localInputStream;
      try
      {
        Point localPoint = a(paramContentResolver, paramUri);
        localObject1 = localInputStream;
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localObject1 = localInputStream;
        Object localObject2;
        for (inSampleSize = 1;; inSampleSize <<= 1)
        {
          localObject1 = localInputStream;
          localObject2 = localOptions;
          if (x * y <= paramInt) {
            break;
          }
          localObject1 = localInputStream;
          x /= 2;
          localObject1 = localInputStream;
          y /= 2;
          localObject1 = localInputStream;
        }
        try
        {
          ((InputStream)localObject1).close();
          throw paramContentResolver;
          localObject2 = null;
          localObject1 = localInputStream;
          localInputStream = paramContentResolver.openInputStream(paramUri);
          localObject1 = localInputStream;
          localObject2 = a(localInputStream, (BitmapFactory.Options)localObject2);
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            localObject1 = localInputStream;
            paramInt = b(paramContentResolver, paramUri);
            localObject1 = localObject2;
            if (paramInt != 0)
            {
              localObject1 = localInputStream;
              paramContentResolver = a((Bitmap)localObject2, paramInt);
              localObject1 = paramContentResolver;
            }
          }
          if (localInputStream != null) {}
          try
          {
            localInputStream.close();
            return (Bitmap)localObject1;
          }
          catch (IOException paramContentResolver)
          {
            return (Bitmap)localObject1;
          }
        }
        catch (IOException paramUri)
        {
          for (;;) {}
        }
      }
      finally
      {
        if (localObject1 == null) {}
      }
    }
  }
  
  /* Error */
  private static Bitmap a(ContentResolver paramContentResolver, Uri paramUri, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: iconst_1
    //   4: istore 8
    //   6: iload_2
    //   7: iload_3
    //   8: imul
    //   9: i2d
    //   10: dstore 4
    //   12: iload 8
    //   14: i2d
    //   15: dstore 6
    //   17: aload 10
    //   19: astore 9
    //   21: dload 4
    //   23: dload 6
    //   25: ldc2_w 3586
    //   28: invokestatic 3590	java/lang/Math:pow	(DD)D
    //   31: ddiv
    //   32: ldc2_w 3591
    //   35: dcmpl
    //   36: ifle +12 -> 48
    //   39: iload 8
    //   41: iconst_1
    //   42: iadd
    //   43: istore 8
    //   45: goto -39 -> 6
    //   48: aload 10
    //   50: astore 9
    //   52: new 3562	android/graphics/BitmapFactory$Options
    //   55: dup
    //   56: invokespecial 3563	android/graphics/BitmapFactory$Options:<init>	()V
    //   59: astore 11
    //   61: aload 10
    //   63: astore 9
    //   65: aload 11
    //   67: iload 8
    //   69: iconst_1
    //   70: isub
    //   71: putfield 3566	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   74: aload 10
    //   76: astore 9
    //   78: aload_0
    //   79: aload_1
    //   80: invokevirtual 3577	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   83: astore_0
    //   84: aload_0
    //   85: astore 9
    //   87: aload_0
    //   88: aconst_null
    //   89: aload 11
    //   91: invokestatic 3598	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   94: astore 10
    //   96: aload_0
    //   97: astore 9
    //   99: iload_3
    //   100: i2d
    //   101: iload_2
    //   102: i2d
    //   103: ddiv
    //   104: ldc2_w 3591
    //   107: dmul
    //   108: invokestatic 3601	java/lang/Math:sqrt	(D)D
    //   111: dstore 4
    //   113: aload_0
    //   114: astore 9
    //   116: dload 4
    //   118: iload_3
    //   119: i2d
    //   120: ddiv
    //   121: iload_2
    //   122: i2d
    //   123: dmul
    //   124: dstore 6
    //   126: aload_0
    //   127: astore 9
    //   129: aload 10
    //   131: dload 6
    //   133: d2i
    //   134: dload 4
    //   136: d2i
    //   137: iconst_1
    //   138: invokestatic 3369	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   141: astore_1
    //   142: aload_0
    //   143: astore 9
    //   145: aload 10
    //   147: invokevirtual 3372	android/graphics/Bitmap:recycle	()V
    //   150: aload_0
    //   151: astore 9
    //   153: ldc_w 3603
    //   156: iconst_4
    //   157: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   160: ifeq +64 -> 224
    //   163: aload_0
    //   164: astore 9
    //   166: new 2382	java/lang/StringBuilder
    //   169: dup
    //   170: bipush 104
    //   172: invokespecial 2388	java/lang/StringBuilder:<init>	(I)V
    //   175: ldc_w 3608
    //   178: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: iload_2
    //   182: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   185: ldc_w 3610
    //   188: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: iload_3
    //   192: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   195: ldc_w 3612
    //   198: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: dload 6
    //   203: invokevirtual 3615	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   206: ldc_w 3610
    //   209: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: dload 4
    //   214: invokevirtual 3615	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   217: ldc_w 3617
    //   220: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: pop
    //   224: aload_0
    //   225: ifnull +7 -> 232
    //   228: aload_0
    //   229: invokevirtual 3573	java/io/InputStream:close	()V
    //   232: aload_1
    //   233: areturn
    //   234: astore_0
    //   235: aload 9
    //   237: ifnull +8 -> 245
    //   240: aload 9
    //   242: invokevirtual 3573	java/io/InputStream:close	()V
    //   245: aload_0
    //   246: athrow
    //   247: astore_0
    //   248: aload_1
    //   249: areturn
    //   250: astore_1
    //   251: goto -6 -> 245
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	paramContentResolver	ContentResolver
    //   0	254	1	paramUri	Uri
    //   0	254	2	paramInt1	int
    //   0	254	3	paramInt2	int
    //   10	203	4	d1	double
    //   15	187	6	d2	double
    //   4	67	8	i1	int
    //   19	222	9	localObject	Object
    //   1	145	10	localBitmap	Bitmap
    //   59	31	11	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   21	39	234	finally
    //   52	61	234	finally
    //   65	74	234	finally
    //   78	84	234	finally
    //   87	96	234	finally
    //   99	113	234	finally
    //   116	126	234	finally
    //   129	142	234	finally
    //   145	150	234	finally
    //   153	163	234	finally
    //   166	224	234	finally
    //   228	232	247	java/io/IOException
    //   240	245	250	java/io/IOException
  }
  
  public static Bitmap a(ContentResolver paramContentResolver, Uri paramUri, int paramInt, Bitmap paramBitmap)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localObject1 = localObject2;
      inSampleSize = paramInt;
      if (paramInt == 1)
      {
        localObject1 = localObject2;
        if (Build.VERSION.SDK_INT >= 11)
        {
          localObject1 = localObject2;
          inBitmap = paramBitmap;
        }
      }
      localObject1 = localObject2;
      paramContentResolver = paramContentResolver.openInputStream(paramUri);
      localObject1 = paramContentResolver;
      paramUri = a(paramContentResolver, localOptions);
      if (paramContentResolver != null) {
        paramContentResolver.close();
      }
      return paramUri;
    }
    finally
    {
      if (localObject1 != null) {
        ((InputStream)localObject1).close();
      }
    }
  }
  
  /* Error */
  public static Bitmap a(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: new 3624	android/media/MediaMetadataRetriever
    //   3: dup
    //   4: invokespecial 3625	android/media/MediaMetadataRetriever:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: aload_0
    //   12: aload_1
    //   13: invokevirtual 3629	android/media/MediaMetadataRetriever:setDataSource	(Landroid/content/Context;Landroid/net/Uri;)V
    //   16: aload 4
    //   18: ldc2_w 3630
    //   21: invokevirtual 3635	android/media/MediaMetadataRetriever:getFrameAtTime	(J)Landroid/graphics/Bitmap;
    //   24: astore_0
    //   25: aload 4
    //   27: invokevirtual 3638	android/media/MediaMetadataRetriever:release	()V
    //   30: aload_0
    //   31: ifnonnull +47 -> 78
    //   34: aconst_null
    //   35: areturn
    //   36: astore_0
    //   37: aload 4
    //   39: invokevirtual 3638	android/media/MediaMetadataRetriever:release	()V
    //   42: aconst_null
    //   43: astore_0
    //   44: goto -14 -> 30
    //   47: astore_0
    //   48: aconst_null
    //   49: astore_0
    //   50: goto -20 -> 30
    //   53: astore_0
    //   54: aload 4
    //   56: invokevirtual 3638	android/media/MediaMetadataRetriever:release	()V
    //   59: aconst_null
    //   60: astore_0
    //   61: goto -31 -> 30
    //   64: astore_0
    //   65: aconst_null
    //   66: astore_0
    //   67: goto -37 -> 30
    //   70: astore_0
    //   71: aload 4
    //   73: invokevirtual 3638	android/media/MediaMetadataRetriever:release	()V
    //   76: aload_0
    //   77: athrow
    //   78: aload_0
    //   79: iload_2
    //   80: iload_3
    //   81: iconst_2
    //   82: invokestatic 3644	android/media/ThumbnailUtils:extractThumbnail	(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    //   85: areturn
    //   86: astore_1
    //   87: goto -57 -> 30
    //   90: astore_1
    //   91: goto -15 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramContext	Context
    //   0	94	1	paramUri	Uri
    //   0	94	2	paramInt1	int
    //   0	94	3	paramInt2	int
    //   7	65	4	localMediaMetadataRetriever	MediaMetadataRetriever
    // Exception table:
    //   from	to	target	type
    //   9	25	36	java/lang/IllegalArgumentException
    //   37	42	47	java/lang/RuntimeException
    //   9	25	53	java/lang/RuntimeException
    //   54	59	64	java/lang/RuntimeException
    //   9	25	70	finally
    //   25	30	86	java/lang/RuntimeException
    //   71	76	90	java/lang/RuntimeException
  }
  
  private static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Object localObject = paramBitmap;
    if (paramInt != 0)
    {
      localObject = paramBitmap;
      if (paramBitmap != null)
      {
        localObject = new Matrix();
        ((Matrix)localObject).setRotate(paramInt);
      }
    }
    try
    {
      localObject = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), (Matrix)localObject, true);
      return (Bitmap)localObject;
    }
    catch (OutOfMemoryError localOutOfMemoryError) {}
    return paramBitmap;
  }
  
  public static Bitmap a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (paramParcelFileDescriptor == null) {
      return null;
    }
    paramParcelFileDescriptor = new FileInputStream(paramParcelFileDescriptor.getFileDescriptor());
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(paramParcelFileDescriptor);
      return localBitmap;
    }
    finally
    {
      a(paramParcelFileDescriptor);
    }
  }
  
  private static Bitmap a(InputStream paramInputStream, BitmapFactory.Options paramOptions)
  {
    try
    {
      paramInputStream = BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
      return paramInputStream;
    }
    catch (OutOfMemoryError paramInputStream)
    {
      Log.e("MediaStoreUtil", "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME", paramInputStream);
    }
    return null;
  }
  
  /* Error */
  public static Point a(ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: new 3562	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 3563	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore 4
    //   9: aconst_null
    //   10: astore_3
    //   11: aload_3
    //   12: astore_2
    //   13: aload 4
    //   15: iconst_1
    //   16: putfield 3680	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   19: aload_3
    //   20: astore_2
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 3577	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   26: astore_0
    //   27: aload_0
    //   28: astore_2
    //   29: aload_0
    //   30: aload 4
    //   32: invokestatic 3580	aal:a	(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   35: pop
    //   36: aload_0
    //   37: astore_2
    //   38: new 3568	android/graphics/Point
    //   41: dup
    //   42: aload 4
    //   44: getfield 3683	android/graphics/BitmapFactory$Options:outWidth	I
    //   47: aload 4
    //   49: getfield 3686	android/graphics/BitmapFactory$Options:outHeight	I
    //   52: invokespecial 3689	android/graphics/Point:<init>	(II)V
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull +7 -> 64
    //   60: aload_0
    //   61: invokevirtual 3573	java/io/InputStream:close	()V
    //   64: aload_1
    //   65: areturn
    //   66: astore_0
    //   67: aload_2
    //   68: ifnull +7 -> 75
    //   71: aload_2
    //   72: invokevirtual 3573	java/io/InputStream:close	()V
    //   75: aload_0
    //   76: athrow
    //   77: astore_0
    //   78: aload_1
    //   79: areturn
    //   80: astore_1
    //   81: goto -6 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	paramContentResolver	ContentResolver
    //   0	84	1	paramUri	Uri
    //   12	60	2	localObject1	Object
    //   10	10	3	localObject2	Object
    //   7	41	4	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   13	19	66	finally
    //   21	27	66	finally
    //   29	36	66	finally
    //   38	56	66	finally
    //   60	64	77	java/io/IOException
    //   71	75	80	java/io/IOException
  }
  
  public static Rect a(View paramView)
  {
    Rect localRect = new Rect();
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    localRect.set(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight());
    return localRect;
  }
  
  public static <T> Parcelable.Creator<T> a(gu<T> paramgu)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return new gv(paramgu);
    }
    return new gt(paramgu);
  }
  
  public static <T extends Parcelable> T a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return paramBundle.getParcelable("concurrent_bundle_util_key");
    }
    return null;
  }
  
  public static <T extends Parcelable> T a(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = (Parcelable)paramCreator.createFromParcel(paramParcel);
    paramParcel.setDataPosition(paramInt + i1);
    return paramCreator;
  }
  
  public static <T extends Parcelable> T a(byte[] paramArrayOfByte, ClassLoader paramClassLoader)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    paramArrayOfByte = localParcel.readParcelable(paramClassLoader);
    localParcel.recycle();
    return paramArrayOfByte;
  }
  
  public static Menu a(Context paramContext, gi paramgi)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return new ud(paramContext, paramgi);
    }
    throw new UnsupportedOperationException();
  }
  
  public static MenuItem a(Context paramContext, gj paramgj)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new tv(paramContext, paramgj);
    }
    if (Build.VERSION.SDK_INT >= 14) {
      return new tq(paramContext, paramgj);
    }
    throw new UnsupportedOperationException();
  }
  
  public static bdp a(Context paramContext)
  {
    return (bdp)ilh.a(paramContext, bdp.class);
  }
  
  private static biv a(bfd parambfd, String paramString1, String paramString2, boolean paramBoolean)
  {
    paramString1 = new czb(paramString1, paramString2);
    if (!parambfd.a(paramString1))
    {
      parambfd = ((bil)ilh.a(oJ, bil.class)).a(parambfd).a(paramString1, paramBoolean);
      if (parambfd == null) {
        return new biv(false, null, null);
      }
      return new biv(false, e, f);
    }
    return new biv(true, null, null);
  }
  
  public static cms a(Context paramContext, int paramInt1, hkx paramhkx1, hkx paramhkx2, int paramInt2, int paramInt3, int paramInt4)
  {
    String str1 = paramhkx1.b();
    String str2 = paramhkx2.b();
    if (paramhkx2.g()) {
      paramContext = paramContext.getResources().getString(paramInt2, new Object[] { str1 });
    }
    for (;;)
    {
      return new cmt().a(paramInt1).a(paramContext).b();
      if (paramhkx1.g()) {
        paramContext = paramContext.getResources().getString(paramInt3, new Object[] { str2 });
      } else {
        paramContext = paramContext.getResources().getString(paramInt4, new Object[] { str2, str1 });
      }
    }
  }
  
  public static cms a(Context paramContext, khk paramkhk)
  {
    if (a(n, 0) == 5) {}
    for (paramkhk = ezm.p(d);; paramkhk = d) {
      return new cmt().a(paramContext.getResources().getString(StressMode.dT, new Object[] { paramkhk })).a(0).c(hI).b();
    }
  }
  
  public static <T extends SafeParcelable> T a(Intent paramIntent, String paramString, Parcelable.Creator<T> paramCreator)
  {
    paramString = paramIntent.getByteArrayExtra(paramString);
    if (paramString == null) {
      return null;
    }
    d(paramCreator);
    paramIntent = Parcel.obtain();
    paramIntent.unmarshall(paramString, 0, paramString.length);
    paramIntent.setDataPosition(0);
    paramString = (SafeParcelable)paramCreator.createFromParcel(paramIntent);
    paramIntent.recycle();
    return paramString;
  }
  
  public static Asset a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    return Asset.a(localByteArrayOutputStream.toByteArray());
  }
  
  public static cyx a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    cyx localcyx = new cyx();
    String str = paramString2;
    if (TextUtils.isEmpty(paramString2)) {
      if (TextUtils.isEmpty(paramString1)) {
        break label86;
      }
    }
    label86:
    for (str = ezm.p(paramString1);; str = cyx.a(paramContext))
    {
      e = str;
      b = l(paramString1);
      c = paramString1;
      a = czd.d;
      h = paramString3;
      s = p();
      localcyx.c(str);
      return localcyx;
    }
  }
  
  public static cyx a(czb paramczb, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    hbs.b("Expected non-null", paramczb);
    cyx localcyx = new cyx();
    b = paramczb;
    e = paramString1;
    f = paramString2;
    if (TextUtils.isEmpty(paramString3)) {}
    for (;;)
    {
      localcyx.c(paramString1);
      h = paramString4;
      r = paramString5;
      a = czd.b;
      return localcyx;
      paramString1 = paramString3;
    }
  }
  
  public static cyx a(czb paramczb, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Boolean paramBoolean)
  {
    hbs.b("Expected non-null", paramczb);
    cyx localcyx = new cyx();
    b = paramczb;
    c = paramString1;
    e = paramString2;
    f = paramString3;
    if (TextUtils.isEmpty(paramString4))
    {
      paramczb = paramString2;
      if (!TextUtils.isEmpty(paramString2)) {}
    }
    for (paramczb = paramString1;; paramczb = paramString4)
    {
      localcyx.c(paramczb);
      h = paramString5;
      r = paramString6;
      if (TextUtils.isEmpty(paramString1)) {}
      for (paramczb = czd.b;; paramczb = czd.d)
      {
        a = paramczb;
        i = paramBoolean;
        c(localcyx);
        return localcyx;
      }
    }
  }
  
  public static cyx a(czd paramczd, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, Boolean paramBoolean, int paramInt)
  {
    cyx localcyx = new cyx();
    b = new czb(paramString1, paramString2);
    a = paramczd;
    d = paramString3;
    c = paramString4;
    e = paramString5;
    if ((paramString5 != null) && (paramString5.equals(paramString4))) {
      e = ezm.p(paramString4);
    }
    if ((paramString4 != null) && (TextUtils.equals(ezm.g(paramString6), ezm.g(paramString4)))) {}
    for (f = paramString6;; f = cyx.a(paramString6))
    {
      g = paramString7;
      h = paramString8;
      q = paramString9;
      i = paramBoolean;
      r = null;
      D = cyz.a()[paramInt];
      c(localcyx);
      return localcyx;
    }
  }
  
  public static cyx a(String paramString1, String paramString2)
  {
    cyx localcyx = new cyx();
    d = paramString1;
    e = paramString2;
    localcyx.c(paramString2);
    a = czd.c;
    return localcyx;
  }
  
  public static cyx a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, Boolean paramBoolean)
  {
    if (paramString3 != null)
    {
      if (paramString5 != null) {}
      for (;;)
      {
        return a(paramString3, paramString5);
        paramString5 = paramString7;
      }
    }
    if ((paramString1 != null) || (paramString2 != null)) {
      return a(a(paramString1, paramString2, paramString4), paramString4, paramString5, paramString6, paramString7, paramString8, paramString9, paramBoolean);
    }
    paramString1 = new cyx();
    e = paramString7;
    a = czd.a;
    paramString1.c(paramString7);
    return paramString1;
  }
  
  public static cyx a(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, int paramInt)
  {
    cyx localcyx = new cyx();
    e = paramString4;
    b = l(paramString1);
    a = czd.d;
    s = paramString2;
    c = paramString1;
    t = paramBoolean;
    h = paramString3;
    w = paramInt;
    localcyx.c(paramString1);
    return localcyx;
  }
  
  public static cyx a(jzh paramjzh, String paramString)
  {
    boolean bool2 = true;
    cyx localcyx = new cyx();
    boolean bool1;
    switch (a(a, 0))
    {
    default: 
      a = czd.a;
    case 2: 
      for (b = a(c, null);; b = a(c, null))
      {
        if (d != null)
        {
          paramString = d;
          e = b;
          f = c;
          g = b;
          if (TextUtils.isEmpty(f)) {
            f = cyx.a(e);
          }
          h = d;
          if (a(a, 0) != 2) {
            break;
          }
          bool1 = true;
          n = bool1;
          if ((a(a, 0) != 1) && (!n)) {
            break label573;
          }
          bool1 = true;
          m = bool1;
          r = null;
          j = h;
          k = i;
          l = j;
          y = a(k, false);
        }
        if (e != null)
        {
          paramString = e;
          o = a(f, false);
          int i1 = a(g, 0);
          if ((i1 != 2) && (i1 != 3)) {
            break label578;
          }
          bool1 = true;
          u = bool1;
          if (a(k, 0) == 1) {
            break label583;
          }
          bool1 = true;
          v = bool1;
          x = e;
          p = a(a, false);
        }
        i = h;
        if (a(j, 0) == 0) {
          break label588;
        }
        bool1 = bool2;
        z = bool1;
        return localcyx;
        a = czd.b;
      }
    case 3: 
      label159:
      label187:
      label285:
      label305:
      label356:
      if ((d != null) && (d.g != null) && (d.g.length > 0) && (!TextUtils.isEmpty(d.g[0]))) {
        hbs.a(Integer.valueOf(1), Integer.valueOf(d.g.length));
      }
      break;
    }
    for (String str = d.g[0];; str = paramString)
    {
      a = czd.d;
      if (c != null)
      {
        b = a(c.b, c.a, str);
        label500:
        if (!TextUtils.isEmpty(paramString)) {
          break label538;
        }
      }
      for (;;)
      {
        c = str;
        s = p();
        break;
        b = l(str);
        break label500;
        label538:
        str = paramString;
      }
      a = czd.d;
      b = a(c, null);
      break;
      bool1 = false;
      break label159;
      label573:
      bool1 = false;
      break label187;
      label578:
      bool1 = false;
      break label285;
      label583:
      bool1 = false;
      break label305;
      label588:
      bool1 = false;
      break label356;
    }
  }
  
  public static czb a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString3 != null) {
      return new czb(paramString1, m(paramString3));
    }
    return new czb(paramString1, paramString2);
  }
  
  public static czb a(kcr paramkcr, String paramString)
  {
    Object localObject = null;
    String str2 = null;
    if (paramkcr != null) {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = m(paramString);
        String str1 = str2;
        if (b != null)
        {
          str1 = str2;
          if (!TextUtils.isEmpty(b)) {
            str1 = b;
          }
        }
        str2 = paramString;
        localObject = str1;
        if (TextUtils.isEmpty(b))
        {
          ezi.d("Babel", "Received empty gaiaid.", new Exception());
          localObject = str1;
        }
      }
    }
    for (str2 = paramString;; str2 = null)
    {
      return new czb((String)localObject, str2);
      if ((a != null) && (!TextUtils.isEmpty(a)))
      {
        paramString = a;
        break;
      }
      paramString = null;
      break;
    }
  }
  
  public static dtt a(czb paramczb)
  {
    return new dtt(a, b, null, null, false);
  }
  
  private static euf a(Context paramContext, est paramest, int paramInt)
  {
    int i1 = 0;
    ArrayList localArrayList = new ArrayList();
    Object localObject;
    if (paramest.b(paramContext))
    {
      localObject = paramest.d();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        localArrayList.add(String.format(Locale.US, "_international_%s", new Object[] { localObject }));
      }
      localArrayList.add("_international");
      paramest = paramest.b();
      if (!TextUtils.isEmpty(paramest)) {
        localArrayList.add(String.format(Locale.US, "_carrier_%s", new Object[] { paramest }));
      }
      localArrayList.add(String.format(Locale.US, "_network_type_%s", new Object[] { k(paramInt) }));
      paramest = new euf();
      localObject = a(paramContext);
      b = a((bdp)localObject, localArrayList, "babel_wifi_signal_level_percent_threshold_new_call", 50);
      int i2 = eut.a(paramContext).b();
      if (!dvp.H.b(i2))
      {
        paramInt = i1;
        if (!dvp.I.b(i2)) {}
      }
      else
      {
        paramInt = 1;
      }
      if (paramInt == 0) {
        break label326;
      }
    }
    label326:
    for (c = a((bdp)localObject, localArrayList, "babel_wifi_signal_level_percent_threshold_jmi_handoff", 20);; c = a((bdp)localObject, localArrayList, "babel_wifi_signal_level_percent_threshold_handoff", 40))
    {
      d = a((bdp)localObject, localArrayList, "babel_wifi_link_speed_mbps_threshold", 2);
      e = a((bdp)localObject, localArrayList, "babel_wifi_link_speed_mbps_threshold", 2);
      a = a((bdp)localObject, localArrayList, "babel_cell_signal_level_percent_threshold", 25);
      f = a((bdp)localObject, localArrayList, "babel_wifi_predicted_latency_threshold_new_call_micros", ers.b);
      g = a((bdp)localObject, localArrayList, "babel_wifi_predicted_downlink_througput_threshold_new_call_bps", 512000);
      return paramest;
      if (paramest.a() != 2) {
        break;
      }
      localArrayList.add("_domestic_roaming");
      break;
    }
  }
  
  public static ez a(bfd parambfd, boolean paramBoolean, int paramInt)
  {
    int i1 = paramInt;
    if (paramInt <= 0) {
      i1 = 100;
    }
    if (paramBoolean) {}
    for (String str = "call_type = 1";; str = null)
    {
      parambfd = EsProvider.a(parambfd, i1);
      return new ez(oJ, parambfd, bfs.a, str, null, "call_timestamp DESC");
    }
  }
  
  private static gah a(RandomAccessFile paramRandomAccessFile)
  {
    long l1 = 0L;
    long l2 = paramRandomAccessFile.length() - 22L;
    if (l2 < 0L) {
      throw new ZipException("File too short to be a zip file: " + paramRandomAccessFile.length());
    }
    long l3 = l2 - 65536L;
    if (l3 < 0L) {}
    for (;;)
    {
      int i1 = Integer.reverseBytes(101010256);
      do
      {
        paramRandomAccessFile.seek(l2);
        if (paramRandomAccessFile.readInt() == i1) {
          break;
        }
        l3 = l2 - 1L;
        l2 = l3;
      } while (l3 >= l1);
      throw new ZipException("End Of Central Directory signature not found");
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      gah localgah = new gah();
      b = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
      a = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
      return localgah;
      l1 = l3;
    }
  }
  
  public static gba a(grp paramgrp)
  {
    gbb localgbb = new gbb();
    ArrayList localArrayList = new ArrayList();
    a = a(paramgrp, localArrayList);
    return new gba(localgbb, localArrayList);
  }
  
  private static gbd a(List<Asset> paramList, Object paramObject)
  {
    gbd localgbd1 = new gbd();
    if (paramObject == null)
    {
      a = 14;
      return localgbd1;
    }
    b = new gbe();
    if ((paramObject instanceof String))
    {
      a = 2;
      b.b = ((String)paramObject);
    }
    Object localObject1;
    Object localObject2;
    int i1;
    Object localObject3;
    for (;;)
    {
      return localgbd1;
      if ((paramObject instanceof Integer))
      {
        a = 6;
        b.f = ((Integer)paramObject).intValue();
      }
      else if ((paramObject instanceof Long))
      {
        a = 5;
        b.e = ((Long)paramObject).longValue();
      }
      else if ((paramObject instanceof Double))
      {
        a = 3;
        b.c = ((Double)paramObject).doubleValue();
      }
      else if ((paramObject instanceof Float))
      {
        a = 4;
        b.d = ((Float)paramObject).floatValue();
      }
      else if ((paramObject instanceof Boolean))
      {
        a = 8;
        b.h = ((Boolean)paramObject).booleanValue();
      }
      else if ((paramObject instanceof Byte))
      {
        a = 7;
        b.g = ((Byte)paramObject).byteValue();
      }
      else if ((paramObject instanceof byte[]))
      {
        a = 1;
        b.a = ((byte[])paramObject);
      }
      else if ((paramObject instanceof String[]))
      {
        a = 11;
        b.k = ((String[])paramObject);
      }
      else if ((paramObject instanceof long[]))
      {
        a = 12;
        b.l = ((long[])paramObject);
      }
      else if ((paramObject instanceof float[]))
      {
        a = 15;
        b.m = ((float[])paramObject);
      }
      else if ((paramObject instanceof Asset))
      {
        a = 13;
        localObject1 = b;
        paramList.add((Asset)paramObject);
        n = (paramList.size() - 1);
      }
      else
      {
        if (!(paramObject instanceof grp)) {
          break;
        }
        a = 9;
        paramObject = (grp)paramObject;
        localObject2 = new TreeSet(((grp)paramObject).b());
        localObject1 = new gbc[((TreeSet)localObject2).size()];
        localObject2 = ((TreeSet)localObject2).iterator();
        i1 = 0;
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          localObject1[i1] = new gbc();
          a = ((String)localObject3);
          b = a(paramList, ((grp)paramObject).a((String)localObject3));
          i1 += 1;
        }
        b.i = ((gbc[])localObject1);
      }
    }
    int i2;
    label590:
    gbd localgbd2;
    if ((paramObject instanceof ArrayList))
    {
      a = 10;
      localObject2 = (ArrayList)paramObject;
      localObject3 = new gbd[((ArrayList)localObject2).size()];
      paramObject = null;
      int i3 = ((ArrayList)localObject2).size();
      i2 = 0;
      i1 = 14;
      if (i2 < i3)
      {
        localObject1 = ((ArrayList)localObject2).get(i2);
        localgbd2 = a(paramList, localObject1);
        if ((a != 14) && (a != 2) && (a != 6) && (a != 9)) {
          throw new IllegalArgumentException("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a " + localObject1.getClass());
        }
        if ((i1 == 14) && (a != 14))
        {
          i1 = a;
          paramObject = localObject1;
        }
      }
    }
    for (;;)
    {
      localObject3[i2] = localgbd2;
      i2 += 1;
      break label590;
      if (a != i1)
      {
        throw new IllegalArgumentException("ArrayList elements must all be of the sameclass, but this one contains a " + paramObject.getClass() + " and a " + localObject1.getClass());
        b.j = ((gbd[])localObject3);
        break;
        throw new RuntimeException("newFieldValueFromValue: unexpected value " + paramObject.getClass().getSimpleName());
      }
    }
  }
  
  public static gfg a(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = new gfg(((gfn)b(sD, "CameraUpdateFactory is not initialized")).a(paramLatLng, 16.0F));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new ax(paramLatLng);
    }
  }
  
  public static grp a(gba paramgba)
  {
    grp localgrp = new grp();
    gbc[] arrayOfgbc = a.a;
    int i2 = arrayOfgbc.length;
    int i1 = 0;
    while (i1 < i2)
    {
      gbc localgbc = arrayOfgbc[i1];
      a(b, localgrp, a, b);
      i1 += 1;
    }
    return localgrp;
  }
  
  public static Boolean a(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
      return null;
    case 1: 
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
  
  public static CharSequence a(long paramLong)
  {
    return DateUtils.formatDateTime(oJ, paramLong, 21);
  }
  
  public static CharSequence a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    return a(paramLong1, paramLong2, true, paramBoolean);
  }
  
  private static CharSequence a(long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2)
  {
    long l1 = paramLong2 - paramLong1;
    if (l1 < 60000L) {
      return oJ.getResources().getText(rW);
    }
    if (l1 < 3600000L)
    {
      paramLong1 = l1 / 60000L;
      if (paramBoolean2) {}
      for (localObject = oJ.getResources().getQuantityString(rw, (int)paramLong1);; localObject = oJ.getResources().getQuantityString(rL, (int)paramLong1)) {
        return String.format((String)localObject, new Object[] { Long.valueOf(paramLong1) });
      }
    }
    if (b(paramLong1, paramLong2) == 0L) {
      return DateUtils.formatDateTime(oJ, paramLong1, 1);
    }
    int i1;
    if (l1 < 604800000L)
    {
      localObject = oJ;
      if (paramBoolean1)
      {
        if (paramBoolean2) {}
        for (i1 = 0;; i1 = 32768) {
          return DateUtils.formatDateTime((Context)localObject, paramLong1, i1 | 0x2);
        }
      }
      if (paramBoolean2) {}
      for (i1 = 0;; i1 = 32768) {
        return DateUtils.formatDateTime((Context)localObject, paramLong1, i1 | 0x3);
      }
    }
    if (l1 < 31449600000L)
    {
      localObject = oJ;
      if (paramBoolean1)
      {
        if (paramBoolean2) {}
        for (i1 = 0;; i1 = 65536) {
          return DateUtils.formatDateTime((Context)localObject, paramLong1, i1 | 0x10 | 0x8);
        }
      }
      if (paramBoolean2) {}
      for (i1 = 0;; i1 = 65536) {
        return DateUtils.formatDateTime((Context)localObject, paramLong1, i1 | 0x11 | 0x8);
      }
    }
    Object localObject = oJ;
    if (paramBoolean1) {
      return DateUtils.formatDateTime((Context)localObject, paramLong1, 131092);
    }
    return DateUtils.formatDateTime((Context)localObject, paramLong1, 131093);
  }
  
  public static CharSequence a(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L)) {
      return null;
    }
    long l1 = paramLong2 - paramLong1;
    if (l1 <= -900000L)
    {
      ezi.e("Babel", "The given start time comes after the current time", new Object[0]);
      return null;
    }
    paramContext = paramContext.getResources();
    long l2 = b(paramLong1, paramLong2);
    if ((0x40000 & paramInt) != 0) {
      paramInt = 1;
    }
    while (l1 < 900000L) {
      if (paramInt != 0)
      {
        return paramContext.getText(rO);
        paramInt = 0;
      }
      else
      {
        return paramContext.getText(rP);
      }
    }
    int i1;
    if (30000L + l1 < 3600000L)
    {
      i1 = (int)((l1 + 30000L) / 60000L);
      if (paramInt != 0) {
        return paramContext.getQuantityString(rC, i1, new Object[] { Integer.valueOf(i1) });
      }
      return paramContext.getQuantityString(rD, i1, new Object[] { Integer.valueOf(i1) });
    }
    if (l1 < 36000000L)
    {
      i1 = (int)((l1 + 1800000L) / 3600000L);
      if (paramInt != 0) {
        return paramContext.getQuantityString(rA, i1, new Object[] { Integer.valueOf(i1) });
      }
      return paramContext.getQuantityString(rB, i1, new Object[] { Integer.valueOf(i1) });
    }
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
    localGregorianCalendar1.setTimeInMillis(paramLong1);
    if (l2 == 0L)
    {
      if (paramInt != 0) {
        return paramContext.getText(rQ);
      }
      return paramContext.getText(rR);
    }
    if (l2 == 1L)
    {
      if (paramInt != 0) {
        return paramContext.getText(rU);
      }
      return paramContext.getText(rV);
    }
    if (l2 < 7L)
    {
      i1 = (int)l2;
      if (paramInt != 0) {
        return paramContext.getQuantityString(ry, i1, new Object[] { Integer.valueOf(i1) });
      }
      return paramContext.getQuantityString(rz, i1, new Object[] { Integer.valueOf(i1) });
    }
    GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
    localGregorianCalendar2.setTimeInMillis(paramLong2);
    localGregorianCalendar2.add(2, -1);
    if (localGregorianCalendar2.compareTo(localGregorianCalendar1) < 0)
    {
      i1 = (int)((3L + l2) / 7L);
      if (paramInt != 0) {
        return paramContext.getQuantityString(rG, i1, new Object[] { Integer.valueOf(i1) });
      }
      return paramContext.getQuantityString(rH, i1, new Object[] { Integer.valueOf(i1) });
    }
    localGregorianCalendar2.setTimeInMillis(paramLong2);
    localGregorianCalendar2.add(1, -1);
    if (localGregorianCalendar2.compareTo(localGregorianCalendar1) < 0)
    {
      localGregorianCalendar2.setTimeInMillis(paramLong2);
      i1 = localGregorianCalendar2.get(1);
      int i2 = localGregorianCalendar2.get(2);
      int i3 = localGregorianCalendar1.get(1);
      i1 = i2 + i1 * 12 - (localGregorianCalendar1.get(2) + i3 * 12);
      if (paramInt != 0) {
        return paramContext.getQuantityString(rE, i1, new Object[] { Integer.valueOf(i1) });
      }
      return paramContext.getQuantityString(rF, i1, new Object[] { Integer.valueOf(i1) });
    }
    if (paramInt != 0) {
      return paramContext.getText(rS);
    }
    return paramContext.getText(rT);
  }
  
  public static CharSequence a(String paramString1, String paramString2, TextView paramTextView)
  {
    paramTextView.setMaxLines(2);
    paramString2 = new SpannableString(TextUtils.concat(new CharSequence[] { paramString1, "\n", paramString2 }));
    fbt.a(paramTextView.getContext()).a(paramString2, paramTextView);
    paramString2.setSpan(new StyleSpan(1), 0, paramString1.length(), 18);
    return paramString2;
  }
  
  public static CharSequence a(String[] paramArrayOfString, int paramInt)
  {
    if (paramArrayOfString.length == 0) {
      return "";
    }
    if (paramArrayOfString.length == 1) {
      return paramArrayOfString[0];
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i3 = Math.min(paramArrayOfString.length, paramInt);
    int i1;
    int i2;
    if (i3 < paramArrayOfString.length)
    {
      i1 = 1;
      i2 = 0;
      label47:
      if (i2 >= i3) {
        break label136;
      }
      localStringBuilder.append(paramArrayOfString[i2]);
      if (i2 >= i3 - 1) {
        break label91;
      }
      localStringBuilder.append(", ");
    }
    for (;;)
    {
      i2 += 1;
      break label47;
      i1 = 0;
      break;
      label91:
      if (i1 != 0)
      {
        localStringBuilder.append(", ");
        localStringBuilder.append(String.format(Locale.getDefault(), "+%d", new Object[] { Integer.valueOf(paramArrayOfString.length - paramInt) }));
      }
    }
    label136:
    return localStringBuilder;
  }
  
  public static Class<?> a(ParameterizedType paramParameterizedType)
  {
    return (Class)paramParameterizedType.getRawType();
  }
  
  public static Class<?> a(List<Type> paramList, Type paramType)
  {
    if ((paramType instanceof TypeVariable)) {
      paramType = a(paramList, (TypeVariable)paramType);
    }
    for (;;)
    {
      if ((paramType instanceof GenericArrayType)) {
        return Array.newInstance(a(paramList, b(paramType)), 0).getClass();
      }
      if ((paramType instanceof Class)) {
        return (Class)paramType;
      }
      if ((paramType instanceof ParameterizedType)) {
        return a((ParameterizedType)paramType);
      }
      if (paramType == null) {}
      for (boolean bool = true;; bool = false)
      {
        fii.a(bool, "wildcard type is not supported: %s", new Object[] { paramType });
        return Object.class;
      }
    }
  }
  
  private static IllegalArgumentException a(Exception paramException, Class<?> paramClass)
  {
    StringBuilder localStringBuilder = new StringBuilder("unable to create new instance of class ").append(paramClass.getName());
    Object localObject = new ArrayList();
    int i1;
    if (paramClass.isArray())
    {
      ((ArrayList)localObject).add("because it is an array");
      paramClass = ((ArrayList)localObject).iterator();
      i1 = 0;
      label51:
      if (!paramClass.hasNext()) {
        break label256;
      }
      localObject = (String)paramClass.next();
      if (i1 == 0) {
        break label251;
      }
      localStringBuilder.append(" and");
    }
    for (;;)
    {
      localStringBuilder.append(" ").append((String)localObject);
      break label51;
      if (paramClass.isPrimitive())
      {
        ((ArrayList)localObject).add("because it is primitive");
        break;
      }
      if (paramClass == Void.class)
      {
        ((ArrayList)localObject).add("because it is void");
        break;
      }
      if (Modifier.isInterface(paramClass.getModifiers())) {
        ((ArrayList)localObject).add("because it is an interface");
      }
      for (;;)
      {
        if ((paramClass.getEnclosingClass() != null) && (!Modifier.isStatic(paramClass.getModifiers()))) {
          ((ArrayList)localObject).add("because it is not static");
        }
        if (Modifier.isPublic(paramClass.getModifiers())) {
          break label226;
        }
        ((ArrayList)localObject).add("possibly because it is not public");
        break;
        if (Modifier.isAbstract(paramClass.getModifiers())) {
          ((ArrayList)localObject).add("because it is abstract");
        }
      }
      try
      {
        label226:
        paramClass.getConstructor(new Class[0]);
      }
      catch (NoSuchMethodException paramClass)
      {
        ((ArrayList)localObject).add("because it has no accessible default constructor");
      }
      break;
      label251:
      i1 = 1;
    }
    label256:
    return new IllegalArgumentException(localStringBuilder.toString(), paramException);
  }
  
  public static <T> T a(Class<T> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw a(localIllegalAccessException, paramClass);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw a(localInstantiationException, paramClass);
    }
  }
  
  public static <T> T a(Iterable<T> paramIterable)
  {
    return (T)kty.b(paramIterable.iterator());
  }
  
  public static Object a(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null) {
      localObject = ((Transition)paramObject).clone();
    }
    return localObject;
  }
  
  public static <T> T a(Object paramObject, Class<T> paramClass)
  {
    fii.b(paramObject instanceof jry, "Given component holder does not implement ComponentHolder");
    return (T)paramClass.cast(((jry)paramObject).a());
  }
  
  public static <T> T a(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  public static Object a(Collection<?> paramCollection, Class<?> paramClass)
  {
    if (paramClass.isPrimitive())
    {
      paramClass = Array.newInstance(paramClass, paramCollection.size());
      int i1 = 0;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Array.set(paramClass, i1, paramCollection.next());
        i1 += 1;
      }
      return paramClass;
    }
    return paramCollection.toArray((Object[])Array.newInstance(paramClass, paramCollection.size()));
  }
  
  public static <V> V a(Future<V> paramFuture)
  {
    int i1 = 0;
    try
    {
      Object localObject = paramFuture.get();
      if (i1 != 0) {
        Thread.currentThread().interrupt();
      }
      return (V)localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException = localInterruptedException;
        i1 = 1;
      }
    }
    finally
    {
      paramFuture = finally;
      if (i1 != 0) {
        Thread.currentThread().interrupt();
      }
      throw paramFuture;
    }
  }
  
  public static <T> T a(byte[] paramArrayOfByte, Parcelable.Creator<T> paramCreator)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    return (T)paramCreator.createFromParcel(localParcel);
  }
  
  public static String a(long paramLong, boolean paramBoolean)
  {
    int i1 = (int)(paramLong / 60000L);
    int i2 = (int)(paramLong / 1000L % 60L);
    StringBuilder localStringBuilder = new StringBuilder();
    Resources localResources = oJ.getResources();
    if (i1 > 0)
    {
      if (paramBoolean)
      {
        str = localResources.getQuantityString(rv, i1, new Object[] { Integer.valueOf(i1) });
        localStringBuilder.append(str);
        localStringBuilder.append(" ");
      }
    }
    else {
      if (!paramBoolean) {
        break label150;
      }
    }
    label150:
    for (String str = localResources.getQuantityString(rx, i2, new Object[] { Integer.valueOf(i2) });; str = localResources.getQuantityString(rM, i2, new Object[] { Integer.valueOf(i2) }))
    {
      localStringBuilder.append(str);
      return localStringBuilder.toString();
      str = localResources.getQuantityString(rK, i1, new Object[] { Integer.valueOf(i1) });
      break;
    }
  }
  
  public static String a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(st);
    case 1: 
      if (a(paramContext)) {
        return paramContext.getString(sk, new Object[] { paramString });
      }
      return paramContext.getString(sj, new Object[] { paramString });
    case 3: 
      return paramContext.getString(sg, new Object[] { paramString });
    case 18: 
      return paramContext.getString(sz, new Object[] { paramString });
    case 2: 
      return paramContext.getString(sx, new Object[] { paramString });
    case 42: 
      return paramContext.getString(sc, new Object[] { paramString });
    case 9: 
      return paramContext.getString(su, new Object[] { paramString });
    case 7: 
      return paramContext.getString(so);
    case 5: 
      return paramContext.getString(sm);
    case 16: 
      return paramContext.getString(se, new Object[] { paramString });
    }
    return paramContext.getString(sr);
  }
  
  /* Error */
  public static String a(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 4692	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 5
    //   6: aload 5
    //   8: aload_1
    //   9: invokevirtual 4696	android/content/ContentResolver:getType	(Landroid/net/Uri;)Ljava/lang/String;
    //   12: astore_2
    //   13: ldc_w 3603
    //   16: iconst_2
    //   17: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   20: ifeq +23 -> 43
    //   23: aload_2
    //   24: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   27: astore_0
    //   28: aload_0
    //   29: invokevirtual 2385	java/lang/String:length	()I
    //   32: ifeq +160 -> 192
    //   35: ldc_w 4698
    //   38: aload_0
    //   39: invokevirtual 2317	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   42: pop
    //   43: aload_2
    //   44: astore_0
    //   45: aload_2
    //   46: ifnonnull +45 -> 91
    //   49: aload_1
    //   50: invokevirtual 4699	android/net/Uri:toString	()Ljava/lang/String;
    //   53: invokestatic 4704	java/net/URLConnection:guessContentTypeFromName	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore_2
    //   57: aload_2
    //   58: astore_0
    //   59: ldc_w 3603
    //   62: iconst_2
    //   63: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   66: ifeq +25 -> 91
    //   69: aload_2
    //   70: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   73: astore_0
    //   74: aload_0
    //   75: invokevirtual 2385	java/lang/String:length	()I
    //   78: ifeq +128 -> 206
    //   81: ldc_w 4706
    //   84: aload_0
    //   85: invokevirtual 2317	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   88: pop
    //   89: aload_2
    //   90: astore_0
    //   91: aload_0
    //   92: astore_2
    //   93: aload_0
    //   94: ifnonnull +96 -> 190
    //   97: aconst_null
    //   98: astore_3
    //   99: aconst_null
    //   100: astore_2
    //   101: aload_0
    //   102: astore 4
    //   104: aload 5
    //   106: aload_1
    //   107: invokevirtual 3577	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   110: astore_1
    //   111: aload_0
    //   112: astore 4
    //   114: aload_1
    //   115: astore_2
    //   116: aload_1
    //   117: astore_3
    //   118: aload_1
    //   119: invokestatic 4710	java/net/URLConnection:guessContentTypeFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   122: astore_0
    //   123: aload_0
    //   124: astore 4
    //   126: aload_1
    //   127: astore_2
    //   128: aload_1
    //   129: astore_3
    //   130: ldc_w 3603
    //   133: iconst_2
    //   134: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   137: ifeq +47 -> 184
    //   140: aload_0
    //   141: astore 4
    //   143: aload_1
    //   144: astore_2
    //   145: aload_1
    //   146: astore_3
    //   147: aload_0
    //   148: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   151: astore 5
    //   153: aload_0
    //   154: astore 4
    //   156: aload_1
    //   157: astore_2
    //   158: aload_1
    //   159: astore_3
    //   160: aload 5
    //   162: invokevirtual 2385	java/lang/String:length	()I
    //   165: ifeq +57 -> 222
    //   168: aload_0
    //   169: astore 4
    //   171: aload_1
    //   172: astore_2
    //   173: aload_1
    //   174: astore_3
    //   175: ldc_w 4712
    //   178: aload 5
    //   180: invokevirtual 2317	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   183: pop
    //   184: aload_1
    //   185: invokestatic 4713	aen:a	(Ljava/io/Closeable;)V
    //   188: aload_0
    //   189: astore_2
    //   190: aload_2
    //   191: areturn
    //   192: new 2307	java/lang/String
    //   195: dup
    //   196: ldc_w 4698
    //   199: invokespecial 2454	java/lang/String:<init>	(Ljava/lang/String;)V
    //   202: pop
    //   203: goto -160 -> 43
    //   206: new 2307	java/lang/String
    //   209: dup
    //   210: ldc_w 4706
    //   213: invokespecial 2454	java/lang/String:<init>	(Ljava/lang/String;)V
    //   216: pop
    //   217: aload_2
    //   218: astore_0
    //   219: goto -128 -> 91
    //   222: aload_0
    //   223: astore 4
    //   225: aload_1
    //   226: astore_2
    //   227: aload_1
    //   228: astore_3
    //   229: new 2307	java/lang/String
    //   232: dup
    //   233: ldc_w 4712
    //   236: invokespecial 2454	java/lang/String:<init>	(Ljava/lang/String;)V
    //   239: pop
    //   240: goto -56 -> 184
    //   243: astore_0
    //   244: aload_2
    //   245: astore_3
    //   246: ldc_w 3603
    //   249: iconst_5
    //   250: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   253: ifeq +40 -> 293
    //   256: aload_2
    //   257: astore_3
    //   258: aload_0
    //   259: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   262: astore_0
    //   263: aload_2
    //   264: astore_3
    //   265: new 2382	java/lang/StringBuilder
    //   268: dup
    //   269: aload_0
    //   270: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   273: invokevirtual 2385	java/lang/String:length	()I
    //   276: bipush 30
    //   278: iadd
    //   279: invokespecial 2388	java/lang/StringBuilder:<init>	(I)V
    //   282: ldc_w 4715
    //   285: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload_0
    //   289: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: aload_2
    //   294: invokestatic 4713	aen:a	(Ljava/io/Closeable;)V
    //   297: aload 4
    //   299: areturn
    //   300: astore_0
    //   301: aload_3
    //   302: invokestatic 4713	aen:a	(Ljava/io/Closeable;)V
    //   305: aload_0
    //   306: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	307	0	paramContext	Context
    //   0	307	1	paramUri	Uri
    //   12	282	2	localObject1	Object
    //   98	204	3	localObject2	Object
    //   102	196	4	localContext	Context
    //   4	175	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   104	111	243	java/lang/Throwable
    //   118	123	243	java/lang/Throwable
    //   130	140	243	java/lang/Throwable
    //   147	153	243	java/lang/Throwable
    //   160	168	243	java/lang/Throwable
    //   175	184	243	java/lang/Throwable
    //   229	240	243	java/lang/Throwable
    //   104	111	300	finally
    //   118	123	300	finally
    //   130	140	300	finally
    //   147	153	300	finally
    //   160	168	300	finally
    //   175	184	300	finally
    //   229	240	300	finally
    //   246	256	300	finally
    //   258	263	300	finally
    //   265	293	300	finally
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    return ((bdp)ilh.a(paramContext, bdp.class)).a(paramString1, paramString2);
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, Bundle paramBundle)
  {
    Object localObject1 = ((ihv)ilh.a(paramContext, ihv.class)).a(paramString1);
    paramString1 = (String)localObject1;
    if (!((String)localObject1).startsWith("http"))
    {
      paramString1 = (String)localObject1;
      if (!((String)localObject1).startsWith("//"))
      {
        paramString1 = String.valueOf(localObject1);
        if (paramString1.length() == 0) {
          break label185;
        }
        paramString1 = "//".concat(paramString1);
      }
    }
    localObject1 = Uri.parse(paramString1);
    paramString1 = ((Uri)localObject1).getPath();
    localObject1 = ((Uri)localObject1).buildUpon();
    Object localObject2 = ihi.f;
    ((Uri.Builder)localObject1).scheme("https");
    if (paramBoolean)
    {
      paramString1 = String.valueOf(paramString1);
      if (paramString1.length() == 0) {
        break label199;
      }
    }
    label185:
    label199:
    for (paramString1 = "/upload".concat(paramString1);; paramString1 = new String("/upload"))
    {
      ((Uri.Builder)localObject1).path(paramString1);
      if (paramBundle == null) {
        break label213;
      }
      paramString1 = paramBundle.keySet().iterator();
      while (paramString1.hasNext())
      {
        localObject2 = (String)paramString1.next();
        ((Uri.Builder)localObject1).appendQueryParameter((String)localObject2, paramBundle.getString((String)localObject2));
      }
      paramString1 = new String("//");
      break;
    }
    label213:
    paramString1 = paramString2;
    if (paramString2.startsWith("/")) {
      paramString1 = paramString2.substring(1);
    }
    ((Uri.Builder)localObject1).appendEncodedPath(paramString1);
    ilh.b(paramContext, ihv.class);
    return ((Uri.Builder)localObject1).build().toString();
  }
  
  public static String a(Intent paramIntent)
  {
    Object localObject = paramIntent.getStringExtra("photo_url");
    if (localObject == null)
    {
      String str = paramIntent.getDataString();
      localObject = str;
      if (str == null)
      {
        paramIntent = paramIntent.getExtras();
        localObject = str;
        if (paramIntent != null)
        {
          paramIntent = (Uri)paramIntent.getParcelable("android.intent.extra.STREAM");
          localObject = str;
          if (paramIntent != null) {
            localObject = paramIntent.toString();
          }
        }
      }
    }
    for (;;)
    {
      if (localObject != null)
      {
        paramIntent = String.valueOf(localObject);
        if (paramIntent.length() != 0) {}
        for (paramIntent = "Chosen image URI is: ".concat(paramIntent);; paramIntent = new String("Chosen image URI is: "))
        {
          ezi.c("Babel", paramIntent, new Object[0]);
          return (String)localObject;
        }
      }
      ezi.d("Babel", "Image URI cannot be parsed from the intent.", new Object[0]);
      return (String)localObject;
    }
  }
  
  public static String a(Intent paramIntent, String paramString)
  {
    paramIntent = ee.a(paramIntent);
    if (paramIntent != null)
    {
      paramIntent = paramIntent.getCharSequence(paramString);
      if (paramIntent != null) {
        return paramIntent.toString();
      }
    }
    return null;
  }
  
  public static String a(bfd parambfd, emc paramemc, String paramString1, String paramString2, String paramString3)
  {
    parambfd = a(parambfd, paramString1, paramString2, false);
    paramString1 = oJ;
    if (paramemc == emc.d) {
      return paramString1.getString(StressMode.rp, new Object[] { paramString3 });
    }
    if (TextUtils.isEmpty(paramString3))
    {
      if (a) {
        return paramString1.getString(StressMode.ro);
      }
      if (b != null) {
        return paramString1.getString(StressMode.rn, new Object[] { b });
      }
      return paramString1.getString(StressMode.rm);
    }
    if (a) {
      return paramString1.getString(StressMode.rl, new Object[] { paramString3 });
    }
    if (b != null) {
      return paramString1.getString(StressMode.rk, new Object[] { b, paramString3 });
    }
    return paramString1.getString(StressMode.rj, new Object[] { paramString3 });
  }
  
  public static String a(bfd parambfd, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    paramString1 = a(parambfd, paramString1, paramString2, paramBoolean);
    paramString3 = a(parambfd, false, paramString3, false, paramBoolean);
    parambfd = oJ;
    if ((paramString3 == null) || (paramString3.size() <= 0))
    {
      if (a) {
        return parambfd.getString(StressMode.rr);
      }
      if (b != null) {
        return parambfd.getString(StressMode.rq, new Object[] { b });
      }
      return parambfd.getString(StressMode.rs);
    }
    int i2 = paramString3.size();
    if (i2 == 1)
    {
      paramString2 = (String)paramString3.get(0);
      if (a) {
        return parambfd.getString(StressMode.ra, new Object[] { paramString2 });
      }
      if (b != null) {
        return parambfd.getString(StressMode.qZ, new Object[] { b, paramString2 });
      }
      return parambfd.getString(StressMode.rb, new Object[] { paramString2 });
    }
    paramString2 = new StringBuilder();
    int i1 = 0;
    while (i1 < paramString3.size() - 1)
    {
      paramString2.append((String)paramString3.get(i1));
      if (i1 < i2 - 2) {
        paramString2.append(", ");
      }
      i1 += 1;
    }
    paramString3 = (String)paramString3.get(i2 - 1);
    if (a) {
      return parambfd.getString(StressMode.rh, new Object[] { paramString2.toString(), paramString3 });
    }
    if (b != null) {
      return parambfd.getString(StressMode.rg, new Object[] { b, paramString2.toString(), paramString3 });
    }
    return parambfd.getString(StressMode.ri, new Object[] { paramString2.toString(), paramString3 });
  }
  
  public static String a(cyx paramcyx, boolean paramBoolean)
  {
    if ((paramBoolean) && (!TextUtils.isEmpty(f))) {
      return f;
    }
    if ((!TextUtils.isEmpty(e)) && (!TextUtils.equals(ezm.l(e), ezm.l(c)))) {
      return e;
    }
    if (paramcyx.g()) {
      return ezm.p(c);
    }
    return g;
  }
  
  public static String a(emd paramemd, bfd parambfd, emc paramemc, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, boolean paramBoolean)
  {
    String str = null;
    label190:
    label225:
    label239:
    label247:
    int i1;
    label340:
    int i2;
    switch (biu.a[paramemd.ordinal()])
    {
    default: 
      paramemd = String.valueOf(paramemd);
      throw new IllegalArgumentException(String.valueOf(paramemd).length() + 25 + "Unexpected message type: " + paramemd);
    case 1: 
      str = a(parambfd, paramemc, paramString1, paramString2, paramString3);
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
      return str;
    case 2: 
    case 3: 
      if (paramemd == emd.o)
      {
        paramInt = 1;
        paramemd = a(parambfd, false, paramString4, false, paramBoolean);
        parambfd = oJ;
        if ((paramemd != null) && (paramemd.size() > 0)) {
          break label225;
        }
        paramemd = null;
        if (paramemd == null) {
          break label247;
        }
        if (paramInt == 0) {
          break label239;
        }
      }
      for (paramInt = StressMode.rd;; paramInt = StressMode.rc)
      {
        return parambfd.getString(paramInt, new Object[] { paramemd });
        paramInt = 0;
        break;
        paramemd = (String)paramemd.get(0);
        break label190;
      }
      if (paramInt != 0) {}
      for (paramInt = StressMode.re;; paramInt = StressMode.rf) {
        return parambfd.getString(paramInt);
      }
    case 4: 
      if (paramemc != emc.d) {
        return a(parambfd, paramString1, paramString2, paramString4, paramBoolean);
      }
    case 5: 
    case 6: 
    case 7: 
      i1 = -1;
      paramemc = null;
      if (!TextUtils.isEmpty(paramString4))
      {
        paramemc = a(parambfd, false, paramString4, false, paramBoolean);
        if (paramemc == null)
        {
          paramInt = 0;
          i1 = paramInt;
        }
      }
      else
      {
        parambfd = oJ;
        if (paramemd != emd.n) {
          break label450;
        }
        paramInt = 1;
        if (paramemd != emd.p) {
          break label456;
        }
        i2 = 1;
        switch (i1)
        {
        default: 
          if (paramInt != 0) {
            paramInt = StressMode.qF;
          }
          break;
        }
      }
      for (;;)
      {
        return parambfd.getString(paramInt, new Object[] { paramemc.get(0), paramemc.get(1), Integer.valueOf(i1 - 2) });
        paramInt = paramemc.size();
        break;
        paramInt = 0;
        break label340;
        i2 = 0;
        break label350;
        return parambfd.getString(StressMode.qs);
        if (paramInt != 0) {
          paramInt = StressMode.qI;
        }
        for (;;)
        {
          return parambfd.getString(paramInt);
          if (i2 != 0) {
            paramInt = StressMode.qN;
          } else {
            paramInt = StressMode.qQ;
          }
        }
        if (paramInt != 0) {
          paramInt = StressMode.qE;
        }
        for (;;)
        {
          return parambfd.getString(paramInt, new Object[] { paramemc.get(0) });
          if (i2 != 0) {
            paramInt = StressMode.qJ;
          } else {
            paramInt = StressMode.qC;
          }
        }
        if (paramInt != 0) {
          paramInt = StressMode.qH;
        }
        for (;;)
        {
          return parambfd.getString(paramInt, new Object[] { paramemc.get(0), paramemc.get(1) });
          if (i2 != 0) {
            paramInt = StressMode.qM;
          } else {
            paramInt = StressMode.qP;
          }
        }
        if (paramInt != 0) {
          paramInt = StressMode.qG;
        }
        for (;;)
        {
          return parambfd.getString(paramInt, new Object[] { paramemc.get(0), paramemc.get(1), paramemc.get(2) });
          if (i2 != 0) {
            paramInt = StressMode.qL;
          } else {
            paramInt = StressMode.qO;
          }
        }
        if (i2 != 0) {
          paramInt = StressMode.qK;
        } else {
          paramInt = StressMode.qD;
        }
      }
    case 8: 
      paramemd = a(parambfd, paramString1, paramString2, paramBoolean);
      parambfd = oJ;
      if (a)
      {
        if (paramInt == 1) {}
        for (paramInt = StressMode.rB;; paramInt = StressMode.qB) {
          return parambfd.getString(paramInt);
        }
      }
      if (b != null)
      {
        if (paramInt == 1) {}
        for (paramInt = StressMode.rA;; paramInt = StressMode.qA) {
          return parambfd.getString(paramInt, new Object[] { b });
        }
      }
      if (paramInt == 1) {}
      for (paramInt = StressMode.rz;; paramInt = StressMode.qz) {
        return parambfd.getString(paramInt);
      }
    case 9: 
      label350:
      label450:
      label456:
      paramString1 = a(parambfd, paramString1, paramString2, paramBoolean);
      int i3 = 0;
      int i4 = -1;
      paramemc = null;
      paramString2 = a(parambfd, true, paramString4, false, paramBoolean);
      parambfd = a(parambfd, true, paramString4, true, paramBoolean);
      paramemd = paramemc;
      i1 = i4;
      i2 = i3;
      if (paramString2 != null)
      {
        paramemd = paramemc;
        i1 = i4;
        i2 = i3;
        if (parambfd != null)
        {
          i3 = paramString2.size();
          i4 = parambfd.size();
          paramemd = paramemc;
          i1 = i4;
          i2 = i3;
          if (i4 > 0)
          {
            paramemd = TextUtils.join(", ", parambfd);
            i2 = i3;
            i1 = i4;
          }
        }
      }
      parambfd = oJ;
      if (((a) || (c != null)) && (i1 >= 0) && (i2 >= 0)) {}
      break;
    }
    for (;;)
    {
      for (paramInt = StressMode.qw;; paramInt = StressMode.rw)
      {
        return parambfd.getString(paramInt);
        if ((a) && (i1 == 1) && (i2 == 1))
        {
          if (paramemd != null)
          {
            if (paramInt == 1) {}
            for (paramInt = StressMode.ry;; paramInt = StressMode.qy) {
              return parambfd.getString(paramInt, new Object[] { paramemd });
            }
          }
          if (paramInt == 1) {}
          for (paramInt = StressMode.rv;; paramInt = StressMode.qv) {
            return parambfd.getString(paramInt);
          }
        }
        if ((i1 > 0) && (i2 - i1 > 0))
        {
          if (paramemd != null)
          {
            if (paramInt == 1) {}
            for (paramInt = StressMode.rx;; paramInt = StressMode.qx) {
              return parambfd.getString(paramInt, new Object[] { paramemd });
            }
          }
          if (paramInt == 1) {}
          for (paramInt = StressMode.rw;; paramInt = StressMode.qw) {
            return parambfd.getString(paramInt);
          }
        }
        if ((a) && (i1 == 0))
        {
          if (paramInt == 1) {}
          for (paramInt = StressMode.rv;; paramInt = StressMode.qv) {
            return parambfd.getString(paramInt);
          }
        }
        if ((!a) && (i2 == 1) && (i1 == 1))
        {
          if (c != null)
          {
            if (paramInt == 1) {}
            for (paramInt = StressMode.rt;; paramInt = StressMode.qt) {
              return parambfd.getString(paramInt, new Object[] { c });
            }
          }
          if (paramInt == 1) {}
          for (paramInt = StressMode.ru;; paramInt = StressMode.qu) {
            return parambfd.getString(paramInt);
          }
        }
        if ((!a) && (i1 == i2))
        {
          if (paramInt == 1) {}
          for (paramInt = StressMode.ru;; paramInt = StressMode.qu) {
            return parambfd.getString(paramInt);
          }
        }
        if (paramInt != 1) {
          break;
        }
      }
      paramemd = a(parambfd, paramString1, paramString2, paramBoolean);
      parambfd = oJ;
      if (a) {
        return parambfd.getString(StressMode.qR);
      }
      return parambfd.getString(StressMode.qS, new Object[] { b });
      paramemd = a(parambfd, paramString1, paramString2, paramBoolean);
      parambfd = oJ;
      if (a) {
        return parambfd.getString(StressMode.qV);
      }
      return parambfd.getString(StressMode.qW, new Object[] { b });
      return "";
    }
  }
  
  public static <T extends gbn> String a(T paramT)
  {
    if (paramT == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      a(null, paramT, new StringBuffer(), localStringBuffer);
      return localStringBuffer.toString();
    }
    catch (IllegalAccessException paramT)
    {
      return "Error printing proto: " + paramT.getMessage();
    }
    catch (InvocationTargetException paramT) {}
    return "Error printing proto: " + paramT.getMessage();
  }
  
  public static String a(iet paramiet, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("resumeUrl", paramString);
      localJSONObject.put("resumeFingerprint", paramiet.h().a());
      localJSONObject.put("resumeForceResize", paramiet.b());
      localJSONObject.put("resumeContentType", paramiet.e());
      paramiet = localJSONObject.toString();
      return paramiet;
    }
    catch (JSONException paramiet) {}
    return null;
  }
  
  public static String a(String paramString, Object paramObject)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException(String.valueOf(paramObject));
    }
    return paramString;
  }
  
  public static String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    Context localContext = oJ;
    Object localObject1 = ((ihv)ilh.a(localContext, ihv.class)).a();
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      return (String)localObject1;
    }
    localObject1 = ((gwk)ilh.a(localContext, gwk.class)).a("com.google");
    int i2 = localObject1.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject2 = localObject1[i1];
      if (name.equals(paramString1))
      {
        if (paramBoolean) {}
        try
        {
          return fgk.c(localContext, name, paramString2);
        }
        catch (fgl paramString1)
        {
          ezi.d("Babel", "GooglePlayServicesAvailabilityException.", paramString1);
          throw new ewy(paramString1.a());
        }
        catch (IOException paramString1)
        {
          throw new cvu("Cannot get auth token", paramString1);
        }
        catch (fgm paramString1)
        {
          ezi.d("Babel", "UserRecoverableAuthException.", paramString1);
          throw new ewy(paramString1.b());
        }
        catch (fgj localfgj)
        {
          if ((!"INVALID_SCOPE".equals(localfgj.getMessage())) || (!localContext.getPackageName().contains("babel")) || (paramString2 == null) || (!paramString2.contains(" https://www.googleapis.com/auth/identity.plus.page.impersonation"))) {
            break label250;
          }
          ezi.e("Babel", "Attempting removal of blocked scope.", new Object[0]);
          return a(paramString1, paramString2.replace(" https://www.googleapis.com/auth/identity.plus.page.impersonation", ""), paramBoolean);
          ezi.d("Babel", "Unexpected exception while authenticating.", localfgj);
          throw new ewy(null);
        }
        localObject1 = fgk.b(localContext, name, paramString2);
        return (String)localObject1;
      }
      label250:
      i1 += 1;
    }
    paramString1 = String.valueOf(ezi.b(paramString1));
    if (paramString1.length() != 0) {}
    for (paramString1 = "Account not found: ".concat(paramString1);; paramString1 = new String("Account not found: "))
    {
      ezi.e("Babel", paramString1, new Object[0]);
      throw new ewx();
    }
  }
  
  public static String a(List<efx> paramList, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramList == null) {
      return null;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (efx)localIterator.next();
      if (a == 0)
      {
        int i1;
        label65:
        int i2;
        label77:
        int i3;
        if ((c & 0x1) != 0)
        {
          i1 = 1;
          if ((c & 0x2) == 0) {
            break label243;
          }
          i2 = 1;
          if ((c & 0x4) == 0) {
            break label248;
          }
          i3 = 1;
          label90:
          if ((c & 0x8) == 0) {
            break label254;
          }
        }
        label243:
        label248:
        label254:
        for (int i4 = 1;; i4 = 0)
        {
          if (i1 != 0) {
            localStringBuilder.append("<b>");
          }
          if (i2 != 0) {
            localStringBuilder.append("<i>");
          }
          if (i3 != 0) {
            localStringBuilder.append("<del>");
          }
          if (i4 != 0) {
            localStringBuilder.append("<u>");
          }
          localStringBuilder.append(TextUtils.htmlEncode(b.replaceAll("  ", "  ")));
          if (i4 != 0) {
            localStringBuilder.append("</u>");
          }
          if (i3 != 0) {
            localStringBuilder.append("</del>");
          }
          if (i2 != 0) {
            localStringBuilder.append("</i>");
          }
          if (i1 == 0) {
            break;
          }
          localStringBuilder.append("</b>");
          break;
          i1 = 0;
          break label65;
          i2 = 0;
          break label77;
          i3 = 0;
          break label90;
        }
      }
      if (a == 1)
      {
        localStringBuilder.append("<br/>");
      }
      else if ((a == 2) && ((paramString == null) || (!TextUtils.equals(paramString, d))))
      {
        paramList = b;
        if (TextUtils.isEmpty(paramList)) {}
        for (paramList = d;; paramList = TextUtils.htmlEncode(paramList))
        {
          localObject = d;
          localStringBuilder.append(String.valueOf(localObject).length() + 15 + String.valueOf(paramList).length() + "<a href=\"" + (String)localObject + "\">" + paramList + "</a>");
          break;
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(List<String> paramList1, List<String> paramList2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList1 = paramList1.iterator();
    int i1 = 0;
    while (paramList1.hasNext())
    {
      localObject = (String)paramList1.next();
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        throw new IllegalArgumentException("Expected non-empty and non-null avatar URLs.");
      }
      if (i1 < 5)
      {
        if (i1 > 0) {
          localStringBuilder.append("|");
        }
        localStringBuilder.append((String)localObject);
      }
      i1 += 1;
    }
    Object localObject = paramList2.iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramList2 = (String)((Iterator)localObject).next();
      paramList1 = paramList2;
      if (paramList2 == null) {
        paramList1 = "";
      }
      if (i1 < 5)
      {
        if (i1 > 0) {
          localStringBuilder.append("|");
        }
        localStringBuilder.append("defaultavatar://").append(paramList1);
        i1 += 1;
      }
    }
    return localStringBuilder.toString();
  }
  
  private static String a(lvk paramlvk)
  {
    paramlvk = new lxd(paramlvk);
    StringBuilder localStringBuilder = new StringBuilder(paramlvk.a());
    int i1 = 0;
    if (i1 < paramlvk.a())
    {
      int i2 = paramlvk.a(i1);
      switch (i2)
      {
      default: 
        if ((i2 >= 32) && (i2 <= 126)) {
          localStringBuilder.append((char)i2);
        }
        break;
      }
      for (;;)
      {
        i1 += 1;
        break;
        localStringBuilder.append("\\a");
        continue;
        localStringBuilder.append("\\b");
        continue;
        localStringBuilder.append("\\f");
        continue;
        localStringBuilder.append("\\n");
        continue;
        localStringBuilder.append("\\r");
        continue;
        localStringBuilder.append("\\t");
        continue;
        localStringBuilder.append("\\v");
        continue;
        localStringBuilder.append("\\\\");
        continue;
        localStringBuilder.append("\\'");
        continue;
        localStringBuilder.append("\\\"");
        continue;
        localStringBuilder.append('\\');
        localStringBuilder.append((char)((i2 >>> 6 & 0x3) + 48));
        localStringBuilder.append((char)((i2 >>> 3 & 0x7) + 48));
        localStringBuilder.append((char)((i2 & 0x7) + 48));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static <T extends lyi> String a(T paramT)
  {
    if (paramT == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      b(null, paramT, new StringBuffer(), localStringBuffer);
      return localStringBuffer.toString();
    }
    catch (IllegalAccessException paramT)
    {
      paramT = String.valueOf(paramT.getMessage());
      if (paramT.length() != 0) {
        return "Error printing proto: ".concat(paramT);
      }
      return new String("Error printing proto: ");
    }
    catch (InvocationTargetException paramT)
    {
      paramT = String.valueOf(paramT.getMessage());
      if (paramT.length() != 0) {
        return "Error printing proto: ".concat(paramT);
      }
    }
    return new String("Error printing proto: ");
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[16];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 48;
    char[] tmp12_6 = tmp6_5;
    tmp12_6[1] = 49;
    char[] tmp18_12 = tmp12_6;
    tmp18_12[2] = 50;
    char[] tmp24_18 = tmp18_12;
    tmp24_18[3] = 51;
    char[] tmp30_24 = tmp24_18;
    tmp30_24[4] = 52;
    char[] tmp36_30 = tmp30_24;
    tmp36_30[5] = 53;
    char[] tmp42_36 = tmp36_30;
    tmp42_36[6] = 54;
    char[] tmp49_42 = tmp42_36;
    tmp49_42[7] = 55;
    char[] tmp56_49 = tmp49_42;
    tmp56_49[8] = 56;
    char[] tmp63_56 = tmp56_49;
    tmp63_56[9] = 57;
    char[] tmp70_63 = tmp63_56;
    tmp70_63[10] = 65;
    char[] tmp77_70 = tmp70_63;
    tmp77_70[11] = 66;
    char[] tmp84_77 = tmp77_70;
    tmp84_77[12] = 67;
    char[] tmp91_84 = tmp84_77;
    tmp91_84[13] = 68;
    char[] tmp98_91 = tmp91_84;
    tmp98_91[14] = 69;
    char[] tmp105_98 = tmp98_91;
    tmp105_98[15] = 70;
    tmp105_98;
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length << 1);
    int i1 = 0;
    while (i1 < paramArrayOfByte.length)
    {
      localStringBuilder.append(arrayOfChar[((paramArrayOfByte[i1] & 0xF0) >>> 4)]);
      localStringBuilder.append(arrayOfChar[(paramArrayOfByte[i1] & 0xF)]);
      i1 += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt == 0) {
      return new String(paramArrayOfByte);
    }
    try
    {
      String str1 = new String(paramArrayOfByte, ade.a(paramInt));
      return str1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      try
      {
        String str2 = new String(paramArrayOfByte, "iso-8859-1");
        return str2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2) {}
    }
    return new String(paramArrayOfByte);
  }
  
  public static String a(Object... paramVarArgs)
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramVarArgs.length % 2 == 0) {}
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      String str = "";
      while (i1 < paramVarArgs.length)
      {
        localStringBuilder.append(str);
        localStringBuilder.append(paramVarArgs[i1]);
        localStringBuilder.append("=");
        localStringBuilder.append(paramVarArgs[(i1 + 1)]);
        str = ", ";
        i1 += 2;
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length <= 0)) {
      return null;
    }
    if (paramVarArgs.length == 1) {
      return paramVarArgs[0];
    }
    return TextUtils.join("|", paramVarArgs);
  }
  
  private static ParameterizedType a(Type paramType, Class<?> paramClass)
  {
    if (((paramType instanceof Class)) || ((paramType instanceof ParameterizedType))) {
      if ((paramType != null) && (paramType != Object.class)) {
        if (!(paramType instanceof Class)) {}
      }
    }
    Class localClass;
    for (paramType = (Class)paramType;; paramType = localClass)
    {
      paramType = paramType.getGenericSuperclass();
      break;
      paramType = (ParameterizedType)paramType;
      localClass = a(paramType);
      if (localClass == paramClass) {
        return paramType;
      }
      if (paramClass.isInterface())
      {
        Type[] arrayOfType = localClass.getGenericInterfaces();
        int i2 = arrayOfType.length;
        int i1 = 0;
        for (;;)
        {
          if (i1 < i2)
          {
            Type localType = arrayOfType[i1];
            if ((localType instanceof Class)) {}
            for (paramType = (Class)localType;; paramType = a((ParameterizedType)localType))
            {
              if (!paramClass.isAssignableFrom(paramType)) {
                break label134;
              }
              paramType = localType;
              break;
            }
            label134:
            i1 += 1;
            continue;
            return null;
          }
        }
      }
    }
  }
  
  private static Type a(Type paramType, Class<?> paramClass, int paramInt)
  {
    paramClass = a(paramType, paramClass);
    if (paramClass == null) {
      paramClass = null;
    }
    do
    {
      Type localType;
      do
      {
        return paramClass;
        localType = paramClass.getActualTypeArguments()[paramInt];
        paramClass = localType;
      } while (!(localType instanceof TypeVariable));
      paramType = a(Arrays.asList(new Type[] { paramType }), (TypeVariable)localType);
      paramClass = localType;
    } while (paramType == null);
    return paramType;
  }
  
  public static Type a(WildcardType paramWildcardType)
  {
    Type[] arrayOfType = paramWildcardType.getLowerBounds();
    if (arrayOfType.length != 0) {
      return arrayOfType[0];
    }
    return paramWildcardType.getUpperBounds()[0];
  }
  
  public static Type a(List<Type> paramList, TypeVariable<?> paramTypeVariable)
  {
    Object localObject2 = paramTypeVariable.getGenericDeclaration();
    if ((localObject2 instanceof Class))
    {
      Class localClass = (Class)localObject2;
      int i1 = paramList.size();
      for (Object localObject1 = null; localObject1 == null; localObject1 = a((Type)paramList.get(i1), localClass))
      {
        i1 -= 1;
        if (i1 < 0) {
          break;
        }
      }
      if (localObject1 != null)
      {
        localObject2 = ((GenericDeclaration)localObject2).getTypeParameters();
        i1 = 0;
        while ((i1 < localObject2.length) && (!localObject2[i1].equals(paramTypeVariable))) {
          i1 += 1;
        }
        localObject1 = localObject1.getActualTypeArguments()[i1];
        paramTypeVariable = (TypeVariable<?>)localObject1;
        if ((localObject1 instanceof TypeVariable))
        {
          paramList = a(paramList, (TypeVariable)localObject1);
          paramTypeVariable = (TypeVariable<?>)localObject1;
          if (paramList != null) {
            paramTypeVariable = paramList;
          }
        }
        return paramTypeVariable;
      }
    }
    return null;
  }
  
  public static ByteBuffer a(File paramFile, boolean paramBoolean)
  {
    RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramFile.getPath(), "rw");
    try
    {
      Object localObject = localRandomAccessFile.getChannel();
      localObject = ((FileChannel)localObject).map(FileChannel.MapMode.READ_ONLY, 0L, ((FileChannel)localObject).size());
      if (paramBoolean) {
        paramFile.setLastModified(System.currentTimeMillis());
      }
      paramFile = (ByteBuffer)((ByteBuffer)localObject).position(0);
      return paramFile;
    }
    finally
    {
      localRandomAccessFile.close();
    }
  }
  
  public static ArrayList<cyx> a(bfd parambfd)
  {
    ArrayList localArrayList = new ArrayList();
    ihb localihb;
    a(localihb, new dyo(localArrayList, parambfd));
    return localArrayList;
  }
  
  private static ArrayList a(List<Asset> paramList, gbe paramgbe, int paramInt)
  {
    ArrayList localArrayList = new ArrayList(j.length);
    paramgbe = j;
    int i3 = paramgbe.length;
    int i1 = 0;
    if (i1 < i3)
    {
      gbc[] arrayOfgbc = paramgbe[i1];
      if (a == 14) {
        localArrayList.add(null);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (paramInt == 9)
        {
          grp localgrp = new grp();
          arrayOfgbc = b.i;
          int i4 = arrayOfgbc.length;
          int i2 = 0;
          while (i2 < i4)
          {
            gbc localgbc = arrayOfgbc[i2];
            a(paramList, localgrp, a, b);
            i2 += 1;
          }
          localArrayList.add(localgrp);
        }
        else if (paramInt == 2)
        {
          localArrayList.add(b.b);
        }
        else
        {
          if (paramInt != 6) {
            break label191;
          }
          localArrayList.add(Integer.valueOf(b.f));
        }
      }
      label191:
      throw new IllegalArgumentException("Unexpected typeOfArrayList: " + paramInt);
    }
    return localArrayList;
  }
  
  public static <T extends Collection<Y>, Y> T a(T paramT)
  {
    if (paramT.isEmpty()) {
      throw new IllegalArgumentException("Must not be empty.");
    }
    return paramT;
  }
  
  private static LinkedList<esg> a(Context paramContext, LinkedList<esg> paramLinkedList)
  {
    LinkedList localLinkedList = new LinkedList();
    long l1 = SystemClock.elapsedRealtime();
    long l2 = a(paramContext, "babel_incoming_wif_invite_max_age_millis", 25000);
    paramContext = paramLinkedList.iterator();
    while (paramContext.hasNext())
    {
      paramLinkedList = (esg)paramContext.next();
      if (l1 - d < l2) {
        localLinkedList.add(paramLinkedList);
      }
    }
    return localLinkedList;
  }
  
  public static List<czb> a(bfd parambfd, String paramString, boolean paramBoolean)
  {
    Object localObject = null;
    ArrayList localArrayList;
    if (paramString != null)
    {
      bij localbij = ((bil)ilh.a(oJ, bil.class)).a(parambfd);
      localArrayList = new ArrayList();
      parambfd = new TextUtils.SimpleStringSplitter('|');
      parambfd.setString(paramString);
      paramString = parambfd.iterator();
      while (paramString.hasNext())
      {
        cyx localcyx = localbij.a((String)paramString.next(), paramBoolean);
        parambfd = (bfd)localObject;
        if (localcyx == null) {
          break label127;
        }
        if ((b != null) && (a(b).a())) {
          localArrayList.add(b);
        }
      }
    }
    for (parambfd = localArrayList;; parambfd = null) {
      label127:
      return parambfd;
    }
  }
  
  private static List<String> a(bfd parambfd, boolean paramBoolean1, String paramString, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject1 = null;
    ArrayList localArrayList;
    if (paramString != null)
    {
      bij localbij = ((bil)ilh.a(oJ, bil.class)).a(parambfd);
      localArrayList = new ArrayList();
      Object localObject2 = new TextUtils.SimpleStringSplitter('|');
      ((TextUtils.SimpleStringSplitter)localObject2).setString(paramString);
      localObject2 = ((TextUtils.SimpleStringSplitter)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        cyx localcyx = localbij.a((String)((Iterator)localObject2).next(), paramBoolean3);
        paramString = (String)localObject1;
        if (localcyx == null) {
          break label133;
        }
        if ((!paramBoolean2) || (!parambfd.a(b))) {
          localArrayList.add(a(localcyx, paramBoolean1));
        }
      }
    }
    for (parambfd = localArrayList;; parambfd = null)
    {
      paramString = parambfd;
      label133:
      return paramString;
    }
  }
  
  public static List<efx> a(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString == null) {
      return localArrayList;
    }
    String[] arrayOfString = paramString.split("\\r?\\n");
    int i3 = 0;
    SpannableString localSpannableString;
    int i8;
    int i4;
    int i1;
    int i2;
    int i6;
    label102:
    Object localObject;
    int i5;
    String str;
    if (i3 < arrayOfString.length)
    {
      localSpannableString = new SpannableString(arrayOfString[i3]);
      Linkify.addLinks(localSpannableString, 1);
      URLSpan[] arrayOfURLSpan = (URLSpan[])localSpannableString.getSpans(0, localSpannableString.length() - 1, URLSpan.class);
      i8 = localSpannableString.length();
      paramString = null;
      int i9 = arrayOfURLSpan.length;
      i4 = 0;
      i1 = 0;
      i2 = 0;
      i6 = 0;
      if (i4 < i9)
      {
        localObject = arrayOfURLSpan[i4];
        int i10 = localSpannableString.getSpanStart(localObject);
        i5 = localSpannableString.getSpanEnd(localObject);
        i2 = i1;
        localObject = paramString;
        if (i6 != i10)
        {
          int i7 = i10 - i6 + 1;
          i2 = i1;
          if (i7 > i1)
          {
            paramString = new char[i7];
            i2 = i7;
          }
          localSpannableString.getChars(i6, i10, paramString, 0);
          localArrayList.add(new efx(0, new String(paramString, 0, i7 - 1), paramInt, null));
          localObject = paramString;
        }
        i6 = i5 - i10 + 1;
        i1 = i2;
        paramString = (String)localObject;
        if (i6 > i2)
        {
          paramString = new char[i6];
          i1 = i6;
        }
        localSpannableString.getChars(i10, i5, paramString, 0);
        str = new String(paramString, 0, i6 - 1);
        if (Uri.parse(str).getAuthority() != null) {
          break label465;
        }
        localObject = String.valueOf(str);
        if (((String)localObject).length() != 0) {
          localObject = "http://".concat((String)localObject);
        }
      }
    }
    for (;;)
    {
      localArrayList.add(new efx(2, str, 0, (String)localObject));
      i4 += 1;
      i6 = i5;
      i2 = i5;
      break label102;
      localObject = new String("http://");
      continue;
      if (i8 != i2)
      {
        i4 = i8 - i2 + 1;
        if (i4 > i1) {
          paramString = new char[i4];
        }
        localSpannableString.getChars(i2, i8, paramString, 0);
        localArrayList.add(new efx(0, new String(paramString, 0, i4 - 1), paramInt, null));
      }
      if (i3 < arrayOfString.length - 1) {
        localArrayList.add(new efx(1, null, 0, null));
      }
      i3 += 1;
      break;
      return localArrayList;
      label465:
      localObject = str;
    }
  }
  
  public static List<cyx> a(dtt paramdtt)
  {
    if (paramdtt == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i2 = paramdtt.length;
    int i1 = 0;
    if (i1 < i2)
    {
      jzh localjzh = paramdtt[i1];
      if (a(g, false)) {
        localArrayList.add(null);
      }
      for (;;)
      {
        i1 += 1;
        break;
        localArrayList.add(a(localjzh, null));
      }
    }
    c(localArrayList);
    return localArrayList;
  }
  
  public static List<cyx> a(kau[] paramArrayOfkau)
  {
    if (paramArrayOfkau == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i2 = paramArrayOfkau.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localArrayList.add(a(a, null));
      i1 += 1;
    }
    c(localArrayList);
    return localArrayList;
  }
  
  public static List<czb> a(kcr[] paramArrayOfkcr, jxy[] paramArrayOfjxy)
  {
    if (paramArrayOfkcr == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i3 = paramArrayOfkcr.length;
    int i1 = 0;
    while (i1 < i3)
    {
      kcr localkcr = paramArrayOfkcr[i1];
      if ((paramArrayOfjxy != null) && (paramArrayOfjxy.length > 0) && (b != null))
      {
        int i4 = paramArrayOfjxy.length;
        int i2 = 0;
        for (Object localObject1 = null;; localObject1 = localObject2)
        {
          localObject2 = localObject1;
          if (i2 >= i4) {
            break;
          }
          jxy localjxy = paramArrayOfjxy[i2];
          localObject2 = localObject1;
          if (a != null)
          {
            localObject2 = localObject1;
            if (a.b != null)
            {
              localObject2 = localObject1;
              if (TextUtils.equals(b, a.b))
              {
                localObject2 = localObject1;
                if (e != null)
                {
                  localObject2 = localObject1;
                  if (e.a != null) {
                    localObject2 = e.a;
                  }
                }
              }
            }
          }
          i2 += 1;
        }
      }
      Object localObject2 = null;
      localArrayList.add(a(localkcr, (String)localObject2));
      i1 += 1;
    }
    return localArrayList;
  }
  
  public static kbi a(cyx paramcyx, int paramInt)
  {
    kbi localkbi = new kbi();
    if ((paramInt == 2) && (c != null)) {
      d = b(paramcyx);
    }
    for (;;)
    {
      e = g;
      f = dtt.a(G);
      return localkbi;
      String str = paramcyx.k();
      if (str != null) {
        a = str;
      } else if (d != null) {
        b = d;
      } else if (c != null) {
        d = b(paramcyx);
      }
    }
  }
  
  public static <K, V> kwt a(Map<K, Collection<V>> paramMap, kog<? extends List<V>> paramkog)
  {
    return new kxd(paramMap, paramkog);
  }
  
  public static <T> kxx<T> a(Class<T> paramClass, String paramString)
  {
    try
    {
      paramClass = new kxx(paramClass.getDeclaredField(paramString));
      return paramClass;
    }
    catch (NoSuchFieldException paramClass)
    {
      throw new AssertionError(paramClass);
    }
  }
  
  public static lbd a(ExecutorService paramExecutorService)
  {
    if ((paramExecutorService instanceof lbd)) {
      return (lbd)paramExecutorService;
    }
    if ((paramExecutorService instanceof ScheduledExecutorService)) {
      return new lbi((ScheduledExecutorService)paramExecutorService);
    }
    return new lam(paramExecutorService);
  }
  
  public static lbe a(ScheduledExecutorService paramScheduledExecutorService)
  {
    if ((paramScheduledExecutorService instanceof lbe)) {
      return (lbe)paramScheduledExecutorService;
    }
    return new lbi(paramScheduledExecutorService);
  }
  
  @Deprecated
  public static void a(int paramInt1, int paramInt2, String paramString)
  {
    bfd localbfd = dvd.e(paramInt1);
    hax localhax = g(localbfd).a(paramInt2);
    if (paramString != null) {
      localhax.a(paramString);
    }
    localhax.d(localbfd.a());
    localhax.d();
  }
  
  public static void a(int paramInt, ba paramba, boolean paramBoolean, dxv paramdxv)
  {
    if (paramBoolean) {}
    for (byk localbyk = new byk(paramba.C_());; localbyk = null)
    {
      byi.a(new dxt(paramba, paramInt, paramdxv), localbyk).a();
      return;
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    if (!Log.isLoggable(paramString1, paramInt)) {
      return;
    }
    b(paramInt, paramString1, paramString2);
  }
  
  public static void a(Activity paramActivity, bfd parambfd, fcr paramfcr, String paramString1, String paramString2)
  {
    abp localabp = new abp(paramActivity, BabelPhotoViewActivity.class);
    localabp.b(EsProvider.b(parambfd, paramString2).toString());
    localabp.a(paramString1);
    paramString1 = new int[2];
    paramfcr.getLocationOnScreen(paramString1);
    localabp.a(paramString1[0], paramString1[1], paramfcr.getMeasuredWidth(), paramfcr.getMeasuredHeight());
    localabp.a(deg.a);
    localabp.a();
    localabp.a(false);
    localabp.a(8.0F);
    paramfcr = localabp.b();
    paramfcr.putExtra("account_id", parambfd.g());
    paramActivity.startActivity(paramfcr);
    paramActivity.overridePendingTransition(0, 0);
  }
  
  public static void a(Notification.Builder paramBuilder, do paramdo)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramdo.a(), paramdo.b(), paramdo.c());
    if (paramdo.e() != null)
    {
      RemoteInput[] arrayOfRemoteInput = a(paramdo.e());
      int i2 = arrayOfRemoteInput.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localBuilder.addRemoteInput(arrayOfRemoteInput[i1]);
        i1 += 1;
      }
    }
    if (paramdo.d() != null) {
      localBuilder.addExtras(paramdo.d());
    }
    paramBuilder.addAction(localBuilder.build());
  }
  
  public static void a(Context paramContext, int paramInt, long paramLong)
  {
    paramContext = (hpz)ilh.a(paramContext, hpz.class);
    aen.a(paramContext.c(paramInt));
    paramContext.b(paramInt).b("last_invite_seen_timestamp", paramLong).d();
  }
  
  public static void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    bfd localbfd = dvd.e(((hpu)ilh.a(paramContext, hpu.class)).a());
    if ((paramInt == -1) && (paramIntent != null))
    {
      b(paramContext, "context must not be null");
      localObject = (PlaceImpl)a(paramIntent, "selected_place", PlaceImpl.CREATOR);
      ((PlaceImpl)localObject).a(ger.a(paramContext));
      paramIntent = new bkz();
      e = ((geo)localObject);
      c = bkr.e;
      localObject = new ArrayList();
      ((List)localObject).add(paramIntent);
      ((bmw)ilh.a(paramContext, bmw.class)).a((List)localObject);
      ((bjc)ilh.a(paramContext, bjc.class)).a(new bqu(localbfd));
    }
    while (paramInt != 0)
    {
      Object localObject;
      return;
    }
    a(localbfd, 2051, null, null, false);
  }
  
  public static void a(Context paramContext, int paramInt1, String paramString, int paramInt2)
  {
    hax localhax = c(paramInt1, paramInt2);
    if (!TextUtils.isEmpty(paramString)) {
      localhax.b(paramString);
    }
    paramString = ezm.f();
    if (!TextUtils.isEmpty(paramString)) {
      localhax.c(paramString);
    }
    paramString = new kld();
    a = Boolean.valueOf(n(paramContext));
    localhax.a(paramString);
    if (!r(paramContext))
    {
      ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, no corse location permission.", new Object[0]);
      localhax.d();
      return;
    }
    era.a(paramContext, new etz(localhax, paramContext));
  }
  
  private static void a(Context paramContext, int paramInt, LinkedList<esg> paramLinkedList)
  {
    Object localObject = eut.a(paramContext);
    paramLinkedList = a(paramContext, paramLinkedList);
    int i1 = paramLinkedList.size();
    ezi.c("Babel_telephony", 65 + "TeleIncomingWifiCallLog.setInvites, new invite count: " + i1, new Object[0]);
    if (paramLinkedList.isEmpty())
    {
      ((eut)localObject).a(paramInt, null);
      return;
    }
    localObject = new eus();
    a = new eur[paramLinkedList.size()];
    i1 = 0;
    while (i1 < paramLinkedList.size())
    {
      a[i1] = ((esg)paramLinkedList.get(i1)).b();
      i1 += 1;
    }
    paramLinkedList = Base64.encodeToString(lyi.a((lyi)localObject), 0);
    eut.a(paramContext).a(paramInt, paramLinkedList);
  }
  
  public static void a(Context paramContext, ServiceConnection paramServiceConnection)
  {
    Intent localIntent = new Intent("com.google.android.apps.tycho.IVoiceService").setPackage("com.google.android.apps.tycho");
    ezi.c("Babel_telephony", "TeleTychoController.bindService, calling bind service", new Object[0]);
    if (!paramContext.bindService(localIntent, paramServiceConnection, 1))
    {
      ezi.c("Babel_telephony", "TeleTychoController.bindService, binding failed", new Object[0]);
      paramServiceConnection.onServiceDisconnected(null);
    }
  }
  
  private static void a(Context paramContext, Bundle paramBundle, int paramInt1, String paramString1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = String.valueOf(s(paramString1));
    if (((String)localObject).length() != 0)
    {
      localObject = "TeleFeedback.showNotification, phoneNumber: ".concat((String)localObject);
      ezi.c("Babel_telephony", (String)localObject, new Object[0]);
      if (paramString1 != null) {
        break label311;
      }
    }
    label311:
    for (paramString1 = null;; paramString1 = ezm.a(paramString1, ezp.a))
    {
      long l1 = System.currentTimeMillis();
      int i1 = (int)l1;
      localObject = a(paramContext, i1, paramBundle, paramInt1, 1, paramInt2, paramBoolean2, paramBoolean1, paramString2, paramString3, paramString4);
      PendingIntent localPendingIntent = a(paramContext, i1, paramBundle, paramInt1, 5, paramInt2, paramBoolean2, paramBoolean1, paramString2, paramString3, paramString4);
      paramBundle = a(paramContext, i1, paramBundle, paramInt1, 0, paramInt2, paramBoolean2, paramBoolean1, paramString2, paramString3, paramString4);
      paramBundle = new cy(paramContext).a(paramContext.getString(qz)).b(paramString1).a(qp).d(-1).a(l1).a().e(paramContext.getResources().getColor(qf)).a(qh, paramContext.getString(qs), (PendingIntent)localObject).a(qg, paramContext.getString(qr), localPendingIntent).a(paramBundle).g();
      ((NotificationManager)paramContext.getSystemService("notification")).notify("telephony_call_feedback", i1, paramBundle);
      paramBundle = PendingIntent.getBroadcast(paramContext, i1, new Intent("com.google.android.apps.hangouts.telephony.TeleFeedback.ALARM").putExtra("telephony_id", i1), 1073741824);
      l1 = a(paramContext, "babel_telephony_feedback_duration_millis", 300000);
      ((AlarmManager)paramContext.getSystemService("alarm")).set(3, l1 + SystemClock.elapsedRealtime(), paramBundle);
      return;
      localObject = new String("TeleFeedback.showNotification, phoneNumber: ");
      break;
    }
  }
  
  public static void a(Context paramContext, erg paramerg)
  {
    ezi.c("Babel_telephony", "TeleIncomingAutoAnswer.answerIfNecessary", new Object[0]);
    if (paramerg.getState() == 6) {}
    do
    {
      String str2;
      do
      {
        return;
        str2 = a(paramContext, "babel_testing_auto_answer_incoming_caller_ids", ers.a);
      } while (TextUtils.isEmpty(str2));
      String str1 = paramerg.f().d();
      String[] arrayOfString = str2.split(",");
      int i2 = arrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        str2 = arrayOfString[i1];
        if (c(str1, str2))
        {
          paramContext = String.valueOf("TeleIncomingAutoAnswer.answerIfNecessary, found matching auto answer caller ID: ");
          str1 = String.valueOf(str2);
          if (str1.length() != 0) {}
          for (paramContext = paramContext.concat(str1);; paramContext = new String(paramContext))
          {
            ezi.c("Babel_telephony", paramContext, new Object[0]);
            paramerg.onAnswer();
            return;
          }
        }
        i1 += 1;
      }
    } while (!a(paramContext, "babel_testing_auto_reject_mismatched_incoming_calls", false));
    ezi.c("Babel_telephony", "TeleIncomingAutoAnswer.answerIfNecessary, caller ID didn't match, rejecting call", new Object[0]);
    paramerg.onReject();
  }
  
  public static void a(Context paramContext, esg paramesg)
  {
    LinkedList localLinkedList = f(paramContext, f);
    localLinkedList.add(paramesg);
    a(paramContext, f, localLinkedList);
  }
  
  public static void a(Context paramContext, File paramFile)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("*/*");
    localIntent.putExtra("android.intent.extra.STREAM", Uri.fromFile(paramFile));
    if (localIntent.resolveActivity(paramContext.getPackageManager()) != null) {
      paramContext.startActivity(localIntent);
    }
  }
  
  public static void a(Context paramContext, StringBuilder paramStringBuilder, long paramLong, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1))
    {
      paramStringBuilder.append('\n');
      paramStringBuilder.append(paramContext.getResources().getString(StressMode.ce, new Object[] { ezm.p(paramString1) }));
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      paramStringBuilder.append('\n');
      paramStringBuilder.append(paramContext.getResources().getString(StressMode.rG, new Object[] { paramString2 }));
    }
    paramStringBuilder.append('\n');
    paramStringBuilder.append(paramContext.getResources().getString(StressMode.jk, new Object[] { a(paramLong).toString() }));
    c(paramContext, paramStringBuilder.toString());
  }
  
  public static void a(Parcel paramParcel, int paramInt, byte paramByte)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeInt(paramByte);
  }
  
  public static void a(Parcel paramParcel, int paramInt, double paramDouble)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeDouble(paramDouble);
  }
  
  public static void a(Parcel paramParcel, int paramInt, float paramFloat)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeFloat(paramFloat);
  }
  
  public static void a(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    paramInt1 = a(paramParcel, paramInt1);
    if (paramInt1 != paramInt2) {
      throw new ax("Expected size " + paramInt2 + " got " + paramInt1 + " (0x" + Integer.toHexString(paramInt1) + ")", paramParcel);
    }
  }
  
  public static void a(Parcel paramParcel, int paramInt, long paramLong)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeLong(paramLong);
  }
  
  public static void a(Parcel paramParcel, int paramInt, Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    paramInt = p(paramParcel, paramInt);
    paramParcel.writeBundle(paramBundle);
    q(paramParcel, paramInt);
  }
  
  public static void a(Parcel paramParcel, int paramInt, IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return;
    }
    paramInt = p(paramParcel, paramInt);
    paramParcel.writeStrongBinder(paramIBinder);
    q(paramParcel, paramInt);
  }
  
  public static void a(Parcel paramParcel, int paramInt1, Parcelable paramParcelable, int paramInt2)
  {
    if (paramParcelable == null) {
      return;
    }
    paramInt1 = p(paramParcel, paramInt1);
    paramParcelable.writeToParcel(paramParcel, paramInt2);
    q(paramParcel, paramInt1);
  }
  
  public static void a(Parcel paramParcel, int paramInt, String paramString)
  {
    if (paramString == null) {
      return;
    }
    paramInt = p(paramParcel, paramInt);
    paramParcel.writeString(paramString);
    q(paramParcel, paramInt);
  }
  
  public static void a(boolean paramBoolean)
  {
    ;
    if (localObject == null) {
      return;
    }
    int i2 = p(paramBoolean, i1);
    int i3 = ((List)localObject).size();
    paramBoolean.writeInt(i3);
    int i1 = 0;
    while (i1 < i3)
    {
      paramBoolean.writeInt(((Integer)((List)localObject).get(i1)).intValue());
      i1 += 1;
    }
    q(paramBoolean, i2);
  }
  
  public static void a(Parcel paramParcel, int paramInt, boolean paramBoolean)
  {
    b(paramParcel, paramInt, 4);
    if (paramBoolean) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
  
  public static void a(Parcel paramParcel, int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return;
    }
    paramInt = p(paramParcel, paramInt);
    paramParcel.writeByteArray(paramArrayOfByte);
    q(paramParcel, paramInt);
  }
  
  public static <T extends Parcelable> void a(boolean paramBoolean)
  {
    ;
    if (localObject == null) {
      return;
    }
    int i3 = p(paramBoolean, i1);
    int i4 = localObject.length;
    paramBoolean.writeInt(i4);
    int i1 = 0;
    if (i1 < i4)
    {
      Parcelable localParcelable = localObject[i1];
      if (localParcelable == null) {
        paramBoolean.writeInt(0);
      }
      for (;;)
      {
        i1 += 1;
        break;
        int i2;
        a(paramBoolean, localParcelable, i2);
      }
    }
    q(paramBoolean, i3);
  }
  
  public static void a(Parcel paramParcel, int paramInt, String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return;
    }
    paramInt = p(paramParcel, paramInt);
    paramParcel.writeStringArray(paramArrayOfString);
    q(paramParcel, paramInt);
  }
  
  private static <T extends Parcelable> void a(Parcel paramParcel, T paramT, int paramInt)
  {
    int i1 = paramParcel.dataPosition();
    paramParcel.writeInt(1);
    int i2 = paramParcel.dataPosition();
    paramT.writeToParcel(paramParcel, paramInt);
    paramInt = paramParcel.dataPosition();
    paramParcel.setDataPosition(i1);
    paramParcel.writeInt(paramInt - i2);
    paramParcel.setDataPosition(paramInt);
  }
  
  public static void a(Spannable paramSpannable)
  {
    if (rt == null) {
      rt = Pattern.compile("[\\d\\p{Punct}\\p{Space}]+");
    }
    if (!rt.matcher(paramSpannable).matches()) {}
    while (Build.VERSION.SDK_INT < 21) {
      return;
    }
    Object localObject = (TtsSpan[])paramSpannable.getSpans(0, paramSpannable.length(), TtsSpan.class);
    int i2 = localObject.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramSpannable.removeSpan(localObject[i1]);
      i1 += 1;
    }
    localObject = paramSpannable.toString();
    if (ru == null) {
      ru = Pattern.compile("[\\p{Punct}\\p{Space}]");
    }
    String str = ru.matcher(paramSpannable).replaceAll(",");
    i1 = 0;
    label124:
    char c1;
    if (i1 < ((String)localObject).length())
    {
      c1 = str.charAt(i1);
      if (c1 != ',') {
        break label178;
      }
      paramSpannable.setSpan(new TtsSpan.TextBuilder(",").build(), i1, i1 + 1, 33);
    }
    for (;;)
    {
      i1 += 1;
      break label124;
      break;
      label178:
      paramSpannable.setSpan(new TtsSpan.DigitsBuilder(1 + c1).build(), i1, i1 + 1, 33);
    }
  }
  
  public static void a(ImageView paramImageView, Resources paramResources, int paramInt)
  {
    eqh localeqh = eqh.a;
    paramImageView.setLayerType(1, null);
    paramImageView.post(new eqf(paramResources, paramInt, paramImageView, localeqh, true));
  }
  
  public static void a(TextView paramTextView, Activity paramActivity, Resources paramResources, String paramString1, String paramString2, int paramInt)
  {
    a(paramTextView, paramActivity, paramResources.getString(paramInt, new Object[] { e(paramString1, paramString2).toString() }));
  }
  
  public static void a(TextView paramTextView, Context paramContext, String paramString)
  {
    paramString = Html.fromHtml(paramString);
    Object localObject = (URLSpan[])paramString.getSpans(0, paramString.length(), URLSpan.class);
    if (localObject.length > 0)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString);
      localObject = localObject[0];
      int i1 = paramString.getSpanStart(localObject);
      int i2 = paramString.getSpanEnd(localObject);
      localSpannableStringBuilder.setSpan(new eyb((URLSpan)localObject, paramContext), i1, i2, 33);
      paramTextView.setText(localSpannableStringBuilder);
      paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
      paramTextView.setOnClickListener(new eyc(paramContext, (URLSpan)localObject));
    }
  }
  
  public static void a(TextView paramTextView, Spannable paramSpannable)
  {
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannable.getSpans(0, paramSpannable.length(), URLSpan.class);
    int i2 = arrayOfURLSpan.length;
    int i1 = 0;
    while (i1 < i2)
    {
      URLSpan localURLSpan = arrayOfURLSpan[i1];
      paramSpannable.setSpan(new ikz(), paramSpannable.getSpanStart(localURLSpan), paramSpannable.getSpanEnd(localURLSpan), 0);
      i1 += 1;
    }
    paramTextView.setText(paramSpannable);
    paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  public static void a(ba paramba, bfd parambfd, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    byi.a(new bya(paramba, parambfd, paramString1, paramString2, paramString3, paramBoolean), new byk(paramba.C_())).a();
  }
  
  public static void a(ba paramba, dvv paramdvv, int paramInt, String paramString)
  {
    dje localdje = (dje)ilh.b(paramba, dje.class);
    azj localazj;
    if ((!ezm.c(paramdvv.c())) && (localdje != null))
    {
      localazj = (azj)ilh.b(paramba, azj.class);
      if (localazj != null) {
        break label67;
      }
    }
    label67:
    for (boolean bool = false; !bool; bool = localazj.a(paramba, paramInt))
    {
      paramba.startActivity(paramdvv.a(paramInt, paramString));
      paramba.finish();
      return;
    }
    localdje.a(paramba, paramdvv, paramInt, paramString);
  }
  
  public static void a(bfd parambfd)
  {
    a(parambfd, null, null);
  }
  
  @Deprecated
  public static void a(bfd parambfd, int paramInt)
  {
    a(parambfd, paramInt, null, null, false);
  }
  
  @Deprecated
  public static void a(bfd parambfd, int paramInt1, int paramInt2)
  {
    a(parambfd, paramInt1, null, Integer.valueOf(paramInt2), false);
  }
  
  public static void a(bfd parambfd, int paramInt, dvv paramdvv)
  {
    bha localbha = bgw.a(oJ, parambfd.g()).b();
    localbha.a();
    try
    {
      Object localObject2 = ezm.g(paramdvv.c());
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "";
      }
      localObject2 = new ContentValues();
      ((ContentValues)localObject2).put("normalized_number", (String)localObject1);
      ((ContentValues)localObject2).put("phone_number", paramdvv.c());
      ((ContentValues)localObject2).put("contact_id", paramdvv.d());
      ((ContentValues)localObject2).put("call_timestamp", Long.valueOf(paramdvv.e()));
      ((ContentValues)localObject2).put("call_type", Integer.valueOf(paramInt));
      ((ContentValues)localObject2).put("contact_type", Integer.valueOf(paramdvv.f()));
      localbha.a("recent_calls", (ContentValues)localObject2);
      localbha.b();
      localbha.c();
      oJ.getContentResolver().notifyChange(EsProvider.a(parambfd, -1), null);
      return;
    }
    finally
    {
      localbha.c();
    }
  }
  
  @Deprecated
  public static void a(bfd parambfd, int paramInt, String paramString)
  {
    a(parambfd, paramInt, paramString, null, false);
  }
  
  @Deprecated
  private static void a(bfd parambfd, int paramInt, String paramString, Integer paramInteger, boolean paramBoolean)
  {
    parambfd = g(parambfd).a(paramInt);
    if (paramString != null) {
      parambfd.a(paramString);
    }
    if (paramInteger != null) {
      parambfd.a(paramInteger);
    }
    parambfd.d();
  }
  
  public static void a(bfd parambfd, long paramLong, String paramString, boolean paramBoolean)
  {
    int i2 = 1;
    bha localbha = bgw.a(oJ, parambfd.g()).b();
    localbha.a();
    for (;;)
    {
      try
      {
        Object localObject = new ContentValues();
        ((ContentValues)localObject).put("call_rate", paramString);
        int i1;
        int i3;
        if (paramBoolean)
        {
          i1 = 1;
          ((ContentValues)localObject).put("is_free_call", Integer.toString(i1));
          i3 = localbha.a("recent_calls", (ContentValues)localObject, "call_timestamp=?", new String[] { Long.toString(paramLong) });
          if (i3 == 1)
          {
            localbha.b();
            localbha.c();
            oJ.getContentResolver().notifyChange(EsProvider.a(parambfd, -1), null);
          }
        }
        else
        {
          i1 = 0;
          continue;
        }
        localObject = String.valueOf("Attemped to update recent_calls where call_timestamp = ");
        String str1 = String.valueOf("call_rate");
        String str2 = String.valueOf("is_free_call");
        if (paramBoolean)
        {
          i1 = i2;
          ezi.d("Babel_db", String.valueOf(localObject).length() + 115 + String.valueOf(str1).length() + String.valueOf(paramString).length() + String.valueOf(str2).length() + (String)localObject + paramLong + " with " + str1 + " = " + paramString + " and " + str2 + " = " + i1 + ". Expected this to change 1 row, actually changed " + i3 + " rows.", new Object[0]);
        }
        else
        {
          i1 = 0;
        }
      }
      finally
      {
        localbha.c();
      }
    }
  }
  
  private static void a(bfd parambfd, String paramString, String[] paramArrayOfString)
  {
    bgw.a(oJ, parambfd.g()).b().a("recent_calls", paramString, paramArrayOfString);
    oJ.getContentResolver().notifyChange(EsProvider.o, null);
  }
  
  public static void a(bfd parambfd, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder("_id IN(?");
    int i1 = 1;
    while (i1 < paramArrayOfString.length)
    {
      localStringBuilder.append(",?");
      i1 += 1;
    }
    localStringBuilder.append(")");
    a(parambfd, localStringBuilder.toString(), paramArrayOfString);
  }
  
  public static void a(dju paramdju)
  {
    if (oJ != null)
    {
      paramdju.a(oJ);
      return;
    }
    if (oL == null) {
      oL = new ArrayList();
    }
    oL.add(paramdju);
  }
  
  public static void a(dvv paramdvv, bfd parambfd, ba paramba, dvx paramdvx)
  {
    String str = paramdvv.c();
    if (PhoneNumberUtils.isEmergencyNumber(str))
    {
      int i1;
      if ((parambfd.Q()) && (ezm.j(str)) && (!ezm.a(oJ)) && (ezm.b(oJ)))
      {
        i1 = 1;
        if (i1 != 0) {
          break label201;
        }
        if ((!ezm.b()) || (!((dty)ilh.a(paramba, dty.class)).a(paramba, paramdvv.c())))
        {
          parambfd = String.valueOf(paramba.getString(StressMode.fL, new Object[] { paramdvv.c() }));
          paramdvv = String.valueOf(paramba.getString(StressMode.fM, new Object[] { paramdvv.c() }));
          if (paramdvv.length() == 0) {
            break label189;
          }
        }
      }
      label189:
      for (paramdvv = parambfd.concat(paramdvv);; paramdvv = new String(parambfd))
      {
        new AlertDialog.Builder(paramba).setTitle(StressMode.fN).setMessage(paramdvv).setCancelable(true).setPositiveButton(17039370, new dxn()).create().show();
        return;
        i1 = 0;
        break;
      }
    }
    label201:
    paramdvv = ((dxr)knq.c(ilh.b(paramba.getApplicationContext(), dxr.class)).a(new dxp())).a(paramdvv, parambfd, paramba, paramdvx);
    if (parambfd.N() == 0)
    {
      a(parambfd.g(), paramba, true, new dxo(paramdvv));
      return;
    }
    paramdvv.run();
  }
  
  public static void a(erg paramerg, DisconnectCause paramDisconnectCause)
  {
    boolean bool = false;
    TeleConnectionService localTeleConnectionService = paramerg.d();
    if (!a(localTeleConnectionService, "babel_request_call_feedback", false)) {
      ezi.c("Babel_telephony", "TeleUtils.requestCallFeedback, disabled by default for user", new Object[0]);
    }
    do
    {
      return;
      if (!eut.a(localTeleConnectionService).j())
      {
        ezi.c("Babel_telephony", "TeleUtils.requestCallFeedback, disabled by user settings", new Object[0]);
        return;
      }
    } while ((paramDisconnectCause.getCode() == 5) || (paramDisconnectCause.getCode() == 6));
    int i1 = eut.a(localTeleConnectionService).f();
    if (i1 == -1)
    {
      ezi.c("Babel_telephony", "TeleUtils.requestCallFeedback, no tycho account, not sending feedback", new Object[0]);
      return;
    }
    if (paramerg.j() != null) {
      bool = true;
    }
    hbs.a("Expected condition to be true", bool);
    Bundle localBundle = new Bundle();
    if (paramerg.t() != null) {
      localBundle.putString("call_log", paramerg.t());
    }
    if (paramerg.p() != null) {
      localBundle.putString("hangout_id", paramerg.p());
    }
    if (paramerg.q() != null) {
      localBundle.putString("callgrok_session_id", paramerg.q());
    }
    if (paramerg.r() != null) {
      localBundle.putString("participant_id", paramerg.r());
    }
    if (paramerg.i() != null) {
      localBundle.putString("participant_log_id", paramerg.i());
    }
    if ((paramerg.j() != null) && (paramerg.j().e() != null)) {
      localBundle.putString("call_id", paramerg.j().e());
    }
    if (paramerg.m() != null) {
      localBundle.putString("handoff_number", paramerg.m());
    }
    Object localObject1 = ezm.f();
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      localBundle.putString("device_number", (String)localObject1);
    }
    if ((paramerg.f() != null) && (paramerg.f().c() != null)) {
      localBundle.putString("remote_party_number", paramerg.f().c());
    }
    if (paramerg.g()) {}
    for (localObject1 = "incoming";; localObject1 = "outgoing")
    {
      localBundle.putString("call_direction", (String)localObject1);
      if (paramerg.n() != null) {
        localBundle.putString("wifi_calling_account", paramerg.n());
      }
      localObject1 = paramerg.d();
      if (i1 != -1) {
        localBundle.putString("tycho_account", dvd.a((Context)localObject1, i1));
      }
      if (T((Context)localObject1) != null) {
        localBundle.putString("google_corp_account", T((Context)localObject1));
      }
      if ((paramDisconnectCause != null) && (paramDisconnectCause.toString() != null)) {
        localBundle.putString("disconnect_cause", paramDisconnectCause.toString());
      }
      Object localObject2 = h((Context)localObject1);
      if (localObject2 != null)
      {
        paramDisconnectCause = String.valueOf(a);
        localObject1 = String.valueOf(b);
        localObject2 = String.valueOf(d);
        localBundle.putString("access_network_info", String.valueOf(paramDisconnectCause).length() + 4 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length() + paramDisconnectCause + "; " + (String)localObject1 + "; " + (String)localObject2);
      }
      if ((paramerg.h() != null) && (paramerg.h().toString() != null)) {
        localBundle.putString("roaming_status", paramerg.h().toString());
      }
      if (paramerg.s() != null) {
        localBundle.putString("experiment_code", paramerg.s().toString());
      }
      paramDisconnectCause = paramerg.j();
      if ((paramDisconnectCause instanceof eua))
      {
        paramDisconnectCause = (eua)paramDisconnectCause;
        if (paramDisconnectCause.n() != null) {
          paramDisconnectCause.n().a(localBundle);
        }
      }
      localObject1 = paramerg.q();
      paramDisconnectCause = (DisconnectCause)localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        paramDisconnectCause = paramerg.j().e();
      }
      localObject1 = null;
      localObject2 = paramerg.j();
      if ((localObject2 instanceof eua)) {
        localObject1 = ((eua)localObject2).p();
      }
      a(localTeleConnectionService, localBundle, i1, paramerg.f().c(), paramerg.j().d(), paramerg.l(), paramerg.g(), paramerg.i(), paramDisconnectCause, (String)localObject1);
      return;
    }
  }
  
  public static void a(ihb paramihb, dyr paramdyr)
  {
    Object localObject = new HashSet();
    Iterator localIterator = paramihb.g().iterator();
    while (localIterator.hasNext())
    {
      axt localaxt = (axt)localIterator.next();
      dtw localdtw = localaxt.b();
      if ((localdtw != null) && (!((HashSet)localObject).contains(localdtw)))
      {
        ((HashSet)localObject).add(localdtw);
        paramdyr.a(localdtw, localaxt);
      }
    }
    paramihb = paramihb.i().iterator();
    while (paramihb.hasNext())
    {
      localObject = (axn)paramihb.next();
      paramdyr.a(dtw.b(((axn)localObject).b(), ((axn)localObject).d()), (axn)localObject);
    }
  }
  
  private static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a(paramInputStream, paramOutputStream, true);
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean)
  {
    try
    {
      fii.a(paramInputStream);
      fii.a(paramOutputStream);
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i1 = paramInputStream.read(arrayOfByte);
        if (i1 == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i1);
      }
      if (!paramBoolean) {
        return;
      }
    }
    finally
    {
      if (paramBoolean) {
        paramInputStream.close();
      }
    }
    paramInputStream.close();
  }
  
  public static void a(ClassLoader paramClassLoader, List<File> paramList)
  {
    int i1 = paramList.size();
    Field localField = ae.a(paramClassLoader, "path");
    StringBuilder localStringBuilder = new StringBuilder((String)localField.get(paramClassLoader));
    String[] arrayOfString = new String[i1];
    File[] arrayOfFile = new File[i1];
    ZipFile[] arrayOfZipFile = new ZipFile[i1];
    DexFile[] arrayOfDexFile = new DexFile[i1];
    paramList = paramList.listIterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      String str = localFile.getAbsolutePath();
      localStringBuilder.append(':').append(str);
      i1 = paramList.previousIndex();
      arrayOfString[i1] = str;
      arrayOfFile[i1] = localFile;
      arrayOfZipFile[i1] = new ZipFile(localFile);
      arrayOfDexFile[i1] = DexFile.loadDex(str, str + ".dex", 0);
    }
    localField.set(paramClassLoader, localStringBuilder.toString());
    ae.a(paramClassLoader, "mPaths", arrayOfString);
    ae.a(paramClassLoader, "mFiles", arrayOfFile);
    ae.a(paramClassLoader, "mZips", arrayOfZipFile);
    ae.a(paramClassLoader, "mDexs", arrayOfDexFile);
  }
  
  public static void a(Object paramObject, View paramView)
  {
    ((Transition)paramObject).setEpicenterCallback(new ca(a(paramView)));
  }
  
  public static void a(Object paramObject, View paramView, Map<String, View> paramMap, ArrayList<View> paramArrayList)
  {
    paramObject = (TransitionSet)paramObject;
    paramArrayList.clear();
    paramArrayList.addAll(paramMap.values());
    paramMap = ((TransitionSet)paramObject).getTargets();
    paramMap.clear();
    int i5 = paramArrayList.size();
    int i1 = 0;
    while (i1 < i5)
    {
      Object localObject = (View)paramArrayList.get(i1);
      int i4 = paramMap.size();
      if (!a(paramMap, (View)localObject, i4))
      {
        paramMap.add(localObject);
        int i2 = i4;
        while (i2 < paramMap.size())
        {
          localObject = (View)paramMap.get(i2);
          if ((localObject instanceof ViewGroup))
          {
            localObject = (ViewGroup)localObject;
            int i6 = ((ViewGroup)localObject).getChildCount();
            int i3 = 0;
            while (i3 < i6)
            {
              View localView = ((ViewGroup)localObject).getChildAt(i3);
              if (!a(paramMap, localView, i4)) {
                paramMap.add(localView);
              }
              i3 += 1;
            }
          }
          i2 += 1;
        }
      }
      i1 += 1;
    }
    paramArrayList.add(paramView);
    b(paramObject, paramArrayList);
  }
  
  public static void a(Object paramObject, View paramView, boolean paramBoolean)
  {
    ((Transition)paramObject).excludeTarget(paramView, paramBoolean);
  }
  
  public static void a(Object paramObject, StringBuilder paramStringBuilder)
  {
    if (paramObject == null)
    {
      paramStringBuilder.append("null");
      return;
    }
    String str2 = paramObject.getClass().getSimpleName();
    String str1;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.length() > 0) {}
    }
    else
    {
      str2 = paramObject.getClass().getName();
      int i1 = str2.lastIndexOf('.');
      str1 = str2;
      if (i1 > 0) {
        str1 = str2.substring(i1 + 1);
      }
    }
    paramStringBuilder.append(str1);
    paramStringBuilder.append('{');
    paramStringBuilder.append(Integer.toHexString(System.identityHashCode(paramObject)));
  }
  
  public static void a(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int i1;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      int i2 = ((TransitionSet)paramObject).getTransitionCount();
      i1 = 0;
      while (i1 < i2)
      {
        a(((TransitionSet)paramObject).getTransitionAt(i1), paramArrayList);
        i1 += 1;
      }
    }
    if (!a((Transition)paramObject))
    {
      List localList = ((Transition)paramObject).getTargets();
      if ((localList != null) && (localList.size() == paramArrayList.size()) && (localList.containsAll(paramArrayList)))
      {
        i1 = paramArrayList.size() - 1;
        while (i1 >= 0)
        {
          ((Transition)paramObject).removeTarget((View)paramArrayList.get(i1));
          i1 -= 1;
        }
      }
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    y().post(paramRunnable);
  }
  
  public static void a(Runnable paramRunnable, long paramLong)
  {
    y().postDelayed(paramRunnable, paramLong);
  }
  
  public static void a(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      Trace.beginSection(paramString);
    }
  }
  
  public static void a(String paramString, int paramInt1, int paramInt2)
  {
    paramString = new File(j(paramString));
    if (paramString.exists())
    {
      paramString = paramString.listFiles();
      Arrays.sort(paramString, new chd());
      int i1 = 0;
      if (i1 < paramString.length)
      {
        Object localObject = paramString[i1];
        if (i1 >= paramInt1) {
          ((File)localObject).delete();
        }
        for (;;)
        {
          i1 += 1;
          break;
          if (System.currentTimeMillis() - ((File)localObject).lastModified() > TimeUnit.DAYS.toMillis(paramInt2)) {
            ((File)localObject).delete();
          }
        }
      }
    }
  }
  
  private static void a(String paramString, Object paramObject, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2)
  {
    if (paramObject != null)
    {
      if (!(paramObject instanceof gbn)) {
        break label417;
      }
      int i4 = paramStringBuffer1.length();
      if (paramString != null)
      {
        paramStringBuffer2.append(paramStringBuffer1).append(G(paramString)).append(" <\n");
        paramStringBuffer1.append("  ");
      }
      Class localClass = paramObject.getClass();
      Object localObject1 = localClass.getFields();
      int i5 = localObject1.length;
      int i1 = 0;
      String str;
      Object localObject2;
      while (i1 < i5)
      {
        Object localObject3 = localObject1[i1];
        i2 = ((Field)localObject3).getModifiers();
        str = ((Field)localObject3).getName();
        if (((i2 & 0x1) == 1) && ((i2 & 0x8) != 8) && (!str.startsWith("_")) && (!str.endsWith("_")))
        {
          localObject2 = ((Field)localObject3).getType();
          localObject3 = ((Field)localObject3).get(paramObject);
          if ((((Class)localObject2).isArray()) && (((Class)localObject2).getComponentType() != Byte.TYPE))
          {
            if (localObject3 == null) {}
            for (i2 = 0;; i2 = Array.getLength(localObject3))
            {
              int i3 = 0;
              while (i3 < i2)
              {
                a(str, Array.get(localObject3, i3), paramStringBuffer1, paramStringBuffer2);
                i3 += 1;
              }
            }
          }
          a(str, localObject3, paramStringBuffer1, paramStringBuffer2);
        }
        i1 += 1;
      }
      localObject1 = localClass.getMethods();
      int i2 = localObject1.length;
      i1 = 0;
      while (i1 < i2)
      {
        str = localObject1[i1].getName();
        if (str.startsWith("set")) {
          str = str.substring(3);
        }
        for (;;)
        {
          try
          {
            localObject2 = localClass.getMethod("has" + str, new Class[0]);
            if (!((Boolean)((Method)localObject2).invoke(paramObject, new Object[0])).booleanValue()) {}
          }
          catch (NoSuchMethodException localNoSuchMethodException2)
          {
            continue;
          }
          try
          {
            localObject2 = localClass.getMethod("get" + str, new Class[0]);
            a(str, ((Method)localObject2).invoke(paramObject, new Object[0]), paramStringBuffer1, paramStringBuffer2);
          }
          catch (NoSuchMethodException localNoSuchMethodException1) {}
        }
        i1 += 1;
      }
      if (paramString != null)
      {
        paramStringBuffer1.setLength(i4);
        paramStringBuffer2.append(paramStringBuffer1).append(">\n");
      }
    }
    return;
    label417:
    paramString = G(paramString);
    paramStringBuffer2.append(paramStringBuffer1).append(paramString).append(": ");
    if ((paramObject instanceof String))
    {
      paramObject = (String)paramObject;
      paramString = (String)paramObject;
      if (!((String)paramObject).startsWith("http"))
      {
        paramString = (String)paramObject;
        if (((String)paramObject).length() > 200) {
          paramString = ((String)paramObject).substring(0, 200) + "[...]";
        }
      }
      paramString = H(paramString);
      paramStringBuffer2.append("\"").append(paramString).append("\"");
    }
    for (;;)
    {
      paramStringBuffer2.append("\n");
      return;
      if ((paramObject instanceof byte[])) {
        a((byte[])paramObject, paramStringBuffer2);
      } else {
        paramStringBuffer2.append(paramObject);
      }
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (q(6)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    b(paramString2, paramVarArgs);
    if (b(paramVarArgs) != null)
    {
      M(paramString1);
      return;
    }
    M(paramString1);
  }
  
  public static void a(String paramString, List<String> paramList1, List<String> paramList2)
  {
    if (paramString != null)
    {
      paramString = new StringTokenizer(paramString, "|");
      while (paramString.hasMoreElements())
      {
        String str = paramString.nextToken();
        if (str.startsWith("defaultavatar://")) {
          paramList2.add(str.substring(16));
        } else {
          paramList1.add(str);
        }
      }
    }
  }
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("(");
    int i2 = paramVarArgs.length;
    paramString = "";
    int i1 = 0;
    if (i1 < i2)
    {
      Object localObject = paramVarArgs[i1];
      localStringBuilder.append(paramString);
      if ((localObject instanceof Bundle)) {
        localStringBuilder.append(gpd.a((Bundle)localObject));
      }
      for (;;)
      {
        paramString = ", ";
        i1 += 1;
        break;
        localStringBuilder.append(localObject);
      }
    }
    localStringBuilder.append(")");
    if (Log.isLoggable("PeopleClientCall", 2)) {
      new Throwable("STACK TRACE (It's not crash!)");
    }
  }
  
  public static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, Object paramObject)
  {
    int i2 = 0;
    if ((paramObject instanceof List))
    {
      paramObject = ((List)paramObject).iterator();
      while (((Iterator)paramObject).hasNext()) {
        a(paramStringBuilder, paramInt, paramString, ((Iterator)paramObject).next());
      }
    }
    paramStringBuilder.append('\n');
    int i1 = 0;
    while (i1 < paramInt)
    {
      paramStringBuilder.append(' ');
      i1 += 1;
    }
    paramStringBuilder.append(paramString);
    if ((paramObject instanceof String))
    {
      paramStringBuilder.append(": \"").append(a(lvk.a((String)paramObject))).append('"');
      return;
    }
    if ((paramObject instanceof lvk))
    {
      paramStringBuilder.append(": \"").append(a((lvk)paramObject)).append('"');
      return;
    }
    if ((paramObject instanceof lvy))
    {
      paramStringBuilder.append(" {");
      a((lvy)paramObject, paramStringBuilder, paramInt + 2);
      paramStringBuilder.append("\n");
      i1 = i2;
      while (i1 < paramInt)
      {
        paramStringBuilder.append(' ');
        i1 += 1;
      }
      paramStringBuilder.append("}");
      return;
    }
    paramStringBuilder.append(": ").append(paramObject.toString());
  }
  
  public static void a(ByteBuffer paramByteBuffer, String paramString)
  {
    paramString = new RandomAccessFile(paramString, "rw").getChannel();
    try
    {
      paramString.write(paramByteBuffer);
      paramByteBuffer.position(0);
      return;
    }
    finally
    {
      paramString.close();
    }
  }
  
  public static void a(ArrayList<View> paramArrayList, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      if (!(paramView instanceof ViewGroup)) {
        break label61;
      }
      paramView = (ViewGroup)paramView;
      if (!paramView.isTransitionGroup()) {
        break label33;
      }
      paramArrayList.add(paramView);
    }
    for (;;)
    {
      return;
      label33:
      int i2 = paramView.getChildCount();
      int i1 = 0;
      while (i1 < i2)
      {
        a(paramArrayList, paramView.getChildAt(i1));
        i1 += 1;
      }
    }
    label61:
    paramArrayList.add(paramView);
  }
  
  private static void a(List<Asset> paramList, grp paramgrp, String paramString, gbd paramgbd)
  {
    int i1 = a;
    if (i1 == 14)
    {
      paramgrp.a(paramString, null);
      return;
    }
    Object localObject1 = b;
    if (i1 == 1)
    {
      paramgrp.a(paramString, a);
      return;
    }
    if (i1 == 11)
    {
      paramgrp.a(paramString, k);
      return;
    }
    if (i1 == 12)
    {
      paramgrp.a(paramString, l);
      return;
    }
    if (i1 == 15)
    {
      paramgrp.a(paramString, m);
      return;
    }
    if (i1 == 2)
    {
      paramgrp.a(paramString, b);
      return;
    }
    if (i1 == 3)
    {
      paramgrp.a(paramString, c);
      return;
    }
    if (i1 == 4)
    {
      paramgrp.a(paramString, d);
      return;
    }
    if (i1 == 5)
    {
      paramgrp.a(paramString, e);
      return;
    }
    if (i1 == 6)
    {
      paramgrp.a(paramString, f);
      return;
    }
    if (i1 == 7)
    {
      paramgrp.a(paramString, (byte)g);
      return;
    }
    if (i1 == 8)
    {
      paramgrp.a(paramString, h);
      return;
    }
    if (i1 == 13)
    {
      if (paramList == null) {
        throw new RuntimeException("populateBundle: unexpected type for: " + paramString);
      }
      paramgrp.a(paramString, (Asset)paramList.get((int)n));
      return;
    }
    if (i1 == 9)
    {
      paramgbd = new grp();
      localObject1 = i;
      int i2 = localObject1.length;
      i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        a(paramList, paramgbd, a, b);
        i1 += 1;
      }
      paramgrp.a(paramString, paramgbd);
      return;
    }
    if (i1 == 10)
    {
      i1 = a(paramString, j);
      paramList = a(paramList, (gbe)localObject1, i1);
      if (i1 == 14)
      {
        paramgrp.c(paramString, paramList);
        return;
      }
      if (i1 == 9)
      {
        paramgrp.a(paramString, paramList);
        return;
      }
      if (i1 == 2)
      {
        paramgrp.c(paramString, paramList);
        return;
      }
      if (i1 == 6)
      {
        paramgrp.b(paramString, paramList);
        return;
      }
      throw new IllegalStateException("Unexpected typeOfArrayList: " + i1);
    }
    throw new RuntimeException("populateBundle: unexpected type " + i1);
  }
  
  public static void a(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = paramView.getTransitionName();
      if (str != null) {
        paramMap.put(str, paramView);
      }
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int i2 = paramView.getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          a(paramMap, paramView.getChildAt(i1));
          i1 += 1;
        }
      }
    }
  }
  
  public static <K, V> void a(kwt<K, V> paramkwt, ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(paramkwt.b().size());
    paramkwt = paramkwt.b().entrySet().iterator();
    while (paramkwt.hasNext())
    {
      Object localObject = (Map.Entry)paramkwt.next();
      paramObjectOutputStream.writeObject(((Map.Entry)localObject).getKey());
      paramObjectOutputStream.writeInt(((Collection)((Map.Entry)localObject).getValue()).size());
      localObject = ((Collection)((Map.Entry)localObject).getValue()).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramObjectOutputStream.writeObject(((Iterator)localObject).next());
      }
    }
  }
  
  public static void a(lwp paramlwp, StringBuilder paramStringBuilder, int paramInt)
  {
    Object localObject2 = new HashMap();
    Object localObject1 = paramlwp.getClass().getDeclaredMethods();
    int i2 = localObject1.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localObject3 = localObject1[i1];
      if (((Method)localObject3).getParameterTypes().length == 0) {
        ((Map)localObject2).put(((Method)localObject3).getName(), localObject3);
      }
      i1 += 1;
    }
    Object localObject3 = paramlwp.getClass().getDeclaredFields();
    i2 = localObject3.length;
    i1 = 0;
    if (i1 < i2)
    {
      localObject1 = localObject3[i1].getName();
      String str1;
      String str2;
      if (((String)localObject1).endsWith("_FIELD_NUMBER"))
      {
        str1 = ((String)localObject1).substring(0, ((String)localObject1).length() - 13);
        str2 = J(str1);
        localObject1 = String.valueOf(str2);
        if (((String)localObject1).length() == 0) {
          break label267;
        }
        localObject1 = "get".concat((String)localObject1);
        label158:
        Method localMethod = (Method)((Map)localObject2).get(localObject1);
        localObject1 = String.valueOf(str2);
        if (((String)localObject1).length() == 0) {
          break label282;
        }
        localObject1 = "has".concat((String)localObject1);
        label197:
        localObject1 = (Method)((Map)localObject2).get(localObject1);
        if ((localMethod == null) || (localObject1 == null)) {
          break label297;
        }
        if (((Boolean)lvy.a((Method)localObject1, paramlwp, new Object[0])).booleanValue()) {
          a(paramStringBuilder, paramInt, str1.toLowerCase(), lvy.a(localMethod, paramlwp, new Object[0]));
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        label267:
        localObject1 = new String("get");
        break label158;
        label282:
        localObject1 = new String("has");
        break label197;
        label297:
        localObject1 = (Method)((Map)localObject2).get(String.valueOf(str2).length() + 7 + "get" + str2 + "List");
        if (localObject1 != null) {
          a(paramStringBuilder, paramInt, str1.toLowerCase(), lvy.a((Method)localObject1, paramlwp, new Object[0]));
        }
      }
    }
    if ((paramlwp instanceof lwc))
    {
      localObject1 = d.d();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        i1 = ((lvx)((Map.Entry)localObject2).getKey()).a();
        a(paramStringBuilder, paramInt, 13 + "[" + i1 + "]", ((Map.Entry)localObject2).getValue());
      }
    }
    if (b != null) {
      b.a(paramStringBuilder, paramInt);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramObject));
    }
  }
  
  public static void a(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
    }
  }
  
  private static void a(byte[] paramArrayOfByte, StringBuffer paramStringBuffer)
  {
    if (paramArrayOfByte == null)
    {
      paramStringBuffer.append("\"\"");
      return;
    }
    paramStringBuffer.append('"');
    int i1 = 0;
    if (i1 < paramArrayOfByte.length)
    {
      int i2 = paramArrayOfByte[i1] & 0xFF;
      if ((i2 == 92) || (i2 == 34)) {
        paramStringBuffer.append('\\').append((char)i2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if ((i2 >= 32) && (i2 < 127)) {
          paramStringBuffer.append((char)i2);
        } else {
          paramStringBuffer.append(String.format("\\%03o", new Object[] { Integer.valueOf(i2) }));
        }
      }
    }
    paramStringBuffer.append('"');
  }
  
  public static boolean a(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    Object localObject = dvd.e(paramInt);
    aen.a(localObject);
    localObject = ((bfd)localObject).s().iterator();
    while (((Iterator)localObject).hasNext()) {
      if (paramString.equals((String)((Iterator)localObject).next())) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L)) {}
    while (paramLong2 - paramLong1 <= -900000L) {
      return false;
    }
    return true;
  }
  
  private static boolean a(acv paramacv, long paramLong, int paramInt)
  {
    if (paramLong >= 0L) {
      return paramInt < paramLong;
    }
    return paramacv.b(paramInt);
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    bfd localbfd = dvd.e(paramInt);
    if (localbfd == null) {
      return false;
    }
    if ((!localbfd.t()) && (R(paramContext)))
    {
      if (a(paramContext, "babel_callerid_permit_for_all_accounts_if_any_enabled", false))
      {
        paramContext = ((hpz)ilh.a(paramContext, hpz.class)).a().iterator();
        while (paramContext.hasNext())
        {
          localbfd = dvd.e(a((Integer)paramContext.next(), 0));
          aen.a(localbfd);
          if (localbfd.D()) {
            return true;
          }
        }
        return false;
      }
      return localbfd.D();
    }
    return false;
  }
  
  public static boolean a(Context paramContext, int paramInt, cgs paramcgs)
  {
    LinkedList localLinkedList = f(paramContext, paramInt);
    Iterator localIterator = localLinkedList.iterator();
    int i1 = localLinkedList.size();
    ezi.c("Babel_telephony", 63 + "TeleIncomingWifiCallLog.cancelInvite, invite count: " + i1, new Object[0]);
    boolean bool = false;
    if (localIterator.hasNext())
    {
      if (!nexta.equals(paramcgs)) {
        break label113;
      }
      localIterator.remove();
      bool = true;
    }
    label113:
    for (;;)
    {
      break;
      if (bool) {
        a(paramContext, paramInt, localLinkedList);
      }
      return bool;
    }
  }
  
  public static boolean a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      if ((!a(paramContext, "babel_hutch_lte_incoming_enabled", false)) || ((paramInt != 4) && (paramInt != 5))) {}
    }
    while (((a(paramContext, "babel_hutch_lte_outgoing_enabled", true)) && ((paramInt == 4) || (paramInt == 5))) || (a(paramContext, "babel_hutch_experience_for_us", false)))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public static boolean a(Context paramContext, est paramest)
  {
    if (paramest.c() != 2)
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowEmergencyCallbackOverLte, not on T-Mobile", new Object[0]);
      return false;
    }
    long l1 = eut.a(paramContext).l();
    if (l1 == 0L)
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowEmergencyCallbackOverLte, user never made an emergency call over LTE", new Object[0]);
      return false;
    }
    l1 = System.currentTimeMillis() - l1;
    long l2 = a(paramContext, "babel_lte_fallback_for_emergency_callback_duration_millis", 86400000L);
    if (l1 > l2)
    {
      paramContext = String.valueOf("TeleWifiCallThreshold.shouldAllowEmergencyCallbackOverLte, last emergency call over LTE was: ");
      ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 85 + paramContext + l1 + " millis ago which is greater than threshold: " + l2, new Object[0]);
      return false;
    }
    return true;
  }
  
  public static boolean a(Context paramContext, est paramest, PredictedNetworkQuality paramPredictedNetworkQuality, erc paramerc)
  {
    if (paramPredictedNetworkQuality == null)
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasNetworkQualityForNewWifiCall, no prediction, assuming good network", new Object[0]);
      return true;
    }
    paramContext = a(paramContext, paramest, e);
    long l1;
    if ((c >= 0) && (c > f))
    {
      paramest = String.valueOf("TeleWifiCallThreshold.hasNetworkQualityForNewWifiCall, predicted latency ");
      int i1 = c;
      l1 = f;
      ezi.c("Babel_telephony", String.valueOf(paramest).length() + 62 + paramest + i1 + "micros exceeds threshold " + l1 + "micros", new Object[0]);
      return false;
    }
    if ((d >= 0L) && (d << 3 < g))
    {
      l1 = d;
      ezi.c("Babel_telephony", 110 + "TeleWifiCallThreshold.hasNetworkQualityForNewWifiCall, down throughput " + l1 + "Bps below threshold", new Object[0]);
      return false;
    }
    paramContext = String.valueOf("TeleWifiCallThreshold.hasNetworkQualityForNewWifiCall, has good network quality ");
    paramest = String.valueOf(paramPredictedNetworkQuality);
    ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 0 + String.valueOf(paramest).length() + paramContext + paramest, new Object[0]);
    return true;
  }
  
  public static boolean a(Context paramContext, est paramest, erc paramerc, eum parameum, String paramString)
  {
    euf localeuf = a(paramContext, paramest, e);
    ezi.c("Babel_telephony", String.format(Locale.US, "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, network status is: %s\ncell signal is: %s\nwifi signal is: %s\nthreshold is: %s", new Object[] { paramest, paramerc, parameum, localeuf }), new Object[0]);
    if ((Build.VERSION.SDK_INT < 23) && (U(paramContext)))
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, phone is in power save mode; WiFi is not stable enough for calls.", new Object[0]);
      return false;
    }
    if (paramerc.a())
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, no cell service", new Object[0]);
      return a;
    }
    if (ezm.j(paramString))
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, possible emergency call", new Object[0]);
      return a;
    }
    if (paramerc.a(a))
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, cell is better than threshold", new Object[0]);
      return false;
    }
    if (!parameum.a(b, d))
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, wifi is below threshold", new Object[0]);
      return false;
    }
    ezi.c("Babel_telephony", "TeleWifiCallThreshold.hasGoodSignalForNewWifiCall, returning true", new Object[0]);
    return true;
  }
  
  public static boolean a(Context paramContext, est paramest, eum parameum, int paramInt)
  {
    paramContext = a(paramContext, paramest, paramInt);
    if (!parameum.a(c, e))
    {
      Locale localLocale = Locale.US;
      String str = String.valueOf("TeleWifiCallThreshold.hasGoodSignalForOngoingWifiCall, network status is: ");
      paramest = String.valueOf(paramest.toString());
      ezi.c("Babel_telephony", String.format(localLocale, String.valueOf(str).length() + 93 + String.valueOf(paramest).length() + str + paramest + "wifi signal is: %s\nwhich is below wifi signal threshold: %d%% or link speed threshold: %dMbps", new Object[] { parameum, Integer.valueOf(c), Integer.valueOf(e) }), new Object[0]);
      return false;
    }
    return true;
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    return ((bdp)ilh.a(paramContext, bdp.class)).a(paramString, paramBoolean);
  }
  
  public static boolean a(Resources paramResources)
  {
    if (paramResources == null) {}
    label81:
    label86:
    label89:
    for (;;)
    {
      return false;
      int i1;
      if ((getConfigurationscreenLayout & 0xF) > 3)
      {
        i1 = 1;
        if ((!o(11)) || (i1 == 0))
        {
          paramResources = paramResources.getConfiguration();
          if (!o(13)) {
            break label86;
          }
          if (((screenLayout & 0xF) > 3) || (smallestScreenWidthDp < 600)) {
            break label81;
          }
          i1 = 1;
        }
      }
      for (;;)
      {
        if (i1 == 0) {
          break label89;
        }
        return true;
        i1 = 0;
        break;
        i1 = 0;
        continue;
        i1 = 0;
      }
    }
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()));
  }
  
  private static boolean a(Transition paramTransition)
  {
    return (!b(paramTransition.getTargetIds())) || (!b(paramTransition.getTargetNames())) || (!b(paramTransition.getTargetTypes()));
  }
  
  public static <T> boolean a(SparseArray<T> paramSparseArray)
  {
    return paramSparseArray.size() == 0;
  }
  
  public static <T> boolean a(SparseArray<T> paramSparseArray, int paramInt)
  {
    return paramSparseArray.indexOfKey(paramInt) >= 0;
  }
  
  public static <T> boolean a(SparseArray<T> paramSparseArray, T paramT)
  {
    if (paramT == null) {}
    for (;;)
    {
      return false;
      int i1 = 0;
      while (i1 < paramSparseArray.size())
      {
        if (paramT.equals(paramSparseArray.valueAt(i1))) {
          return true;
        }
        i1 += 1;
      }
    }
  }
  
  public static boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2)
  {
    try
    {
      boolean bool = paramViewParent.onNestedPreFling(paramView, paramFloat1, paramFloat2);
      return bool;
    }
    catch (AbstractMethodError paramView)
    {
      Log.e("ViewParentCompat", "ViewParent " + paramViewParent + " does not implement interface method onNestedPreFling", paramView);
    }
    return false;
  }
  
  public static boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    try
    {
      paramBoolean = paramViewParent.onNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean);
      return paramBoolean;
    }
    catch (AbstractMethodError paramView)
    {
      Log.e("ViewParentCompat", "ViewParent " + paramViewParent + " does not implement interface method onNestedFling", paramView);
    }
    return false;
  }
  
  public static boolean a(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    try
    {
      boolean bool = paramViewParent.onStartNestedScroll(paramView1, paramView2, paramInt);
      return bool;
    }
    catch (AbstractMethodError paramView1)
    {
      Log.e("ViewParentCompat", "ViewParent " + paramViewParent + " does not implement interface method onStartNestedScroll", paramView1);
    }
    return false;
  }
  
  public static boolean a(bdy parambdy, bkw parambkw)
  {
    switch (cpw.a[parambkw.ordinal()])
    {
    default: 
      parambdy = String.valueOf(parambkw);
      throw new IllegalArgumentException(String.valueOf(parambdy).length() + 27 + "Unknown conversation type: " + parambdy);
    case 1: 
      if (!parambdy.b().isEmpty()) {
        return false;
      }
    case 2: 
    case 3: 
      parambdy = parambdy.j().iterator();
      while (parambdy.hasNext()) {
        if (!((bdx)parambdy.next()).f()) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  public static boolean a(bfd parambfd, bhh parambhh)
  {
    Iterator localIterator = ilh.c(oJ, bhi.class).iterator();
    while (localIterator.hasNext()) {
      if (((bhi)localIterator.next()).a(parambfd.g(), parambhh)) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean a(cyx paramcyx)
  {
    return (!TextUtils.isEmpty(c)) && ((PhoneNumberUtils.isEmergencyNumber(c)) || (ezm.j(c)));
  }
  
  public static boolean a(djd paramdjd)
  {
    return PreferenceManager.getDefaultSharedPreferences(oJ).getBoolean(c, false);
  }
  
  public static boolean a(gpt paramgpt)
  {
    if (paramgpt == null) {
      return false;
    }
    if ((paramgpt instanceof fkk)) {
      return ((fkk)paramgpt).O_();
    }
    return true;
  }
  
  private static boolean a(hoo paramhoo, String paramString)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((paramhoo == hoo.d) || (paramhoo == hoo.e)) {
      bool1 = true;
    }
    int i2;
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramhoo != hoo.c);
      int i1 = 0;
      int i3;
      for (i2 = 0; i1 < paramString.length(); i2 = i3)
      {
        i3 = i2;
        if (Character.digit(paramString.charAt(i1), 10) != -1) {
          i3 = i2 + 1;
        }
        i1 += 1;
      }
      bool1 = bool2;
    } while (i2 <= 11);
    return true;
  }
  
  public static boolean a(iso paramiso, irg paramirg)
  {
    long l1 = paramirg.a();
    if (l1 == -1L) {
      return false;
    }
    paramiso.a(l1);
    return true;
  }
  
  public static boolean a(Boolean paramBoolean, boolean paramBoolean1)
  {
    if (paramBoolean == null) {
      return paramBoolean1;
    }
    return paramBoolean.booleanValue();
  }
  
  public static boolean a(Class<?> paramClass1, Class<?> paramClass2)
  {
    return (paramClass1.isAssignableFrom(paramClass2)) || (paramClass2.isAssignableFrom(paramClass1));
  }
  
  public static boolean a(Class paramClass, Type paramType, int paramInt, Set<Class> paramSet)
  {
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (paramInt == 0)
    {
      bool2 = bool1;
      if (!b(paramClass))
      {
        ezi.d("Babel", String.valueOf(paramClass.getSimpleName()).concat(" does not specify serialVersionUID"), new Object[0]);
        bool2 = false;
      }
    }
    bool1 = bool2;
    if (paramClass != List.class)
    {
      bool1 = bool2;
      if (paramClass != Set.class)
      {
        bool1 = bool2;
        if (paramClass != Map.class)
        {
          bool1 = bool2;
          if (paramClass != Collection.class)
          {
            bool1 = bool2;
            if (!(paramClass instanceof Serializable))
            {
              ezi.e("Babel", String.valueOf(paramClass.getSimpleName()).concat(" doesn't implement Serializable"), new Object[0]);
              bool1 = false;
            }
          }
        }
      }
    }
    bool2 = bool1;
    int i2;
    int i1;
    Object localObject;
    if ((paramType instanceof ParameterizedType))
    {
      paramType = ((ParameterizedType)paramType).getActualTypeArguments();
      i2 = paramType.length;
      i1 = 0;
      if (i1 < i2)
      {
        localObject = paramType[i1];
        if (!(localObject instanceof Class)) {
          break label419;
        }
        bool1 = a((Class)localObject, null, paramInt + 1, paramSet) & bool1;
      }
    }
    label419:
    for (;;)
    {
      i1 += 1;
      break;
      bool2 = bool1;
      try
      {
        paramClass.getDeclaredMethod("writeObject", new Class[] { ObjectOutputStream.class });
        paramClass.getDeclaredMethod("readObject", new Class[] { ObjectInputStream.class });
        if (!bool2) {
          ezi.e("Babel", String.valueOf(paramClass.getName()).concat(" may not be serializable"), new Object[0]);
        }
        return bool2;
      }
      catch (NoSuchMethodException paramType)
      {
        paramType = paramClass.getDeclaredFields();
        i2 = paramType.length;
        i1 = 0;
        for (bool1 = bool2;; bool1 = bool2)
        {
          bool2 = bool1;
          if (i1 >= i2) {
            break;
          }
          localObject = paramType[i1];
          int i3 = ((Field)localObject).getModifiers();
          bool2 = bool1;
          if (!Modifier.isStatic(i3))
          {
            bool2 = bool1;
            if (!Modifier.isTransient(i3))
            {
              bool2 = bool1;
              if (!((Field)localObject).getType().isPrimitive())
              {
                bool2 = bool1;
                if (((Field)localObject).getType() != String.class)
                {
                  bool1 &= a(((Field)localObject).getType(), ((Field)localObject).getGenericType(), paramInt + 1, paramSet);
                  bool2 = bool1;
                  if (!bool1) {
                    break;
                  }
                  bool2 = bool1;
                }
              }
            }
          }
          i1 += 1;
        }
      }
    }
  }
  
  public static boolean a(Object paramObject, float paramFloat)
  {
    ((EdgeEffect)paramObject).onPull(paramFloat);
    return true;
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private static boolean a(Method paramMethod, Object paramObject, Object... paramVarArgs)
  {
    try
    {
      paramMethod.invoke(paramObject, paramVarArgs);
      return true;
    }
    catch (Exception paramMethod)
    {
      Log.e("PackageStatsCapture", "invoke failed", paramMethod);
      return false;
    }
    catch (ExceptionInInitializerError paramMethod)
    {
      for (;;) {}
    }
  }
  
  public static boolean a(Type paramType)
  {
    return ((paramType instanceof GenericArrayType)) || (((paramType instanceof Class)) && (((Class)paramType).isArray()));
  }
  
  public static boolean a(Comparator<?> paramComparator, Iterable<?> paramIterable)
  {
    fii.a(paramComparator);
    fii.a(paramIterable);
    if ((paramIterable instanceof SortedSet))
    {
      Comparator localComparator = ((SortedSet)paramIterable).comparator();
      paramIterable = localComparator;
      if (localComparator != null) {}
    }
    for (paramIterable = kxf.a;; paramIterable = ((kyc)paramIterable).comparator())
    {
      return paramComparator.equals(paramIterable);
      if (!(paramIterable instanceof kyc)) {
        break;
      }
    }
    return false;
  }
  
  public static boolean a(List<dcm> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (!nextb) {
        return false;
      }
    }
    return true;
  }
  
  private static boolean a(List<View> paramList, View paramView, int paramInt)
  {
    boolean bool2 = false;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < paramInt)
      {
        if (paramList.get(i1) == paramView) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = false;
    if (a(paramBoolean1, paramBoolean2, false) == 0) {
      bool = true;
    }
    return bool;
  }
  
  public static byte[] a(Parcelable paramParcelable)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeParcelable(paramParcelable, 0);
    paramParcelable = localParcel.marshall();
    localParcel.recycle();
    return paramParcelable;
  }
  
  public static byte[] a(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer == null) {
      return new byte[0];
    }
    if (paramByteBuffer.hasArray())
    {
      i1 = paramByteBuffer.arrayOffset();
      if ((i1 == 0) && (paramByteBuffer.array().length == paramByteBuffer.limit())) {
        return paramByteBuffer.array();
      }
      return Arrays.copyOfRange(paramByteBuffer.array(), i1, paramByteBuffer.limit() + i1);
    }
    byte[] arrayOfByte = new byte[paramByteBuffer.limit()];
    int i1 = paramByteBuffer.position();
    paramByteBuffer.position(0);
    paramByteBuffer.get(arrayOfByte);
    paramByteBuffer.position(i1);
    return arrayOfByte;
  }
  
  private static RemoteInput[] a(ek[] paramArrayOfek)
  {
    if (paramArrayOfek == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfek.length];
    int i1 = 0;
    while (i1 < paramArrayOfek.length)
    {
      ek localek = paramArrayOfek[i1];
      arrayOfRemoteInput[i1] = new RemoteInput.Builder(localek.a()).setLabel(localek.b()).setChoices(localek.c()).setAllowFreeFormInput(localek.d()).addExtras(localek.e()).build();
      i1 += 1;
    }
    return arrayOfRemoteInput;
  }
  
  public static cyx[] a(jzh[] paramArrayOfjzh, dtt paramdtt)
  {
    if ((paramArrayOfjzh == null) || (paramArrayOfjzh.length == 0)) {
      return null;
    }
    cyx[] arrayOfcyx = new cyx[paramArrayOfjzh.length];
    int i1;
    int i2;
    label35:
    jzh localjzh;
    if (paramdtt != null)
    {
      paramdtt = d;
      int i3 = paramArrayOfjzh.length;
      i1 = 0;
      i2 = 0;
      if (i1 >= i3) {
        break label92;
      }
      localjzh = paramArrayOfjzh[i1];
      if (!a(g, false)) {
        break label79;
      }
      arrayOfcyx[i2] = null;
    }
    for (;;)
    {
      i2 += 1;
      i1 += 1;
      break label35;
      paramdtt = null;
      break;
      label79:
      arrayOfcyx[i2] = a(localjzh, paramdtt);
    }
    label92:
    c(Arrays.asList(arrayOfcyx));
    return arrayOfcyx;
  }
  
  private static gbc[] a(grp paramgrp, List<Asset> paramList)
  {
    Object localObject1 = new TreeSet(paramgrp.b());
    gbc[] arrayOfgbc = new gbc[((TreeSet)localObject1).size()];
    localObject1 = ((TreeSet)localObject1).iterator();
    int i1 = 0;
    while (((Iterator)localObject1).hasNext())
    {
      String str = (String)((Iterator)localObject1).next();
      Object localObject2 = paramgrp.a(str);
      arrayOfgbc[i1] = new gbc();
      a = str;
      b = a(paramList, localObject2);
      i1 += 1;
    }
    return arrayOfgbc;
  }
  
  public static int b(ContentResolver paramContentResolver, Uri paramUri)
  {
    int i1;
    if ((ipk.b(paramUri)) || (ipk.a(paramUri)))
    {
      if (ipk.a(paramUri)) {}
      for (paramContentResolver = paramUri.getPath(); TextUtils.isEmpty(paramContentResolver); paramContentResolver = ipk.a(paramContentResolver, paramUri))
      {
        if (Log.isLoggable("MediaStoreUtil", 6))
        {
          paramContentResolver = String.valueOf(paramUri);
          Log.e("MediaStoreUtil", String.valueOf(paramContentResolver).length() + 25 + "Found null path for URI: " + paramContentResolver);
        }
        return 0;
      }
      i1 = I(paramContentResolver);
    }
    Object localObject;
    for (;;)
    {
      return i1;
      localObject = null;
      ContentResolver localContentResolver = null;
      try
      {
        paramContentResolver = paramContentResolver.openInputStream(paramUri);
        localContentResolver = paramContentResolver;
        localObject = paramContentResolver;
        int i2 = a(paramContentResolver);
        i1 = i2;
        if (paramContentResolver != null) {
          try
          {
            paramContentResolver.close();
            i1 = i2;
          }
          catch (IOException paramContentResolver)
          {
            i1 = i2;
          }
        }
      }
      catch (FileNotFoundException paramContentResolver)
      {
        localObject = localContentResolver;
        Log.e("MediaStoreUtil", "File not found", paramContentResolver);
        if (localContentResolver != null) {}
        try
        {
          localContentResolver.close();
          i1 = 0;
        }
        catch (IOException paramContentResolver)
        {
          i1 = 0;
        }
      }
      finally
      {
        if (localObject == null) {}
      }
    }
    try
    {
      ((InputStream)localObject).close();
      throw paramContentResolver;
    }
    catch (IOException paramUri)
    {
      for (;;) {}
    }
  }
  
  public static int b(View paramView)
  {
    if (!u) {}
    try
    {
      Field localField = View.class.getDeclaredField("mMinWidth");
      t = localField;
      localField.setAccessible(true);
      u = true;
      if (t != null) {
        try
        {
          int i1 = ((Integer)t.get(paramView)).intValue();
          return i1;
        }
        catch (Exception paramView) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  public static int b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2) {
      return 0;
    }
    if (paramBoolean1) {
      return 1;
    }
    return -1;
  }
  
  private static long b(long paramLong1, long paramLong2)
  {
    TimeZone localTimeZone = TimeZone.getDefault();
    paramLong1 = (localTimeZone.getOffset(paramLong1) + paramLong1) / 86400000L;
    return (localTimeZone.getOffset(paramLong2) + paramLong2) / 86400000L - paramLong1;
  }
  
  public static long b(Context paramContext, int paramInt)
  {
    paramContext = (hpz)ilh.a(paramContext, hpz.class);
    if (!paramContext.c(paramInt)) {
      return 0L;
    }
    return paramContext.a(paramInt).a("last_invite_seen_timestamp", 0L);
  }
  
  public static Intent b(int paramInt, String paramString)
  {
    Intent localIntent = new Intent(oJ, DebugActivity.class);
    localIntent.putExtra("account_id", paramInt);
    if (paramString != null) {
      localIntent.putExtra("conversation_id", paramString);
    }
    return localIntent;
  }
  
  public static Intent b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(1);
    localIntent.putExtra("SingleItemOnly", true);
    localIntent.setDataAndType(Uri.parse(paramString1), paramString2);
    return localIntent;
  }
  
  public static Bitmap b(Activity paramActivity)
  {
    FutureTask localFutureTask = new FutureTask(new fyy(paramActivity));
    paramActivity.runOnUiThread(localFutureTask);
    try
    {
      paramActivity = (Bitmap)localFutureTask.get();
      return paramActivity;
    }
    catch (InterruptedException paramActivity)
    {
      return null;
    }
    catch (ExecutionException paramActivity)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  private static Bitmap b(ContentResolver paramContentResolver, Uri paramUri, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: sipush 2048
    //   6: istore 6
    //   8: aload 8
    //   10: astore 7
    //   12: new 3562	android/graphics/BitmapFactory$Options
    //   15: dup
    //   16: invokespecial 3563	android/graphics/BitmapFactory$Options:<init>	()V
    //   19: astore 9
    //   21: aload 8
    //   23: astore 7
    //   25: aload 9
    //   27: iload_2
    //   28: sipush 2048
    //   31: idiv
    //   32: iload_3
    //   33: sipush 2048
    //   36: idiv
    //   37: invokestatic 7373	java/lang/Math:max	(II)I
    //   40: putfield 3566	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   43: aload 8
    //   45: astore 7
    //   47: aload_0
    //   48: aload_1
    //   49: invokevirtual 3577	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   52: astore_0
    //   53: aload_0
    //   54: astore 7
    //   56: aload_0
    //   57: aconst_null
    //   58: aload 9
    //   60: invokestatic 3598	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   63: astore 8
    //   65: aload_0
    //   66: astore 7
    //   68: iload_2
    //   69: i2f
    //   70: iload_3
    //   71: i2f
    //   72: fdiv
    //   73: fstore 4
    //   75: iload_2
    //   76: iload_3
    //   77: if_icmple +121 -> 198
    //   80: aload_0
    //   81: astore 7
    //   83: ldc_w 7374
    //   86: fload 4
    //   88: fdiv
    //   89: f2i
    //   90: istore 5
    //   92: aload_0
    //   93: astore 7
    //   95: aload 8
    //   97: iload 6
    //   99: iload 5
    //   101: iconst_1
    //   102: invokestatic 3369	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   105: astore_1
    //   106: aload_0
    //   107: astore 7
    //   109: aload 8
    //   111: invokevirtual 3372	android/graphics/Bitmap:recycle	()V
    //   114: aload_0
    //   115: astore 7
    //   117: ldc_w 3603
    //   120: iconst_4
    //   121: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   124: ifeq +64 -> 188
    //   127: aload_0
    //   128: astore 7
    //   130: new 2382	java/lang/StringBuilder
    //   133: dup
    //   134: bipush 79
    //   136: invokespecial 2388	java/lang/StringBuilder:<init>	(I)V
    //   139: ldc_w 7376
    //   142: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: iload_2
    //   146: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   149: ldc_w 3610
    //   152: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: iload_3
    //   156: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   159: ldc_w 3612
    //   162: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: iload 6
    //   167: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   170: ldc_w 3610
    //   173: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: iload 5
    //   178: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   181: ldc_w 3617
    //   184: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: pop
    //   188: aload_0
    //   189: ifnull +7 -> 196
    //   192: aload_0
    //   193: invokevirtual 3573	java/io/InputStream:close	()V
    //   196: aload_1
    //   197: areturn
    //   198: iload_2
    //   199: iload_3
    //   200: if_icmpge +20 -> 220
    //   203: fload 4
    //   205: ldc_w 7374
    //   208: fmul
    //   209: f2i
    //   210: istore 6
    //   212: sipush 2048
    //   215: istore 5
    //   217: goto -125 -> 92
    //   220: sipush 2048
    //   223: istore 5
    //   225: goto -133 -> 92
    //   228: astore_0
    //   229: aload 7
    //   231: ifnull +8 -> 239
    //   234: aload 7
    //   236: invokevirtual 3573	java/io/InputStream:close	()V
    //   239: aload_0
    //   240: athrow
    //   241: astore_0
    //   242: aload_1
    //   243: areturn
    //   244: astore_1
    //   245: goto -6 -> 239
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	248	0	paramContentResolver	ContentResolver
    //   0	248	1	paramUri	Uri
    //   0	248	2	paramInt1	int
    //   0	248	3	paramInt2	int
    //   73	131	4	f1	float
    //   90	134	5	i1	int
    //   6	205	6	i2	int
    //   10	225	7	localObject	Object
    //   1	109	8	localBitmap	Bitmap
    //   19	40	9	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   12	21	228	finally
    //   25	43	228	finally
    //   47	53	228	finally
    //   56	65	228	finally
    //   68	75	228	finally
    //   83	92	228	finally
    //   95	106	228	finally
    //   109	114	228	finally
    //   117	127	228	finally
    //   130	188	228	finally
    //   192	196	241	java/io/IOException
    //   234	239	244	java/io/IOException
  }
  
  public static Bitmap b(Bitmap paramBitmap)
  {
    int i3 = 0;
    if (paramBitmap == null) {
      return null;
    }
    int i4 = paramBitmap.getWidth();
    int i1 = paramBitmap.getHeight();
    int i2;
    if (i4 >= i1)
    {
      i3 = i4 / 2 - i1 / 2;
      i2 = 0;
    }
    for (;;)
    {
      Bitmap localBitmap = Bitmap.createBitmap(i1, i1, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint(1);
      localPaint.setColor(-16777216);
      localCanvas.drawCircle(i1 / 2, i1 / 2, i1 / 2, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, i3, i2, localPaint);
      return localBitmap;
      i2 = i1 / 2 - i4 / 2;
      i1 = i4;
    }
  }
  
  public static PorterDuff.Mode b(int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return null;
      return PorterDuff.Mode.SRC_OVER;
      return PorterDuff.Mode.SRC_IN;
      return PorterDuff.Mode.SRC_ATOP;
      return PorterDuff.Mode.MULTIPLY;
      return PorterDuff.Mode.SCREEN;
    } while (Build.VERSION.SDK_INT < 11);
    return PorterDuff.Mode.valueOf("ADD");
  }
  
  public static Uri b(ContentResolver paramContentResolver, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      paramContentResolver = paramContentResolver.insert(paramUri, paramContentValues);
      return paramContentResolver;
    }
    catch (SQLiteException paramContentResolver)
    {
      return null;
    }
    catch (IllegalArgumentException paramContentResolver) {}
    return null;
  }
  
  public static InputMethodManager b(Context paramContext)
  {
    return (InputMethodManager)paramContext.getSystemService("input_method");
  }
  
  public static czb b(Bundle paramBundle)
  {
    String str = paramBundle.getString("inviter_gaia_id");
    paramBundle = paramBundle.getString("inviter_chat_id");
    if ((str != null) || (paramBundle != null)) {
      return new czb(str, paramBundle);
    }
    return null;
  }
  
  public static ihb b(bfd parambfd, String paramString)
  {
    return b(new bfz(oJ, parambfd.g()).H(paramString));
  }
  
  public static ihb b(Collection<cyx> paramCollection)
  {
    axm localaxm = ihb.newBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      cyx localcyx = (cyx)paramCollection.next();
      switch (dyq.a[a.ordinal()])
      {
      default: 
        break;
      case 1: 
      case 2: 
        localaxm.a(axt.newBuilder().a(dtw.a(localcyx)).a(e).b(h).a());
        break;
      case 3: 
        axo localaxo = axn.newBuilder();
        localaxo.a(d);
        localaxm.a(localaxo.a());
      }
    }
    return localaxm.a();
  }
  
  public static CharSequence b(long paramLong)
  {
    long l1 = System.currentTimeMillis();
    long l2 = Math.abs(l1 - paramLong);
    Context localContext = oJ;
    int i1;
    if (l2 < 3600000L)
    {
      paramLong = l2 / 60000L;
      i1 = rL;
    }
    for (;;)
    {
      return String.format(localContext.getResources().getQuantityString(i1, (int)paramLong), new Object[] { Long.valueOf(paramLong) });
      if (l2 < 86400000L)
      {
        paramLong = l2 / 3600000L;
        i1 = rJ;
      }
      else
      {
        if (l2 >= 604800000L) {
          break;
        }
        paramLong = b(paramLong, l1);
        i1 = rI;
      }
    }
    return DateUtils.formatDateRange(localContext, paramLong, paramLong, 327680);
  }
  
  public static CharSequence b(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    return a(paramLong1, paramLong2, false, paramBoolean);
  }
  
  public static <T> T b(T paramT, Object paramObject)
  {
    if (paramT == null) {
      throw new NullPointerException(String.valueOf(paramObject));
    }
    return paramT;
  }
  
  public static String b(bfd parambfd)
  {
    return ((ekq)ilh.a(oJ, ekq.class)).a("hangout_sound_key", parambfd.g());
  }
  
  public static String b(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return ezi.b(paramObject.toString());
  }
  
  private static String b(String paramString, Object... paramVarArgs)
  {
    String str = paramString;
    if (paramVarArgs != null)
    {
      str = paramString;
      if (paramVarArgs.length != 0) {
        str = String.format(Locale.US, paramString, paramVarArgs);
      }
    }
    return str;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    Charset localCharset = iqw.f;
    if (paramArrayOfByte == null) {
      return null;
    }
    return new String(paramArrayOfByte, localCharset);
  }
  
  private static Throwable b(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0)) {
      return null;
    }
    paramArrayOfObject = paramArrayOfObject[(paramArrayOfObject.length - 1)];
    if (!(paramArrayOfObject instanceof Throwable)) {
      return null;
    }
    return (Throwable)paramArrayOfObject;
  }
  
  public static Type b(Type paramType)
  {
    if ((paramType instanceof GenericArrayType)) {
      return ((GenericArrayType)paramType).getGenericComponentType();
    }
    return ((Class)paramType).getComponentType();
  }
  
  public static <E> Collection<E> b(Iterable<E> paramIterable)
  {
    if ((paramIterable instanceof Collection)) {
      return (Collection)paramIterable;
    }
    return aen.a(paramIterable.iterator());
  }
  
  private static lcf b(cyx paramcyx)
  {
    lcf locallcf = new lcf();
    a = ezm.l(c);
    return locallcf;
  }
  
  public static void b()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      Trace.endSection();
    }
  }
  
  public static void b(int paramInt, String paramString1, String paramString2)
  {
    int i2 = 0;
    for (int i1 = paramString2.indexOf('\n', 0); i1 != -1; i1 = paramString2.indexOf('\n', i2))
    {
      Log.println(paramInt, paramString1, paramString2.substring(i2, i1));
      i2 = i1 + 1;
    }
    Log.println(paramInt, paramString1, paramString2.substring(i2));
  }
  
  public static void b(Intent paramIntent)
  {
    int i1 = paramIntent.getIntExtra("opened_from_impression", 0);
    if (i1 > 0)
    {
      int i2 = paramIntent.getIntExtra("account_id", -1);
      hbs.b("Account ID is invalid", Integer.valueOf(i2), Integer.valueOf(-1));
      a(dvd.e(i2), i1);
    }
  }
  
  public static void b(Parcel paramParcel, int paramInt)
  {
    paramParcel.setDataPosition(a(paramParcel, paramInt) + paramParcel.dataPosition());
  }
  
  public static void b(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    if (paramInt2 >= 65535)
    {
      paramParcel.writeInt(0xFFFF0000 | paramInt1);
      paramParcel.writeInt(paramInt2);
      return;
    }
    paramParcel.writeInt(paramInt2 << 16 | paramInt1);
  }
  
  public static void b(boolean paramBoolean)
  {
    ;
    if (localList == null) {
      return;
    }
    int i1 = p(paramBoolean, i1);
    paramBoolean.writeStringList(localList);
    q(paramBoolean, i1);
  }
  
  public static void b(djd paramdjd)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(oJ).edit();
    localEditor.putBoolean(c, true);
    localEditor.apply();
  }
  
  public static void b(Object paramObject, ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    paramObject = (Transition)paramObject;
    int i2;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      i2 = ((TransitionSet)paramObject).getTransitionCount();
      while (i1 < i2)
      {
        b(((TransitionSet)paramObject).getTransitionAt(i1), paramArrayList);
        i1 += 1;
      }
    }
    if ((!a((Transition)paramObject)) && (b(((Transition)paramObject).getTargets())))
    {
      i2 = paramArrayList.size();
      i1 = 0;
      while (i1 < i2)
      {
        ((Transition)paramObject).addTarget((View)paramArrayList.get(i1));
        i1 += 1;
      }
    }
  }
  
  public static void b(Runnable paramRunnable)
  {
    y().removeCallbacks(paramRunnable);
    a(paramRunnable);
  }
  
  private static void b(String paramString, Object paramObject, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2)
  {
    if (paramObject != null)
    {
      if (!(paramObject instanceof lyi)) {
        break label486;
      }
      int i4 = paramStringBuffer1.length();
      if (paramString != null)
      {
        paramStringBuffer2.append(paramStringBuffer1).append(K(paramString)).append(" <\n");
        paramStringBuffer1.append("  ");
      }
      Class localClass = paramObject.getClass();
      Object localObject1 = localClass.getFields();
      int i5 = localObject1.length;
      int i1 = 0;
      Object localObject3;
      while (i1 < i5)
      {
        Object localObject4 = localObject1[i1];
        i2 = ((Field)localObject4).getModifiers();
        localObject2 = ((Field)localObject4).getName();
        if ((!"cachedSize".equals(localObject2)) && ((i2 & 0x1) == 1) && ((i2 & 0x8) != 8) && (!((String)localObject2).startsWith("_")) && (!((String)localObject2).endsWith("_")))
        {
          localObject3 = ((Field)localObject4).getType();
          localObject4 = ((Field)localObject4).get(paramObject);
          if ((((Class)localObject3).isArray()) && (((Class)localObject3).getComponentType() != Byte.TYPE))
          {
            if (localObject4 == null) {}
            for (i2 = 0;; i2 = Array.getLength(localObject4))
            {
              int i3 = 0;
              while (i3 < i2)
              {
                b((String)localObject2, Array.get(localObject4, i3), paramStringBuffer1, paramStringBuffer2);
                i3 += 1;
              }
            }
          }
          b((String)localObject2, localObject4, paramStringBuffer1, paramStringBuffer2);
        }
        i1 += 1;
      }
      Object localObject2 = localClass.getMethods();
      int i2 = localObject2.length;
      i1 = 0;
      if (i1 < i2)
      {
        localObject1 = localObject2[i1].getName();
        if (((String)localObject1).startsWith("set")) {
          localObject3 = ((String)localObject1).substring(3);
        }
        for (;;)
        {
          try
          {
            localObject1 = String.valueOf(localObject3);
            if (((String)localObject1).length() != 0)
            {
              localObject1 = "has".concat((String)localObject1);
              localObject1 = localClass.getMethod((String)localObject1, new Class[0]);
              if (!((Boolean)((Method)localObject1).invoke(paramObject, new Object[0])).booleanValue()) {}
            }
          }
          catch (NoSuchMethodException localNoSuchMethodException1)
          {
            continue;
            String str = new String("get");
            continue;
          }
          try
          {
            localObject1 = String.valueOf(localObject3);
            if (((String)localObject1).length() == 0) {
              continue;
            }
            localObject1 = "get".concat((String)localObject1);
            localObject1 = localClass.getMethod((String)localObject1, new Class[0]);
            b((String)localObject3, ((Method)localObject1).invoke(paramObject, new Object[0]), paramStringBuffer1, paramStringBuffer2);
          }
          catch (NoSuchMethodException localNoSuchMethodException2)
          {
            continue;
          }
          i1 += 1;
          break;
          localObject1 = new String("has");
        }
      }
      if (paramString != null)
      {
        paramStringBuffer1.setLength(i4);
        paramStringBuffer2.append(paramStringBuffer1).append(">\n");
      }
    }
    return;
    label486:
    paramString = K(paramString);
    paramStringBuffer2.append(paramStringBuffer1).append(paramString).append(": ");
    if ((paramObject instanceof String))
    {
      paramString = L((String)paramObject);
      paramStringBuffer2.append("\"").append(paramString).append("\"");
    }
    for (;;)
    {
      paramStringBuffer2.append("\n");
      return;
      if ((paramObject instanceof byte[])) {
        b((byte[])paramObject, paramStringBuffer2);
      } else {
        paramStringBuffer2.append(paramObject);
      }
    }
  }
  
  public static void b(String paramString1, String paramString2, Object... paramVarArgs)
  {
    paramString2 = b(paramString2, paramVarArgs);
    paramVarArgs = b(paramVarArgs);
    if (paramVarArgs != null)
    {
      Log.e(M(paramString1), paramString2, paramVarArgs);
      return;
    }
    Log.e(M(paramString1), paramString2);
  }
  
  public static void b(ByteBuffer paramByteBuffer)
  {
    if (!paramByteBuffer.isDirect()) {
      throw new IllegalArgumentException("byteBuffer must be a direct ByteBuffer.");
    }
  }
  
  public static void b(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException();
    }
  }
  
  public static void b(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.valueOf(paramObject));
    }
  }
  
  private static void b(byte[] paramArrayOfByte, StringBuffer paramStringBuffer)
  {
    if (paramArrayOfByte == null)
    {
      paramStringBuffer.append("\"\"");
      return;
    }
    paramStringBuffer.append('"');
    int i1 = 0;
    if (i1 < paramArrayOfByte.length)
    {
      int i2 = paramArrayOfByte[i1] & 0xFF;
      if ((i2 == 92) || (i2 == 34)) {
        paramStringBuffer.append('\\').append((char)i2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if ((i2 >= 32) && (i2 < 127)) {
          paramStringBuffer.append((char)i2);
        } else {
          paramStringBuffer.append(String.format("\\%03o", new Object[] { Integer.valueOf(i2) }));
        }
      }
    }
    paramStringBuffer.append('"');
  }
  
  private static boolean b(char paramChar)
  {
    return (paramChar >= 'A') && (paramChar <= 'Z');
  }
  
  public static boolean b(int paramInt1, int paramInt2)
  {
    return (paramInt1 <= 512) && (paramInt2 <= 384);
  }
  
  public static boolean b(Context paramContext, int paramInt, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramBoolean) {
      if ((!a(paramContext, "babel_hutch_three_g_incoming_enabled", false)) || ((paramInt != 4) && (paramInt != 5)))
      {
        paramBoolean = bool;
        if (!a(paramContext, "babel_hutch_3g_incoming_experience_for_us", false)) {}
      }
      else
      {
        paramBoolean = true;
      }
    }
    do
    {
      return paramBoolean;
      if ((a(paramContext, "babel_hutch_three_g_outgoing_enabled", true)) && ((paramInt == 4) || (paramInt == 5))) {
        break;
      }
      paramBoolean = bool;
    } while (!a(paramContext, "babel_hutch_3g_outgoing_experience_for_us", false));
    return true;
  }
  
  public static boolean b(Context paramContext, Uri paramUri)
  {
    if (ipk.b(paramUri))
    {
      String str = e(paramContext.getContentResolver(), paramUri);
      if ((!"image/jpeg".equals(str)) && (!"image/jpg".equals(str))) {}
      while (new igi(paramContext, paramUri).a()) {
        return false;
      }
    }
    for (;;)
    {
      try
      {
        paramUri = c(paramContext.getContentResolver(), paramUri);
        bool = d(x, y);
        if ((!bool) || (x * y <= 3145728)) {
          break label251;
        }
        i1 = 1;
        if (bool) {
          break label256;
        }
        if (x > 2048) {
          break label236;
        }
        if (y <= 2048) {
          break label256;
        }
      }
      catch (IOException paramContext)
      {
        boolean bool;
        int i3;
        int i4;
        return false;
      }
      if ((Log.isLoggable("iu.UploadUtils", 4)) && (i1 == 0) && (i2 == 0)) {
        if (bool)
        {
          paramContext = "pano";
          i3 = x;
          i4 = y;
          new StringBuilder(String.valueOf(paramContext).length() + 61).append("Don't resize; ").append(paramContext).append(" is too small; size: (").append(i3).append(", ").append(i4).append(")");
        }
        else
        {
          paramContext = "image";
          continue;
          label236:
          i2 = 1;
          continue;
        }
      }
      if ((i1 == 0) && (i2 == 0)) {
        break;
      }
      return true;
      label251:
      int i1 = 0;
      continue;
      label256:
      int i2 = 0;
    }
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    return (b(paramContext, "market://details", paramString)) || (b(paramContext, "https://play.google.com/store/apps/details", paramString));
  }
  
  private static boolean b(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      paramString1 = Uri.parse(paramString1).buildUpon();
      paramString1.appendQueryParameter("id", paramString2);
      localIntent.setData(paramString1.build());
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (ActivityNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean b(Uri paramUri)
  {
    return paramUri.getPathSegments().contains("video");
  }
  
  private static boolean b(Class paramClass)
  {
    boolean bool2 = false;
    try
    {
      paramClass = paramClass.getDeclaredField("serialVersionUID");
      boolean bool1 = bool2;
      if (paramClass != null)
      {
        boolean bool3 = Modifier.isStatic(paramClass.getModifiers());
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (NoSuchFieldException paramClass) {}
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("image/"));
  }
  
  private static boolean b(List paramList)
  {
    return (paramList == null) || (paramList.isEmpty());
  }
  
  public static byte[] b(String paramString, int paramInt)
  {
    if (paramInt == 0) {
      return paramString.getBytes();
    }
    try
    {
      byte[] arrayOfByte = paramString.getBytes(ade.a(paramInt));
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes();
  }
  
  public static <T> T[] b(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArray(paramCreator);
    paramParcel.setDataPosition(paramInt + i1);
    return paramCreator;
  }
  
  public static int c(int paramInt, String paramString)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException(String.valueOf(paramString).length() + 40 + paramString + " cannot be negative but was: " + paramInt);
    }
    return paramInt;
  }
  
  public static int c(View paramView)
  {
    if (!w) {}
    try
    {
      Field localField = View.class.getDeclaredField("mMinHeight");
      v = localField;
      localField.setAccessible(true);
      w = true;
      if (v != null) {
        try
        {
          int i1 = ((Integer)v.get(paramView)).intValue();
          return i1;
        }
        catch (Exception paramView) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  private static int c(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = false;
    int i1;
    Object localObject;
    if ((paramBoolean1) || (!S(oJ))) {
      if (oK)
      {
        ezi.d("Babel", "Bypass GmsCore for robolectric.", new Object[0]);
        i1 = 0;
        localObject = f(oJ).edit();
        paramBoolean1 = bool;
        if (i1 == 0) {
          paramBoolean1 = true;
        }
        ((SharedPreferences.Editor)localObject).putBoolean("gms_core_valid", paramBoolean1).putInt("gms_core_status_code", i1).apply();
      }
    }
    int i2;
    do
    {
      do
      {
        return i1;
        i1 = fhr.a(oJ);
        break;
        localObject = oJ;
        aen.b(S((Context)localObject));
        i2 = f((Context)localObject).getInt("gms_core_status_code", -1);
        i1 = i2;
      } while (!paramBoolean2);
      i1 = i2;
    } while (i2 == 0);
    return c(true, false);
  }
  
  public static Intent c(Intent paramIntent)
  {
    Intent localIntent = new Intent(oJ, AccountSelectionActivity.class);
    localIntent.setAction("android.intent.action.VIEW");
    if (paramIntent != null) {
      localIntent.putExtra("intent", paramIntent);
    }
    return localIntent;
  }
  
  public static Bitmap c(Activity paramActivity)
  {
    int i1 = 0;
    try
    {
      View localView1 = paramActivity.getWindow().getDecorView().getRootView();
      View localView2 = localView1.findViewById(16908290);
      if (localView2 == null) {
        return null;
      }
      int i2 = paramActivity.getResources().getIdentifier("status_bar_height", "dimen", "android");
      if (i2 != 0) {
        i1 = paramActivity.getResources().getDimensionPixelSize(i2);
      }
      i1 += localView2.getTop();
      if (i1 < localView1.getHeight())
      {
        paramActivity = Bitmap.createBitmap(localView1.getWidth(), localView1.getHeight(), Bitmap.Config.ARGB_8888);
        localView1.draw(new Canvas(paramActivity));
        i2 = Math.min(paramActivity.getHeight() - i1, localView2.getHeight());
        paramActivity = Bitmap.createBitmap(paramActivity, 0, i1, paramActivity.getWidth(), i2);
        return paramActivity;
      }
    }
    catch (Exception paramActivity) {}
    return null;
  }
  
  /* Error */
  private static Point c(ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 3562	android/graphics/BitmapFactory$Options
    //   5: dup
    //   6: invokespecial 3563	android/graphics/BitmapFactory$Options:<init>	()V
    //   9: astore 4
    //   11: aload_3
    //   12: astore_2
    //   13: aload 4
    //   15: iconst_1
    //   16: putfield 3680	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   19: aload_3
    //   20: astore_2
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 3577	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   26: astore_0
    //   27: aload_0
    //   28: astore_2
    //   29: aload_0
    //   30: aconst_null
    //   31: aload 4
    //   33: invokestatic 3598	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   36: pop
    //   37: aload_0
    //   38: astore_2
    //   39: new 3568	android/graphics/Point
    //   42: dup
    //   43: aload 4
    //   45: getfield 3683	android/graphics/BitmapFactory$Options:outWidth	I
    //   48: aload 4
    //   50: getfield 3686	android/graphics/BitmapFactory$Options:outHeight	I
    //   53: invokespecial 3689	android/graphics/Point:<init>	(II)V
    //   56: astore_1
    //   57: aload_0
    //   58: ifnull +7 -> 65
    //   61: aload_0
    //   62: invokevirtual 3573	java/io/InputStream:close	()V
    //   65: aload_1
    //   66: areturn
    //   67: astore_0
    //   68: aload_2
    //   69: ifnull +7 -> 76
    //   72: aload_2
    //   73: invokevirtual 3573	java/io/InputStream:close	()V
    //   76: aload_0
    //   77: athrow
    //   78: astore_0
    //   79: aload_1
    //   80: areturn
    //   81: astore_1
    //   82: goto -6 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramContentResolver	ContentResolver
    //   0	85	1	paramUri	Uri
    //   12	61	2	localObject1	Object
    //   1	19	3	localObject2	Object
    //   9	40	4	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   13	19	67	finally
    //   21	27	67	finally
    //   29	37	67	finally
    //   39	57	67	finally
    //   61	65	78	java/io/IOException
    //   72	76	81	java/io/IOException
  }
  
  /* Error */
  public static Uri c(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: ldc_w 7729
    //   3: iconst_1
    //   4: anewarray 5	java/lang/Object
    //   7: dup
    //   8: iconst_0
    //   9: aload_1
    //   10: invokevirtual 4699	android/net/Uri:toString	()Ljava/lang/String;
    //   13: invokestatic 7731	aal:D	(Ljava/lang/String;)Ljava/lang/String;
    //   16: aastore
    //   17: invokestatic 2521	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload_0
    //   23: aload 4
    //   25: invokevirtual 7735	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   28: invokevirtual 6468	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   31: astore_3
    //   32: aload_0
    //   33: invokevirtual 4692	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   36: astore_2
    //   37: aload_2
    //   38: aload_1
    //   39: invokestatic 7625	aal:c	(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;
    //   42: astore 5
    //   44: aload 5
    //   46: getfield 3570	android/graphics/Point:x	I
    //   49: aload 5
    //   51: getfield 3572	android/graphics/Point:y	I
    //   54: invokestatic 7627	aal:d	(II)Z
    //   57: ifeq +159 -> 216
    //   60: aload_2
    //   61: aload_1
    //   62: aload 5
    //   64: getfield 3570	android/graphics/Point:x	I
    //   67: aload 5
    //   69: getfield 3572	android/graphics/Point:y	I
    //   72: invokestatic 7737	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    //   75: astore_2
    //   76: new 3568	android/graphics/Point
    //   79: dup
    //   80: aload_2
    //   81: invokevirtual 3340	android/graphics/Bitmap:getWidth	()I
    //   84: aload_2
    //   85: invokevirtual 3343	android/graphics/Bitmap:getHeight	()I
    //   88: invokespecial 3689	android/graphics/Point:<init>	(II)V
    //   91: astore 5
    //   93: aload_2
    //   94: invokestatic 7740	aal:c	(Landroid/graphics/Bitmap;)[B
    //   97: astore 6
    //   99: aload_2
    //   100: invokevirtual 3372	android/graphics/Bitmap:recycle	()V
    //   103: aload_0
    //   104: aload 4
    //   106: iconst_0
    //   107: invokevirtual 7744	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   110: astore_2
    //   111: aload_2
    //   112: aload 6
    //   114: invokevirtual 7748	java/io/FileOutputStream:write	([B)V
    //   117: aload_2
    //   118: invokevirtual 7751	java/io/FileOutputStream:flush	()V
    //   121: aload_2
    //   122: invokevirtual 7752	java/io/FileOutputStream:close	()V
    //   125: aload_1
    //   126: invokestatic 7302	ipk:b	(Landroid/net/Uri;)Z
    //   129: ifeq +127 -> 256
    //   132: aload_0
    //   133: invokevirtual 4692	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   136: aload_1
    //   137: invokestatic 7309	ipk:a	(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    //   140: astore_0
    //   141: new 2534	hww
    //   144: dup
    //   145: invokespecial 2535	hww:<init>	()V
    //   148: astore_1
    //   149: aload_1
    //   150: aload_0
    //   151: invokevirtual 2537	hww:a	(Ljava/lang/String;)V
    //   154: aload_1
    //   155: getstatic 7753	hww:a	I
    //   158: aload 5
    //   160: getfield 3570	android/graphics/Point:x	I
    //   163: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   166: invokevirtual 7756	hww:a	(ILjava/lang/Object;)Z
    //   169: pop
    //   170: aload_1
    //   171: getstatic 7757	hww:b	I
    //   174: aload 5
    //   176: getfield 3572	android/graphics/Point:y	I
    //   179: invokestatic 2517	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   182: invokevirtual 7756	hww:a	(ILjava/lang/Object;)Z
    //   185: pop
    //   186: aload_1
    //   187: aload_3
    //   188: invokevirtual 7759	hww:b	(Ljava/lang/String;)V
    //   191: aload_3
    //   192: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   195: astore_0
    //   196: aload_0
    //   197: invokevirtual 2385	java/lang/String:length	()I
    //   200: ifeq +101 -> 301
    //   203: ldc_w 7761
    //   206: aload_0
    //   207: invokevirtual 2317	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   210: astore_0
    //   211: aload_0
    //   212: invokestatic 3391	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   215: areturn
    //   216: aload_2
    //   217: aload_1
    //   218: aload 5
    //   220: getfield 3570	android/graphics/Point:x	I
    //   223: aload 5
    //   225: getfield 3572	android/graphics/Point:y	I
    //   228: invokestatic 7763	aal:b	(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    //   231: astore_2
    //   232: goto -156 -> 76
    //   235: astore_0
    //   236: aload_2
    //   237: invokevirtual 7752	java/io/FileOutputStream:close	()V
    //   240: aload_0
    //   241: athrow
    //   242: astore_0
    //   243: ldc_w 3603
    //   246: ldc_w 7765
    //   249: aload_0
    //   250: invokestatic 2367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   253: pop
    //   254: aconst_null
    //   255: areturn
    //   256: aload_1
    //   257: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   260: astore_0
    //   261: ldc_w 3603
    //   264: new 2382	java/lang/StringBuilder
    //   267: dup
    //   268: aload_0
    //   269: invokestatic 2311	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   272: invokevirtual 2385	java/lang/String:length	()I
    //   275: bipush 33
    //   277: iadd
    //   278: invokespecial 2388	java/lang/StringBuilder:<init>	(I)V
    //   281: ldc_w 7767
    //   284: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload_0
    //   288: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 2400	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokestatic 2921	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   297: pop
    //   298: goto -107 -> 191
    //   301: new 2307	java/lang/String
    //   304: dup
    //   305: ldc_w 7761
    //   308: invokespecial 2454	java/lang/String:<init>	(Ljava/lang/String;)V
    //   311: astore_0
    //   312: goto -101 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	315	0	paramContext	Context
    //   0	315	1	paramUri	Uri
    //   36	201	2	localObject	Object
    //   31	161	3	str1	String
    //   20	85	4	str2	String
    //   42	182	5	localPoint	Point
    //   97	16	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   111	121	235	finally
    //   0	76	242	java/lang/Throwable
    //   76	111	242	java/lang/Throwable
    //   121	191	242	java/lang/Throwable
    //   191	211	242	java/lang/Throwable
    //   211	216	242	java/lang/Throwable
    //   216	232	242	java/lang/Throwable
    //   236	242	242	java/lang/Throwable
    //   256	298	242	java/lang/Throwable
    //   301	312	242	java/lang/Throwable
  }
  
  public static cms c(Context paramContext)
  {
    c(2608);
    return new cmt().a(0).a(paramContext.getResources().getString(StressMode.fS)).a().b(paramContext.getResources().getString(StressMode.fU)).b(paramContext.getResources().getColor(dj)).a(new cmw(paramContext)).b();
  }
  
  public static fmh c(Object paramObject)
  {
    return new fmh(paramObject);
  }
  
  @Deprecated
  public static hax c(int paramInt1, int paramInt2)
  {
    return v(paramInt1).a(paramInt2);
  }
  
  public static hth c()
  {
    return new hth(0.61F, 0.89F, 0.81F, 1.0F);
  }
  
  private static ihb c(Collection<cyx> paramCollection)
  {
    if (paramCollection == null) {
      return null;
    }
    axm localaxm = ihb.newBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      cyx localcyx = (cyx)paramCollection.next();
      localaxm.a(axt.newBuilder().a(dtw.a(localcyx)).a(e).b(h).a());
    }
    return localaxm.a();
  }
  
  public static File c(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getDatabasePath(19 + "babel" + paramInt + ".db");
    if ((paramContext.exists()) && (paramContext.isFile()))
    {
      if (paramContext.length() == 0L)
      {
        ezi.d("Babel_DumpDatabase", 33 + "Database for " + paramInt + " is empty", new Object[0]);
        return null;
      }
    }
    else
    {
      ezi.d("Babel_DumpDatabase", 39 + "Database for " + paramInt + " does not exist", new Object[0]);
      return null;
    }
    File localFile = new File(Environment.getExternalStorageDirectory(), String.valueOf(Integer.toString(paramInt)).concat("db_copy.db"));
    ConditionVariable localConditionVariable = new ConditionVariable();
    new dhk(paramContext, localFile, localConditionVariable).execute(new Void[0]);
    localConditionVariable.block(10000L);
    return localFile;
  }
  
  public static <T> T c(T paramT)
  {
    return (T)kty.b(paramT.iterator(), null);
  }
  
  public static String c(long paramLong)
  {
    return d(System.currentTimeMillis() - paramLong);
  }
  
  public static String c(String paramString, int paramInt)
  {
    aen.a(paramString);
    if (paramInt <= 1)
    {
      if (paramInt >= 0) {}
      for (i1 = 1; i1 == 0; i1 = 0) {
        throw new IllegalArgumentException(aen.a("invalid count: %s", new Object[] { Integer.valueOf(paramInt) }));
      }
      if (paramInt == 0) {
        paramString = "";
      }
      return paramString;
    }
    int i1 = paramString.length();
    long l1 = i1 * paramInt;
    int i2 = (int)l1;
    if (i2 != l1) {
      throw new ArrayIndexOutOfBoundsException(51 + "Required array size too large: " + l1);
    }
    char[] arrayOfChar = new char[i2];
    paramString.getChars(0, i1, arrayOfChar, 0);
    paramInt = i1;
    while (paramInt < i2 - paramInt)
    {
      System.arraycopy(arrayOfChar, 0, arrayOfChar, paramInt, paramInt);
      paramInt <<= 1;
    }
    System.arraycopy(arrayOfChar, 0, arrayOfChar, paramInt, i2 - paramInt);
    return new String(arrayOfChar);
  }
  
  public static Type c(Type paramType)
  {
    return a(paramType, Iterable.class, 0);
  }
  
  public static <T> ArrayList<T> c(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArrayList(paramCreator);
    paramParcel.setDataPosition(paramInt + i1);
    return paramCreator;
  }
  
  public static void c(int paramInt)
  {
    hax localhax = g(h()).a(paramInt).c().b();
    if (v())
    {
      localhax.a().d();
      return;
    }
    a(new che(localhax));
  }
  
  public static void c(Context paramContext, String paramString)
  {
    new AlertDialog.Builder(paramContext).setTitle(StressMode.fI).setMessage(paramString).setCancelable(true).show();
  }
  
  public static void c(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    b(paramParcel, paramInt1, 4);
    paramParcel.writeInt(paramInt2);
  }
  
  public static <T extends Parcelable> void c(boolean paramBoolean)
  {
    ;
    if (localObject == null) {
      return;
    }
    int i2 = p(paramBoolean, i1);
    int i3 = ((List)localObject).size();
    paramBoolean.writeInt(i3);
    int i1 = 0;
    if (i1 < i3)
    {
      Parcelable localParcelable = (Parcelable)((List)localObject).get(i1);
      if (localParcelable == null) {
        paramBoolean.writeInt(0);
      }
      for (;;)
      {
        i1 += 1;
        break;
        a(paramBoolean, localParcelable, 0);
      }
    }
    q(paramBoolean, i2);
  }
  
  private static void c(cyx paramcyx)
  {
    if (paramcyx == null) {}
    while ((a != czd.b) || (TextUtils.isEmpty(c))) {
      return;
    }
    String str = String.valueOf("Encountered participant with participantType ParticipantType PERSON, but contained a phoneNumber like: ");
    paramcyx = String.valueOf(ezi.b(paramcyx.toString()));
    if (paramcyx.length() != 0) {}
    for (paramcyx = str.concat(paramcyx);; paramcyx = new String(str))
    {
      ezi.e("Babel", paramcyx, new Object[0]);
      return;
    }
  }
  
  public static void c(ByteBuffer paramByteBuffer)
  {
    if (!paramByteBuffer.hasRemaining()) {
      throw new IllegalArgumentException("ByteBuffer is already full.");
    }
  }
  
  private static void c(List<cyx> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      c((cyx)paramList.next());
    }
  }
  
  public static void c(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
    }
  }
  
  public static boolean c(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt() != 0;
  }
  
  public static boolean c(bfd parambfd)
  {
    return ((ekh)ilh.a(oJ, ekh.class)).a(parambfd.g());
  }
  
  public static boolean c(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static boolean c(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("audio/")) || (paramString.equalsIgnoreCase("application/ogg")));
  }
  
  public static boolean c(String paramString1, String paramString2)
  {
    boolean bool = false;
    try
    {
      String str = ezm.i();
      paramString1 = new ezk(paramString1, str).a(new ezk(paramString2, str));
      paramString2 = hoo.e;
      if (paramString1 == paramString2) {
        bool = true;
      }
      return bool;
    }
    catch (hnz paramString1) {}
    return false;
  }
  
  /* Error */
  private static byte[] c(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 3841	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 3842	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getstatic 7940	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   12: bipush 90
    //   14: aload_2
    //   15: invokevirtual 3852	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   18: pop
    //   19: aload_2
    //   20: invokevirtual 7941	java/io/ByteArrayOutputStream:flush	()V
    //   23: aload_2
    //   24: invokevirtual 7942	java/io/ByteArrayOutputStream:close	()V
    //   27: aload_0
    //   28: invokevirtual 3372	android/graphics/Bitmap:recycle	()V
    //   31: aload_2
    //   32: invokevirtual 3856	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   35: astore_0
    //   36: ldc_w 3603
    //   39: iconst_3
    //   40: invokestatic 3606	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   43: ifeq +26 -> 69
    //   46: aload_0
    //   47: arraylength
    //   48: istore_1
    //   49: new 2382	java/lang/StringBuilder
    //   52: dup
    //   53: bipush 39
    //   55: invokespecial 2388	java/lang/StringBuilder:<init>	(I)V
    //   58: ldc_w 7944
    //   61: invokevirtual 2392	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: iload_1
    //   65: invokevirtual 2397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload_0
    //   70: areturn
    //   71: astore_3
    //   72: aload_2
    //   73: invokevirtual 7942	java/io/ByteArrayOutputStream:close	()V
    //   76: goto -49 -> 27
    //   79: astore_3
    //   80: goto -53 -> 27
    //   83: astore_0
    //   84: aload_2
    //   85: invokevirtual 7942	java/io/ByteArrayOutputStream:close	()V
    //   88: aload_0
    //   89: athrow
    //   90: astore_3
    //   91: goto -64 -> 27
    //   94: astore_2
    //   95: goto -7 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paramBitmap	Bitmap
    //   48	17	1	i1	int
    //   7	78	2	localByteArrayOutputStream	ByteArrayOutputStream
    //   94	1	2	localIOException1	IOException
    //   71	1	3	localIOException2	IOException
    //   79	1	3	localIOException3	IOException
    //   90	1	3	localIOException4	IOException
    // Exception table:
    //   from	to	target	type
    //   8	23	71	java/io/IOException
    //   72	76	79	java/io/IOException
    //   8	23	83	finally
    //   23	27	90	java/io/IOException
    //   84	88	94	java/io/IOException
  }
  
  public static byte d(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return (byte)paramParcel.readInt();
  }
  
  private static int d(int paramInt, String paramString)
  {
    hbs.c();
    int i1 = GLES20.glCreateShader(paramInt);
    if (i1 == 0)
    {
      hlk.a(6, "vclib", "Failed to create shader!");
      C(43 + "Failed to create shader of type " + paramInt);
    }
    do
    {
      return i1;
      GLES20.glShaderSource(i1, paramString);
      GLES20.glCompileShader(i1);
      paramString = new int[1];
      GLES20.glGetShaderiv(i1, 35713, paramString, 0);
    } while (paramString[0] != 0);
    hlk.a(6, "vclib", 37 + "Could not compile shader " + paramInt + ":");
    hlk.a(6, "vclib", GLES20.glGetShaderInfoLog(i1));
    GLES20.glDeleteShader(i1);
    return 0;
  }
  
  public static Intent d(int paramInt)
  {
    Intent localIntent = new Intent(oJ, BlockedContactsActivity.class);
    localIntent.putExtra("account_id", paramInt);
    return localIntent;
  }
  
  public static Intent d(Context paramContext, int paramInt)
  {
    paramContext = ((cos)ilh.a(paramContext, cos.class)).a(paramContext, paramInt);
    hbs.b("Invalid account", Integer.valueOf(paramInt), Integer.valueOf(-1));
    paramContext.putExtra("account_id", paramInt);
    paramContext.setFlags(872415232);
    return paramContext;
  }
  
  public static Intent d(Intent paramIntent)
  {
    Intent localIntent = new Intent(oJ, ShowDialerActivity.class);
    localIntent.setAction(paramIntent.getAction());
    paramIntent = paramIntent.getStringExtra("number_to_call");
    if (paramIntent != null) {
      localIntent.putExtra("number_to_call", paramIntent);
    }
    return localIntent;
  }
  
  public static Intent d(bfd parambfd)
  {
    return a(parambfd, null, 0, "android.intent.action.VIEW");
  }
  
  public static hth d()
  {
    return new hth(0.0F, 0.07F, 0.53F, 1.0F);
  }
  
  public static File d(Context paramContext)
  {
    paramContext = new File(new File(paramContext.getFilesDir().getParentFile().getPath(), "shared_prefs").getPath(), "accounts.xml");
    File localFile = new File(Environment.getExternalStorageDirectory(), "babel-accounts.xml");
    Object localObject = String.valueOf(paramContext);
    String str = String.valueOf(localFile);
    ezi.c("Babel_DumpDatabase", String.valueOf(localObject).length() + 12 + String.valueOf(str).length() + "Copying " + (String)localObject + " to " + str, new Object[0]);
    localObject = new ConditionVariable();
    new dhk(paramContext, localFile, (ConditionVariable)localObject).execute(new Void[0]);
    ((ConditionVariable)localObject).block(10000L);
    return localFile;
  }
  
  public static <T> T d(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("null reference");
    }
    return paramT;
  }
  
  public static <T> T d(T paramT1, T paramT2)
  {
    if (paramT1 != null) {
      return paramT1;
    }
    return (T)fii.a(paramT2);
  }
  
  public static String d(long paramLong)
  {
    return String.format("%.3f seconds", new Object[] { Double.valueOf(paramLong / 1000.0D) });
  }
  
  private static String d(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject = null;
    try
    {
      paramContentResolver = paramContentResolver.getType(paramUri);
      return paramContentResolver;
    }
    catch (Exception paramContentResolver)
    {
      do
      {
        paramContentResolver = (ContentResolver)localObject;
      } while (!Log.isLoggable("iu.UploadUtils", 5));
      paramContentResolver = String.valueOf(paramUri);
      new StringBuilder(String.valueOf(paramContentResolver).length() + 31).append("safeGetMimeType failed for uri=").append(paramContentResolver);
    }
    return null;
  }
  
  public static Type d(Type paramType)
  {
    return a(paramType, Map.class, 1);
  }
  
  public static void d(View paramView)
  {
    b(paramView.getContext()).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  private static boolean d(int paramInt1, int paramInt2)
  {
    float f1 = paramInt1 / paramInt2;
    return (f1 > 2.0F) || (f1 < 0.5F);
  }
  
  public static boolean d(Context paramContext, Uri paramUri)
  {
    if (!ipk.b(paramUri)) {
      label7:
      return false;
    }
    try
    {
      paramContext = paramContext.getContentResolver().query(paramUri, new String[] { "_data" }, null, null, null);
      if (paramContext == null) {}
    }
    finally
    {
      try
      {
        if (paramContext.moveToNext())
        {
          paramUri = paramContext.getString(paramContext.getColumnIndex("_data"));
          if (!TextUtils.isEmpty(paramUri))
          {
            bool = new File(paramUri).getName().startsWith("AUTO_AWESOME_MOVIE_1_");
            if (!bool) {}
          }
          for (boolean bool = true;; bool = false)
          {
            if (paramContext != null) {
              paramContext.close();
            }
            return bool;
          }
        }
        if (paramContext == null) {
          break label7;
        }
        paramContext.close();
        return false;
      }
      finally {}
      paramUri = finally;
      paramContext = null;
    }
    if (paramContext != null) {
      paramContext.close();
    }
    throw paramUri;
  }
  
  public static boolean d(Context paramContext, String paramString)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      int i1 = getApplicationInfo0flags;
      if ((i1 & 0x200000) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean d(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("video/"));
  }
  
  public static boolean d(String paramString1, String paramString2)
  {
    hoo localhoo = hof.b().c(paramString1, paramString2);
    if (a(localhoo, paramString2))
    {
      ezi.c("Babel_telephony", String.format("TeleUtils.compareCallerIdForFuzzyMatch, callerId: %s, match: %s", new Object[] { paramString2, localhoo }), new Object[0]);
      return true;
    }
    if (paramString2.contains("+"))
    {
      paramString1 = hof.b().c(paramString1, paramString2.replace("+", ""));
      if (a(paramString1, paramString2))
      {
        ezi.c("Babel_telephony", String.format("TeleUtils.compareCallerIdForFuzzyMatch, callerId: %s, match excluding plus: %s", new Object[] { paramString2, paramString1 }), new Object[0]);
        return true;
      }
    }
    return false;
  }
  
  public static int e(long paramLong)
  {
    if (paramLong > 2147483647L) {
      return Integer.MAX_VALUE;
    }
    if (paramLong < -2147483648L) {
      return Integer.MIN_VALUE;
    }
    return (int)paramLong;
  }
  
  public static int e(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt();
  }
  
  public static Intent e(bfd parambfd)
  {
    return a(parambfd, null, 0, "com.google.android.apps.hangouts.phone.conversationlist");
  }
  
  public static Uri e(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("getHelpUrl(): fromWhere must be non-empty");
    }
    Object localObject1 = paramString1;
    if (paramString1.contains("%locale%"))
    {
      Object localObject2 = Locale.getDefault();
      localObject1 = String.valueOf(((Locale)localObject2).getLanguage());
      localObject2 = String.valueOf(((Locale)localObject2).getCountry().toLowerCase(Locale.US));
      localObject1 = paramString1.replace("%locale%", String.valueOf(localObject1).length() + 1 + String.valueOf(localObject2).length() + (String)localObject1 + "-" + (String)localObject2);
    }
    localObject1 = Uri.parse((String)localObject1).buildUpon();
    ((Uri.Builder)localObject1).appendQueryParameter("p", paramString2);
    paramString1 = oJ;
    try
    {
      ((Uri.Builder)localObject1).appendQueryParameter("version", String.valueOf(getPackageManagergetPackageInfogetApplicationInfopackageName, 0).versionCode));
      return ((Uri.Builder)localObject1).build();
    }
    catch (PackageManager.NameNotFoundException paramString2)
    {
      paramString1 = String.valueOf(getApplicationInfopackageName);
      if (paramString1.length() == 0) {}
    }
    for (paramString1 = "Error finding package ".concat(paramString1);; paramString1 = new String("Error finding package "))
    {
      ezi.e("Babel", paramString1, new Object[0]);
      break;
    }
  }
  
  public static cgs e(Intent paramIntent)
  {
    paramIntent = (NdefMessage)paramIntent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES")[0];
    try
    {
      paramIntent = (cgs)new ObjectInputStream(new ByteArrayInputStream(paramIntent.getRecords()[0].getPayload())).readObject();
      return paramIntent;
    }
    catch (IOException paramIntent)
    {
      k("IOException, cannot deserialize hangout request");
      return null;
    }
    catch (ClassNotFoundException paramIntent)
    {
      k("ClassNotFoundException, cannot deserialize hangout request");
    }
    return null;
  }
  
  public static <T> Iterable<T> e(Object paramObject)
  {
    if ((paramObject instanceof Iterable)) {
      return (Iterable)paramObject;
    }
    Class localClass = paramObject.getClass();
    fii.a(localClass.isArray(), "not an array or Iterable: %s", new Object[] { localClass });
    if (!localClass.getComponentType().isPrimitive()) {
      return Arrays.asList((Object[])paramObject);
    }
    return new iss(paramObject);
  }
  
  public static String e()
  {
    String str = String.valueOf(oJ.getCacheDir());
    return String.valueOf(str).length() + 14 + str + "/raw_call_logs";
  }
  
  private static String e(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject = null;
    try
    {
      String str = d(paramContentResolver, paramUri);
      paramContentResolver = str;
      localObject = str;
      if (TextUtils.isEmpty(str))
      {
        localObject = str;
        paramContentResolver = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(paramUri.toString()));
      }
    }
    catch (Exception paramContentResolver)
    {
      do
      {
        paramContentResolver = (ContentResolver)localObject;
      } while (!Log.isLoggable("iu.UploadUtils", 5));
      paramContentResolver = String.valueOf(paramUri);
      new StringBuilder(String.valueOf(paramContentResolver).length() + 27).append("getMimeType failed for uri=").append(paramContentResolver);
    }
    return paramContentResolver;
    return (String)localObject;
  }
  
  public static String e(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(17039370);
    case 1: 
      return paramContext.getString(si);
    case 3: 
      return paramContext.getString(sf);
    }
    return paramContext.getString(sw);
  }
  
  public static String e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Must not be null or empty");
    }
    return paramString;
  }
  
  public static void e(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
    {
      paramObject1 = String.valueOf(paramObject2);
      throw new NullPointerException(String.valueOf(paramObject1).length() + 24 + "null key in entry: null=" + (String)paramObject1);
    }
    if (paramObject2 == null)
    {
      paramObject1 = String.valueOf(paramObject1);
      throw new NullPointerException(String.valueOf(paramObject1).length() + 26 + "null value in entry: " + (String)paramObject1 + "=null");
    }
  }
  
  public static boolean e(int paramInt)
  {
    return paramInt == 3;
  }
  
  public static boolean e(Context paramContext)
  {
    Object localObject3 = paramContext.getSharedPreferences("EsApplication", 0);
    Object localObject1 = ((SharedPreferences)localObject3).getString("last_seen_version_name", null);
    Object localObject2 = ((fak)ilh.a(paramContext, fak.class)).c();
    boolean bool;
    if ((localObject1 == null) || (!((String)localObject1).equals(localObject2))) {
      bool = true;
    }
    while (bool)
    {
      localObject3 = ((SharedPreferences)localObject3).edit();
      ((SharedPreferences.Editor)localObject3).putString("last_seen_version_name", (String)localObject2);
      ((SharedPreferences.Editor)localObject3).apply();
      bff.b(paramContext);
      if (localObject1 != null)
      {
        int i2;
        int i1;
        if ((((String)localObject1).startsWith("2.3")) && (!ezm.b()))
        {
          localObject2 = paramContext.getResources().getString(StressMode.cm);
          localObject3 = (hpz)ilh.a(paramContext, hpz.class);
          int[] arrayOfInt = dvd.e();
          i2 = arrayOfInt.length;
          i1 = 0;
          for (;;)
          {
            if (i1 < i2)
            {
              ((hpz)localObject3).b(arrayOfInt[i1]).f((String)localObject2).d();
              i1 += 1;
              continue;
              bool = false;
              break;
            }
          }
        }
        if (((String)localObject1).compareTo("2.5") < 0)
        {
          localObject1 = paramContext.getSharedPreferences("EsApplication", 0);
          localObject2 = djd.values();
          i2 = localObject2.length;
          i1 = 0;
          while (i1 < i2)
          {
            localObject3 = localObject2[i1];
            if (((SharedPreferences)localObject1).getBoolean(c, false)) {
              b((djd)localObject3);
            }
            i1 += 1;
          }
        }
      }
      new dho(paramContext).execute(new Void[0]);
    }
    return bool;
  }
  
  public static long f(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readLong();
  }
  
  public static Intent f(bfd parambfd)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(oJ, "com.google.android.talk.SigningInActivity");
    localIntent.setAction("com.google.android.apps.hangouts.phone.recentcalls");
    if (parambfd != null) {
      localIntent.putExtra("account_id", parambfd.g());
    }
    return localIntent;
  }
  
  public static SharedPreferences f(Context paramContext)
  {
    return paramContext.getSharedPreferences("EsApplication", 0);
  }
  
  public static Iterable<String> f(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.indexOf('|') < 0) {
      return Arrays.asList(new String[] { paramString });
    }
    TextUtils.SimpleStringSplitter localSimpleStringSplitter = new TextUtils.SimpleStringSplitter('|');
    localSimpleStringSplitter.setString(paramString);
    return localSimpleStringSplitter;
  }
  
  public static String f()
  {
    String str = String.valueOf(oJ.getCacheDir());
    return String.valueOf(str).length() + 21 + str + "/compressed_call_logs";
  }
  
  private static LinkedList<esg> f(Context paramContext, int paramInt)
  {
    Object localObject1 = eut.a(paramContext).c(paramInt);
    if (localObject1 == null) {
      return new LinkedList();
    }
    localObject1 = Base64.decode((String)localObject1, 0);
    if (localObject1 == null) {
      return new LinkedList();
    }
    LinkedList localLinkedList;
    for (;;)
    {
      eur localeur;
      Object localObject2;
      try
      {
        localObject1 = (eus)lyi.b(new eus(), (byte[])localObject1, localObject1.length);
        localLinkedList = new LinkedList();
        eur[] arrayOfeur = a;
        int i1 = arrayOfeur.length;
        paramInt = 0;
        if (paramInt >= i1) {
          break;
        }
        localeur = arrayOfeur[paramInt];
        if (a == null)
        {
          localObject1 = null;
          localObject2 = null;
          if ((e != null) || (f != null)) {
            localObject2 = new ero(e, f);
          }
          if (!TextUtils.isEmpty(b)) {
            break label535;
          }
          localObject3 = null;
          est localest = est.a(h);
          localLinkedList.add(new esg((cgs)localObject1, (String)localObject3, c, d, (ero)localObject2, g, i, localest));
          paramInt += 1;
          continue;
        }
        localObject2 = a;
      }
      catch (lyg paramContext)
      {
        ezi.d("Babel_telephony", "TeleInvomingWifiCallLog.getInvites, unable to parse invites", paramContext);
        return new LinkedList();
      }
      Object localObject3 = new cgu(a, j);
      if (TextUtils.isEmpty(b))
      {
        localObject1 = null;
        label265:
        localObject3 = ((cgu)localObject3).a((String)localObject1);
        if (!TextUtils.isEmpty(c)) {
          break label463;
        }
        localObject1 = null;
        label286:
        localObject3 = ((cgu)localObject3).b((String)localObject1);
        if (!TextUtils.isEmpty(d)) {
          break label472;
        }
        localObject1 = null;
        label307:
        localObject3 = ((cgu)localObject3).c((String)localObject1);
        if (!TextUtils.isEmpty(e)) {
          break label481;
        }
        localObject1 = null;
        label328:
        localObject3 = ((cgu)localObject3).d((String)localObject1);
        if (!TextUtils.isEmpty(f)) {
          break label490;
        }
        localObject1 = null;
        label349:
        localObject3 = ((cgu)localObject3).e((String)localObject1);
        if (!TextUtils.isEmpty(g)) {
          break label499;
        }
        localObject1 = null;
        label370:
        localObject3 = ((cgu)localObject3).f((String)localObject1);
        if (!TextUtils.isEmpty(h)) {
          break label508;
        }
        localObject1 = null;
        label391:
        localObject3 = ((cgu)localObject3).g((String)localObject1);
        if (!TextUtils.isEmpty(i)) {
          break label517;
        }
        localObject1 = null;
        label412:
        localObject3 = ((cgu)localObject3).i((String)localObject1).a(k);
        if (!TextUtils.isEmpty(l)) {
          break label526;
        }
      }
      label463:
      label472:
      label481:
      label490:
      label499:
      label508:
      label517:
      label526:
      for (localObject1 = null;; localObject1 = l)
      {
        localObject1 = ((cgu)localObject3).h((String)localObject1).a();
        break;
        localObject1 = b;
        break label265;
        localObject1 = c;
        break label286;
        localObject1 = d;
        break label307;
        localObject1 = e;
        break label328;
        localObject1 = f;
        break label349;
        localObject1 = g;
        break label370;
        localObject1 = h;
        break label391;
        localObject1 = i;
        break label412;
      }
      label535:
      localObject3 = b;
    }
    return a(paramContext, localLinkedList);
  }
  
  public static kno f(Object paramObject)
  {
    return new kno(paramObject.getClass().getSimpleName());
  }
  
  public static boolean f(int paramInt)
  {
    return (paramInt == 3) || (paramInt == 2);
  }
  
  public static boolean f(String paramString1, String paramString2)
  {
    return (!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)) && ((paramString1.equals(paramString2)) || (paramString2.equals(z(paramString1))) || (paramString1.equals(z(paramString2))));
  }
  
  public static float g(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readFloat();
  }
  
  public static int g(String paramString1, String paramString2)
  {
    hbs.c();
    int i3 = d(35633, paramString1);
    if (i3 == 0)
    {
      B("failed to load vertex shader");
      return 0;
    }
    int i4 = d(35632, paramString2);
    if (i4 == 0)
    {
      B("failed to load pixel shader");
      return 0;
    }
    int i2 = GLES20.glCreateProgram();
    int i1;
    if (i2 == 0)
    {
      B("failed to create program");
      i1 = i2;
    }
    for (;;)
    {
      GLES20.glDeleteShader(i3);
      GLES20.glDeleteShader(i4);
      return i1;
      GLES20.glAttachShader(i2, i3);
      B("glAttachShader");
      GLES20.glAttachShader(i2, i4);
      B("glAttachShader");
      GLES20.glLinkProgram(i2);
      paramString1 = new int[1];
      GLES20.glGetProgramiv(i2, 35714, paramString1, 0);
      i1 = i2;
      if (paramString1[0] != 1)
      {
        hlk.a(6, "vclib", "Could not link program: ");
        hlk.a(6, "vclib", GLES20.glGetProgramInfoLog(i2));
        GLES20.glDeleteProgram(i2);
        i1 = 0;
      }
    }
  }
  
  @Deprecated
  private static haw g(bfd parambfd)
  {
    if (parambfd != null) {}
    for (int i1 = parambfd.g();; i1 = -1) {
      return v(i1);
    }
  }
  
  public static String g(String paramString)
  {
    if (paramString == null) {
      localObject = null;
    }
    do
    {
      return (String)localObject;
      localObject = paramString;
    } while (paramString.indexOf('|') < 0);
    Object localObject = new TextUtils.SimpleStringSplitter('|');
    ((TextUtils.StringSplitter)localObject).setString(paramString);
    return (String)((TextUtils.StringSplitter)localObject).iterator().next();
  }
  
  public static void g()
  {
    Object localObject = new File(e());
    if (((File)localObject).exists())
    {
      localObject = ((File)localObject).listFiles();
      int i2 = localObject.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localObject[i1].delete();
        i1 += 1;
      }
    }
  }
  
  public static void g(Context paramContext)
  {
    oJ = paramContext;
    if (oL != null)
    {
      Iterator localIterator = oL.iterator();
      while (localIterator.hasNext()) {
        ((dju)localIterator.next()).a(paramContext);
      }
      oL = null;
    }
  }
  
  public static boolean g(int paramInt)
  {
    return paramInt == 1;
  }
  
  public static double h(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readDouble();
  }
  
  public static bfd h()
  {
    cgw localcgw = cfc.a().r();
    if (localcgw != null) {
      return localcgw.l();
    }
    return null;
  }
  
  public static List<efx> h(String paramString)
  {
    return a(paramString, 0);
  }
  
  public static lca h(Context paramContext)
  {
    Object localObject = era.a(paramContext);
    if (localObject != null)
    {
      paramContext = new lca();
      StringBuilder localStringBuilder = new StringBuilder();
      if ((localObject instanceof CellInfoGsm))
      {
        localObject = ((CellInfoGsm)localObject).getCellIdentity();
        if (localObject != null)
        {
          a = Integer.valueOf(1);
          localStringBuilder.append(((CellIdentityGsm)localObject).getMcc());
          localStringBuilder.append(((CellIdentityGsm)localObject).getMnc());
          localStringBuilder.append(String.format("%04x", new Object[] { Integer.valueOf(((CellIdentityGsm)localObject).getLac()) }));
          localStringBuilder.append(String.format("%04x", new Object[] { Integer.valueOf(((CellIdentityGsm)localObject).getCid()) }));
        }
      }
      for (;;)
      {
        b = localStringBuilder.toString();
        return paramContext;
        if ((localObject instanceof CellInfoWcdma))
        {
          localObject = ((CellInfoWcdma)localObject).getCellIdentity();
          if (localObject != null)
          {
            a = Integer.valueOf(2);
            localStringBuilder.append(((CellIdentityWcdma)localObject).getMcc());
            localStringBuilder.append(((CellIdentityWcdma)localObject).getMnc());
            localStringBuilder.append(String.format("%04x", new Object[] { Integer.valueOf(((CellIdentityWcdma)localObject).getLac()) }));
            localStringBuilder.append(String.format("%07x", new Object[] { Integer.valueOf(((CellIdentityWcdma)localObject).getCid()) }));
          }
        }
        else
        {
          if (!(localObject instanceof CellInfoLte)) {
            break;
          }
          localObject = ((CellInfoLte)localObject).getCellIdentity();
          if (localObject != null)
          {
            a = Integer.valueOf(5);
            localStringBuilder.append(((CellIdentityLte)localObject).getMcc());
            localStringBuilder.append(((CellIdentityLte)localObject).getMnc());
            localStringBuilder.append(String.format("%04x", new Object[] { Integer.valueOf(((CellIdentityLte)localObject).getTac()) }));
            localStringBuilder.append(String.format("%07x", new Object[] { Integer.valueOf(((CellIdentityLte)localObject).getCi()) }));
          }
        }
      }
      ezi.c("Babel_telephony", "TeleAccessNetworkInfoUtil.getAccessNetworkInfoForCellInfo, Unsupported CellInfo", new Object[0]);
      return null;
    }
    ezi.c("Babel_telephony", "TeleAccessNetworkInfoUtil.getAccessNetworkInfo, registered cellular network not available.", new Object[0]);
    return null;
  }
  
  public static boolean h(int paramInt)
  {
    return paramInt == 2;
  }
  
  public static int i(String paramString)
  {
    hbs.b();
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    localMediaMetadataRetriever.setDataSource(paramString);
    return Integer.parseInt(localMediaMetadataRetriever.extractMetadata(9));
  }
  
  public static String i()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = oJ;
    fak localfak = (fak)ilh.a((Context)localObject, fak.class);
    localStringBuilder.append(((Context)localObject).getPackageName());
    localStringBuilder.append('/');
    localStringBuilder.append(localfak.d());
    localStringBuilder.append(" (Linux; U; Android ");
    localStringBuilder.append(Build.VERSION.RELEASE);
    localStringBuilder.append("; ");
    localStringBuilder.append(Locale.getDefault().toString());
    localObject = Build.MODEL;
    if (((String)localObject).length() > 0)
    {
      localStringBuilder.append("; ");
      localStringBuilder.append((String)localObject);
    }
    localObject = Build.ID;
    if (((String)localObject).length() > 0)
    {
      localStringBuilder.append("; Build/");
      localStringBuilder.append((String)localObject);
    }
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
  
  public static String i(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 39 + "VideoChatConstants.UNKNOWN: " + paramInt;
    case 0: 
      return "CALL_END_NONE";
    case 1: 
      return "CALL_END_UNKNOWN";
    case 2: 
      return "CALL_ENTER_ERROR_HANGOUT_OVER";
    case 3: 
      return "CALL_ENTER_TIMEOUT";
    case 4: 
      return "CALL_ENTER_TIMEOUT_CREATE_CONV";
    case 5: 
      return "CALL_ENTER_TIMEOUT_SIGN_IN";
    case 6: 
      return "CALL_ENTER_TIMEOUT_JID_LOOKUP";
    case 7: 
      return "CALL_ENTER_TIMEOUT_ROOM_DISCOVERY";
    case 8: 
      return "CALL_ENTER_TIMEOUT_ROOM_CONFIG";
    case 9: 
      return "CALL_ENTER_TIMEOUT_ENTER_CHATROOM";
    case 10: 
      return "CALL_ENTER_TIMEOUT_INITIATE_SESSION";
    case 11: 
      return "CALL_ENTER_TIMEOUT_CREATE_HANGOUT_ID";
    case 12: 
      return "CALL_ENTER_ERROR_BLOCKED";
    case 13: 
      return "CALL_ENTER_ERROR_BLOCKING";
    case 14: 
      return "CALL_ENTER_ERROR_MAX_USERS";
    case 15: 
      return "CALL_ENTER_ERROR_SERVICE_UNAVAILABLE";
    case 16: 
      return "CALL_ENTER_ERROR_MEDIA_SESSION_REJECTED";
    case 17: 
      return "CALL_ENTER_ERROR_NOT_ACCEPTABLE";
    case 18: 
      return "CALL_ENTER_ERROR_ROOM_LOCKED";
    case 19: 
      return "CALL_ENTER_ERROR_UNEXPECTED_HOA";
    case 20: 
      return "CALL_ENTER_ERROR_MATURE_CONTENT";
    case 21: 
      return "CALL_END_SIG_SOCKET_CLOSED";
    case 22: 
      return "CALL_END_SIG_CHANNEL_TIMEOUT";
    case 23: 
      return "CALL_ERROR_MEDIA_CONNECTIVITY_FAILURE";
    case 24: 
      return "CALL_ERROR_MEDIA_SESSION_TERMINATED_REMOTELY";
    case 25: 
      return "CALL_END_KICKED";
    case 26: 
      return "CALL_ENTER_ERROR_UNEXPECTED_ABUSE_RECORDABLE";
    case 1000: 
      return "CALL_ENTER_ERROR_SIGNIN_FAILED";
    case 1001: 
      return "CALL_ENTER_ERROR_NO_NETWORK";
    case 1002: 
      return "CALL_ENTER_ERROR_WIFI_REQUIRED";
    case 1003: 
      return "CALL_END_NETWORK_DISCONNECTED";
    case 1004: 
      return "CALL_END_LOCAL_USER_ENDED";
    case 1005: 
      return "CALL_END_AUTO_EXIT_ON_EMPTY_HANGOUT";
    case 1006: 
      return "CALL_END_PHONE_CALL";
    case 1007: 
      return "CALL_END_REMOTE_USER_UNAVAILABLE";
    case 1008: 
      return "CALL_END_MISSING_CODEC";
    case 1009: 
      return "CALL_END_REMOTE_USER_ENDED";
    case 1010: 
      return "CALL_END_RING_UNANSWERED";
    case 1011: 
      return "CALL_END_RING_DECLINED";
    case 1012: 
      return "CALL_END_NOT_ONGOING_AS_EXPECTED";
    case 1013: 
      return "CALL_ENTER_ERROR_ONGOING_PHONE_CALL";
    case 1014: 
      return "CALL_END_ERROR_INSUFFICIENT_FUNDS";
    case 1015: 
      return "CALL_END_HANDOFF_TO_CELLULAR";
    case 1017: 
      return "CALL_ERROR_ANDROID_TELEPHONY_API_ERROR";
    }
    return "CALL_ERROR_HANDOFF_TO_PSTN_ERROR_NETWORK_DISCONNECTED";
  }
  
  public static String i(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
  }
  
  public static String i(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    String str = paramParcel.readString();
    paramParcel.setDataPosition(paramInt + i1);
    return str;
  }
  
  public static int j(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hbs.a(39 + "unknown hangouts end cause: " + paramInt);
    case 0: 
    case 1: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    case 20: 
    case 21: 
    case 22: 
    case 23: 
    case 26: 
    case 30: 
    case 1000: 
    case 1001: 
    case 1002: 
    case 1003: 
    case 1007: 
    case 1008: 
    case 1010: 
    case 1011: 
    case 1012: 
    case 1013: 
    case 1014: 
    case 1018: 
      return 1;
    case 2: 
      return 2;
    case 24: 
      return 3;
    case 25: 
      return 2;
    case 1004: 
    case 1005: 
    case 1006: 
      return 2;
    case 1009: 
      return 3;
    }
    return 2;
  }
  
  public static Intent j()
  {
    Object localObject = (clg)ilh.a(oJ, clg.class);
    localObject = new Intent(oJ, ((clg)localObject).a());
    ((Intent)localObject).setAction("fullscreen_activity");
    ((Intent)localObject).setFlags(268697600);
    return (Intent)localObject;
  }
  
  public static IBinder j(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    IBinder localIBinder = paramParcel.readStrongBinder();
    paramParcel.setDataPosition(paramInt + i1);
    return localIBinder;
  }
  
  public static String j(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        String str = paramContext.getSSID();
        paramContext = str;
        if (str != null)
        {
          paramContext = str;
          if (str.length() > 1)
          {
            paramContext = str;
            if (str.startsWith("\""))
            {
              paramContext = str;
              if (str.endsWith("\"")) {
                paramContext = str.substring(1, str.length() - 1);
              }
            }
          }
        }
        return paramContext;
      }
    }
    return null;
  }
  
  public static String j(String paramString)
  {
    String str = String.valueOf(f());
    return String.valueOf(str).length() + 1 + String.valueOf(paramString).length() + str + "/" + paramString;
  }
  
  @Deprecated
  public static Context k()
  {
    return oJ;
  }
  
  public static Bundle k(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    Bundle localBundle = paramParcel.readBundle();
    paramParcel.setDataPosition(paramInt + i1);
    return localBundle;
  }
  
  public static String k(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 19 + "INVALID_" + paramInt;
    case 7: 
      return "1xRTT";
    case 4: 
      return "CDMA";
    case 2: 
      return "EDGE";
    case 14: 
      return "EHRPD";
    case 5: 
      return "EVDO_0";
    case 6: 
      return "EVDO_A";
    case 12: 
      return "EVDO_B";
    case 1: 
      return "GPRS";
    case 8: 
      return "HSDPA";
    case 10: 
      return "HSPA";
    case 15: 
      return "HSPAP";
    case 9: 
      return "HSUPA";
    case 11: 
      return "IDEN";
    case 13: 
      return "LTE";
    case 3: 
      return "UMTS";
    }
    return "UNKNOWN";
  }
  
  public static void k(String paramString)
  {
    if (ezi.a("Babel_calls", 3)) {
      ezi.b("Babel_calls", paramString, new Object[0]);
    }
  }
  
  public static boolean k(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext != null)
    {
      paramContext = paramContext.getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  public static czb l(String paramString)
  {
    return new czb(null, m(paramString));
  }
  
  public static void l()
  {
    Object localObject1 = dvd.d;
    if (!dvi.a()) {
      return;
    }
    if (enu.a())
    {
      bft.a(enu.b(enu.b()));
      return;
    }
    Object localObject2 = oJ;
    localObject1 = ((Context)localObject2).getResources();
    Object localObject3 = eo.a((Context)localObject2);
    Intent localIntent = d(dvd.l());
    localIntent.addFlags(335544320);
    ((eo)localObject3).a(localIntent);
    ((eo)localObject3).b(new Intent(oJ, SmsStorageLowWarningActivity.class));
    localObject3 = ((eo)localObject3).a(0, 134217728);
    localObject2 = new cy((Context)localObject2);
    ((cy)localObject2).a(((Resources)localObject1).getString(StressMode.jP)).c(((Resources)localObject1).getString(StressMode.jO)).a(R.drawable.cm).d(0).c().a(false).a((PendingIntent)localObject3);
    localObject2 = new cx((cy)localObject2);
    ((cx)localObject2).b(((Resources)localObject1).getString(StressMode.jN));
    localObject1 = ((cx)localObject2).a();
    ((NotificationManager)oJ.getSystemService("notification")).notify(A(), 12, (Notification)localObject1);
  }
  
  public static boolean l(int paramInt)
  {
    return (paramInt == 8) || (paramInt == 9) || (paramInt == 15) || (paramInt == 10);
  }
  
  public static boolean l(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext != null)
    {
      paramContext = paramContext.getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isConnected()) && (paramContext.getType() == 1);
    }
    return false;
  }
  
  public static byte[] l(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    byte[] arrayOfByte = paramParcel.createByteArray();
    paramParcel.setDataPosition(paramInt + i1);
    return arrayOfByte;
  }
  
  public static PhoneAccountHandle m(Context paramContext)
  {
    return new PhoneAccountHandle(new ComponentName(paramContext, TeleConnectionService.class), "hangouts");
  }
  
  public static String m(int paramInt)
  {
    String str = String.valueOf("#stress:");
    return String.valueOf(str).length() + 11 + str + paramInt;
  }
  
  public static String m(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return ezm.k(paramString);
  }
  
  public static void m()
  {
    dvi localdvi = dvd.d;
    if (!dvi.a()) {
      return;
    }
    n();
  }
  
  public static String[] m(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    String[] arrayOfString = paramParcel.createStringArray();
    paramParcel.setDataPosition(paramInt + i1);
    return arrayOfString;
  }
  
  public static Intent n(String paramString)
  {
    Intent localIntent = new Intent(oJ, ApnEditorActivity.class);
    localIntent.putExtra("apn_row_id", paramString);
    return localIntent;
  }
  
  public static String n(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "unknown status code: " + paramInt;
    case -1: 
      return "SUCCESS_CACHE";
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 13: 
      return "ERROR_OPERATION_FAILED";
    case 14: 
      return "INTERRUPTED";
    case 15: 
      return "TIMEOUT";
    case 16: 
      return "CANCELED";
    case 3000: 
      return "AUTH_API_INVALID_CREDENTIALS";
    case 3001: 
      return "AUTH_API_ACCESS_FORBIDDEN";
    case 3002: 
      return "AUTH_API_CLIENT_ERROR";
    case 3003: 
      return "AUTH_API_SERVER_ERROR";
    case 3004: 
      return "AUTH_TOKEN_ERROR";
    }
    return "AUTH_URL_RESOLUTION";
  }
  
  public static ArrayList<Integer> n(Parcel paramParcel, int paramInt)
  {
    int i1 = a(paramParcel, paramInt);
    int i2 = paramParcel.dataPosition();
    if (i1 == 0) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i3 = paramParcel.readInt();
    paramInt = 0;
    while (paramInt < i3)
    {
      localArrayList.add(Integer.valueOf(paramParcel.readInt()));
      paramInt += 1;
    }
    paramParcel.setDataPosition(i2 + i1);
    return localArrayList;
  }
  
  public static void n()
  {
    ((NotificationManager)oJ.getSystemService("notification")).cancel(A(), 12);
  }
  
  public static boolean n(Context paramContext)
  {
    if (ra) {
      return true;
    }
    TelecomManager localTelecomManager = (TelecomManager)paramContext.getSystemService("telecom");
    String str;
    try
    {
      PhoneAccountHandle localPhoneAccountHandle = localTelecomManager.getConnectionManager();
      if (m(paramContext).equals(localPhoneAccountHandle)) {
        return true;
      }
    }
    catch (Exception localException)
    {
      paramContext = String.valueOf("TeleUtils.isHangoutsSetAsConnectionManager, calling getConnectionManager failed: ");
      str = String.valueOf(localException);
      ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 0 + String.valueOf(str).length() + paramContext + str, new Object[0]);
      return false;
    }
    paramContext = str.getPhoneAccount(m(paramContext));
    return (paramContext != null) && ((paramContext.getCapabilities() & 0x2) != 0);
  }
  
  public static Intent o(String paramString)
  {
    return new Intent("android.intent.action.VIEW", Uri.parse(paramString));
  }
  
  public static String o(Context paramContext)
  {
    String str = null;
    if (a(paramContext, "babel_use_from_number_for_handoff", true)) {
      str = ezm.f();
    }
    paramContext = String.valueOf(s(str));
    if (paramContext.length() != 0) {}
    for (paramContext = "TeleUtils.getFromNumberForHandoff, fromNumber: ".concat(paramContext);; paramContext = new String("TeleUtils.getFromNumberForHandoff, fromNumber: "))
    {
      ezi.c("Babel_telephony", paramContext, new Object[0]);
      return str;
    }
  }
  
  public static KeyPair o()
  {
    try
    {
      Object localObject = KeyPairGenerator.getInstance("RSA");
      ((KeyPairGenerator)localObject).initialize(2048);
      localObject = ((KeyPairGenerator)localObject).generateKeyPair();
      return (KeyPair)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError(localNoSuchAlgorithmException);
    }
  }
  
  public static ArrayList<String> o(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i1 = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    ArrayList localArrayList = paramParcel.createStringArrayList();
    paramParcel.setDataPosition(paramInt + i1);
    return localArrayList;
  }
  
  public static boolean o(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  public static int p(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(0xFFFF0000 | paramInt);
    paramParcel.writeInt(0);
    return paramParcel.dataPosition();
  }
  
  public static Intent p(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT_OR_EDIT");
    localIntent.setType("vnd.android.cursor.item/contact");
    if (aee.b(paramString)) {
      localIntent.putExtra("email", paramString);
    }
    for (;;)
    {
      localIntent.setFlags(524288);
      return localIntent;
      localIntent.putExtra("phone", paramString);
      localIntent.putExtra("phone_type", 2);
    }
  }
  
  public static String p()
  {
    return String.format("2-%010x@%s", new Object[] { Long.valueOf(Math.abs(new Random().nextLong()) % 1099511627775L), "pstn-conference.google.com" });
  }
  
  public static String p(int paramInt)
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 3;
    if (i1 < paramInt + 3)
    {
      if (i1 + 4 >= arrayOfStackTraceElement.length) {}
      for (Object localObject = "<bottom of call stack>";; localObject = ((StackTraceElement)localObject).getClassName() + "." + ((StackTraceElement)localObject).getMethodName() + ":" + ((StackTraceElement)localObject).getLineNumber())
      {
        localStringBuffer.append((String)localObject).append(" ");
        i1 += 1;
        break;
        localObject = arrayOfStackTraceElement[(i1 + 4)];
      }
    }
    return localStringBuffer.toString();
  }
  
  public static void p(Context paramContext)
  {
    ezi.c("Babel_telephony", "TeleUtils.forceUnmutePhone, unmuting microphone", new Object[0]);
    ((AudioManager)paramContext.getSystemService("audio")).setMicrophoneMute(false);
  }
  
  public static int q()
  {
    hbs.c();
    int[] arrayOfInt = new int[1];
    GLES20.glGenTextures(1, arrayOfInt, 0);
    B("generateTexture");
    return arrayOfInt[0];
  }
  
  public static Intent q(String paramString)
  {
    paramString = Uri.parse(paramString);
    paramString = paramString.buildUpon().scheme(paramString.getScheme().toLowerCase(Locale.US)).build();
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.addCategory("android.intent.category.BROWSABLE");
    localIntent.setData(paramString);
    return localIntent;
  }
  
  public static void q(Parcel paramParcel, int paramInt)
  {
    int i1 = paramParcel.dataPosition();
    paramParcel.setDataPosition(paramInt - 4);
    paramParcel.writeInt(i1 - paramInt);
    paramParcel.setDataPosition(i1);
  }
  
  public static boolean q(int paramInt)
  {
    return (ti) || (Log.isLoggable("PeopleService", paramInt));
  }
  
  public static boolean q(Context paramContext)
  {
    paramContext = (dcj)ilh.a(paramContext, dcj.class);
    if ((paramContext.a("android.permission.CALL_PHONE")) && (paramContext.a("android.permission.READ_PHONE_STATE")) && (paramContext.a("android.permission.RECORD_AUDIO"))) {}
    for (boolean bool = true;; bool = false)
    {
      ezi.c("Babel_telephony", 58 + "TeleUtils.hasWifiCallPermissions, has permissions? : " + bool, new Object[0]);
      return bool;
    }
  }
  
  public static Uri r(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Uri.fromParts("tel", paramString, null);
  }
  
  public static Status r(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default: 
      str = n(paramInt);
    }
    for (;;)
    {
      return new Status(paramInt, str);
      str = "TARGET_NODE_NOT_CONNECTED";
      continue;
      str = "DUPLICATE_LISTENER";
      continue;
      str = "UNKNOWN_LISTENER";
      continue;
      str = "DATA_ITEM_TOO_LARGE";
      continue;
      str = "INVALID_TARGET_NODE";
      continue;
      str = "ASSET_UNAVAILABLE";
    }
  }
  
  public static Set<Integer> r()
  {
    HashSet localHashSet = new HashSet(57);
    localHashSet.add(Integer.valueOf(7));
    localHashSet.add(Integer.valueOf(27));
    localHashSet.add(Integer.valueOf(30));
    localHashSet.add(Integer.valueOf(31));
    localHashSet.add(Integer.valueOf(34));
    localHashSet.add(Integer.valueOf(36));
    localHashSet.add(Integer.valueOf(43));
    localHashSet.add(Integer.valueOf(44));
    localHashSet.add(Integer.valueOf(49));
    localHashSet.add(Integer.valueOf(54));
    localHashSet.add(Integer.valueOf(55));
    localHashSet.add(Integer.valueOf(58));
    localHashSet.add(Integer.valueOf(61));
    localHashSet.add(Integer.valueOf(62));
    localHashSet.add(Integer.valueOf(63));
    localHashSet.add(Integer.valueOf(66));
    localHashSet.add(Integer.valueOf(81));
    localHashSet.add(Integer.valueOf(84));
    localHashSet.add(Integer.valueOf(90));
    localHashSet.add(Integer.valueOf(91));
    localHashSet.add(Integer.valueOf(94));
    localHashSet.add(Integer.valueOf(95));
    localHashSet.add(Integer.valueOf(255));
    localHashSet.add(Integer.valueOf(350));
    localHashSet.add(Integer.valueOf(351));
    localHashSet.add(Integer.valueOf(352));
    localHashSet.add(Integer.valueOf(358));
    localHashSet.add(Integer.valueOf(359));
    localHashSet.add(Integer.valueOf(372));
    localHashSet.add(Integer.valueOf(373));
    localHashSet.add(Integer.valueOf(380));
    localHashSet.add(Integer.valueOf(381));
    localHashSet.add(Integer.valueOf(385));
    localHashSet.add(Integer.valueOf(505));
    localHashSet.add(Integer.valueOf(506));
    localHashSet.add(Integer.valueOf(595));
    localHashSet.add(Integer.valueOf(675));
    localHashSet.add(Integer.valueOf(676));
    localHashSet.add(Integer.valueOf(679));
    localHashSet.add(Integer.valueOf(855));
    localHashSet.add(Integer.valueOf(971));
    localHashSet.add(Integer.valueOf(972));
    localHashSet.add(Integer.valueOf(995));
    return localHashSet;
  }
  
  public static boolean r(Context paramContext)
  {
    return ((dcj)ilh.a(paramContext, dcj.class)).a("android.permission.ACCESS_COARSE_LOCATION");
  }
  
  public static String s(String paramString)
  {
    Object localObject = paramString;
    if (!Log.isLoggable("Babel_telephony", 3))
    {
      localObject = ezi.w;
      if (paramString == null) {
        localObject = null;
      }
    }
    else
    {
      return (String)localObject;
    }
    localObject = new StringBuilder(paramString.length());
    paramString = paramString.toCharArray();
    int i2 = paramString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      ((StringBuilder)localObject).append(a(paramString[i1]));
      i1 += 1;
    }
    return ((StringBuilder)localObject).toString();
  }
  
  public static Map<Integer, List<String>> s()
  {
    HashMap localHashMap = new HashMap(285);
    ArrayList localArrayList = new ArrayList(25);
    localArrayList.add("US");
    localArrayList.add("AG");
    localArrayList.add("AI");
    localArrayList.add("AS");
    localArrayList.add("BB");
    localArrayList.add("BM");
    localArrayList.add("BS");
    localArrayList.add("CA");
    localArrayList.add("DM");
    localArrayList.add("DO");
    localArrayList.add("GD");
    localArrayList.add("GU");
    localArrayList.add("JM");
    localArrayList.add("KN");
    localArrayList.add("KY");
    localArrayList.add("LC");
    localArrayList.add("MP");
    localArrayList.add("MS");
    localArrayList.add("PR");
    localArrayList.add("SX");
    localArrayList.add("TC");
    localArrayList.add("TT");
    localArrayList.add("VC");
    localArrayList.add("VG");
    localArrayList.add("VI");
    localHashMap.put(Integer.valueOf(1), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RU");
    localArrayList.add("KZ");
    localHashMap.put(Integer.valueOf(7), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EG");
    localHashMap.put(Integer.valueOf(20), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZA");
    localHashMap.put(Integer.valueOf(27), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GR");
    localHashMap.put(Integer.valueOf(30), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NL");
    localHashMap.put(Integer.valueOf(31), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BE");
    localHashMap.put(Integer.valueOf(32), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FR");
    localHashMap.put(Integer.valueOf(33), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ES");
    localHashMap.put(Integer.valueOf(34), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HU");
    localHashMap.put(Integer.valueOf(36), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("IT");
    localArrayList.add("VA");
    localHashMap.put(Integer.valueOf(39), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RO");
    localHashMap.put(Integer.valueOf(40), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CH");
    localHashMap.put(Integer.valueOf(41), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AT");
    localHashMap.put(Integer.valueOf(43), localArrayList);
    localArrayList = new ArrayList(4);
    localArrayList.add("GB");
    localArrayList.add("GG");
    localArrayList.add("IM");
    localArrayList.add("JE");
    localHashMap.put(Integer.valueOf(44), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DK");
    localHashMap.put(Integer.valueOf(45), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SE");
    localHashMap.put(Integer.valueOf(46), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("NO");
    localArrayList.add("SJ");
    localHashMap.put(Integer.valueOf(47), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PL");
    localHashMap.put(Integer.valueOf(48), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DE");
    localHashMap.put(Integer.valueOf(49), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PE");
    localHashMap.put(Integer.valueOf(51), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MX");
    localHashMap.put(Integer.valueOf(52), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CU");
    localHashMap.put(Integer.valueOf(53), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AR");
    localHashMap.put(Integer.valueOf(54), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BR");
    localHashMap.put(Integer.valueOf(55), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CL");
    localHashMap.put(Integer.valueOf(56), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CO");
    localHashMap.put(Integer.valueOf(57), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VE");
    localHashMap.put(Integer.valueOf(58), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MY");
    localHashMap.put(Integer.valueOf(60), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("AU");
    localArrayList.add("CC");
    localArrayList.add("CX");
    localHashMap.put(Integer.valueOf(61), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ID");
    localHashMap.put(Integer.valueOf(62), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PH");
    localHashMap.put(Integer.valueOf(63), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NZ");
    localHashMap.put(Integer.valueOf(64), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SG");
    localHashMap.put(Integer.valueOf(65), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TH");
    localHashMap.put(Integer.valueOf(66), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JP");
    localHashMap.put(Integer.valueOf(81), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KR");
    localHashMap.put(Integer.valueOf(82), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VN");
    localHashMap.put(Integer.valueOf(84), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CN");
    localHashMap.put(Integer.valueOf(86), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TR");
    localHashMap.put(Integer.valueOf(90), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IN");
    localHashMap.put(Integer.valueOf(91), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PK");
    localHashMap.put(Integer.valueOf(92), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AF");
    localHashMap.put(Integer.valueOf(93), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LK");
    localHashMap.put(Integer.valueOf(94), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MM");
    localHashMap.put(Integer.valueOf(95), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IR");
    localHashMap.put(Integer.valueOf(98), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SS");
    localHashMap.put(Integer.valueOf(211), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("MA");
    localArrayList.add("EH");
    localHashMap.put(Integer.valueOf(212), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DZ");
    localHashMap.put(Integer.valueOf(213), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TN");
    localHashMap.put(Integer.valueOf(216), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LY");
    localHashMap.put(Integer.valueOf(218), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GM");
    localHashMap.put(Integer.valueOf(220), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SN");
    localHashMap.put(Integer.valueOf(221), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MR");
    localHashMap.put(Integer.valueOf(222), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ML");
    localHashMap.put(Integer.valueOf(223), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GN");
    localHashMap.put(Integer.valueOf(224), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CI");
    localHashMap.put(Integer.valueOf(225), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BF");
    localHashMap.put(Integer.valueOf(226), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NE");
    localHashMap.put(Integer.valueOf(227), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TG");
    localHashMap.put(Integer.valueOf(228), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BJ");
    localHashMap.put(Integer.valueOf(229), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MU");
    localHashMap.put(Integer.valueOf(230), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LR");
    localHashMap.put(Integer.valueOf(231), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SL");
    localHashMap.put(Integer.valueOf(232), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GH");
    localHashMap.put(Integer.valueOf(233), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NG");
    localHashMap.put(Integer.valueOf(234), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TD");
    localHashMap.put(Integer.valueOf(235), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CF");
    localHashMap.put(Integer.valueOf(236), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CM");
    localHashMap.put(Integer.valueOf(237), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CV");
    localHashMap.put(Integer.valueOf(238), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ST");
    localHashMap.put(Integer.valueOf(239), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GQ");
    localHashMap.put(Integer.valueOf(240), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GA");
    localHashMap.put(Integer.valueOf(241), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CG");
    localHashMap.put(Integer.valueOf(242), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CD");
    localHashMap.put(Integer.valueOf(243), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AO");
    localHashMap.put(Integer.valueOf(244), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GW");
    localHashMap.put(Integer.valueOf(245), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IO");
    localHashMap.put(Integer.valueOf(246), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AC");
    localHashMap.put(Integer.valueOf(247), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SC");
    localHashMap.put(Integer.valueOf(248), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SD");
    localHashMap.put(Integer.valueOf(249), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RW");
    localHashMap.put(Integer.valueOf(250), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ET");
    localHashMap.put(Integer.valueOf(251), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SO");
    localHashMap.put(Integer.valueOf(252), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DJ");
    localHashMap.put(Integer.valueOf(253), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KE");
    localHashMap.put(Integer.valueOf(254), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TZ");
    localHashMap.put(Integer.valueOf(255), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UG");
    localHashMap.put(Integer.valueOf(256), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BI");
    localHashMap.put(Integer.valueOf(257), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MZ");
    localHashMap.put(Integer.valueOf(258), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZM");
    localHashMap.put(Integer.valueOf(260), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MG");
    localHashMap.put(Integer.valueOf(261), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RE");
    localArrayList.add("YT");
    localHashMap.put(Integer.valueOf(262), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZW");
    localHashMap.put(Integer.valueOf(263), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NA");
    localHashMap.put(Integer.valueOf(264), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MW");
    localHashMap.put(Integer.valueOf(265), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LS");
    localHashMap.put(Integer.valueOf(266), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BW");
    localHashMap.put(Integer.valueOf(267), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SZ");
    localHashMap.put(Integer.valueOf(268), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KM");
    localHashMap.put(Integer.valueOf(269), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("SH");
    localArrayList.add("TA");
    localHashMap.put(Integer.valueOf(290), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ER");
    localHashMap.put(Integer.valueOf(291), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AW");
    localHashMap.put(Integer.valueOf(297), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FO");
    localHashMap.put(Integer.valueOf(298), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GL");
    localHashMap.put(Integer.valueOf(299), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GI");
    localHashMap.put(Integer.valueOf(350), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PT");
    localHashMap.put(Integer.valueOf(351), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LU");
    localHashMap.put(Integer.valueOf(352), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IE");
    localHashMap.put(Integer.valueOf(353), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IS");
    localHashMap.put(Integer.valueOf(354), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AL");
    localHashMap.put(Integer.valueOf(355), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MT");
    localHashMap.put(Integer.valueOf(356), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CY");
    localHashMap.put(Integer.valueOf(357), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("FI");
    localArrayList.add("AX");
    localHashMap.put(Integer.valueOf(358), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BG");
    localHashMap.put(Integer.valueOf(359), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LT");
    localHashMap.put(Integer.valueOf(370), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LV");
    localHashMap.put(Integer.valueOf(371), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EE");
    localHashMap.put(Integer.valueOf(372), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MD");
    localHashMap.put(Integer.valueOf(373), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AM");
    localHashMap.put(Integer.valueOf(374), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BY");
    localHashMap.put(Integer.valueOf(375), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AD");
    localHashMap.put(Integer.valueOf(376), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MC");
    localHashMap.put(Integer.valueOf(377), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SM");
    localHashMap.put(Integer.valueOf(378), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UA");
    localHashMap.put(Integer.valueOf(380), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RS");
    localHashMap.put(Integer.valueOf(381), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ME");
    localHashMap.put(Integer.valueOf(382), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HR");
    localHashMap.put(Integer.valueOf(385), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SI");
    localHashMap.put(Integer.valueOf(386), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BA");
    localHashMap.put(Integer.valueOf(387), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MK");
    localHashMap.put(Integer.valueOf(389), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CZ");
    localHashMap.put(Integer.valueOf(420), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SK");
    localHashMap.put(Integer.valueOf(421), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LI");
    localHashMap.put(Integer.valueOf(423), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FK");
    localHashMap.put(Integer.valueOf(500), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BZ");
    localHashMap.put(Integer.valueOf(501), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GT");
    localHashMap.put(Integer.valueOf(502), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SV");
    localHashMap.put(Integer.valueOf(503), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HN");
    localHashMap.put(Integer.valueOf(504), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NI");
    localHashMap.put(Integer.valueOf(505), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CR");
    localHashMap.put(Integer.valueOf(506), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PA");
    localHashMap.put(Integer.valueOf(507), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PM");
    localHashMap.put(Integer.valueOf(508), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HT");
    localHashMap.put(Integer.valueOf(509), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("GP");
    localArrayList.add("BL");
    localArrayList.add("MF");
    localHashMap.put(Integer.valueOf(590), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BO");
    localHashMap.put(Integer.valueOf(591), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GY");
    localHashMap.put(Integer.valueOf(592), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EC");
    localHashMap.put(Integer.valueOf(593), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GF");
    localHashMap.put(Integer.valueOf(594), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PY");
    localHashMap.put(Integer.valueOf(595), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MQ");
    localHashMap.put(Integer.valueOf(596), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SR");
    localHashMap.put(Integer.valueOf(597), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UY");
    localHashMap.put(Integer.valueOf(598), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("CW");
    localArrayList.add("BQ");
    localHashMap.put(Integer.valueOf(599), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TL");
    localHashMap.put(Integer.valueOf(670), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NF");
    localHashMap.put(Integer.valueOf(672), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BN");
    localHashMap.put(Integer.valueOf(673), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NR");
    localHashMap.put(Integer.valueOf(674), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PG");
    localHashMap.put(Integer.valueOf(675), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TO");
    localHashMap.put(Integer.valueOf(676), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SB");
    localHashMap.put(Integer.valueOf(677), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VU");
    localHashMap.put(Integer.valueOf(678), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FJ");
    localHashMap.put(Integer.valueOf(679), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PW");
    localHashMap.put(Integer.valueOf(680), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WF");
    localHashMap.put(Integer.valueOf(681), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CK");
    localHashMap.put(Integer.valueOf(682), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NU");
    localHashMap.put(Integer.valueOf(683), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WS");
    localHashMap.put(Integer.valueOf(685), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KI");
    localHashMap.put(Integer.valueOf(686), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NC");
    localHashMap.put(Integer.valueOf(687), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TV");
    localHashMap.put(Integer.valueOf(688), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PF");
    localHashMap.put(Integer.valueOf(689), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TK");
    localHashMap.put(Integer.valueOf(690), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FM");
    localHashMap.put(Integer.valueOf(691), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MH");
    localHashMap.put(Integer.valueOf(692), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(800), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(808), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KP");
    localHashMap.put(Integer.valueOf(850), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HK");
    localHashMap.put(Integer.valueOf(852), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MO");
    localHashMap.put(Integer.valueOf(853), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KH");
    localHashMap.put(Integer.valueOf(855), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LA");
    localHashMap.put(Integer.valueOf(856), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(870), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(878), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BD");
    localHashMap.put(Integer.valueOf(880), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(881), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(882), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(883), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TW");
    localHashMap.put(Integer.valueOf(886), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(888), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MV");
    localHashMap.put(Integer.valueOf(960), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LB");
    localHashMap.put(Integer.valueOf(961), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JO");
    localHashMap.put(Integer.valueOf(962), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SY");
    localHashMap.put(Integer.valueOf(963), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IQ");
    localHashMap.put(Integer.valueOf(964), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KW");
    localHashMap.put(Integer.valueOf(965), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SA");
    localHashMap.put(Integer.valueOf(966), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("YE");
    localHashMap.put(Integer.valueOf(967), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("OM");
    localHashMap.put(Integer.valueOf(968), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PS");
    localHashMap.put(Integer.valueOf(970), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AE");
    localHashMap.put(Integer.valueOf(971), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IL");
    localHashMap.put(Integer.valueOf(972), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BH");
    localHashMap.put(Integer.valueOf(973), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("QA");
    localHashMap.put(Integer.valueOf(974), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BT");
    localHashMap.put(Integer.valueOf(975), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MN");
    localHashMap.put(Integer.valueOf(976), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NP");
    localHashMap.put(Integer.valueOf(977), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(979), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TJ");
    localHashMap.put(Integer.valueOf(992), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TM");
    localHashMap.put(Integer.valueOf(993), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AZ");
    localHashMap.put(Integer.valueOf(994), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GE");
    localHashMap.put(Integer.valueOf(995), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KG");
    localHashMap.put(Integer.valueOf(996), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UZ");
    localHashMap.put(Integer.valueOf(998), localArrayList);
    return localHashMap;
  }
  
  public static void s(int paramInt)
  {
    hbs.c();
    hbs.b(Integer.valueOf(paramInt), Integer.valueOf(0));
    GLES20.glDeleteTextures(1, new int[] { paramInt }, 0);
    C("deleteTexture");
  }
  
  public static boolean s(Context paramContext)
  {
    if (rb) {
      return true;
    }
    paramContext = ((TelecomManager)paramContext.getSystemService("telecom")).getPhoneAccount(m(paramContext));
    return (paramContext != null) && ((paramContext.getCapabilities() & 0x1) != 0);
  }
  
  public static Set<String> t()
  {
    HashSet localHashSet = new HashSet(317);
    localHashSet.add("AC");
    localHashSet.add("AD");
    localHashSet.add("AE");
    localHashSet.add("AF");
    localHashSet.add("AG");
    localHashSet.add("AI");
    localHashSet.add("AL");
    localHashSet.add("AM");
    localHashSet.add("AO");
    localHashSet.add("AR");
    localHashSet.add("AS");
    localHashSet.add("AT");
    localHashSet.add("AU");
    localHashSet.add("AW");
    localHashSet.add("AX");
    localHashSet.add("AZ");
    localHashSet.add("BA");
    localHashSet.add("BB");
    localHashSet.add("BD");
    localHashSet.add("BE");
    localHashSet.add("BF");
    localHashSet.add("BG");
    localHashSet.add("BH");
    localHashSet.add("BI");
    localHashSet.add("BJ");
    localHashSet.add("BL");
    localHashSet.add("BM");
    localHashSet.add("BN");
    localHashSet.add("BO");
    localHashSet.add("BQ");
    localHashSet.add("BR");
    localHashSet.add("BS");
    localHashSet.add("BT");
    localHashSet.add("BW");
    localHashSet.add("BY");
    localHashSet.add("BZ");
    localHashSet.add("CA");
    localHashSet.add("CC");
    localHashSet.add("CD");
    localHashSet.add("CF");
    localHashSet.add("CG");
    localHashSet.add("CH");
    localHashSet.add("CI");
    localHashSet.add("CK");
    localHashSet.add("CL");
    localHashSet.add("CM");
    localHashSet.add("CN");
    localHashSet.add("CO");
    localHashSet.add("CR");
    localHashSet.add("CU");
    localHashSet.add("CV");
    localHashSet.add("CW");
    localHashSet.add("CX");
    localHashSet.add("CY");
    localHashSet.add("CZ");
    localHashSet.add("DE");
    localHashSet.add("DJ");
    localHashSet.add("DK");
    localHashSet.add("DM");
    localHashSet.add("DO");
    localHashSet.add("DZ");
    localHashSet.add("EC");
    localHashSet.add("EE");
    localHashSet.add("EG");
    localHashSet.add("EH");
    localHashSet.add("ER");
    localHashSet.add("ES");
    localHashSet.add("ET");
    localHashSet.add("FI");
    localHashSet.add("FJ");
    localHashSet.add("FK");
    localHashSet.add("FM");
    localHashSet.add("FO");
    localHashSet.add("FR");
    localHashSet.add("GA");
    localHashSet.add("GB");
    localHashSet.add("GD");
    localHashSet.add("GE");
    localHashSet.add("GF");
    localHashSet.add("GG");
    localHashSet.add("GH");
    localHashSet.add("GI");
    localHashSet.add("GL");
    localHashSet.add("GM");
    localHashSet.add("GN");
    localHashSet.add("GP");
    localHashSet.add("GR");
    localHashSet.add("GT");
    localHashSet.add("GU");
    localHashSet.add("GW");
    localHashSet.add("GY");
    localHashSet.add("HK");
    localHashSet.add("HN");
    localHashSet.add("HR");
    localHashSet.add("HT");
    localHashSet.add("HU");
    localHashSet.add("ID");
    localHashSet.add("IE");
    localHashSet.add("IL");
    localHashSet.add("IM");
    localHashSet.add("IN");
    localHashSet.add("IQ");
    localHashSet.add("IR");
    localHashSet.add("IS");
    localHashSet.add("IT");
    localHashSet.add("JE");
    localHashSet.add("JM");
    localHashSet.add("JO");
    localHashSet.add("JP");
    localHashSet.add("KE");
    localHashSet.add("KG");
    localHashSet.add("KH");
    localHashSet.add("KI");
    localHashSet.add("KM");
    localHashSet.add("KN");
    localHashSet.add("KP");
    localHashSet.add("KR");
    localHashSet.add("KW");
    localHashSet.add("KY");
    localHashSet.add("KZ");
    localHashSet.add("LA");
    localHashSet.add("LB");
    localHashSet.add("LC");
    localHashSet.add("LI");
    localHashSet.add("LK");
    localHashSet.add("LR");
    localHashSet.add("LS");
    localHashSet.add("LT");
    localHashSet.add("LU");
    localHashSet.add("LV");
    localHashSet.add("LY");
    localHashSet.add("MA");
    localHashSet.add("MC");
    localHashSet.add("MD");
    localHashSet.add("ME");
    localHashSet.add("MF");
    localHashSet.add("MG");
    localHashSet.add("MH");
    localHashSet.add("MK");
    localHashSet.add("ML");
    localHashSet.add("MM");
    localHashSet.add("MN");
    localHashSet.add("MO");
    localHashSet.add("MP");
    localHashSet.add("MQ");
    localHashSet.add("MR");
    localHashSet.add("MS");
    localHashSet.add("MT");
    localHashSet.add("MU");
    localHashSet.add("MV");
    localHashSet.add("MW");
    localHashSet.add("MX");
    localHashSet.add("MY");
    localHashSet.add("MZ");
    localHashSet.add("NA");
    localHashSet.add("NC");
    localHashSet.add("NE");
    localHashSet.add("NF");
    localHashSet.add("NG");
    localHashSet.add("NI");
    localHashSet.add("NL");
    localHashSet.add("NO");
    localHashSet.add("NP");
    localHashSet.add("NR");
    localHashSet.add("NU");
    localHashSet.add("NZ");
    localHashSet.add("OM");
    localHashSet.add("PA");
    localHashSet.add("PE");
    localHashSet.add("PF");
    localHashSet.add("PG");
    localHashSet.add("PH");
    localHashSet.add("PK");
    localHashSet.add("PL");
    localHashSet.add("PM");
    localHashSet.add("PR");
    localHashSet.add("PT");
    localHashSet.add("PW");
    localHashSet.add("PY");
    localHashSet.add("QA");
    localHashSet.add("RE");
    localHashSet.add("RO");
    localHashSet.add("RS");
    localHashSet.add("RU");
    localHashSet.add("RW");
    localHashSet.add("SA");
    localHashSet.add("SB");
    localHashSet.add("SC");
    localHashSet.add("SD");
    localHashSet.add("SE");
    localHashSet.add("SG");
    localHashSet.add("SH");
    localHashSet.add("SI");
    localHashSet.add("SJ");
    localHashSet.add("SK");
    localHashSet.add("SL");
    localHashSet.add("SM");
    localHashSet.add("SN");
    localHashSet.add("SO");
    localHashSet.add("SR");
    localHashSet.add("ST");
    localHashSet.add("SV");
    localHashSet.add("SX");
    localHashSet.add("SY");
    localHashSet.add("SZ");
    localHashSet.add("TC");
    localHashSet.add("TD");
    localHashSet.add("TG");
    localHashSet.add("TH");
    localHashSet.add("TJ");
    localHashSet.add("TL");
    localHashSet.add("TM");
    localHashSet.add("TN");
    localHashSet.add("TO");
    localHashSet.add("TR");
    localHashSet.add("TT");
    localHashSet.add("TV");
    localHashSet.add("TW");
    localHashSet.add("TZ");
    localHashSet.add("UA");
    localHashSet.add("UG");
    localHashSet.add("US");
    localHashSet.add("UY");
    localHashSet.add("UZ");
    localHashSet.add("VA");
    localHashSet.add("VC");
    localHashSet.add("VE");
    localHashSet.add("VG");
    localHashSet.add("VI");
    localHashSet.add("VN");
    localHashSet.add("VU");
    localHashSet.add("WF");
    localHashSet.add("WS");
    localHashSet.add("YE");
    localHashSet.add("YT");
    localHashSet.add("ZA");
    localHashSet.add("ZM");
    localHashSet.add("ZW");
    return localHashSet;
  }
  
  public static void t(int paramInt)
  {
    hbs.c();
    hbs.b(Integer.valueOf(paramInt), Integer.valueOf(0));
    GLES20.glDeleteFramebuffers(1, new int[] { paramInt }, 0);
    C("deleteFrameBuffer");
  }
  
  public static void t(Context paramContext)
  {
    if (re) {
      return;
    }
    int i1 = Binder.getCallingUid();
    if (i1 != Process.myUid()) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      fht.a.a(paramContext.getPackageManager(), i1);
      return;
    }
  }
  
  public static boolean t(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return Arrays.asList(Build.SUPPORTED_ABIS).contains(paramString);
    }
    return (paramString.equals(Build.CPU_ABI)) || (paramString.equals(Build.CPU_ABI2));
  }
  
  public static int u(int paramInt)
  {
    if (paramInt < 3) {
      return paramInt + 1;
    }
    if (paramInt < 1073741824) {
      return (int)(paramInt / 0.75F + 1.0F);
    }
    return Integer.MAX_VALUE;
  }
  
  public static void u()
  {
    throw new IllegalStateException("Could not access method FragmentManager#noteStateNotSaved");
  }
  
  public static void u(Context paramContext)
  {
    ezi.c("Babel_telephony", "TeleTychoController.onSimCallManagerChanged", new Object[0]);
    a(paramContext, new evj(paramContext));
  }
  
  public static boolean u(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("#stress:");
  }
  
  private static haw v(int paramInt)
  {
    return ((hba)ilh.a(oJ, hba.class)).a(paramInt);
  }
  
  public static String v(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Given String is empty or null");
    }
    return paramString;
  }
  
  public static boolean v()
  {
    if (vg == null) {
      vg = Looper.getMainLooper().getThread();
    }
    return Thread.currentThread() == vg;
  }
  
  public static boolean v(Context paramContext)
  {
    paramContext = (KeyguardManager)paramContext.getSystemService("keyguard");
    if (paramContext == null)
    {
      ezi.e("Babel", "The keyguard manager is null when checking whether to set active.", new Object[0]);
      return false;
    }
    return (paramContext.inKeyguardRestrictedInputMode()) || (paramContext.isKeyguardLocked());
  }
  
  public static String w(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if ((paramContext != null) && (paramContext.getPhoneType() != 0))
    {
      paramContext = paramContext.getNetworkCountryIso();
      if (!TextUtils.isEmpty(paramContext)) {
        return paramContext;
      }
    }
    return Locale.getDefault().getCountry();
  }
  
  public static void w()
  {
    if (!v()) {
      throw new RuntimeException("Must be called on the UI thread");
    }
  }
  
  public static void w(String paramString)
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException(paramString);
    }
  }
  
  public static String x(Context paramContext)
  {
    int i1 = Binder.getCallingPid();
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (pid == i1) {
          return processName;
        }
      }
    }
    return null;
  }
  
  public static void x()
  {
    if (v()) {
      throw new RuntimeException("Must be called on a background thread");
    }
  }
  
  public static void x(String paramString)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException(paramString);
    }
  }
  
  public static PackageStats y(Context paramContext)
  {
    Method localMethod = B();
    if (localMethod == null) {}
    for (;;)
    {
      return null;
      f localf = new f((byte)0);
      try
      {
        a.acquire();
        String str = paramContext.getPackageName();
        if ((a(localMethod, paramContext.getPackageManager(), new Object[] { str, localf })) && (a.tryAcquire(15000L, TimeUnit.MILLISECONDS)))
        {
          paramContext = b;
          return paramContext;
        }
      }
      catch (InterruptedException paramContext)
      {
        Thread.currentThread().interrupt();
      }
    }
    return null;
  }
  
  public static Handler y()
  {
    if (vh == null) {
      vh = new Handler(Looper.getMainLooper());
    }
    return vh;
  }
  
  public static String y(String paramString)
  {
    int i4 = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i4);
    int i2 = 0;
    if (i2 < i4)
    {
      int i1 = paramString.charAt(i2);
      int i3;
      if (!Character.isSurrogate(i1))
      {
        localStringBuilder.append(i1);
        i3 = i2;
      }
      for (;;)
      {
        i2 = i3 + 1;
        break;
        i3 = i2;
        if (i1 <= 56319)
        {
          i3 = i2;
          if (i2 + 1 < i4)
          {
            char c1 = paramString.charAt(i2 + 1);
            i3 = i2;
            if (Character.isLowSurrogate(c1))
            {
              localStringBuilder.append(i1).append(c1);
              i3 = i2 + 1;
            }
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static int z(Context paramContext)
  {
    if (tB == 0) {
      tB = paramContext.getApplicationContext().getResources().getDimensionPixelSize(aen.kp);
    }
    return tB;
  }
  
  private static String z()
  {
    return String.valueOf(oJ.getPackageName()).concat(":gmscore");
  }
  
  public static String z(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i1;
    do
    {
      return str;
      i1 = paramString.indexOf('/');
      str = paramString;
    } while (i1 < 0);
    if (i1 == 0) {
      return "";
    }
    return paramString.substring(0, i1);
  }
  
  boolean a()
  {
    return d >= 0;
  }
}

/* Location:
 * Qualified Name:     aal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */