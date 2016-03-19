.class final Lhiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lhiy;


# direct methods
.method constructor <init>(Lhiy;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lhiz;->a:Lhiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 65
    const-string v0, "vclib"

    const-string v1, "onServiceConnected"

    .line 1081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez p2, :cond_1

    .line 68
    const-string v0, "vclib"

    const-string v1, "Failed to bind to CallService."

    .line 1101
    invoke-static {v3, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    instance-of v0, p2, Lhcr;

    if-nez v0, :cond_2

    .line 77
    const-string v0, "vclib"

    const-string v1, "CallService does not appear to be running in the current process. This is most likely because the application crashed and restarted the service in another process. This instance will be unusable."

    .line 2101
    invoke-static {v3, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lhiz;->a:Lhiy;

    check-cast p2, Lhcr;

    .line 3050
    iput-object p2, v0, Lhiy;->c:Lhcr;

    .line 84
    iget-object v0, p0, Lhiz;->a:Lhiy;

    .line 4050
    iget-object v0, v0, Lhiy;->b:Lhcd;

    .line 84
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhiz;->a:Lhiy;

    .line 5050
    iget-object v0, v0, Lhiy;->b:Lhcd;

    .line 84
    invoke-virtual {v0}, Lhcd;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lhiz;->a:Lhiy;

    .line 6050
    iget-object v0, v0, Lhiy;->c:Lhcr;

    .line 85
    iget-object v1, p0, Lhiz;->a:Lhiy;

    .line 7050
    iget-object v1, v1, Lhiy;->b:Lhcd;

    .line 85
    invoke-virtual {v0, v1}, Lhcr;->a(Lhcd;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 91
    const-string v0, "vclib"

    const-string v1, "onServiceDisconnected"

    .line 7081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lhiz;->a:Lhiy;

    .line 8050
    const/4 v1, 0x0

    iput-object v1, v0, Lhiy;->c:Lhcr;

    .line 93
    return-void
.end method
