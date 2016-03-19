.class public final Lhqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqe;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhrb;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lhqq;


# direct methods
.method public constructor <init>(Lhqq;I)V
    .locals 2

    .prologue
    .line 10573
    const-string v0, ""

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lhqc;-><init>(Lhqq;ILjava/lang/String;Ljava/util/Map;)V

    .line 10574
    return-void
.end method

.method private constructor <init>(Lhqq;ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhrb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11576
    iput-object p1, p0, Lhqc;->f:Lhqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11569
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 12035
    iget-object v0, v0, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 11569
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhqc;->d:Ljava/util/Map;

    .line 11577
    iput p2, p0, Lhqc;->b:I

    .line 11578
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhqc;->a:Ljava/lang/String;

    .line 11579
    iput-object p4, p0, Lhqc;->c:Ljava/util/Map;

    .line 11580
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 13694
    invoke-direct {p0, p1}, Lhqc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13696
    iget-object v0, p0, Lhqc;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrb;

    .line 13697
    if-eqz v0, :cond_1

    .line 13698
    invoke-interface {v0, p2}, Lhrb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 13704
    :cond_0
    :goto_0
    return-object p2

    .line 13700
    :cond_1
    iget v0, p0, Lhqc;->b:I

    invoke-static {v0, v1}, Lhqc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13701
    iget-object v1, p0, Lhqc;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13702
    iget-object v1, p0, Lhqc;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 13712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lhrb;)V
    .locals 2

    .prologue
    .line 13690
    iget-object v0, p0, Lhqc;->c:Ljava/util/Map;

    invoke-direct {p0, p1}, Lhqc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13691
    return-void
.end method

.method private c(Ljava/lang/String;F)Lhqc;
    .locals 1

    .prologue
    .line 12614
    new-instance v0, Lhrc;

    invoke-direct {v0, p2}, Lhrc;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 12615
    return-object p0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 13708
    iget-object v0, p0, Lhqc;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 13671
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 13661
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 13666
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;)Lhqc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lhqc;"
        }
    .end annotation

    .prologue
    .line 1590
    new-instance v0, Lhri;

    invoke-direct {v0, p2}, Lhri;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1591
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13635
    invoke-direct {p0, p1, p2}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(ILandroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 13770
    iget-object v0, p0, Lhqc;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13771
    iget-object v1, p0, Lhqc;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrb;

    .line 13772
    invoke-static {p1, v0}, Lhqc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13773
    invoke-interface {v1, p2, v0}, Lhrb;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 13775
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 13676
    const-string v0, "logged_in"

    invoke-virtual {p0, v0}, Lhqc;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 12626
    invoke-direct {p0, p1}, Lhqc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12627
    iget-object v0, p0, Lhqc;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrb;

    .line 12628
    if-eqz v0, :cond_1

    .line 12629
    sget-object v1, Lhqq;->c:Lhrg;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 12630
    :goto_0
    return v0

    .line 12629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12630
    :cond_1
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 13035
    iget-object v0, v0, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 12630
    iget v2, p0, Lhqc;->b:I

    invoke-static {v2, v1}, Lhqc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 13651
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)Lhqc;
    .locals 1

    .prologue
    .line 1602
    new-instance v0, Lhrd;

    invoke-direct {v0, p2}, Lhrd;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1603
    return-object p0
.end method

.method public b(Ljava/lang/String;J)Lhqc;
    .locals 2

    .prologue
    .line 1608
    new-instance v0, Lhre;

    invoke-direct {v0, p2, p3}, Lhre;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1609
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lhqc;
    .locals 1

    .prologue
    .line 1584
    new-instance v0, Lhrh;

    invoke-direct {v0, p2}, Lhrh;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1585
    return-object p0
.end method

.method public b(Ljava/lang/String;Z)Lhqc;
    .locals 1

    .prologue
    .line 1596
    new-instance v0, Lhra;

    invoke-direct {v0, p2}, Lhra;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1597
    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;F)Lhqe;
    .locals 1

    .prologue
    .line 16565
    invoke-direct {p0, p1, p2}, Lhqc;->c(Ljava/lang/String;F)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/util/Set;)Lhqe;
    .locals 1

    .prologue
    .line 20565
    invoke-virtual {p0, p1, p2}, Lhqc;->a(Ljava/lang/String;Ljava/util/Set;)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 13681
    const-string v0, "logged_out"

    invoke-virtual {p0, v0}, Lhqc;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lhqc;
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqc;->e:Z

    .line 1718
    return-object p0
.end method

