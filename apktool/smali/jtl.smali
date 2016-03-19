.class final Ljtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtn;


# instance fields
.field private final a:Ljts;

.field private final b:Lhvq;

.field private final c:Ljtn;

.field private final d:Llwa;

.field private final e:Ljava/util/UUID;

.field private final f:Z


# direct methods
.method constructor <init>(Ljtn;Ljava/util/UUID;Ljts;Lhvq;Llwa;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljtl;->c:Ljtn;

    .line 29
    iput-object p3, p0, Ljtl;->a:Ljts;

    .line 30
    iput-object p4, p0, Ljtl;->b:Lhvq;

    .line 31
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Ljtl;->e:Ljava/util/UUID;

    .line 32
    iput-object p5, p0, Ljtl;->d:Llwa;

    .line 33
    iput-boolean p6, p0, Ljtl;->f:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljtn;
    .locals 8

    .prologue
    .line 53
    new-instance v0, Ljtl;

    iget-object v2, p0, Ljtl;->e:Ljava/util/UUID;

    iget-object v3, p0, Ljtl;->a:Ljts;

    iget-object v4, p0, Ljtl;->b:Lhvq;

    iget-object v1, p0, Ljtl;->d:Llwa;

    .line 54
    invoke-virtual {v1}, Llwa;->e()Llvy;

    move-result-object v1

    check-cast v1, Lmfh;

    invoke-virtual {v1}, Lmfh;->g()Llwa;

    move-result-object v1

    check-cast v1, Llwa;

    iget-object v5, p0, Ljtl;->d:Llwa;

    .line 55
    invoke-virtual {v5}, Llwa;->j()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Llwa;->c(J)Llwa;

    move-result-object v1

    .line 1036
    sget-object v5, Ljud;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    .line 56
    invoke-virtual {v1, v6, v7}, Llwa;->a(J)Llwa;

    move-result-object v1

    iget-object v5, p0, Ljtl;->b:Lhvq;

    .line 57
    invoke-interface {v5}, Lhvq;->a()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v1, v6, v7}, Llwa;->a(D)Llwa;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p1}, Llwa;->a(Ljava/lang/String;)Llwa;

    move-result-object v5

    iget-boolean v6, p0, Ljtl;->f:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljtl;-><init>(Ljtn;Ljava/util/UUID;Ljts;Lhvq;Llwa;Z)V

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Ljtl;->d:Llwa;

    iget-object v1, p0, Ljtl;->b:Lhvq;

    invoke-interface {v1}, Lhvq;->a()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Llwa;->b(D)Llwa;

    .line 64
    iget-object v1, p0, Ljtl;->a:Ljts;

    iget-object v2, p0, Ljtl;->e:Ljava/util/UUID;

    iget-object v0, p0, Ljtl;->d:Llwa;

    invoke-virtual {v0}, Llwa;->e()Llvy;

    move-result-object v0

    check-cast v0, Lmfh;

    invoke-interface {v1, v2, v0}, Ljts;->a(Ljava/util/UUID;Lmfh;)V

    .line 65
    return-void
.end method

.method public b()Ljtn;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljtl;->c:Ljtn;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Ljtl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Ended wrong trace, expected %s but got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 70
    invoke-virtual {p0}, Ljtl;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-static {v0, v1, v2}, Lfii;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljtl;->d:Llwa;

    invoke-virtual {v0}, Llwa;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Ljtl;->f:Z

    return v0
.end method
