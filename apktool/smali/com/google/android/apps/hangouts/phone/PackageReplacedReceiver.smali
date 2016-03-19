.class public Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lezi;->k:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/google/android/apps/hangouts/sms/SmsReceiver;->a()V

    .line 1366
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v2

    .line 1367
    monitor-enter v2

    .line 1369
    :try_start_0
    iget v0, v2, Ldwt;->a:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    .line 1370
    const-string v0, "BabelGcmRegistration"

    const-string v3, "GcmRegistration: Forcing re-registration"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    const/4 v0, 0x0

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Ldwt;->a(Ljava/lang/String;I)V

    .line 1374
    invoke-virtual {v2}, Ldwt;->h()V

    .line 1376
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const-class v0, Ldty;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldty;

    invoke-interface {v0, p0}, Ldty;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const-class v0, Leot;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 171
    invoke-static {}, Ldvd;->e()[I

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    .line 172
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 173
    if-eqz v5, :cond_1

    .line 174
    invoke-interface {v0, v4}, Leot;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-virtual {v5}, Lbfd;->N()I

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e(I)I

    .line 171
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 180
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;->a:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handlePackageChanged action:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " packageName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 65
    if-eqz v0, :cond_2

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-static {v1, v1, v2}, Laal;->a(ZZZ)I

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    if-eqz v0, :cond_9

    .line 72
    const-string v0, "Babel"

    const-string v3, "Gms package replaced. Will trigger a restart of babel"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    invoke-static {p0}, Laal;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "gms_core_valid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    if-eqz v0, :cond_8

    .line 77
    const-string v0, "Babel"

    const-string v3, "Skip forced warm sync since previous gmscore is valid."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1080
    :goto_1
    sput-boolean v1, Lcbr;->k:Z

    move v3, v0

    .line 83
    invoke-static {}, Ldvd;->s()V

    .line 95
    :goto_2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 99
    :goto_3
    invoke-static {v0, v1}, Laal;->a(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    const-string v0, "Babel"

    const-string v1, "GmsCore check failed during package upgrade"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_3
    if-eqz v4, :cond_4

    .line 116
    :try_start_0
    const-class v0, Liaf;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaf;

    new-instance v4, Liai;

    invoke-direct {v4}, Liai;-><init>()V

    .line 117
    invoke-virtual {v4}, Liai;->c()Liah;

    move-result-object v4

    invoke-interface {v0, v4}, Liaf;->a(Liah;)V
    :try_end_0
    .catch Lhqn; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 130
    :cond_4
    :goto_5
    invoke-static {}, Lehb;->b()V

    .line 131
    invoke-static {}, Lehb;->a()V

    .line 136
    invoke-static {}, Ldvd;->q()V

    .line 138
    if-nez v3, :cond_1

    .line 143
    const-string v0, "Babel"

    const-string v3, "Force warm sync for all signed in accounts after package upgrades"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v1}, Ldvd;->d(Z)[I

    move-result-object v1

    .line 145
    array-length v3, v1

    move v0, v2

    :goto_6
    if-ge v0, v3, :cond_1

    aget v4, v1, v0

    .line 146
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 148
    if-eqz v5, :cond_5

    .line 149
    sget-object v5, Lebq;->a:Lebq;

    invoke-static {v4, v2, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    .line 145
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 118
    :catch_0
    move-exception v0

    .line 120
    const-string v4, "Babel"

    const-string v5, "Account refresh failed"

    invoke-static {v4, v5, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 126
    :cond_6
    invoke-static {p0}, Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;->a(Landroid/content/Context;)V

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v3, v2

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;->a:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "PackageReplacedReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 40
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    if-nez v1, :cond_3

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-class v0, Lctl;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method
