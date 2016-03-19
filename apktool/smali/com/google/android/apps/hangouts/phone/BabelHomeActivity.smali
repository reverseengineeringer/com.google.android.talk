.class public Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;
.super Lcbr;
.source "SourceFile"

# interfaces
.implements Lbzg;
.implements Lcao;
.implements Lcva;
.implements Ldvx;
.implements Lecj;
.implements Lfif;
.implements Lfih;
.implements Lhpw;


# static fields
.field public static t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ldeb;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Z

.field private static final v:Lezv;


# instance fields
.field private C:Z

.field private D:Z

.field private E:Lcom/google/android/apps/hangouts/views/BalanceView;

.field private F:Landroid/support/v4/widget/DrawerLayout;

.field private G:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

.field private H:Ldiu;

.field private I:Lcom/google/android/apps/hangouts/util/TabHostEx;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Llt;

.field private N:Landroid/view/Menu;

.field private O:Ldty;

.field private P:J

.field private Q:J

.field private R:J

.field private S:J

.field private T:Z

.field private U:Lhwj;

.field private V:Lawo;

.field private W:Lhba;

.field private final X:Lhzy;

.field private final Y:Lepc;

.field private final Z:Lepi;

.field public n:Z

.field public o:Z

.field public p:Lcom/google/android/apps/hangouts/views/MainViewPager;

.field public q:Lbwp;

.field public r:Ldlj;

.field public s:Lepa;

.field private w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

