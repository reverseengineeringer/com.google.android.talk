.class public final Lfhe;
.super Ljava/lang/Object;

# interfaces
.implements Lfgv;


# static fields
.field public static final a:Lfhm;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final d:J


# instance fields
.field private final e:Lfmr;

.field private final f:Lfhk;

.field private final g:Ljava/lang/Object;

.field private h:J

.field private final i:J

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private k:Lfic;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfhe;->b:Ljava/lang/Object;

    new-instance v0, Lfhm;

    .line 5000
    invoke-direct {v0}, Lfhm;-><init>()V

    .line 0
    sput-object v0, Lfhe;->a:Lfhm;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lfhe;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lfmt;

    invoke-direct {v0}, Lfmt;-><init>()V

    sget-wide v2, Lfhe;->d:J

    new-instance v1, Lfhk;

    invoke-direct {v1}, Lfhk;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lfhe;-><init>(Lfmr;JLfhk;)V

    return-void
.end method

.method private constructor <init>(Lfmr;JLfhk;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfhe;->g:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfhe;->h:J

    iput-object v2, p0, Lfhe;->j:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lfhe;->k:Lfic;

    new-instance v0, Lfhf;

    invoke-direct {v0, p0}, Lfhf;-><init>(Lfhe;)V

    iput-object v0, p0, Lfhe;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Lfhe;->e:Lfmr;

    iput-wide p2, p0, Lfhe;->i:J

    iput-object p4, p0, Lfhe;->f:Lfhk;

    return-void
.end method

.method static synthetic a(Lfhe;Lfic;Lfir;)Lfij;
    .locals 1

    invoke-direct {p0, p1, p2}, Lfhe;->a(Lfic;Lfir;)Lfij;

    move-result-object v0

    return-object v0
.end method

.method private a(Lfic;Lfir;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lfir;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lfhe;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lfhg;

    invoke-direct {v1, p0, p1, p2}, Lfhg;-><init>(Lfhe;Lfic;Lfir;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method static synthetic a(Lfhe;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfhe;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v1, Lfhe;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfhe;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lfhe;->c:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lfhe;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lfhe;->b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic b(Lfhe;)J
    .locals 2

    iget-wide v0, p0, Lfhe;->h:J

    return-wide v0
.end method

.method private static b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->f:La;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lgbt;

    iget-object v0, v0, Lgbt;->i:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lgbt;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->f:La;

    invoke-interface {v1}, La;->e()[B

    move-result-object v1

    iput-object v1, v0, Lgbt;->i:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->g:La;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lgbt;

    iget-object v0, v0, Lgbt;->r:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lgbt;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->g:La;

    invoke-interface {v1}, La;->e()[B

    move-result-object v1

    iput-object v1, v0, Lgbt;->r:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lgbt;

    invoke-static {v0}, Lgbn;->a(Lgbn;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    return-void
.end method

.method private c(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfhl;
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lfhe;->a:Lfhm;

    invoke-virtual {v0}, Lfhm;->a()V

    new-instance v1, Lfhl;

    invoke-direct {v1, p0, p2, p1}, Lfhl;-><init>(Lfhe;Lcom/google/android/gms/clearcut/LogEventParcelable;Lfic;)V

    new-instance v2, Lfik;

    invoke-direct {v2, p0}, Lfik;-><init>(Lfhe;)V

    .line 2000
    iget-boolean v0, v1, Lfip;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v3, v1, Lfip;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Lfip;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lfip;->f:Lfim;

    .line 4000
    sget-object v0, Lfhe;->a:Lfhm;

    .line 3000
    invoke-virtual {v0}, Lfhm;->b()V

    .line 2000
    :goto_1
    monitor-exit v3

    .line 0
    return-object v1

    .line 2000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lfip;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lfhe;)Lfmr;
    .locals 1

    iget-object v0, p0, Lfhe;->e:Lfmr;

    return-object v0
.end method

.method static synthetic d(Lfhe;)Lfic;
    .locals 1

    iget-object v0, p0, Lfhe;->k:Lfic;

    return-object v0
.end method

.method static synthetic e(Lfhe;)Lfic;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfhe;->k:Lfic;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lfhe;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lfhe;->k:Lfic;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Lfid;

    invoke-direct {v0, p1}, Lfid;-><init>(Landroid/content/Context;)V

    sget-object v2, Lfgr;->c:Lfhw;

    invoke-virtual {v0, v2}, Lfid;->a(Lfhw;)Lfid;

    move-result-object v0

    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lfhe;->k:Lfic;

    iget-object v0, p0, Lfhe;->k:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    :cond_0
    iget-object v0, p0, Lfhe;->e:Lfmr;

    invoke-interface {v0}, Lfmr;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lfhe;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lfhe;->h:J

    iget-object v0, p0, Lfhe;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfhe;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    invoke-static {}, Lfhe;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lfhe;->l:Ljava/lang/Runnable;

    iget-wide v4, p0, Lfhe;->i:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lfhe;->j:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lfhe;->k:Lfic;

    invoke-virtual {p0, v0, p2}, Lfhe;->b(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lfhe;->b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    invoke-direct {p0, p1, p2}, Lfhe;->c(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfhl;

    move-result-object v0

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;)V
    .locals 4

    new-instance v0, Lfhh;

    invoke-direct {v0, p0, p1, p1}, Lfhh;-><init>(Lfhe;Lfic;Lfic;)V

    sget-object v1, Lfhe;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lfhe;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sget-object v2, Lfhe;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lfhj;

    invoke-direct {v3, p0, p1, v0}, Lfhj;-><init>(Lfhe;Lfic;Lfir;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lfhe;->a:Lfhm;

    invoke-virtual {v0, p1, p2, p3}, Lfhm;->a(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "flush interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lfhe;->c(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfhl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfhe;->a(Lfic;Lfir;)Lfij;

    move-result-object v0

    return-object v0
.end method
