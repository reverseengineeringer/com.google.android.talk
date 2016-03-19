.class final Ljtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljts;


# static fields
.field private static final d:Ljava/util/UUID;


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lmfh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljrs;

.field private final f:Lhvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ljtt;->d:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Ljrs;Lhvq;Ljava/util/concurrent/Executor;Lkog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljrs;",
            "Lhvq;",
            "Ljava/util/concurrent/Executor;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Ljtt;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    iput-object p1, p0, Ljtt;->e:Ljrs;

    .line 46
    iput-object p2, p0, Ljtt;->f:Lhvq;

    .line 47
    iput-object p3, p0, Ljtt;->a:Ljava/util/concurrent/Executor;

    .line 48
    iput-object p4, p0, Ljtt;->b:Lkog;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 53
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already associated with a trace: "

    .line 56
    invoke-interface {v0}, Ljtn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 4665
    sget-object v0, Lmfh;->f:Lmfh;

    invoke-virtual {v0}, Lmfh;->g()Llwa;

    move-result-object v0

    check-cast v0, Llwa;

    .line 5036
    sget-object v1, Ljud;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    .line 60
    invoke-virtual {v0, v4, v5}, Llwa;->a(J)Llwa;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 61
    invoke-virtual {v0, v4, v5}, Llwa;->c(J)Llwa;

    move-result-object v0

    .line 62
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Llwa;->b(J)Llwa;

    move-result-object v0

    iget-object v1, p0, Ljtt;->f:Lhvq;

    .line 63
    invoke-interface {v1}, Lhvq;->a()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Llwa;->a(D)Llwa;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Llwa;->a(Ljava/lang/String;)Llwa;

    move-result-object v5

    .line 65
    iget-object v4, p0, Ljtt;->f:Lhvq;

    .line 6022
    new-instance v0, Ljtl;

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Ljtl;-><init>(Ljtn;Ljava/util/UUID;Ljts;Lhvq;Llwa;Z)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v5}, Llwa;->e()Llvy;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, p0, Ljtt;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 71
    iget-object v3, p0, Ljtt;->e:Ljrs;

    invoke-virtual {v3, v0}, Ljrs;->a(Ljava/lang/Object;)Llbb;

    move-result-object v0

    .line 72
    new-instance v3, Ljtu;

    invoke-direct {v3, p0, v2, v1, v0}, Ljtu;-><init>(Ljtt;Ljava/util/UUID;Ljava/util/ArrayList;Llbb;)V

    iget-object v1, p0, Ljtt;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3, v1}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 95
    return-void
.end method

.method public a(Ljava/util/UUID;Lmfh;)V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Ljtt;->d:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ljtt;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lfii;->b(Z)V

    goto :goto_0
.end method