.field private x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lezi;->k:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u:Z

    .line 146
    const-string v0, "HomeActivity"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    .line 1580
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 139
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 201
    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->P:J

    .line 207
    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->R:J

    .line 208
    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    .line 215
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    const-string v1, "active-hangouts-account"

    .line 217
    invoke-virtual {v0, v1}, Lhzy;->a(Ljava/lang/String;)Lhzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    .line 218
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 221
    new-instance v0, Lepc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lepc;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    .line 222
    invoke-virtual {v0, v1}, Lepc;->b(Lilh;)Lepc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    .line 224
    new-instance v0, Lepi;

    invoke-direct {v0, p0}, Lepi;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Z:Lepi;

    .line 240
    new-instance v0, Layn;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Layn;-><init>(Landroid/app/Activity;Liog;)V

    .line 241
    new-instance v0, Ldma;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, v1}, Ldma;-><init>(Liog;)V

    .line 242
    new-instance v0, Leok;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, v1}, Leok;-><init>(Liog;)V

    .line 243
    new-instance v0, Ledt;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, v1}, Ledt;-><init>(Liog;)V

    .line 244
    new-instance v0, Lcyi;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, v1}, Lcyi;-><init>(Liog;)V

    .line 245
    new-instance v0, Lbbg;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, v1}, Lbbg;-><init>(Liog;)V

    .line 246
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 1822
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Laen;->b(Z)V

    .line 1823
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_1

    .line 1824
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n()V

    .line 1826
    :cond_1
    return-void

    .line 1822
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    .line 1584
    const/4 v2, 0x0

    .line 1585
    const-wide/16 v0, 0x0

    .line 1586
    sget-object v3, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldeb;

    .line 1587
    invoke-virtual {v0, v4, p0, v2, v3}, Ldeb;->a(ILjava/io/PrintWriter;J)V

    .line 9535
    iget-wide v0, v0, Ldeb;->a:J

    .line 1589
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    .line 1590
    goto :goto_0

    .line 1591
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9146
    sget-boolean v0, Lezi;->A:Z

    .line 1572
    if-eqz v0, :cond_0

    .line 1573
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t:Ljava/util/LinkedList;

    new-instance v1, Ldeb;

    invoke-direct {v1, p0}, Ldeb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1574
    :goto_0
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 1575
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1578
    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v2, Leot;

    .line 726
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v2}, Lhzy;->a()I

    move-result v2

    invoke-interface {v0, v2}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->b(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 736
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 740
    :goto_1
    if-eqz v0, :cond_0

    .line 746
    const-string v0, "babel_request_voice_account_data_delay_ms"

    const-wide/16 v2, 0x7530

    .line 747
    invoke-static {p0, v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 752
    iget-wide v6, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Q:J

    add-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 756
    iput-wide v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Q:J

    .line 757
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 758
    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    new-instance v2, Lddx;

    invoke-direct {v2, p0, p1}, Lddx;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;Z)V

    .line 757
    invoke-static {v0, p0, v1, v2}, Laal;->a(ILba;ZLdxv;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 737
    goto :goto_1
.end method

.method private static c(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 856
    if-nez p0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 860
    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 863
    if-eqz v2, :cond_0

    .line 866
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 867
    if-eqz v2, :cond_0

    const-string v3, "sms:"

    .line 868
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "smsto:"

    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mms:"

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mmsto:"

    .line 871
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1238
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    if-eqz v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lbdp;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 1242
    const-string v1, "babel_account_snackbar_reshow"

    sget-wide v4, Leea;->n:J

    .line 1243
    invoke-interface {v0, v1, v4, v5}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1247
    if-nez p1, :cond_2

    iget-wide v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->P:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->P:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    :cond_2
    move v1, v3

    .line 1253
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v4, Lhpz;

    .line 1254
    invoke-virtual {v0, v4}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "logged_in"

    aput-object v5, v4, v2

    invoke-interface {v0, v4}, Lhpz;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    :goto_2
    and-int v0, v1, v3

    .line 1256
    if-eqz v0, :cond_0

    .line 1260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->P:J

    .line 1261
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->c()Lhqb;

    move-result-object v0

    const-string v1, "sms_only"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1263
    invoke-virtual {p0, v8}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1250
    goto :goto_1

    :cond_4
    move v3, v2

    .line 1255
    goto :goto_2

    .line 1266
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    if-eqz v0, :cond_6

    .line 1267
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    invoke-virtual {v0, v8}, Ldlj;->a(Ljava/lang/String;)V

    .line 1269
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v4

    .line 1270
    new-instance v0, Lddp;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    sget-object v1, Ldnv;->c:Ldnv;

    iget v5, v1, Ldnv;->l:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lddp;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;Landroid/content/Context;Liog;II)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    .line 1285
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v0

    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldlj;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static d(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.hangouts.phone.recentcalls"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.hangouts.phone.dialpad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 569
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C:Z

    if-eqz v0, :cond_1

    .line 4899
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C:Z

    .line 574
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 575
    invoke-static {v8}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4875
    new-instance v4, Lbfb;

    const-string v0, "sms_body"

    .line 4876
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lbfb;-><init>(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lenn;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 4879
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v6

    .line 4880
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4887
    invoke-static {v6}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    sget-object v1, Ldhm;->a:Ldhm;

    sget-object v2, Lbkw;->b:Lbkw;

    .line 4886
    invoke-static {v0, v5, v5, v1, v2}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/util/Collection;Ldhm;Lbkw;)Landroid/content/Intent;

    move-result-object v0

    .line 4892
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4893
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, v4, Lbfb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4894
    const-string v2, "share_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4896
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 4897
    sget v0, Laal;->ch:I

    sget v1, Laal;->ci:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->overridePendingTransition(II)V

    .line 4898
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V

    goto :goto_0

    .line 4902
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4903
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v9, v2

    move v0, v7

    :goto_1
    if-ge v0, v9, :cond_3

    aget-object v10, v2, v0

    .line 4907
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10, v5, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v10

    .line 4906
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4903
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4911
    :cond_3
    const-string v0, "transport_type"

    const/4 v2, 0x3

    .line 4912
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4913
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v2

    .line 4914
    new-instance v5, Ldwb;

    .line 4916
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Ldwb;-><init>(Landroid/content/Context;)V

    .line 4917
    invoke-virtual {v5, v6}, Ldwb;->a(I)Ldwb;

    move-result-object v5

    .line 4918
    invoke-static {v1}, Laal;->b(Ljava/util/Collection;)Lihb;

    move-result-object v1

    invoke-virtual {v5, v1}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v1

    sget-object v5, Lbfw;->c:Lbfw;

    .line 4919
    invoke-virtual {v1, v5}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v1

    .line 4920
    invoke-virtual {v1, v0}, Ldwb;->b(I)Ldwb;

    move-result-object v0

    .line 4921
    invoke-virtual {v0}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v0

    .line 4914
    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    .line 4923
    const-string v0, "opened_from_impression"

    .line 4924
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4926
    new-instance v0, Lddy;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lddy;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;Lebi;Ljava/lang/String;Lbfb;II)V

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    goto/16 :goto_0

    .line 580
    :cond_4
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y:Z

    .line 583
    const-string v1, "conversation_id"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    iput-object v5, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->L:Ljava/lang/String;

    .line 585
    iput-object v5, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->K:Ljava/lang/String;

    .line 587
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 588
    const-string v1, "android.intent.action.INSERT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 589
    invoke-virtual {p0, v8}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 590
    :cond_5
    invoke-static {v8}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "use_dialer_activity"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 592
    invoke-static {v8}, Laal;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V

    goto/16 :goto_0

    .line 5732
    :cond_6
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->K:Ljava/lang/String;

    .line 5733
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->K:Ljava/lang/String;

    const-string v1, "com.google.android.apps.hangouts.phone.dialpad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5734
    const-string v0, "number_to_call"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->L:Ljava/lang/String;

    .line 597
    :cond_7
    invoke-static {}, Ldvd;->v()Z

    move-result v0

    if-nez v0, :cond_8

    .line 599
    const-string v0, "Babel_HomeActivity"

    const-string v1, "[BabelHomeActivity.onNewIntent] Adding account from dialer intent."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q()V

    .line 603
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r()V

    goto/16 :goto_0

    .line 607
    :cond_9
    const-string v0, "client_conversation_type"

    .line 608
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 611
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Laal;->b(Landroid/os/Bundle;)Lczb;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_a

    .line 613
    const-string v0, "invite_timestamp"

    const-wide/16 v4, 0x0

    .line 617
    invoke-virtual {v8, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p0

    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Lczb;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 619
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_b

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Ljava/lang/String;)Lbfb;

    move-result-object v0

    .line 623
    :goto_2
    new-instance v1, Laxj;

    invoke-direct {v1, v2, v3}, Laxj;-><init>(Ljava/lang/String;I)V

    .line 625
    iput-boolean v4, v1, Laxj;->d:Z

    .line 626
    iput-object v0, v1, Laxj;->f:Lbfb;

    .line 627
    const-string v0, "opened_from_impression"

    .line 628
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Laxj;->k:I

    .line 630
    const-string v0, "account_id"

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 631
    invoke-virtual {v2}, Lhzy;->a()I

    move-result v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6456
    invoke-virtual {p0, v1, v5, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Laxj;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v5

    .line 622
    goto :goto_2
.end method

.method private t()V
    .locals 7

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->T:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 695
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "reportStartup"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->T:Z

    .line 6704
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v2, Laxz;

    .line 6705
    invoke-virtual {v1, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxz;

    iget-wide v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->R:J

    iget-wide v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    iget-object v6, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 6706
    invoke-virtual {v6}, Lhzy;->a()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Laxz;->a(JJI)V

    .line 6710
    new-instance v1, Ldjn;

    .line 6711
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ldjn;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    .line 6710
    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 699
    sget-object v1, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    invoke-virtual {v1, v0}, Lezv;->c(Ljava/lang/String;)V

    .line 701
    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->N:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->i()Lfcn;

    move-result-object v0

    .line 989
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->N:Landroid/view/Menu;

    sget v2, Laen;->fy:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 990
    if-eqz v1, :cond_0

    .line 991
    sget-object v2, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 986
    :cond_2
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    goto :goto_1

    .line 991
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1200
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_0

    .line 1205
    sget v0, Laen;->dX:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1206
    if-eqz v0, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v1}, Lbwp;->a()V

    .line 1208
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->N:Landroid/view/Menu;

    invoke-interface {v1, p0, v0, v2}, Lbwp;->a(Lba;Landroid/view/ViewGroup;Landroid/view/Menu;)V

    .line 1210
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    if-nez v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0}, Lbwp;->b()Llt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    .line 1213
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(Llt;)V

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->c()I

    move-result v0

    .line 1219
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    invoke-interface {v1, v0}, Llt;->a(I)V

    .line 1220
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->M:Llt;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Llt;->a(IFI)V

    goto :goto_0

    .line 1223
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0, v3}, Lbwp;->a(I)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1653
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Z)V

    .line 1654
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(Z)V

    .line 1655
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/util/TabHostEx;->a(Z)V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)V

    .line 1659
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1662
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Z)V

    .line 1663
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(Z)V

    .line 1664
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/util/TabHostEx;->a(Z)V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)V

    .line 1668
    return-void
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->G:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->G:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1743
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1744
    :cond_0
    const/4 v0, 0x0

    .line 1746
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->G:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method private z()Z
    .locals 3

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-string v1, "show_dialer_in_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1641
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1329
    invoke-static {p1}, Laal;->b(Landroid/content/Intent;)V

    .line 1330
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    sget-object v1, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Lfcn;)Z

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0}, Lbwp;->f()V

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->c()V

    .line 1339
    :cond_2
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcbr;->a(Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lcob;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcob;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-interface {v0, v1}, Lcob;->a(Liog;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lbwr;

    .line 253
    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwr;

    .line 254
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p0}, Lbwr;->a(Landroid/content/Context;)Lbwp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lbwp;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Ldty;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldty;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->O:Ldty;

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lhwj;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhwj;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->U:Lhwj;

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lawo;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->V:Lawo;

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lhba;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->W:Lhba;

    .line 264
    return-void
.end method

.method public a(Lav;)V
    .locals 3

    .prologue
    .line 1343
    const-string v1, "onAttachFragment "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 1344
    invoke-super {p0, p1}, Lcbr;->a(Lav;)V

    .line 1345
    instance-of v0, p1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1346
    check-cast v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 1347
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Lcao;)V

    .line 1348
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b(I)V

    .line 1354
    :cond_0
    :goto_1
    const-string v1, "/onAttachFragment "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 1355
    return-void

    .line 1343
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1349
    :cond_2
    instance-of v0, p1, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1350
    check-cast v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 1351
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->a(Lbzg;)V

    goto :goto_1

    .line 1354
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Laxj;)V
    .locals 2

    .prologue
    .line 8460
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v1}, Lhzy;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Laxj;Landroid/content/Intent;I)V

    .line 1453
    return-void
