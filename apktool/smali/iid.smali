.class final Liid;
.super Liia;
.source "SourceFile"


# static fields
.field static final a:J


# instance fields
.field private final b:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Liib;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lgwi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Liid;->a:J

    return-void
.end method

.method constructor <init>(Lgwi;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Liia;-><init>()V

    .line 26
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Liid;->b:Lif;

    .line 32
    iput-object p1, p0, Liid;->c:Lgwi;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Liib;
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liid;->b:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liib;

    .line 142
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Liib;

    iget-object v1, p0, Liid;->c:Lgwi;

    invoke-direct {v0, p1, v1}, Liib;-><init>(Ljava/lang/String;Lgwi;)V

    .line 144
    iget-object v1, p0, Liid;->b:Lif;

    invoke-virtual {v1, p1, v0}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
