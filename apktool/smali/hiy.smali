.class public final Lhiy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Z


# instance fields
.field final a:Landroid/content/Context;

.field b:Lhcd;

.field c:Lhcr;

.field final d:Landroid/content/ServiceConnection;

.field private final e:Lhde;

.field private final f:Lhcb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lhiy;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lhiz;

    invoke-direct {v0, p0}, Lhiz;-><init>(Lhiy;)V

    iput-object v0, p0, Lhiy;->d:Landroid/content/ServiceConnection;

    .line 109
    iput-object p1, p0, Lhiy;->a:Landroid/content/Context;

    .line 110
    new-instance v0, Lhde;

    invoke-direct {v0}, Lhde;-><init>()V

    iput-object v0, p0, Lhiy;->e:Lhde;

    .line 111
    iget-object v0, p0, Lhiy;->e:Lhde;

    invoke-virtual {v0, p1}, Lhde;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "vclib"

    const-string v1, "Hangouts not supported by this device"

    .line 1101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_0
    sget-boolean v0, Lhiy;->g:Z

    if-nez v0, :cond_1

    .line 1261
    iget-object v0, p0, Lhiy;->a:Landroid/content/Context;

    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    const-class v1, Lhcb;

    new-instance v2, Lhcb;

    invoke-direct {v2}, Lhcb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 1262
    const/4 v0, 0x1

    sput-boolean v0, Lhiy;->g:Z

    .line 117
    :cond_1
    invoke-static {p1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    const-class v1, Lhcb;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcb;

    iput-object v0, p0, Lhiy;->f:Lhcb;

    .line 118
    return-void
.end method


# virtual methods
.method public a(Lhkt;)Lhks;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lhiy;->b:Lhcd;

    .line 2188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lhcd;

    iget-object v1, p0, Lhiy;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lhcd;-><init>(Landroid/content/Context;Lhkt;)V

    iput-object v0, p0, Lhiy;->b:Lhcd;

    .line 209
    iget-object v0, p0, Lhiy;->b:Lhcd;

    new-instance v1, Lhja;

    invoke-direct {v1, p0}, Lhja;-><init>(Lhiy;)V

    invoke-virtual {v0, v1}, Lhcd;->a(Lhku;)V

    .line 222
    iget-object v0, p0, Lhiy;->b:Lhcd;

    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lhiy;->c:Lhcr;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lhiy;->c:Lhcr;

    invoke-virtual {v0}, Lhcr;->a()V

    .line 145
    iget-object v0, p0, Lhiy;->a:Landroid/content/Context;

    iget-object v1, p0, Lhiy;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lhiy;->c:Lhcr;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "vclib"

    const-string v2, "Error disconnecting CallService"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lhjb;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lhiy;->f:Lhcb;

    invoke-virtual {v0, p1}, Lhcb;->a(Ljava/lang/String;)Lhca;

    move-result-object v0

    .line 183
    new-instance v1, Lhjc;

    invoke-direct {v1, p0, v0, p2}, Lhjc;-><init>(Lhiy;Lhca;Lhjb;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lhjc;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method public b()Lhks;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lhiy;->b:Lhcd;

    return-object v0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 2133
    iget-object v0, p0, Lhiy;->b:Lhcd;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lhiy;->b:Lhcd;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lhcd;->a(I)V

    .line 2135
    const/4 v0, 0x0

    iput-object v0, p0, Lhiy;->b:Lhcd;

    .line 2137
    :cond_0
    invoke-virtual {p0}, Lhiy;->a()V

    .line 127
    return-void
.end method
