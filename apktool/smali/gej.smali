.class public final Lgej;
.super Lgdw;


# instance fields
.field private final f:Lgeh;

.field private final g:Lgds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1000
    new-instance v0, Lfid;

    invoke-direct {v0, p1}, Lfid;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfid;->a()Lfkq;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 0
    invoke-direct/range {v0 .. v6}, Lgej;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;Lfkq;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;Lfkq;)V
    .locals 8

    sget-object v7, Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;->a:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lgej;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;Lfkq;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;Lfkq;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct/range {p0 .. p6}, Lgdw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Ljava/lang/String;Lfkq;)V

    new-instance v0, Lgeh;

    iget-object v1, p0, Lgej;->e:Lgen;

    invoke-direct {v0, p1, v1}, Lgeh;-><init>(Landroid/content/Context;Lgen;)V

    iput-object v0, p0, Lgej;->f:Lgeh;

    invoke-virtual {p6}, Lfkq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lfkq;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgej;->e:Lgen;

    .line 2000
    new-instance v0, Lgds;

    move-object v1, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lgds;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgen;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V

    .line 0
    iput-object v0, p0, Lgej;->g:Lgds;

    return-void
.end method


# virtual methods
.method public a(JLandroid/app/PendingIntent;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lgej;->k()V

    invoke-static {p3}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Laal;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lgej;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgeb;

    invoke-interface {v0, p1, p2, v1, p3}, Lgeb;->a(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-virtual {p0}, Lgej;->k()V

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgej;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgeb;

    invoke-interface {v0, p1}, Lgeb;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v1, p0, Lgej;->f:Lgeh;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lgej;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lgej;->f:Lgeh;

    invoke-virtual {v0}, Lgeh;->a()V

    iget-object v0, p0, Lgej;->f:Lgeh;

    invoke-virtual {v0}, Lgeh;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lgdw;->c()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
