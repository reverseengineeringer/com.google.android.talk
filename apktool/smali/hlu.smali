.class final Lhlu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhna;


# static fields
.field private static a:Lhlu;


# instance fields
.field private final b:Lhmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhmf",
            "<",
            "Lmhw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lhmd;


# direct methods
.method private constructor <init>(Lhnj;Lhmd;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhlu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lhlu;->d:Lhmd;

    .line 35
    new-instance v0, Lhmf;

    new-instance v1, Lhlt;

    invoke-direct {v1}, Lhlt;-><init>()V

    sget v2, Lhmk;->a:I

    invoke-direct {v0, p1, v1, p2, v2}, Lhmf;-><init>(Lhnj;Lhlv;Lhmd;I)V

    iput-object v0, p0, Lhlu;->b:Lhmf;

    .line 41
    return-void
.end method

.method static declared-synchronized a(Lhnj;Lhmd;)Lhlu;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lhlu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhlu;->a:Lhlu;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lhlu;

    invoke-direct {v0, p0, p1}, Lhlu;-><init>(Lhnj;Lhmd;)V

    sput-object v0, Lhlu;->a:Lhlu;

    .line 48
    :cond_0
    sget-object v0, Lhlu;->a:Lhlu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lhnb;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lhnb;->a:Lhnb;

    return-object v0
.end method

.method public b()Lmik;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lhlu;->d:Lhmd;

    invoke-interface {v0}, Lhmd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lmik;

    invoke-direct {v0}, Lmik;-><init>()V

    .line 120
    new-instance v1, Lmig;

    invoke-direct {v1}, Lmig;-><init>()V

    iput-object v1, v0, Lmik;->h:Lmig;

    .line 121
    iget-object v1, v0, Lmik;->h:Lmig;

    const/4 v2, 0x2

    iput v2, v1, Lmig;->a:I

    goto :goto_0
.end method
