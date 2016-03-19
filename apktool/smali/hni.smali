.class public final Lhni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhni;->a:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lhni;->c:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhni;->d:J

    .line 21
    iput p1, p0, Lhni;->b:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lhni;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 30
    iget-wide v4, p0, Lhni;->d:J

    sub-long/2addr v2, v4

    .line 33
    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 34
    monitor-exit v1

    .line 41
    :goto_0
    return v0

    .line 37
    :cond_0
    iget v2, p0, Lhni;->c:I

    iget v3, p0, Lhni;->b:I

    if-lt v2, v3, :cond_1

    .line 38
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 41
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    .line 50
    iget-object v1, p0, Lhni;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget v0, p0, Lhni;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhni;->c:I

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 53
    iget-wide v4, p0, Lhni;->d:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lhni;->c:I

    .line 55
    iput-wide v2, p0, Lhni;->d:J

    .line 57
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
