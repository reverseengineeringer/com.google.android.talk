.class public Ldso;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private g:[[B


# direct methods
.method private constructor <init>(Lked;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1758
    iget-object v1, p1, Lked;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2232
    sget-boolean v1, Ldqf;->a:Z

    .line 1759
    if-eqz v1, :cond_0

    .line 1760
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SetCallerIdConfigResponse from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    :cond_0
    iget-object v1, p1, Lked;->a:[Ljxg;

    array-length v1, v1

    new-array v1, v1, [[B

    iput-object v1, p0, Ldso;->g:[[B

    .line 1769
    iget-object v2, p1, Lked;->a:[Ljxg;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1770
    iget-object v5, p0, Ldso;->g:[[B

    invoke-static {v4}, Llyi;->a(Llyi;)[B

    move-result-object v4

    aput-object v4, v5, v1

    .line 1771
    add-int/lit8 v1, v1, 0x1

    .line 1769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1773
    :cond_1
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 3

    .prologue
    .line 1804
    new-instance v0, Lked;

    invoke-direct {v0}, Lked;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1805
    check-cast v0, Lked;

    .line 1806
    iget-object v1, v0, Lked;->responseHeader:Lkdp;

    invoke-static {v1}, Ldso;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1807
    const-class v2, Lazk;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lazk;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lazk;->a(I)V

    .line 1808
    new-instance v1, Ldqs;

    iget-object v0, v0, Lked;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1810
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldso;

    invoke-direct {v1, v0}, Ldso;-><init>(Lked;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1778
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 1779
    const-string v0, "Babel"

    const-string v1, "SetCallerIdConfigResponse"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    iget-object v0, p0, Ldso;->g:[[B

    array-length v0, v0

    new-array v3, v0, [Ljxg;

    move v1, v2

    .line 1785
    :goto_0
    :try_start_0
    iget-object v0, p0, Ldso;->g:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1786
    new-instance v0, Ljxg;

    invoke-direct {v0}, Ljxg;-><init>()V

    iget-object v4, p0, Ldso;->g:[[B

    aget-object v4, v4, v1

    .line 3131
    array-length v5, v4

    invoke-static {v0, v4, v5}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1787
    check-cast v0, Ljxg;

    aput-object v0, v3, v1
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4036
    :catch_0
    move-exception v0

    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1791
    const-class v1, Lazk;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazk;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lazk;->a(I)V

    .line 1800
    :goto_1
    return-void

    .line 5036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1796
    const-class v1, Ldwa;

    .line 1795
    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwa;

    .line 1797
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-interface {v0, v4, v3}, Ldwa;->a(I[Ljxg;)V

    goto :goto_2

    .line 6036
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1799
    const-class v1, Lazk;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazk;

    invoke-interface {v0, v2}, Lazk;->a(I)V

    goto :goto_1
.end method
