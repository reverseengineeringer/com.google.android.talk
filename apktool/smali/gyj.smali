.class public final Lgyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyi;


# instance fields
.field volatile a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field private c:Z

.field private final d:Lgxk;

.field private final e:Lgwu;

.field private final f:Lgxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgxq",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lgxk;Lgwv;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lgym;

    invoke-direct {v0, p0}, Lgym;-><init>(Lgyj;)V

    iput-object v0, p0, Lgyj;->b:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lgyn;

    invoke-direct {v0, p0}, Lgyn;-><init>(Lgyj;)V

    iput-object v0, p0, Lgyj;->f:Lgxq;

    .line 39
    iput-object p2, p0, Lgyj;->d:Lgxk;

    .line 40
    iget-object v0, p0, Lgyj;->d:Lgxk;

    new-instance v1, Lgyk;

    invoke-direct {v1, p0}, Lgyk;-><init>(Lgyj;)V

    invoke-interface {v0, v1}, Lgxk;->a(Lgxn;)V

    .line 53
    iget-object v0, p0, Lgyj;->d:Lgxk;

    new-instance v1, Lgyl;

    invoke-direct {v1, p0}, Lgyl;-><init>(Lgyj;)V

    invoke-interface {v0, v1}, Lgxk;->a(Lgxo;)V

    .line 61
    const-string v0, "UNKNOWN"

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lgwv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lgwu;

    move-result-object v0

    iput-object v0, p0, Lgyj;->e:Lgwu;

    .line 63
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lgyj;->d:Lgxk;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lgyj;->c:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lgyj;->e:Lgwu;

    iget-object v2, p0, Lgyj;->d:Lgxk;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3}, Lgwu;->a(Lgxk;Ljava/util/concurrent/TimeUnit;)Z

    .line 129
    iget-object v0, p0, Lgyj;->d:Lgxk;

    invoke-interface {v0}, Lgxk;->b()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgyj;->c:Z

    .line 132
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lgyj;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lgyj;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lgyj;->a:Landroid/os/Handler;

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    iget-object v0, p0, Lgyj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lgyj;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1117
    iget-object v1, p0, Lgyj;->d:Lgxk;

    monitor-enter v1

    .line 1118
    :try_start_1
    iget-boolean v0, p0, Lgyj;->c:Z

    if-nez v0, :cond_2

    .line 1119
    iget-object v0, p0, Lgyj;->d:Lgxk;

    invoke-interface {v0}, Lgxk;->a()V

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgyj;->c:Z

    .line 1122
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    iget-object v0, p0, Lgyj;->e:Lgwu;

    invoke-interface {v0, p2}, Lgwu;->a([B)Lgwt;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lgwt;->a(Ljava/lang/String;)Lgwt;

    .line 95
    iget-object v1, p0, Lgyj;->d:Lgxk;

    invoke-virtual {v0, v1}, Lgwt;->a(Lgxk;)Lgxp;

    move-result-object v0

    iget-object v1, p0, Lgyj;->f:Lgxq;

    invoke-virtual {v0, v1}, Lgxp;->a(Lgxq;)V

    .line 96
    return-void

    .line 72
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1122
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
