.class public final Leux;
.super Lffy;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Levg;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Levg;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lffy;-><init>()V

    .line 31
    iput-object p1, p0, Leux;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Leux;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Leux;->c:Levg;

    .line 34
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Leux;->c:Levg;

    .line 96
    iget-boolean v0, p0, Leux;->d:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Leux;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Leux;->d:Z

    .line 100
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Leux;->c:Levg;

    .line 68
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Leuy;

    invoke-direct {v2, p0, v0, p1}, Leuy;-><init>(Leux;Levg;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    invoke-direct {p0}, Leux;->a()V

    .line 77
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Leux;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 114
    const-string v0, "Babel_telephony"

    const-string v1, "TeleGetProxyNumberConnection.onError, failed with errorCode: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Leux;->b(I)V

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Leux;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 106
    const-string v0, "Babel_telephony"

    const-string v1, "TeleGetProxyNumberConnection.onReceiveProxyNumber, received proxy number"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leux;->c:Levg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleGetProxyNumberConnection.handleSuccess, callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Leux;->c:Levg;

    .line 1082
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Leuz;

    invoke-direct {v2, p0, v0, p2}, Leuz;-><init>(Leux;Levg;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1091
    invoke-direct {p0}, Leux;->a()V

    .line 108
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 38
    const-string v0, "Babel_telephony"

    const-string v1, "TeleGetProxyNumberConnection.onServiceConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-boolean v3, p0, Leux;->d:Z

    .line 40
    invoke-static {p2}, Lfgb;->a(Landroid/os/IBinder;)Lfga;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-interface {v0}, Lfga;->a()I

    move-result v1

    iget-object v2, p0, Leux;->a:Landroid/content/Context;

    .line 1055
    const-string v3, "babel_telephony_min_voice_service_api_version_to_enable_proxy_number"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 42
    if-lt v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Leux;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lfga;->a(Ljava/lang/String;Lffx;)V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leux;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "Babel_telephony"

    const-string v2, "TeleGetProxyNumberConnection.onServiceConnected, calling VoiceService failed"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Leux;->b(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 62
    const-string v0, "Babel_telephony"

    const-string v1, "TeleGetProxyNumberConnection.onServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Leux;->b(I)V

    .line 64
    return-void
.end method
