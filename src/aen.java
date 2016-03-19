import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.design.widget.Snackbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory2;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.MimeTypeMap;
import android.widget.CompoundButton;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

public class aen
{
  public static final int A = 2130772192;
  public static final int B = 2130772186;
  public static final int C = 2130772183;
  public static final int D = 2130772174;
  public static final int E = 2130772162;
  public static final int F = 2130772163;
  public static final int G = 2130772238;
  public static final int H = 2130772241;
  public static final int I = 2130772246;
  public static final int J = 2130772247;
  public static final int K = 2130772249;
  public static final int L = 2130772231;
  public static final int M = 2130772235;
  public static final int N = 2130772233;
  public static final int O = 2130772234;
  public static final int P = 2130772232;
  public static final int Q = 2130772236;
  public static final int R = 2130772189;
  public static final int S = 2130772336;
  public static final int T = 2130772221;
  public static final int U = 2130772251;
  public static final int V = 2130772195;
  public static final int W = 2130772211;
  public static final int X = 2130772222;
  public static final int Y = 2130772227;
  public static final int Z = 2130772207;
  public static final int aA = 2131558742;
  public static final int aB = 2131558669;
  public static final int aC = 2131558607;
  public static final int aD = 2131558608;
  public static final int aE = 2131558691;
  public static final int aF = 2131558440;
  public static final int aG = 2131558651;
  public static final int aH = 2131559240;
  public static final int aI = 2131559242;
  public static final int aJ = 2131559241;
  public static final int aK = 2131558767;
  public static final int aL = 2131558807;
  public static final int aM = 2131558802;
  public static final int aN = 2131558982;
  public static final int aO = 2131559168;
  public static final int aP = 2131559169;
  public static final int aQ = 2131558922;
  public static final int aR = 2131558835;
  public static final int aS = 2131558627;
  public static final int aT = 2131558916;
  public static final int aU = 2131559046;
  public static final int aV = 2131558610;
  public static final int aW = 2131558753;
  public static final int aX = 2131558932;
  public static final int aY = 2131559152;
  public static final int aZ = 2131558763;
  public static final int aa = 2130772252;
  public static final int ab = 2130772253;
  public static final int ac = 2130772254;
  public static final int ad = 2130772255;
  public static final int ae = 2130772256;
  public static final int af = 2130772307;
  public static final int ag = 2130772206;
  public static final int ah = 2130772205;
  public static final int ai = 2131558984;
  public static final int aj = 2131558592;
  public static final int ak = 2131559162;
  public static final int al = 2131559166;
  public static final int am = 2131559157;
  public static final int an = 2131559161;
  public static final int ao = 2131558972;
  public static final int ap = 2131559256;
  public static final int aq = 2131558637;
  public static final int ar = 2131558812;
  public static final int as = 2131559040;
  public static final int at = 2131559036;
  public static final int au = 2131558762;
  public static final int av = 2131558643;
  public static final int aw = 2131558642;
  public static final int ax = 2131559279;
  public static final int ay = 2131558765;
  public static final int az = 2131558598;
  public static final int bA = 2131559055;
  public static final int bB = 2131559295;
  public static final int bC = 2131558702;
  public static final int bD = 2131559004;
  public static final int bE = 2131559095;
  public static final int bF = 2131558852;
  public static final int bG = 2131558851;
  public static final int bH = 2131558698;
  public static final int bI = 2131558837;
  public static final int bJ = 2131558653;
  public static final int bK = 2131558815;
  public static final int bL = 2131558764;
  public static final int bM = 2131558854;
  public static final int bN = 2131558846;
  public static final int bO = 2131559079;
  public static final int bP = 2131558811;
  public static final int bQ = 2131558872;
  public static final int bR = 2131558871;
  public static final int bS = 2131558862;
  public static final int bT = 2131558877;
  public static final int bU = 2131558873;
  public static final int bV = 2131558875;
  public static final int bW = 2131558869;
  public static final int bX = 2131558874;
  public static final int bY = 2131558870;
  public static final int bZ = 2131559017;
  public static final int ba = 2131558692;
  public static final int bb = 2131558695;
  public static final int bc = 2131558995;
  public static final int bd = 2131558745;
  public static final int be = 2131558782;
  public static final int bf = 2131558783;
  public static final int bg = 2131558744;
  public static final int bh = 2131558798;
  public static final int bi = 2131558726;
  public static final int bj = 2131558770;
  public static final int bk = 2131558787;
  public static final int bl = 2131558747;
  public static final int bm = 2131558766;
  public static final int bn = 2131558771;
  public static final int bo = 2131558784;
  public static final int bp = 2131558790;
  public static final int bq = 2131559292;
  public static final int br = 2131558930;
  public static final int bs = 2131559008;
  public static final int bt = 2131558648;
  public static final int bu = 2131558650;
  public static final int bv = 2131558797;
  public static final int bw = 2131559267;
  public static final int bx = 2131558769;
  public static final int by = 2131558836;
  public static final int bz = 2131559296;
  public static final int cA = 2131558918;
  public static final int cB = 2131558937;
  public static final int cC = 2131558920;
  public static final int cD = 2131558919;
  public static final int cE = 2131558925;
  public static final int cF = 2131558933;
  public static final int cG = 2131558938;
  public static final int cH = 2131558945;
  public static final int cI = 2131558950;
  public static final int cJ = 2131558949;
  public static final int cK = 2131559019;
  public static final int cL = 2131559022;
  public static final int cM = 2131559018;
  public static final int cN = 2131559021;
  public static final int cO = 2131558976;
  public static final int cP = 2131559030;
  public static final int cQ = 2131558924;
  public static final int cR = 2131558966;
  public static final int cS = 2131558965;
  public static final int cT = 2131558752;
  public static final int cU = 2131558968;
  public static final int cV = 2131558969;
  public static final int cW = 2131558967;
  public static final int cX = 2131558939;
  public static final int cY = 2131558940;
  public static final int cZ = 2131558947;
  public static final int ca = 2131559232;
  public static final int cb = 2131559231;
  public static final int cc = 2131558864;
  public static final int cd = 2131558774;
  public static final int ce = 2131559284;
  public static final int cf = 2131558843;
  public static final int cg = 2131558888;
  public static final int ch = 2131558889;
  public static final int ci = 2131558890;
  public static final int cj = 2131558656;
  public static final int ck = 2131558761;
  public static final int cl = 2131558926;
  public static final int cm = 2131558927;
  public static final int cn = 2131558928;
  public static final int co = 2131559294;
  public static final int cp = 2131558842;
  public static final int cq = 2131559186;
  public static final int cr = 2131558915;
  public static final int cs = 2131558773;
  public static final int ct = 2131558781;
  public static final int cu = 2131558914;
  public static final int cv = 2131558952;
  public static final int cw = 2131558951;
  public static final int cx = 2131558935;
  public static final int cy = 2131558934;
  public static final int cz = 2131558936;
  public static final int dA = 2131559023;
  public static final int dB = 2131559026;
  public static final int dC = 2131559025;
  public static final int dD = 2131558735;
  public static final int dE = 2131559280;
  public static final int dF = 2131558980;
  public static final int dG = 2131558731;
  public static final int dH = 2131558974;
  public static final int dI = 2131558700;
  public static final int dJ = 2131558946;
  public static final int dK = 2131558944;
  public static final int dL = 2131559028;
  public static final int dM = 2131558621;
  public static final int dN = 2131559237;
  public static final int dO = 2131559151;
  public static final int dP = 2131558666;
  public static final int dQ = 2131558665;
  public static final int dR = 2131558801;
  public static final int dS = 2131558743;
  public static final int dT = 2131558663;
  public static final int dU = 2131558664;
  public static final int dV = 2131558697;
  public static final int dW = 2131559288;
  public static final int dX = 2131558654;
  public static final int dY = 2131558690;
  public static final int dZ = 2131559289;
  public static final int da = 2131558985;
  public static final int db = 2131558988;
  public static final int dc = 2131558987;
  public static final int dd = 2131558986;
  public static final int de = 2131558991;
  public static final int df = 2131558990;
  public static final int dg = 2131558989;
  public static final int dh = 2131558619;
  public static final int di = 2131558746;
  public static final int dj = 2131558788;
  public static final int dk = 2131558997;
  public static final int dl = 2131558958;
  public static final int dm = 2131558957;
  public static final int dn = 2131558552;
  public static final int jdField_do = 2131559056;
  public static final int dp = 2131558983;
  public static final int dq = 2131559033;
  public static final int dr = 2131558780;
  public static final int ds = 2131559035;
  public static final int dt = 2131559034;
  public static final int du = 2131559003;
  public static final int dv = 2131558981;
  public static final int dw = 2131559016;
  public static final int dx = 2131559005;
  public static final int dy = 2131558979;
  public static final int dz = 2131558978;
  public static final int eA = 2131559158;
  public static final int eB = 2131559163;
  public static final int eC = 2131558839;
  public static final int eD = 2131558751;
  public static final int eE = 2131559010;
  public static final int eF = 2131559011;
  public static final int eG = 2131559012;
  public static final int eH = 2131559076;
  public static final int eI = 2131559038;
  public static final int eJ = 2131558971;
  public static final int eK = 2131558917;
  public static final int eL = 2131558756;
  public static final int eM = 2131558970;
  public static final int eN = 2131559088;
  public static final int eO = 2131558961;
  public static final int eP = 2131559092;
  public static final int eQ = 2131559091;
  public static final int eR = 2131558699;
  public static final int eS = 2131558810;
  public static final int eT = 2131558487;
  public static final int eU = 2131558867;
  public static final int eV = 2131558646;
  public static final int eW = 2131558644;
  public static final int eX = 2131558964;
  public static final int eY = 2131558850;
  public static final int eZ = 2131558795;
  public static final int ea = 2131559277;
  public static final int eb = 2131559287;
  public static final int ec = 2131559286;
  public static final int ed = 2131559189;
  public static final int ee = 2131559188;
  public static final int ef = 2131559290;
  public static final int eg = 2131558834;
  public static final int eh = 2131559044;
  public static final int ei = 2131559041;
  public static final int ej = 2131559043;
  public static final int ek = 2131559039;
  public static final int el = 2131558706;
  public static final int em = 2131558755;
  public static final int en = 2131558779;
  public static final int eo = 2131559042;
  public static final int ep = 2131558708;
  public static final int eq = 2131558671;
  public static final int er = 2131558866;
  public static final int es = 2131558659;
  public static final int et = 2131558847;
  public static final int eu = 2131559154;
  public static final int ev = 2131559155;
  public static final int ew = 2131558865;
  public static final int ex = 2131559165;
  public static final int ey = 2131559164;
  public static final int ez = 2131558647;
  public static final int fA = 2131559265;
  public static final int fB = 2131558863;
  public static final int fC = 2131558696;
  public static final int fD = 2131558878;
  public static final int fE = 2131558879;
  public static final int fF = 2131558962;
  public static final int fG = 2131558754;
  public static final int fH = 2131558814;
  public static final int fI = 2131559083;
  public static final int fJ = 2131559082;
  public static final int fK = 2131559081;
  public static final int fL = 2131559080;
  public static final int fM = 2131559077;
  public static final int fN = 2131559078;
  public static final int fO = 2131558973;
  public static final int fP = 2131558800;
  public static final int fQ = 2131559293;
  public static final int fR = 2131559297;
  public static final int fS = 2131559159;
  public static final int fT = 2131558960;
  public static final int fU = 2131558963;
  public static final int fV = 2131558813;
  public static final int fW = 2131559254;
  public static final int fX = 2131559050;
  public static final int fY = 2131559051;
  public static final int fZ = 2131559047;
  public static final int fa = 2131559127;
  public static final int fb = 2131559009;
  public static final int fc = 2131558948;
  public static final int fd = 2131558929;
  public static final int fe = 2131558808;
  public static final int ff = 2131558809;
  public static final int fg = 2131559238;
  public static final int fh = 2131558694;
  public static final int fi = 2131559239;
  public static final int fj = 2131559094;
  public static final int fk = 2131559015;
  public static final int fl = 2131559261;
  public static final int fm = 2131559266;
  public static final int fn = 2131559263;
  public static final int fo = 2131559272;
  public static final int fp = 2131559257;
  public static final int fq = 2131559264;
  public static final int fr = 2131559268;
  public static final int fs = 2131559271;
  public static final int ft = 2131559270;
  public static final int fu = 2131559262;
  public static final int fv = 2131559269;
  public static final int fw = 2131559259;
  public static final int fx = 2131559258;
  public static final int fy = 2131558483;
  public static final int fz = 2131559014;
  public static final int gA = 2131558868;
  public static final int gB = 2131559217;
  public static final int gC = 2131558749;
  public static final int gD = 2131558803;
  public static final int gE = 2131558804;
  public static final int gF = 2131558805;
  public static final int gG = 2131558806;
  public static final int gH = 2131558636;
  public static final int gI = 2131558841;
  public static final int gJ = 2131559048;
  public static final int gK = 2131558775;
  public static final int gL = 2131558693;
  public static final int gM = 2131558553;
  public static final int gN = 2131559223;
  public static final int gO = 2131558996;
  public static final int gP = 2131558489;
  public static final int gQ = 2131559250;
  public static final int gR = 2131559244;
  public static final int gS = 2131559249;
  public static final int gT = 2131559246;
  public static final int gU = 2131559248;
  public static final int gV = 2131558707;
  public static final int gW = 2131559230;
  public static final int gX = 2131559225;
  public static final int gY = 2131559227;
  public static final int gZ = 2131558840;
  public static final int ga = 2131558641;
  public static final int gb = 2131558799;
  public static final int gc = 2131558845;
  public static final int gd = 2131558825;
  public static final int ge = 2131558824;
  public static final int gf = 2131558826;
  public static final int gg = 2131559255;
  public static final int gh = 2131558844;
  public static final int gi = 2131558609;
  public static final int gj = 2131559049;
  public static final int gk = 2131559052;
  public static final int gl = 2131558748;
  public static final int gm = 2131558658;
  public static final int gn = 2131558657;
  public static final int go = 2131558645;
  public static final int gp = 2131558848;
  public static final int gq = 2131559260;
  public static final int gr = 2131559192;
  public static final int gs = 2131559191;
  public static final int gt = 2131559190;
  public static final int gu = 2131559193;
  public static final int gv = 2131559194;
  public static final int gw = 2131558757;
  public static final int gx = 2131558750;
  public static final int gy = 2131558785;
  public static final int gz = 2131558786;
  public static final int hA = 2131559134;
  public static final int hB = 2131559135;
  public static final int hC = 2131558430;
  public static final int hD = 2131230735;
  public static final int hE = 2131230724;
  public static final int hF = 2131230734;
  public static final int hG = 2131624612;
  public static final int hH = 2131624613;
  public static final int hI = 2131624168;
  public static final int hJ = 2130838633;
  public static final int hK = 2130839102;
  public static final int hL = 2131624085;
  public static final int hM = 2130968732;
  public static final int hN = 2130968734;
  public static final int hO = 2130968735;
  public static final int hP = 2131558628;
  public static final int hQ = 2131558629;
  public static final int hR = 2131558897;
  public static final int hS = 2131559207;
  public static final int hT = 2131559208;
  public static final int hU = 2130838941;
  public static final int hV = 2130838969;
  public static final int hW = 2130838980;
  public static final int hX = 2130839031;
  public static final int hY = 2130839049;
  public static final int hZ = 2130839066;
  public static final int ha = 2131558931;
  public static final int hb = 2131558672;
  public static final int hc = 2131559000;
  public static final int hd = 2131558772;
  public static final int he = 2131559029;
  public static final int hf = 2131558485;
  public static final int hg = 2131558486;
  public static final int hh = 2131559285;
  public static final int hi = 2131558655;
  public static final int hj = 2131558776;
  public static final int hk = 2131559045;
  public static final int hl = 2131559251;
  public static final int hm = 2131558849;
  public static final int hn = 2131558739;
  public static final int ho = 2131558740;
  public static final int hp = 2131362158;
  public static final int hq = 2131362159;
  public static final int hr = 2131362157;
  public static final int hs = 2131362160;
  public static final int ht = 2131623986;
  public static final int hu = 2131624241;
  public static final int hv = 2131559096;
  public static final int hw = 2131558704;
  public static final int hx = 2131559099;
  public static final int hy = 2131559098;
  public static final int hz = 2131559097;
  public static final int iA = 2131362020;
  public static final int iB = 2131362021;
  public static final int iC = 2131362012;
  public static final int iD = 2131362013;
  public static final int iE = 2131362014;
  public static final int iF = 2131362016;
  public static final int iG = 2131362015;
  public static final int iH = 2131362017;
  public static final int iI = 2131623969;
  public static final int iJ = 2131624041;
  public static final int iK = 2131624163;
  public static final int iL = 2131361977;
  public static final int iM = 2131361989;
  public static final int iN = 2131361988;
  public static final int iO = 2131361987;
  public static final int iP = 2131361986;
  public static final int iQ = 2131361981;
  public static final int iR = 2131361976;
  public static final int iS = 2131361991;
  public static final int iT = 2131361990;
  public static final int iU = 2131361992;
  public static final int iV = 2131361978;
  public static final int iW = 2131361979;
  public static final int iX = 2131361980;
  public static final int iY = 2131361982;
  public static final int iZ = 2131361993;
  public static final int ia = 2130968731;
  public static final int ib = 2130968848;
  public static final int ic = 2130968849;
  public static final int id = 2131362008;
  public static final int ie = 2131362009;
  public static final int jdField_if = 2131362034;
  public static final int ig = 2131362035;
  public static final int ih = 2131362032;
  public static final int ii = 2131362033;
  public static final int ij = 2131362025;
  public static final int ik = 2131362031;
  public static final int il = 2131362030;
  public static final int im = 2131362029;
  public static final int in = 2131362007;
  public static final int io = 2131362023;
  public static final int ip = 2131362022;
  public static final int iq = 2131362006;
  public static final int ir = 2131362026;
  public static final int is = 2131362027;
  public static final int it = 2131362028;
  public static final int iu = 2131362004;
  public static final int iv = 2131362018;
  public static final int iw = 2131362019;
  public static final int ix = 2131362005;
  public static final int iy = 2131362011;
  public static final int iz = 2131362010;
  public static Method j;
  public static final int jA = 2131361907;
  public static final int jB = 2131361908;
  public static final int jC = 2131361927;
  public static final int jD = 2131361900;
  public static final int jE = 2131361925;
  public static final int jF = 2131361926;
  public static final int jG = 2131361924;
  public static final int jH = 2131361916;
  public static final int jI = 2131361915;
  public static final int jJ = 2131361921;
  public static final int jK = 2131361922;
  public static final int jL = 2131361923;
  public static final int jM = 2131361910;
  public static final int jN = 2131361911;
  public static final int jO = 2131361905;
  public static final int jP = 2131362088;
  public static final int jQ = 2131362090;
  public static final int jR = 2131362089;
  public static final int jS = 2130968706;
  public static final int jT = 2130968780;
  public static final int jU = 2130968778;
  public static final int jV = 2130968607;
  public static final int jW = 2130968616;
  public static final int jX = 2130968788;
  public static final int jY = 2130968843;
  public static final int jZ = 2130968859;
  public static final int ja = 2131362096;
  public static final int jb = 2131492907;
  public static final int jc = 2131361954;
  public static final int jd = 2131361968;
  public static final int je = 2131361959;
  public static final int jf = 2131361971;
  public static final int jg = 2131361966;
  public static final int jh = 2131361969;
  public static final int ji = 2131361967;
  public static final int jj = 2131361970;
  public static final int jk = 2131361963;
  public static final int jl = 2131361964;
  public static final int jm = 2131361961;
  public static final int jn = 2131361962;
  public static final int jo = 2131361965;
  public static final int jp = 2131361960;
  public static final int jq = 2131361957;
  public static final int jr = 2131361958;
  public static final int js = 2131362187;
  public static final int jt = 2131624170;
  public static final int ju = 2131361929;
  public static final int jv = 2131361914;
  public static final int jw = 2131361909;
  public static final int jx = 2131362087;
  public static final int jy = 2131361932;
  public static final int jz = 2131361931;
  public static boolean k = false;
  public static final int ka = 2130968860;
  public static final int kb = 2131558678;
  public static final int kc = 2131558673;
  public static final int kd = 2131558679;
  public static final int ke = 2131558682;
  public static final int kf = 2131558675;
  public static final int kg = 2131558674;
  public static final int kh = 2131558677;
  public static final int ki = 2131558683;
  public static final int kj = 2131558685;
  public static final int kk = 2131558684;
  public static final int kl = 2131427479;
  public static final int km = 2131427481;
  public static final int kn = 2131427480;
  public static final int ko = 2131427482;
  public static final int kp = 2131427478;
  public static final int kq = 2131492864;
  public static final int kr = 2130968694;
  public static Method ks;
  public static Method l;
  public static boolean m = false;
  public static Field n;
  public static boolean o = false;
  public static Field p;
  public static boolean q = false;
  public static Method r;
  public static boolean s = false;
  public static final int t = 2130772164;
  public static final int u = 2130772169;
  public static final int v = 2130772165;
  public static final int w = 2130772159;
  public static final int x = 2130772161;
  public static final int y = 2130772167;
  public static final int z = 2130772168;
  final String h;
  final int i;
  
