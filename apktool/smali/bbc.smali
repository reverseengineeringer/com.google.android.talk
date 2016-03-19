.class final Lbbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldxj;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbbc;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lhqe;Ldrl;)V
    .locals 6

    .prologue
    .line 26
    iget-object v0, p0, Lbbc;->a:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    const-string v1, "account_name"

    .line 27
    invoke-interface {p1, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "effective_gaia_id"

    invoke-interface {p1, v2}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 28
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {p2}, Ldrl;->m()[[B

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [Ljxg;

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 33
    new-instance v0, Ljxg;

    invoke-direct {v0}, Ljxg;-><init>()V

    .line 34
    invoke-virtual {p2}, Ldrl;->m()[[B

    move-result-object v4

    aget-object v4, v4, v1

    .line 1131
    array-length v5, v4

    invoke-static {v0, v4, v5}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 33
    check-cast v0, Ljxg;

    aput-object v0, v3, v1

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lbbc;->a:Landroid/content/Context;

    const-class v1, Ldwa;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwa;

    .line 38
    new-instance v4, Lbbd;

    invoke-direct {v4, p0, v0, v2, v3}, Lbbd;-><init>(Lbbc;Ldwa;I[Ljxg;)V

    invoke-static {v4}, Lhbw;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 49
    :cond_1
    return-void
.end method
