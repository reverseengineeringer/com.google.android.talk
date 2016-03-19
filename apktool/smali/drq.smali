.class public Ldrq;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmgb;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4537
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4538
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p1, Lmgb;->j:[Lmgg;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4540
    iget-object v3, p1, Lmgb;->j:[Lmgg;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 4541
    iget-object v6, v5, Lmgg;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 4542
    iget-object v5, v5, Lmgg;->a:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4540
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4545
    :cond_1
    iput-object v2, p0, Ldrq;->g:Ljava/util/Set;

    .line 4546
    iget-object v0, p1, Lmgb;->b:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4546
    iput-boolean v0, p0, Ldrq;->h:Z

    .line 4548
    iget-object v0, p1, Lmgb;->c:Ljava/lang/Boolean;

    .line 6015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4548
    iput-boolean v0, p0, Ldrq;->i:Z

    .line 4550
    iget-object v0, p1, Lmgb;->g:Ljava/lang/Boolean;

    .line 7015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4550
    iput-boolean v0, p0, Ldrq;->j:Z

    .line 4552
    iget-object v0, p1, Lmgb;->k:Ljava/lang/Boolean;

    .line 8015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4552
    iput-boolean v0, p0, Ldrq;->k:Z

    .line 4554
    iget-object v0, p1, Lmgb;->a:Lmgc;

    if-eqz v0, :cond_2

    .line 4555
    iget-object v0, p1, Lmgb;->a:Lmgc;

    iget-object v0, v0, Lmgc;->c:Ljava/lang/String;

    iput-object v0, p0, Ldrq;->l:Ljava/lang/String;

    .line 4559
    :goto_1
    return-void

    .line 4557
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ldrq;->l:Ljava/lang/String;

    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4563
    if-eqz p0, :cond_0

    .line 4564
    new-instance v0, Lmgb;

    invoke-direct {v0}, Lmgb;-><init>()V

    .line 8131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4565
    check-cast v0, Lmgb;

    .line 4566
    if-eqz v0, :cond_0

    .line 4567
    new-instance v1, Ldrq;

    invoke-direct {v1, v0}, Ldrq;-><init>(Lmgb;)V

    move-object v0, v1

    .line 4571
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 6

    .prologue
    .line 4577
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 4579
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {p0}, Ldrq;->k()Z

    move-result v1

    .line 4580
    invoke-virtual {p0}, Ldrq;->l()Z

    move-result v2

    invoke-virtual {p0}, Ldrq;->m()Z

    move-result v3

    invoke-virtual {p0}, Ldrq;->o()Ljava/lang/String;

    move-result-object v4

    .line 4581
    invoke-virtual {p0}, Ldrq;->n()Z

    move-result v5

    .line 4579
    invoke-static/range {v0 .. v5}, Ldvd;->a(Lbfd;ZZZLjava/lang/String;Z)V

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4584
    const-class v1, Ldrr;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4586
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    .line 4589
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0

    .line 11036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 10601
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    .line 10602
    const-string v1, "use_tycho_branding"

    .line 10603
    invoke-virtual {p0}, Ldrq;->n()Z

    move-result v2

    .line 10602
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 10604
    invoke-virtual {v0}, Lhqc;->d()I

    .line 4592
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 4614
    iget-boolean v0, p0, Ldrq;->h:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 4625
    iget-boolean v0, p0, Ldrq;->i:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 4636
    iget-boolean v0, p0, Ldrq;->j:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 4645
    iget-boolean v0, p0, Ldrq;->k:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4654
    iget-object v0, p0, Ldrq;->l:Ljava/lang/String;

    return-object v0
.end method