.end method

.method public a(Laxj;Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 1465
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u:Z

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p1, Laxj;->a:Ljava/lang/String;

    iget v1, p1, Laxj;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "openConversation conversationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8477
    :cond_0
    iget-object v0, p1, Laxj;->a:Ljava/lang/String;

    iget v1, p1, Laxj;->b:I

    .line 8478
    invoke-static {p3, v0, v1}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 8479
    const-string v1, "conversation_parameters"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8480
    const-string v1, "opened_from_impression"

    iget v2, p1, Laxj;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8482
    if-eqz p2, :cond_1

    .line 8483
    const-string v1, "Babel_HomeActivity"

    const-string v2, "Injecting share intent."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8484
    const-string v1, "share_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8486
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1472
    const-string v1, "openConversation "

    iget-object v0, p1, Laxj;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 1473
    return-void

    .line 1472
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 1644
    return-void
.end method

.method public a(Lczb;Ljava/lang/String;IJ)V
    .locals 6

    .prologue
    .line 1517
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u:Z

    if-eqz v0, :cond_0

    .line 1518
    const-string v0, "openInvite "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 1523
    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    .line 1522
    invoke-static/range {v0 .. v5}, Laal;->a(ILjava/lang/String;Lczb;IJ)Landroid/content/Intent;

    move-result-object v0

    .line 1529
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1530
    return-void

    .line 1518
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ldvv;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 287
    invoke-static {p1, v0, p0, p0}, Laal;->a(Ldvv;Lbfd;Lba;Ldvx;)V

    .line 288
    return-void
.end method

.method public a(Lepa;)V
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    invoke-virtual {v0, p1}, Lepc;->a(Lepa;)V

    .line 1690
    return-void
.end method

.method public a(Lepa;Lepa;)V
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    invoke-virtual {v0, p1, p2}, Lepc;->a(Lepa;Lepa;)V

    .line 1696
    return-void
.end method

.method public a(Liaj;)V
    .locals 1

    .prologue
    .line 1809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    .line 1810
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A()V

    .line 1811
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0, p1}, Lhzy;->a(Liaj;)V

    .line 1812
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1, p2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1403
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v1}, Lhzy;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1409
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1410
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    const-class v1, Lcsr;

    new-instance v2, Lcss;

    invoke-direct {v2}, Lcss;-><init>()V

    .line 1415
    invoke-virtual {v2, p1}, Lcss;->a(Ljava/lang/String;)Lcss;

    move-result-object v2

    .line 1416
    invoke-virtual {v2, p2}, Lcss;->b(Ljava/lang/String;)Lcss;

    move-result-object v2

    .line 1417
    invoke-virtual {v2}, Lcss;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 1412
    invoke-virtual {v0, v1, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    .line 1410
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    goto :goto_0

    .line 1420
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->W:Lhba;

    .line 1421
    invoke-interface {v1, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x619

    .line 1422
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 1424
    invoke-interface {v0}, Lhax;->d()V

    .line 1425
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    invoke-virtual {v0, p1, p2}, Liaj;->a(Ljava/lang/String;Ljava/lang/String;)Liaj;

    move-result-object v0

    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZII)V
    .locals 7

    .prologue
    .line 8491
    const-string v0, "openHangout"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 8492
    new-instance v0, Ldjm;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 8495
    invoke-virtual {v1}, Lhzy;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ldjm;-><init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZII)V

    .line 8501
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldjm;->a([Ljava/lang/Object;)Lhbw;

    .line 1512
    return-void
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1091
    const-string v0, "Babel_HomeActivity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "oAHST "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    sget-object v0, Lddt;->a:[I

    invoke-virtual {p3}, Lhpv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1134
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z

    if-eqz v0, :cond_0

    .line 1135
    new-instance v0, Ldea;

    invoke-direct {v0, p0}, Ldea;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 1197
    :goto_1
    return-void

    .line 1102
    :pswitch_0
    iput-boolean v3, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    goto :goto_0

    .line 1107
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V

    goto :goto_1

    .line 1111
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A()V

    .line 1114
    new-instance v0, Lddz;

    invoke-direct {v0, p0}, Lddz;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1146
    :cond_0
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p2, v0, :cond_4

    move v1, v2

    .line 1153
    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->s()V

    .line 1156
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->U:Lhwj;

    new-instance v4, Lddo;

    invoke-direct {v4, p0}, Lddo;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-virtual {v0, v4}, Lhwj;->a(Ljava/lang/Runnable;)Levf;

    .line 1164
    invoke-static {p5}, Ldvd;->e(I)Lbfd;

    move-result-object v4

    .line 1166
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v5, Leot;

    invoke-virtual {v0, v5}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0, p5}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    invoke-static {v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e(Lbfd;)V

    .line 1171
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v()V

    .line 1172
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v5, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_5

    .line 1174
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->c()I

    move-result v0

    .line 1173
    :goto_3
    invoke-interface {v5, v0}, Lbwp;->a(I)V

    .line 1177
    :cond_2
    if-eqz v1, :cond_6

    .line 1178
    invoke-direct {p0, v3}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Z)V

    .line 1193
    :cond_3
    :goto_4
    invoke-direct {p0, v2}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Z)V

    .line 1196
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t()V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 1146
    goto :goto_2

    :cond_5
    move v0, v3

    .line 1174
    goto :goto_3

    .line 1181
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    invoke-static {}, Ldvd;->v()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1184
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q()V

    .line 1185
    const-string v0, "Babel_HomeActivity"

    const-string v1, "[BabelHomeActivity.onCreate] Adding account from dialer intent."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1187
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->O:Ldty;

    invoke-interface {v0, v4}, Ldty;->a(Lbfd;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->cl:I

    .line 7759
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7760
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->gZ:I

    new-instance v3, Ldds;

    invoke-direct {v3, p0}, Ldds;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    .line 7761
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7769
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7770
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1070
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laen;->bw:I

    if-ne v0, v1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->W:Lhba;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 1072
    invoke-virtual {v1}, Lhzy;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x64f

    .line 1073
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 1074
    invoke-interface {v0}, Lhax;->d()V

    .line 1075
    new-instance v0, Ldfq;

    invoke-direct {v0, p0}, Ldfq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->H:Ldiu;

    .line 1076
    invoke-virtual {v0, v1}, Ldfq;->a(Ldiu;)Ldfq;

    move-result-object v0

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C_()Lbg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfq;->a(Lbg;)Ldfq;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Ldfq;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1081
    :cond_0
    invoke-super {p0, p1}, Lcbr;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1649
    invoke-static {v0, p1}, Lcfc;->a(Lbfd;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const-string v0, "Babel_HomeActivity"

    const-string v1, "People client connected but home activity is finishing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1638
    :cond_0
    return-void
.end method

.method public b(Ldvv;)V
    .locals 3

    .prologue
    .line 1703
    invoke-virtual {p1}, Ldvv;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1715
    const-string v0, "Babel_HomeActivity"

    const-string v1, "Unsupported call action type for BabelHomeActivity!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1718
    :goto_0
    return-void

    .line 1705
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r()V

    goto :goto_0

    .line 1709
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    .line 1710
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->V:Lawo;

    .line 1711
    invoke-interface {v1, v0}, Lawo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1710
    invoke-static {p0, p1, v0, v1}, Laal;->a(Lba;Ldvv;ILjava/lang/String;)V

    goto :goto_0

    .line 1703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1290
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->s:Lepa;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1291
    :goto_0
    new-instance v3, Lepb;

    invoke-direct {v3, p0}, Lepb;-><init>(Landroid/content/Context;)V

    .line 1292
    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v4}, Lhzy;->a()I

    move-result v4

    .line 1293
    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->kb:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->V:Lawo;

    .line 1294
    invoke-interface {v6, v4}, Lawo;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {v3, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    .line 1295
    invoke-virtual {v3, p1}, Lepb;->b(Ljava/lang/String;)Lepb;

    .line 1296
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lepb;->a(J)Lepb;

    .line 1299
    new-instance v1, Lddq;

    invoke-direct {v1, p0}, Lddq;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-virtual {v3, v1}, Lepb;->a(Leph;)Lepb;

    .line 1318
    invoke-virtual {v3}, Lepb;->b()Lepa;

    move-result-object v1

    .line 1319
    if-eqz v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->s:Lepa;

    invoke-virtual {v0, v2, v1}, Lepc;->a(Lepa;Lepa;)V

    .line 1324
    :goto_1
    iput-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->s:Lepa;

    .line 1325
    return-void

    :cond_0
    move v0, v2

    .line 1290
    goto :goto_0

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    invoke-virtual {v0, v1}, Lepc;->a(Lepa;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    .line 1380
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 1381
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->O:Ldty;

    invoke-interface {v2, v1}, Ldty;->b(Lbfd;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->V:Lawo;

    .line 1382
    invoke-interface {v1, v0}, Lawo;->f(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    if-nez v0, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->gN:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/BalanceView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    .line 1387
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->m:Landroid/support/v7/widget/Toolbar;

    check-cast v0, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;->a(Landroid/view/View;)V

    .line 1390
    :cond_0
    if-eqz p1, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/BalanceView;->a(Z)V

    .line 1398
    :cond_1
    :goto_0
    return-void

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/BalanceView;->a(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->K:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->L:Ljava/lang/String;

    .line 831
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->i()Lfcn;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x()V

    .line 1684
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v()V

    .line 1685
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z

    .line 562
    :goto_0
    return-void

    .line 535
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z

    .line 536
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4660
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 542
    if-eqz v0, :cond_1

    .line 543
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 544
    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    invoke-virtual {v1, v0}, Liaj;->a(I)Liaj;

    move-result-object v0

    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    goto :goto_0

    .line 4849
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jv:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V

    goto :goto_0

    .line 555
    :cond_2
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 557
    invoke-virtual {v0}, Liaj;->a()Liaj;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Liaj;->c()Liaj;

    move-result-object v0

    const-class v1, Liap;

    new-instance v2, Liaq;

    invoke-direct {v2}, Liaq;-><init>()V

    .line 561
    invoke-virtual {v2}, Liaq;->b()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 559
    invoke-virtual {v0, v1, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    .line 555
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    goto :goto_0
.end method

.method public n()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1026
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "View pager is null"

    invoke-static {v0, v3}, Laen;->b(ZLjava/lang/Object;)V

    .line 1028
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    if-eqz v0, :cond_1

    .line 1029
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 1030
    :goto_1
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 1031
    iget-boolean v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->O:Ldty;

    invoke-interface {v4, p0, v3}, Ldty;->a(Landroid/content/Context;Lbfd;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 1032
    :goto_2
    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C_()Lbg;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(ILbg;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7043
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_5

    :goto_3
    const-string v0, "View pager is null"

    invoke-static {v1, v0}, Laen;->b(ZLjava/lang/Object;)V

    .line 7045
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7046
    iput-object v6, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;

    .line 1034
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/util/TabHostEx;->a(Landroid/view/LayoutInflater;)V

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p()V

    .line 1040
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1026
    goto :goto_0

    .line 1029
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 1031
    goto :goto_2

    :cond_5
    move v1, v2

    .line 7043
    goto :goto_3

    .line 7052
    :cond_6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_selected_tab"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7053
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Ljava/lang/String;)Z

    goto :goto_4
.end method

.method public o()V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0}, Lbwp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9751
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 9752
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    goto :goto_0

    .line 1607
    :cond_2
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1609
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    :cond_4
    invoke-super {p0}, Lcbr;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1624
    invoke-super {p0, p1}, Lcbr;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1626
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y_()V

    .line 1628
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v()V

    .line 1629
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 298
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->R:J

    .line 301
    sget v0, Laal;->hR:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->setTheme(I)V

    .line 308
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 310
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u:Z

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "onCreate  savedInstanceState: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y:Z

    .line 318
    const-string v0, "BabelHomeActivity.onCreate"

    invoke-static {v0, v1}, Lewz;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    const-string v0, "Babel_HomeActivity"

    const-string v2, "BabelHomeActivity was not the root task in onCreate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y:Z

    if-eqz v0, :cond_1

    .line 334
    const-string v0, "Babel_HomeActivity"

    const-string v1, "Finishing instead of re-launching from the launcher"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    new-instance v0, Lddw;

    invoke-direct {v0, p0}, Lddw;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v0, v1, v2}, Lddw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    const-string v0, "/onCreate"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v0, v2, v3}, Laal;->a(ZZZ)I

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y:Z

    .line 2371
    new-instance v2, Landroid/content/Intent;

    .line 3036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 2371
    const-class v4, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2372
    const-string v3, "from_main_launcher"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    new-instance v0, Lddw;

    invoke-direct {v0, p0}, Lddw;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v0, v1, v2}, Lddw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    const-string v0, "/onCreate"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    if-nez p1, :cond_3

    .line 356
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.hangouts.phone.conversationlist"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "use_dialer_activity"

    const/4 v2, 0x1

    .line 358
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    invoke-static {v1}, Laal;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    new-instance v0, Lddw;

    invoke-direct {v0, p0}, Lddw;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v0, v1, v2}, Lddw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    const-string v0, "/onCreate"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    :try_start_3
    invoke-static {}, Lewz;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->setRequestedOrientation(I)V

    .line 375
    :cond_4
    invoke-static {p0}, Lcom/google/android/apps/hangouts/service/BootReceiver;->a(Landroid/content/Context;)Z

    .line 376
    new-instance v0, Lddu;

    invoke-direct {v0, p0}, Lddu;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 384
    invoke-virtual {v0, v2}, Lddu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    if-nez p1, :cond_8

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->m()V

    .line 399
    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Laal;->eV:I

    .line 400
    :goto_2
    sget-object v2, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v3, "setContentView"

    invoke-virtual {v2, v3}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->setContentView(I)V

    .line 402
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v2, "setContentView"

    invoke-virtual {v0, v2}, Lezv;->c(Ljava/lang/String;)V

    .line 404
    sget v0, Laen;->hi:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/MainViewPager;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    new-instance v2, Lddv;

    invoke-direct {v2, p0}, Lddv;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(Llt;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(Z)V

    .line 425
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/util/TabHostEx;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/util/TabHostEx;->a(Lcom/google/android/apps/hangouts/views/MainViewPager;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->I:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/util/TabHostEx;->setup()V

    .line 432
    :cond_5
    if-nez p1, :cond_6

    .line 433
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.hangouts.phone.conversationlist"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 434
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    iget-object v0, v0, Lfcn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;

    .line 436
    invoke-static {v1}, Laal;->b(Landroid/content/Intent;)V

    .line 443
    :cond_6
    :goto_3
    const-string v0, "Babel_HomeActivity"

    const-string v2, "[BabelHomeActivity.onCreate] setContentView called"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    sget v0, Laen;->bJ:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    .line 448
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C_()Lbg;

    move-result-object v0

    sget v2, Laen;->es:I

    invoke-virtual {v0, v2}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->G:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->F:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->dh:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    .line 452
    new-instance v0, Ldiu;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->B:Lipg;

    invoke-direct {v0, p0, v2}, Ldiu;-><init>(Landroid/content/Context;Liog;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->H:Ldiu;

    .line 457
    if-nez p1, :cond_7

    const-string v0, "android.intent.category.LAUNCHER"

    .line 458
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y:Z

    if-eqz v0, :cond_7

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->T:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    :cond_7
    new-instance v0, Lddw;

    invoke-direct {v0, p0}, Lddw;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v0, v1, v2}, Lddw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    const-string v0, "/onCreate"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_8
    :try_start_4
    const-string v0, "handled_intent_for_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C:Z

    .line 391
    const-string v0, "is_logging_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    .line 392
    const-string v0, "pending_login_from_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 466
    :catchall_0
    move-exception v0

    new-instance v1, Lddw;

    invoke-direct {v1, p0}, Lddw;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v1, v2, v3}, Lddw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    const-string v1, "/onCreate"

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 475
    sget-object v1, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v2, "onCreate"

    invoke-virtual {v1, v2}, Lezv;->c(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_9
    :try_start_5
    sget v0, Laal;->eW:I

    goto/16 :goto_2

    .line 437
    :cond_a
    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    iget-object v0, v0, Lfcn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 968
    sget v1, Laal;->hc:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 970
    iput-object p1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->N:Landroid/view/Menu;

    .line 971
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v()V

    .line 975
    :cond_0
    invoke-super {p0, p1}, Lcbr;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 638
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 639
    invoke-super {p0}, Lcbr;->onDestroy()V

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_0

    .line 641
    sget v0, Laen;->dX:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 642
    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0}, Lbwp;->a()V

    .line 646
    :cond_0
    const-string v0, "/onDestroy"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 788
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 790
    :try_start_0
    invoke-super {p0, p1}, Lcbr;->onNewIntent(Landroid/content/Intent;)V

    .line 791
    const-string v0, "Babel_HomeActivity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onNewIntet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    const-string v0, "BabelHomeActivity.onNewIntent"

    invoke-static {v0, p1}, Lewz;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C:Z

    .line 798
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.hangouts.phone.conversationlist"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    iget-object v0, v0, Lfcn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;

    .line 807
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    const-string v0, "/onNewIntent"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 810
    return-void

    .line 800
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    iget-object v0, v0, Lfcn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->J:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    const-string v1, "/onNewIntent"

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 780
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    .line 782
    invoke-super {p0}, Lcbr;->onPause()V

    .line 783
    const-string v0, "/onPause"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 997
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    move v0, v1

    .line 1022
    :goto_0
    return v0

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u()V

    .line 1004
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_3

    .line 1005
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->i()Lfcn;

    move-result-object v0

    .line 1008
    :goto_1
    sget-object v2, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    if-ne v0, v2, :cond_4

    .line 1009
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Z)V

    .line 1016
    :cond_1
    :goto_2
    sget v0, Laen;->bw:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_2

    .line 1018
    invoke-static {}, Lezc;->a()Z

    move-result v1

    .line 1019
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1022
    :cond_2
    invoke-super {p0, p1}, Lcbr;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 1005
    :cond_3
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    goto :goto_1

    .line 1011
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->E:Lcom/google/android/apps/hangouts/views/BalanceView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/BalanceView;->a(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 659
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 662
    :try_start_0
    invoke-super {p0}, Lcbr;->onResume()V

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    .line 666
    sget-boolean v1, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u:Z

    if-eqz v1, :cond_0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onResume account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    :cond_0
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Z)V

    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->d(Z)V

    .line 675
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z:Z

    .line 676
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n()V

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    const-string v0, "/onResume"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 684
    iget-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    .line 687
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t()V

    .line 688
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v1, Laxy;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy;

    invoke-interface {v0}, Laxy;->a()V

    .line 689
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 690
    return-void

    .line 682
    :catchall_0
    move-exception v0

    move-object v1, v0

    const-string v0, "/onResume"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 684
    iget-wide v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->S:J

    .line 687
    :cond_4
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->t()V

    .line 688
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    const-class v2, Laxy;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy;

    invoke-interface {v0}, Laxy;->a()V

    .line 689
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v2, "onResume"

    invoke-virtual {v0, v2}, Lezv;->c(Ljava/lang/String;)V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcbr;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 482
    const-string v0, "handled_intent_for_action"

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->C:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    const-string v0, "is_logging_in"

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->D:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    const-string v0, "pending_login_from_intent"

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->z:Z

    .line 486
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 490
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v2, "onStart"

    invoke-virtual {v0, v2}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    const-string v0, "onStart"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 494
    invoke-super {p0}, Lcbr;->onStart()V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    invoke-virtual {v0}, Lhzy;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n()V

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v()V

    .line 506
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_1

    .line 507
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->c()I

    move-result v0

    .line 507
    :goto_0
    invoke-interface {v2, v0}, Lbwp;->a(I)V

    .line 3774
    :cond_1
    invoke-static {p0}, Lbff;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3775
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3777
    const-string v2, ""

    invoke-static {p0, v2}, Lbff;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3779
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 3780
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3781
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->W:Lhba;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 3782
    invoke-virtual {v3}, Lhzy;->a()I

    move-result v3

    invoke-interface {v2, v3}, Lhba;->a(I)Lhaw;

    move-result-object v2

    const/16 v3, 0x74d

    .line 3783
    invoke-interface {v2, v3}, Lhaw;->a(I)Lhax;

    move-result-object v2

    .line 3784
    invoke-interface {v2}, Lhax;->d()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Z:Lepi;

    invoke-virtual {v0, v1}, Lepc;->a(Lepi;)V

    .line 516
    const-string v0, "/onStart"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->v:Lezv;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 518
    return-void

    :cond_3
    move v0, v1

    .line 508
    goto :goto_0

    .line 3786
    :catch_0
    move-exception v2

    const-string v2, "Babel_HomeActivity"

    const-string v3, "Failed to parse refererr url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3788
    :catch_1
    move-exception v2

    const-string v2, "Babel_HomeActivity"

    const-string v3, "Failed to find activity for refererr url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 652
    invoke-super {p0}, Lcbr;->onStop()V

    .line 653
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Y:Lepc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->Z:Lepi;

    invoke-virtual {v0, v1}, Lepc;->b(Lepi;)V

    .line 654
    const-string v0, "/onStop"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->c(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->i()Lfcn;

    move-result-object v0

    .line 1360
    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Lfcn;->a:I

    .line 1361
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->setTitle(I)V

    .line 1362
    return-void

    .line 1359
    :cond_0
    sget-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    goto :goto_0

    .line 1360
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eL:I

    goto :goto_1
.end method

.method public q()V
    .locals 3

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->W:Lhba;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->X:Lhzy;

    .line 1431
    invoke-virtual {v1}, Lhzy;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x65c

    .line 1432
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 1433
    invoke-interface {v0}, Lhax;->d()V

    .line 1434
    const-string v0, "Babel_HomeActivity"

    const-string v1, "Adding a new account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    new-instance v0, Lddr;

    invoke-direct {v0, p0}, Lddr;-><init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 1448
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "View pager is null"

    invoke-static {v0, v1}, Laen;->b(ZLjava/lang/Object;)V

    .line 1728
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->p:Lcom/google/android/apps/hangouts/views/MainViewPager;

    sget-object v1, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Lfcn;)Z

    .line 1729
    return-void

    .line 1726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1366
    invoke-super {p0, p1}, Lcbr;->setTitle(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->m:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 1368
    return-void
.end method

.method public u_()V
    .locals 1

    .prologue
    .line 1672
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w()V

    .line 1673
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    if-eqz v0, :cond_0

    .line 1674
    sget v0, Laen;->dX:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1675
    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    invoke-interface {v0}, Lbwp;->a()V

    .line 1679
    :cond_0
    return-void
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method public w_()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->w()V

    .line 836
    return-void
.end method

.method public x_()V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->x()V

    .line 841
    return-void
.end method
