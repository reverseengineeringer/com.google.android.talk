.class final Lhuq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lhuq;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhuq;->c:Landroid/util/SparseArray;

    .line 25
    iput-object p1, p0, Lhuq;->b:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lhuq;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lhuq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhuq;->a:Lhuq;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lhuq;

    invoke-direct {v0, p0}, Lhuq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhuq;->a:Lhuq;

    .line 21
    :cond_0
    sget-object v0, Lhuq;->a:Lhuq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a()I
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lhuq;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 30
    :try_start_0
    iget v0, p0, Lhuq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhuq;->d:I

    if-gtz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lhuq;->d:I

    .line 34
    :cond_0
    iget-object v0, p0, Lhuq;->b:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    const/4 v2, 0x1

    const-string v3, "BackgroundTaskService"

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 37
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 38
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 39
    iget-object v2, p0, Lhuq;->c:Landroid/util/SparseArray;

    iget v3, p0, Lhuq;->d:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget v0, p0, Lhuq;->d:I

    return v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lhuq;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lhuq;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 49
    iget-object v0, p0, Lhuq;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
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