  public aen() {}
  
  public aen(Snackbar paramSnackbar) {}
  
  public static int a(Drawable paramDrawable)
  {
    if (!m) {}
    try
    {
      Method localMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
      l = localMethod;
      localMethod.setAccessible(true);
      m = true;
      if (l != null) {
        try
        {
          int i1 = ((Integer)l.invoke(paramDrawable, new Object[0])).intValue();
          return i1;
        }
        catch (Exception paramDrawable)
        {
          l = null;
        }
      }
      return -1;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public static int a(Set<?> paramSet)
  {
    paramSet = paramSet.iterator();
    int i1 = 0;
    if (paramSet.hasNext())
    {
      Object localObject = paramSet.next();
      if (localObject != null) {}
      for (int i2 = localObject.hashCode();; i2 = 0)
      {
        i1 = i1 + i2 ^ 0xFFFFFFFF ^ 0xFFFFFFFF;
        break;
      }
    }
    return i1;
  }
  
  public static Drawable a(CompoundButton paramCompoundButton)
  {
    if (!q) {}
    try
    {
      Field localField = CompoundButton.class.getDeclaredField("mButtonDrawable");
      p = localField;
      localField.setAccessible(true);
      q = true;
      if (p != null) {
        try
        {
          paramCompoundButton = (Drawable)p.get(paramCompoundButton);
          return paramCompoundButton;
        }
        catch (IllegalAccessException paramCompoundButton)
        {
          p = null;
        }
      }
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  public static InputMethodManager a(Context paramContext)
  {
    return (InputMethodManager)paramContext.getSystemService("input_method");
  }
  
  public static <T extends CharSequence> T a(T paramT, Object paramObject)
  {
    if (TextUtils.isEmpty(paramT)) {
      throw new IllegalArgumentException(String.valueOf(paramObject));
    }
    return paramT;
  }
  
  public static <T> T a(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException();
    }
    return paramT;
  }
  
  public static <T> T a(T paramT, Object paramObject)
  {
    if (paramT == null) {
      throw new NullPointerException(String.valueOf(paramObject));
    }
    return paramT;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    paramString1 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(paramString1));
    if (paramString1 == null) {
      return paramString2;
    }
    return paramString1;
  }
  
  public static String a(String paramString, Object... paramVarArgs)
  {
    int i1 = 0;
    paramString = String.valueOf(paramString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + paramVarArgs.length * 16);
    int i2 = 0;
    while (i1 < paramVarArgs.length)
    {
      int i3 = paramString.indexOf("%s", i2);
      if (i3 == -1) {
        break;
      }
      localStringBuilder.append(paramString.substring(i2, i3));
      localStringBuilder.append(paramVarArgs[i1]);
      i2 = i3 + 2;
      i1 += 1;
    }
    localStringBuilder.append(paramString.substring(i2));
    if (i1 < paramVarArgs.length)
    {
      localStringBuilder.append(" [");
      localStringBuilder.append(paramVarArgs[i1]);
      i1 += 1;
      while (i1 < paramVarArgs.length)
      {
        localStringBuilder.append(", ");
        localStringBuilder.append(paramVarArgs[i1]);
        i1 += 1;
      }
      localStringBuilder.append(']');
    }
    return localStringBuilder.toString();
  }
  
  public static <E> ArrayList<E> a(Iterable<? extends E> paramIterable)
  {
    fii.a(paramIterable);
    if ((paramIterable instanceof Collection)) {
      return new ArrayList(krg.a(paramIterable));
    }
    return a(paramIterable.iterator());
  }
  
  public static <E> ArrayList<E> a(Iterator<? extends E> paramIterator)
  {
    ArrayList localArrayList = new ArrayList();
    kty.a(localArrayList, paramIterator);
    return localArrayList;
  }
  
  public static <E> ArrayList<E> a(E... paramVarArgs)
  {
    fii.a(paramVarArgs);
    int i1 = paramVarArgs.length;
    aal.c(i1, "arraySize");
    long l1 = i1;
    ArrayList localArrayList = new ArrayList(aal.e(i1 / 10 + (5L + l1)));
    Collections.addAll(localArrayList, paramVarArgs);
    return localArrayList;
  }
  
  public static <E> HashSet<E> a(int paramInt)
  {
    return new HashSet(kwj.b(paramInt));
  }
  
  private static void a()
  {
    throw new IllegalStateException("Could not access method FragmentManager#noteStateNotSaved");
  }
  
  public static void a(int paramInt1, long paramLong, int paramInt2, csn paramcsn)
  {
    kkw localkkw = null;
    if (paramLong <= 0L) {
      return;
    }
    kls localkls = new kls();
    long l1 = a;
    if (l1 == 0L) {
      localObject1 = null;
    }
    for (;;)
    {
      d = ((klr)localObject1);
      localObject1 = new kmb();
      a = Integer.valueOf(18);
      r = Integer.valueOf(1);
      d = Integer.valueOf(p);
      t = Long.valueOf(paramLong);
      f = Integer.valueOf(paramInt2);
      C = j;
      y = Long.toString(dwt.a().b());
      if (g != null) {
        p = Long.valueOf(bfz.d(g));
      }
      if (i > 0L) {
        B = Long.valueOf(i);
      }
      if ((c > 0) || (e > 0) || (d > 0L))
      {
        v = new klx();
        if (c > 0) {
          v.d = Integer.valueOf(c);
        }
        if (e > 0) {
          v.h = Integer.valueOf(e);
        }
        if (d > 0L) {
          v.i = Long.valueOf(d);
        }
      }
      if (h != null)
      {
        x = new kmc();
        x.a = h;
      }
      if (b != null)
      {
        b = new kmd();
        b.a = b;
      }
      Object localObject2;
      if (m != null)
      {
        localObject2 = new kma();
        a = m;
        b = Integer.valueOf(n);
        c = Integer.valueOf(o);
        z = new kma[1];
        z[0] = localObject2;
      }
      if ((paramInt2 == 2) || (paramInt2 == 5))
      {
        localObject2 = (hbt)ilh.a(aal.oJ, hbt.class);
        A = new klz();
        A.a = Integer.valueOf(((hbt)localObject2).a());
      }
      b = ((kmb)localObject1);
      if ((k != null) || (l != null) || (f != null) || (q != null)) {
        break;
      }
      paramcsn = localkkw;
      c = paramcsn;
      if (((paramInt2 == 2) || (paramInt2 == 1)) && (paramInt1 != -1))
      {
        paramcsn = dvp.c(paramInt1);
        if (paramcsn.length != 0)
        {
          if (a == null) {
            a = new kli();
          }
          if (a.k == null) {
            a.k = new klg();
          }
          a.k.b = paramcsn;
        }
      }
      ((hba)ilh.a(aal.oJ, hba.class)).a(paramInt1).a(localkls);
      return;
      localObject1 = new klr();
      a = Long.valueOf(l1);
    }
    Object localObject1 = new kku();
    if (f != null)
    {
      f = new kkv();
      f.a = f;
    }
    if ((l != null) || (k != null))
    {
      a = new kkx();
      if (l != null) {
        a.g = Boolean.valueOf(aal.a(l, false));
      }
      if (k != null)
      {
        a.a = Boolean.valueOf(bfz.a(k.a));
        a.b = Boolean.valueOf(k.b);
        a.m = Boolean.valueOf(k.n);
        a.c = Boolean.valueOf(k.c);
        a.d = Integer.valueOf(k.g);
        a.h = Long.valueOf(k.i);
        a.i = Long.valueOf(k.j);
        a.j = Long.valueOf(k.k);
        a.k = Integer.valueOf(k.l);
        a.l = Integer.valueOf(k.m);
        b = new kkw();
        b.a = Boolean.valueOf(k.e);
        localkkw = b;
        if (k.h) {
          break label1086;
        }
      }
    }
    label1086:
    for (boolean bool = true;; bool = false)
    {
      b = Boolean.valueOf(bool);
      c = new kkz();
      c.a = Boolean.valueOf(k.d);
      c.b = Integer.valueOf(k.f);
      e = q;
      paramcsn = (csn)localObject1;
      break;
    }
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof gd)) {
      ((gd)paramDrawable).setTint(paramInt);
    }
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof gd)) {
      ((gd)paramDrawable).setTintList(paramColorStateList);
    }
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof gd)) {
      ((gd)paramDrawable).setTintMode(paramMode);
    }
  }
  
  public static void a(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
  {
    if (!o) {}
    try
    {
      Field localField = LayoutInflater.class.getDeclaredField("mFactory2");
      n = localField;
      localField.setAccessible(true);
      o = true;
      if (n == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        try
        {
          n.set(paramLayoutInflater, paramFactory2);
          return;
        }
        catch (IllegalAccessException paramFactory2)
        {
          Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + paramLayoutInflater + "; inflation may have unexpected results.", paramFactory2);
        }
        localNoSuchFieldException = localNoSuchFieldException;
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", localNoSuchFieldException);
      }
    }
  }
  
  public static void a(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    if (paramView != null)
    {
      if (Build.VERSION.SDK_INT >= 16) {
        paramView.getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
      }
    }
    else {
      return;
    }
    paramView.getViewTreeObserver().removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public static void a(bg parambg)
  {
    if (ks == null) {}
    try
    {
      ks = parambg.getClass().getMethod("noteStateNotSaved", new Class[0]);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          ((Method)a(ks)).invoke(parambg, new Object[0]);
          return;
        }
        catch (IllegalAccessException parambg)
        {
          a();
          return;
        }
        catch (InvocationTargetException parambg)
        {
          a();
        }
        localNoSuchMethodException = localNoSuchMethodException;
        a();
      }
    }
  }
  
  @Deprecated
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException();
    }
  }
  
  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.valueOf(paramObject));
    }
  }
  
  public static boolean a(AccessibilityManager paramAccessibilityManager)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return paramAccessibilityManager.isTouchExplorationEnabled();
    }
    return false;
  }
  
  public static boolean a(String paramString)
  {
    return (paramString != null) && (paramString.equalsIgnoreCase("text/x-vCard"));
  }
  
  public static boolean a(Set<?> paramSet, Object paramObject)
  {
    if (paramSet == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        try
        {
          if (paramSet.size() == ((Set)paramObject).size())
          {
            boolean bool = paramSet.containsAll((Collection)paramObject);
            if (bool) {}
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException paramSet)
        {
          return false;
        }
        catch (ClassCastException paramSet)
        {
          return false;
        }
      }
    }
    return false;
  }
  
  public static boolean a(Set<?> paramSet, Collection<?> paramCollection)
  {
    fii.a(paramCollection);
    Object localObject = paramCollection;
    if ((paramCollection instanceof kxe)) {
      localObject = ((kxe)paramCollection).a();
    }
    if (((localObject instanceof Set)) && (((Collection)localObject).size() > paramSet.size())) {
      return kty.a(paramSet.iterator(), (Collection)localObject);
    }
    return a(paramSet, ((Collection)localObject).iterator());
  }
  
  public static boolean a(Set<?> paramSet, Iterator<?> paramIterator)
  {
    boolean bool = false;
    while (paramIterator.hasNext()) {
      bool |= paramSet.remove(paramIterator.next());
    }
    return bool;
  }
  
  public static Bundle[] a(ek[] paramArrayOfek)
  {
    if (paramArrayOfek == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfek.length];
    int i1 = 0;
    while (i1 < paramArrayOfek.length)
    {
      ek localek = paramArrayOfek[i1];
      Bundle localBundle = new Bundle();
      localBundle.putString("resultKey", localek.a());
      localBundle.putCharSequence("label", localek.b());
      localBundle.putCharSequenceArray("choices", localek.c());
      localBundle.putBoolean("allowFreeFormInput", localek.d());
      localBundle.putBundle("extras", localek.e());
      arrayOfBundle[i1] = localBundle;
      i1 += 1;
    }
    return arrayOfBundle;
  }
  
  public static <E> LinkedList<E> b(Iterable<? extends E> paramIterable)
  {
    LinkedList localLinkedList = new LinkedList();
    if ((paramIterable instanceof Collection))
    {
      localLinkedList.addAll(krg.a(paramIterable));
      return localLinkedList;
    }
    kty.a(localLinkedList, ((Iterable)fii.a(paramIterable)).iterator());
    return localLinkedList;
  }
  
  public static void b(View paramView)
  {
    if (paramView == null) {}
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      localInputMethodManager = a(paramView.getContext());
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static void b(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static void b(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramObject));
    }
  }
  
  public static boolean b(String paramString)
  {
    return (aal.c(paramString)) || (aal.d(paramString)) || (aal.b(paramString));
  }
  
  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static boolean f()
  {
    return (Build.PRODUCT.contains("sdk_")) || (Build.PRODUCT.contains("_sdk"));
  }
  
  public boolean a(V paramV, MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean a(k paramk, V paramV, MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public Parcelable e(V paramV)
  {
    return View.BaseSavedState.EMPTY_STATE;
  }
  
  public void g()
  {
    if (kt.a()) {
      Snackbar.a.post(new s(this));
    }
  }
}

/* Location:
 * Qualified Name:     aen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */