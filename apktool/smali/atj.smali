.class public final Latj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latn;


# instance fields
.field final a:Lath;

.field b:Z

.field private final c:Landroid/content/Context;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lath;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Latk;

    invoke-direct {v0, p0}, Latk;-><init>(Latj;)V

    iput-object v0, p0, Latj;->e:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Latj;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Latj;->a:Lath;

    .line 34
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 57
    const-string v0, "connectivity"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public e()V
    .locals 2

    .prologue
    .line 1048
    iget-boolean v0, p0, Latj;->d:Z

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Latj;->c:Landroid/content/Context;

    iget-object v1, p0, Latj;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1053
    const/4 v0, 0x0

    iput-boolean v0, p0, Latj;->d:Z

    .line 71
    :cond_0
    return-void
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public s_()V
    .locals 4

    .prologue
    .line 1037
    iget-boolean v0, p0, Latj;->d:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Latj;->c:Landroid/content/Context;

    invoke-static {v0}, Latj;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Latj;->b:Z

    .line 1042
    iget-object v0, p0, Latj;->c:Landroid/content/Context;

    iget-object v1, p0, Latj;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Latj;->d:Z

    .line 66
    :cond_0
    return-void
.end method
