.class final Lifb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lifa;

.field volatile b:Z

.field volatile c:J

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Ljava/lang/Runnable;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lifa;)V
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lifb;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v3}, Lifb;-><init>(Ljava/util/concurrent/Executor;Lifa;J)V

    .line 29
    return-void
.end method

.method constructor <init>(Lifa;J)V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lifb;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lifb;-><init>(Ljava/util/concurrent/Executor;Lifa;J)V

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lifa;J)V
    .locals 5

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lifb;->b:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lifb;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    new-instance v0, Lifc;

    invoke-direct {v0, p0}, Lifc;-><init>(Lifb;)V

    iput-object v0, p0, Lifb;->e:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lifb;->f:Ljava/util/concurrent/Executor;

    .line 38
    iput-object p2, p0, Lifb;->a:Lifa;

    .line 39
    iput-wide p3, p0, Lifb;->c:J

    .line 40
    return-void
.end method

.method private static a()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 45
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lifb;->c:J

    .line 52
    return-void
.end method

.method b(J)V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lifb;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 57
    iget-object v0, p0, Lifb;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lifb;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lifb;->b:Z

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifb;->b:Z

    .line 60
    iget-object v0, p0, Lifb;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lifb;->f:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lifb;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    new-instance v0, Lifd;

    invoke-direct {v0, p0}, Lifd;-><init>(Lifb;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v0, v1}, Lifd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
