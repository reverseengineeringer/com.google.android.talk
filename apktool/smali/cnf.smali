.class final Lcnf;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcnd;

.field private b:Z


# direct methods
.method constructor <init>(Lcnd;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcnf;->a:Lcnd;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method

.method private a(Lkhk;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-boolean v0, p0, Lcnf;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    move v0, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0}, Lhks;->q()Lhbo;

    move-result-object v0

    const-class v2, Lhbh;

    .line 95
    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    .line 96
    invoke-interface {v0}, Lhbh;->a()Lkhk;

    move-result-object v0

    .line 97
    iget-object v2, p1, Lkhk;->b:Ljava/lang/String;

    iget-object v0, v0, Lkhk;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lkhk;->r:Ljava/lang/Boolean;

    .line 1015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcnf;->b:Z

    .line 81
    return-void
.end method

.method public synthetic a(Llyi;)V
    .locals 2

    .prologue
    .line 33
    check-cast p1, Lkhk;

    .line 8038
    invoke-direct {p0, p1}, Lcnf;->a(Lkhk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8039
    iget-object v0, p0, Lcnf;->a:Lcnd;

    .line 9030
    iget-object v0, v0, Lcnd;->b:Lcmu;

    .line 8039
    iget-object v1, p0, Lcnf;->a:Lcnd;

    .line 10030
    iget-object v1, v1, Lcnd;->a:Landroid/content/Context;

    .line 8039
    invoke-static {v1, p1}, Laal;->a(Landroid/content/Context;Lkhk;)Lcms;

    move-result-object v1

    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 33
    :cond_0
    return-void
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 33
    check-cast p1, Lkhk;

    check-cast p2, Lkhk;

    .line 3053
    invoke-direct {p0, p2}, Lcnf;->a(Lkhk;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lkhk;->r:Ljava/lang/Boolean;

    .line 4015
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 3054
    if-nez v1, :cond_0

    .line 3055
    iget-object v1, p0, Lcnf;->a:Lcnd;

    .line 4030
    iget-object v1, v1, Lcnd;->b:Lcmu;

    .line 3055
    iget-object v2, p0, Lcnf;->a:Lcnd;

    .line 5030
    iget-object v2, v2, Lcnd;->a:Landroid/content/Context;

    .line 3055
    invoke-static {v2, p2}, Laal;->a(Landroid/content/Context;Lkhk;)Lcms;

    move-result-object v2

    invoke-interface {v1, v2}, Lcmu;->a(Lcms;)V

    .line 3058
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3059
    iget-object v2, p2, Lkhk;->h:[Lkhl;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 3060
    iget-object v4, v4, Lkhl;->a:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3063
    :cond_1
    iget-object v1, p1, Lkhk;->h:[Lkhl;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 3064
    iget-object v3, v3, Lkhl;->a:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3067
    :cond_2
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v0

    .line 3068
    invoke-interface {v0}, Lhks;->p()Ljava/util/Map;

    move-result-object v8

    .line 3069
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhkx;

    .line 3070
    invoke-virtual {v2}, Lhkx;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3071
    iget-object v0, p0, Lcnf;->a:Lcnd;

    .line 6030
    iget-object v10, v0, Lcnd;->b:Lcmu;

    .line 3071
    iget-object v0, p0, Lcnf;->a:Lcnd;

    .line 7030
    iget-object v0, v0, Lcnd;->a:Landroid/content/Context;

    .line 3073
    iget-object v1, p2, Lkhk;->b:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhkx;

    .line 7059
    const/4 v1, 0x1

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->dR:I

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dS:I

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->dQ:I

    invoke-static/range {v0 .. v6}, Laal;->a(Landroid/content/Context;ILhkx;Lhkx;III)Lcms;

    move-result-object v0

    .line 3071
    invoke-interface {v10, v0}, Lcmu;->a(Lcms;)V

    goto :goto_2

    .line 33
    :cond_4
    return-void
.end method

.method public synthetic b(Llyi;)V
    .locals 7

    .prologue
    .line 33
    check-cast p1, Lkhk;

    .line 1045
    invoke-direct {p0, p1}, Lcnf;->a(Lkhk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcnf;->a:Lcnd;

    .line 2030
    iget-object v0, v0, Lcnd;->b:Lcmu;

    .line 1046
    iget-object v1, p0, Lcnf;->a:Lcnd;

    .line 3030
    iget-object v1, v1, Lcnd;->a:Landroid/content/Context;

    .line 3042
    new-instance v2, Lcmt;

    invoke-direct {v2}, Lcmt;-><init>()V

    .line 3045
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->dU:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lkhk;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3046
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3043
    invoke-virtual {v2, v1}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v1

    .line 3047
    invoke-virtual {v1}, Lcmt;->b()Lcms;

    move-result-object v1

    .line 1046
    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 33
    :cond_0
    return-void
.end method
