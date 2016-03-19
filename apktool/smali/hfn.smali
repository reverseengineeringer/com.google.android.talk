.class final Lhfn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhcd;

.field private final b:Lhkx;

.field private final c:Lhbh;

.field private d:Lhil;


# direct methods
.method constructor <init>(Lhcd;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lhfn;->a:Lhcd;

    .line 27
    invoke-virtual {p1}, Lhcd;->q()Lhbo;

    move-result-object v0

    const-class v1, Lhbh;

    invoke-virtual {v0, v1}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    iput-object v0, p0, Lhfn;->c:Lhbh;

    .line 28
    new-instance v0, Lhkx;

    invoke-direct {v0}, Lhkx;-><init>()V

    iput-object v0, p0, Lhfn;->b:Lhkx;

    .line 29
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lhfn;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lhfn;->a:Lhcd;

    invoke-virtual {v0}, Lhcd;->m()Lhlb;

    move-result-object v0

    .line 76
    iget-object v3, p0, Lhfn;->b:Lhkx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlb;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lhkx;->b(Z)Lhkx;

    .line 77
    iget-object v0, p0, Lhfn;->d:Lhil;

    if-nez v0, :cond_4

    .line 78
    iget-object v0, p0, Lhfn;->a:Lhcd;

    invoke-virtual {v0}, Lhcd;->n()Lhkq;

    move-result-object v0

    .line 79
    iget-object v3, p0, Lhfn;->b:Lhkx;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhkq;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Lhkx;->a(Z)Lhkx;

    .line 84
    :goto_2
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {v0, v1}, Lhkx;->g(Z)Lhkx;

    .line 85
    iget-object v0, p0, Lhfn;->b:Lhkx;

    iget-object v1, p0, Lhfn;->c:Lhbh;

    invoke-interface {v1}, Lhbh;->a()Lkhk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkx;->a(Lkhk;)Lhkx;

    .line 117
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    :cond_3
    move v2, v1

    .line 79
    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, p0, Lhfn;->b:Lhkx;

    iget-object v2, p0, Lhfn;->d:Lhil;

    invoke-virtual {v2}, Lhil;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Lhkx;->a(Z)Lhkx;

    goto :goto_2

    .line 88
    :cond_5
    iget-object v0, p0, Lhfn;->b:Lhkx;

    iget-object v3, p0, Lhfn;->d:Lhil;

    invoke-virtual {v3}, Lhil;->o()Z

    move-result v3

    invoke-virtual {v0, v3}, Lhkx;->b(Z)Lhkx;

    .line 89
    iget-object v0, p0, Lhfn;->b:Lhkx;

    iget-object v3, p0, Lhfn;->d:Lhil;

    invoke-virtual {v3}, Lhil;->n()Z

    move-result v3

    invoke-virtual {v0, v3}, Lhkx;->a(Z)Lhkx;

    .line 94
    iget-object v0, p0, Lhfn;->c:Lhbh;

    invoke-interface {v0}, Lhbh;->a()Lkhk;

    move-result-object v3

    .line 95
    iget-object v0, p0, Lhfn;->c:Lhbh;

    invoke-interface {v0}, Lhbh;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lhfn;->d:Lhil;

    .line 96
    invoke-virtual {v4}, Lhil;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhk;

    .line 97
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 98
    iget-object v4, v3, Lkhk;->h:[Lkhl;

    array-length v5, v4

    move v3, v1

    :goto_4
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 101
    iget-object v6, v6, Lkhl;->a:Ljava/lang/String;

    iget-object v7, v0, Lkhk;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 102
    iget-object v3, p0, Lhfn;->b:Lhkx;

    invoke-virtual {v3, v2}, Lhkx;->g(Z)Lhkx;

    .line 108
    :cond_6
    iget-object v2, p0, Lhfn;->d:Lhil;

    invoke-virtual {v2}, Lhil;->m()Ljava/util/List;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 110
    :cond_7
    iget-object v2, p0, Lhfn;->b:Lhkx;

    invoke-virtual {v2, v1}, Lhkx;->a(I)Lhkx;

    .line 115
    :goto_5
    iget-object v1, p0, Lhfn;->b:Lhkx;

    invoke-virtual {v1, v0}, Lhkx;->a(Lkhk;)Lhkx;

    goto :goto_3

    .line 98
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 112
    :cond_9
    iget-object v3, p0, Lhfn;->b:Lhkx;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lhkx;->a(I)Lhkx;

    goto :goto_5
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lhil;)V
    .locals 4

    .prologue
    .line 52
    iput-object p1, p0, Lhfn;->d:Lhil;

    .line 53
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkx;->a(Ljava/lang/String;)Lhkx;

    .line 54
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {p1}, Lhil;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkx;->b(Ljava/lang/String;)Lhkx;

    .line 55
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {p1}, Lhil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkx;->c(Ljava/lang/String;)Lhkx;

    .line 56
    iget-object v0, p0, Lhfn;->b:Lhkx;

    invoke-virtual {p1}, Lhil;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lhkx;->a(J)Lhkx;

    .line 57
    instance-of v0, p1, Lhip;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lhfn;->b:Lhkx;

    move-object v0, p1

    check-cast v0, Lhip;

    invoke-virtual {v0}, Lhip;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhkx;->d(Ljava/lang/String;)Lhkx;

    .line 60
    :cond_0
    iget-object v0, p0, Lhfn;->b:Lhkx;

    instance-of v1, p1, Lhir;

    invoke-virtual {v0, v1}, Lhkx;->f(Z)Lhkx;

    .line 62
    invoke-direct {p0}, Lhfn;->f()V

    .line 63
    return-void
.end method

.method public b()Lhkx;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhfn;->b:Lhkx;

    return-object v0
.end method

.method public c()Lhil;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lhfn;->d:Lhil;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lhfn;->d:Lhil;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhfn;->d:Lhil;

    invoke-virtual {v0}, Lhil;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lhfn;->f()V

    .line 126
    iget-object v0, p0, Lhfn;->a:Lhcd;

    invoke-virtual {v0}, Lhcd;->c()Lhfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhfo;->b(Lhfn;)V

    .line 127
    return-void
.end method
