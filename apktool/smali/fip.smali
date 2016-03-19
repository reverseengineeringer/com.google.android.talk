.class public abstract Lfip;
.super Ljava/lang/Object;

# interfaces
.implements Lfij;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lfim;",
        ">",
        "Ljava/lang/Object;",
        "Lfij",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:Lfin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfin",
            "<TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Lfiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfiq",
            "<TR;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfik;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lfim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field private h:Z

.field private i:Z

.field private j:Lflu;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfip;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lfip;->a:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfip;->e:Ljava/util/ArrayList;

    new-instance v0, Lfiq;

    invoke-direct {v0, p1}, Lfiq;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfip;->d:Lfiq;

    return-void
.end method

.method static b(Lfim;)V
    .locals 3

    instance-of v1, p0, Lfil;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lfil;

    move-object v1, v0

    invoke-interface {v1}, Lfil;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private c(Lfim;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lfip;->f:Lfim;

    const/4 v0, 0x0

    iput-object v0, p0, Lfip;->j:Lflu;

    iget-object v0, p0, Lfip;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lfip;->f:Lfim;

    iget-object v0, p0, Lfip;->b:Lfin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfip;->d:Lfiq;

    invoke-virtual {v0}, Lfiq;->a()V

    iget-boolean v0, p0, Lfip;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfip;->d:Lfiq;

    iget-object v1, p0, Lfip;->b:Lfin;

    invoke-direct {p0}, Lfip;->g()Lfim;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfiq;->a(Lfin;Lfim;)V

    :cond_0
    iget-object v0, p0, Lfip;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2000
    sget-object v1, Lfhe;->a:Lfhm;

    .line 1000
    invoke-virtual {v1}, Lfhm;->b()V

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p0, Lfip;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private g()Lfim;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lfip;->g:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Laal;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lfip;->b()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lfip;->f:Lfim;

    const/4 v2, 0x0

    iput-object v2, p0, Lfip;->f:Lfim;

    const/4 v2, 0x0

    iput-object v2, p0, Lfip;->b:Lfin;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lfip;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lfip;->e()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lfim;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Laal;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lfip;->g:Z

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Result has already been consumed"

    invoke-static {v1, v0}, Laal;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lfip;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lfip;->b()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lfip;->g()Lfim;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lfip;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2
.end method

.method public abstract a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final a(Lfim;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lfip;->i:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lfip;->h:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Lfip;->b(Lfim;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lfip;->b()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Laal;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lfip;->g:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lfip;->c(Lfim;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lfin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfin",
            "<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lfip;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lfip;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfip;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfip;->d:Lfiq;

    invoke-direct {p0}, Lfip;->g()Lfim;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lfiq;->a(Lfin;Lfim;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lfip;->b:Lfin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a(Lflu;)V
    .locals 2

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lfip;->j:Lflu;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lfip;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lfip;->a(Lcom/google/android/gms/common/api/Status;)Lfim;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfip;->a(Lfim;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfip;->i:Z

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

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lfip;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lfip;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfip;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfip;->j:Lflu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lfip;->j:Lflu;

    invoke-interface {v0}, Lflu;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lfip;->f:Lfim;

    invoke-static {v0}, Lfip;->b(Lfim;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lfip;->b:Lfin;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfip;->h:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lfip;->a(Lcom/google/android/gms/common/api/Status;)Lfim;

    move-result-object v0

    invoke-direct {p0, v0}, Lfip;->c(Lfim;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public d()Z
    .locals 2

    iget-object v1, p0, Lfip;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lfip;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method
