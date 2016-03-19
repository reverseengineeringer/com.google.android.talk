.class public Lorg/chromium/net/HttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->a:Landroid/os/Bundle;

    .line 195
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->b:Ljava/lang/String;

    .line 196
    return-void
.end method

.method static create(Ljava/lang/String;)Lorg/chromium/net/HttpNegotiateAuthenticator;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v0, p0}, Lorg/chromium/net/HttpNegotiateAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    if-eqz p3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 371
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/16 v11, -0x157

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1033
    sget-object v9, Lorg/chromium/base/ContextUtils;->a:Landroid/content/Context;

    .line 221
    new-instance v10, Lmov;

    invoke-direct {v10}, Lmov;-><init>()V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SPNEGO:HOSTBASED:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lmov;->d:Ljava/lang/String;

    .line 223
    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, v10, Lmov;->b:Landroid/accounts/AccountManager;

    .line 224
    iput-wide p1, v10, Lmov;->a:J

    .line 225
    new-array v5, v4, [Ljava/lang/String;

    const-string v2, "SPNEGO"

    aput-object v2, v5, v8

    .line 227
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v10, Lmov;->c:Landroid/os/Bundle;

    .line 228
    if-eqz p4, :cond_0

    .line 229
    iget-object v2, v10, Lmov;->c:Landroid/os/Bundle;

    const-string v3, "incomingAuthToken"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->a:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, v10, Lmov;->c:Landroid/os/Bundle;

    const-string v3, "spnegoContext"

    iget-object v6, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    :cond_1
    iget-object v2, v10, Lmov;->c:Landroid/os/Bundle;

    const-string v3, "canDelegate"

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1240
    sget-object v6, Lorg/chromium/base/ApplicationStatus;->a:Landroid/app/Activity;

    .line 239
    if-nez v6, :cond_3

    .line 1302
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v9, v2, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1310
    const-string v2, "net_auth"

    const-string v3, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Laal;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    iget-wide v2, v10, Lmov;->a:J

    invoke-virtual {p0, v2, v3, v11, v7}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 2353
    :goto_0
    return-void

    .line 1316
    :cond_2
    iget-object v2, v10, Lmov;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->b:Ljava/lang/String;

    new-instance v4, Lmos;

    invoke-direct {v4, p0, v10}, Lmos;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lmov;)V

    new-instance v6, Landroid/os/Handler;

    .line 2203
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1316
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 2336
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_4

    move v3, v4

    .line 2337
    :goto_1
    if-eqz v3, :cond_5

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    .line 2348
    :goto_2
    invoke-virtual {p0, v9, v2, v3}, Lorg/chromium/net/HttpNegotiateAuthenticator;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2349
    const-string v3, "net_auth"

    const-string v5, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-static {v3, v5, v4}, Laal;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2351
    iget-wide v2, v10, Lmov;->a:J

    invoke-virtual {p0, v2, v3, v11, v7}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v8

    .line 2336
    goto :goto_1

    .line 2337
    :cond_5
    const-string v2, "android.permission.GET_ACCOUNTS"

    goto :goto_2

    .line 2356
    :cond_6
    iget-object v2, v10, Lmov;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->b:Ljava/lang/String;

    iget-object v4, v10, Lmov;->d:Ljava/lang/String;

    iget-object v8, v10, Lmov;->c:Landroid/os/Bundle;

    new-instance v9, Lmot;

    invoke-direct {v9, p0, v10}, Lmot;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lmov;)V

    new-instance v10, Landroid/os/Handler;

    .line 3203
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 2356
    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {v2 .. v10}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public native nativeSetResult(JILjava/lang/String;)V
.end method