.method public synthetic c(Ljava/lang/String;I)Lhqe;
    .locals 1

    .prologue
    .line 18565
    invoke-virtual {p0, p1, p2}, Lhqc;->b(Ljava/lang/String;I)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;J)Lhqe;
    .locals 2

    .prologue
    .line 17565
    invoke-virtual {p0, p1, p2, p3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;Ljava/lang/String;)Lhqe;
    .locals 1

    .prologue
    .line 21565
    invoke-virtual {p0, p1, p2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;Z)Lhqe;
    .locals 1

    .prologue
    .line 19565
    invoke-virtual {p0, p1, p2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13646
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d()I
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1723
    iget v1, p0, Lhqc;->b:I

    .line 1724
    iget-boolean v0, p0, Lhqc;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lhqc;->b:I

    if-eq v0, v8, :cond_0

    move v4, v3

    .line 1725
    :goto_0
    if-eqz v4, :cond_1

    .line 1726
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 2035
    invoke-virtual {v0}, Lhqq;->c()Ljava/util/List;

    move-result-object v0

    .line 1726
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpx;

    .line 1727
    iget v6, p0, Lhqc;->b:I

    invoke-interface {v0, v6}, Lhpx;->c(I)V

    goto :goto_1

    :cond_0
    move v4, v2

    .line 1724
    goto :goto_0

    .line 1731
    :cond_1
    iget-object v5, p0, Lhqc;->f:Lhqq;

    monitor-enter v5

    .line 1732
    :try_start_0
    iget-object v0, p0, Lhqc;->f:Lhqq;

    const-string v6, "account_name"

    invoke-virtual {p0, v6}, Lhqc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "effective_gaia_id"

    .line 1733
    invoke-virtual {p0, v7}, Lhqc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1732
    invoke-virtual {v0, v6, v7}, Lhqq;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1734
    iget v6, p0, Lhqc;->b:I

    if-eq v0, v6, :cond_2

    if-ne v0, v8, :cond_3

    :cond_2
    move v0, v3

    .line 1736
    :goto_2
    if-nez v0, :cond_4

    .line 1737
    new-instance v0, Lbyt;

    const-string v1, "Duplicate account."

    invoke-direct {v0, v1}, Lbyt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1757
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    .line 1734
    goto :goto_2

    .line 1740
    :cond_4
    if-eq v1, v8, :cond_5

    if-eqz v4, :cond_10

    .line 1741
    :cond_5
    :try_start_1
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 3035
    invoke-virtual {v0}, Lhqq;->d()I

    move-result v0

    .line 1744
    iget-object v1, p0, Lhqc;->f:Lhqq;

    .line 4035
    invoke-virtual {v1, v0}, Lhqq;->h(I)V

    move v2, v0

    .line 1747
    :goto_3
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 5035
    iget-object v0, v0, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 1747
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1748
    if-eqz v4, :cond_e

    .line 1749
    iget-object v0, p0, Lhqc;->f:Lhqq;

    iget v1, p0, Lhqc;->b:I

    .line 6276
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6277
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6279
    iget-object v0, v0, Lhqq;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 6280
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6282
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6283
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6284
    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6286
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 6287
    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 6283
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 6288
    :cond_8
    instance-of v8, v0, Ljava/lang/Boolean;

    if-eqz v8, :cond_9

    .line 6289
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 6290
    :cond_9
    instance-of v8, v0, Ljava/lang/Integer;

    if-eqz v8, :cond_a

    .line 6291
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 6292
    :cond_a
    instance-of v8, v0, Ljava/lang/Long;

    if-eqz v8, :cond_b

    .line 6293
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v3, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 6294
    :cond_b
    instance-of v8, v0, Ljava/lang/Float;

    if-eqz v8, :cond_c

    .line 6295
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 6296
    :cond_c
    instance-of v8, v0, Ljava/util/Set;

    if-eqz v8, :cond_6

    .line 6297
    check-cast v0, Ljava/util/Set;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 1750
    :cond_d
    iget-object v0, p0, Lhqc;->f:Lhqq;

    iget v1, p0, Lhqc;->b:I

    .line 7035
    invoke-virtual {v0, v1}, Lhqq;->g(I)V

    .line 1753
    :cond_e
    invoke-virtual {p0, v2, v3}, Lhqc;->a(ILandroid/content/SharedPreferences$Editor;)V

    .line 1755
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1756
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 8035
    invoke-virtual {v0}, Lhqq;->e()V

    .line 1757
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    iget v0, p0, Lhqc;->b:I

    if-eq v2, v0, :cond_f

    .line 1760
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 9035
    invoke-virtual {v0}, Lhqq;->c()Ljava/util/List;

    move-result-object v0

    .line 1760
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpx;

    .line 1761
    invoke-interface {v0, v2}, Lhpx;->b(I)V

    goto :goto_6

    .line 1764
    :cond_f
    iget-object v0, p0, Lhqc;->f:Lhqq;

    .line 10035
    invoke-virtual {v0}, Lhqq;->f()V

    .line 1766
    return v2

    :cond_10
    move v2, v1

    goto/16 :goto_3
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 13656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic e(Ljava/lang/String;)Lhqb;
    .locals 1

    .prologue
    .line 22565
    invoke-virtual {p0, p1}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lhqc;
    .locals 1

    .prologue
    .line 1620
    sget-object v0, Lhqq;->c:Lhrg;

    invoke-direct {p0, p1, v0}, Lhqc;->a(Ljava/lang/String;Lhrb;)V

    .line 1621
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lhqc;
    .locals 6

    .prologue
    .line 1686
    new-instance v1, Lhqc;

    iget-object v2, p0, Lhqc;->f:Lhqq;

    iget v3, p0, Lhqc;->b:I

    iget-object v0, p0, Lhqc;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lhqc;->c:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v0, v4}, Lhqc;-><init>(Lhqq;ILjava/lang/String;Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic h(Ljava/lang/String;)Lhqe;
    .locals 1

    .prologue
    .line 14565
    invoke-virtual {p0, p1}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;)Lhqe;
    .locals 1

    .prologue
    .line 15565
    invoke-virtual {p0, p1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    return-object v0
.end method
