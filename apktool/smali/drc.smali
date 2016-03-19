.class public Ldrc;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public g:[B

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkam;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2825
    iget-object v0, p1, Lkam;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldrc;->h:Ljava/util/List;

    .line 2827
    iget-object v0, p1, Lkam;->b:[B

    iput-object v0, p0, Ldrc;->g:[B

    .line 2828
    iget-object v2, p1, Lkam;->a:[Lkaa;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2829
    iget-object v4, v4, Lkaa;->a:Lkcr;

    iget-object v4, v4, Lkcr;->b:Ljava/lang/String;

    .line 2830
    iget-object v5, p0, Ldrc;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2832
    :cond_0
    const-string v0, "Babel"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2833
    const-string v2, "Babel"

    const-string v0, "GetFavoritesResponse debugUrl: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lkam;->responseHeader:Lkdp;

    iget-object v0, v0, Lkdp;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2836
    :cond_1
    return-void

    .line 2833
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2840
    new-instance v0, Lkam;

    invoke-direct {v0}, Lkam;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2841
    check-cast v0, Lkam;

    .line 2842
    iget-object v1, v0, Lkam;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrc;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2843
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkam;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2845
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrc;

    invoke-direct {v1, v0}, Ldrc;-><init>(Lkam;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 2852
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2854
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ldrc;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2856
    invoke-virtual {p1}, Lbfz;->a()V

    .line 2858
    :try_start_0
    iget-object v0, p0, Ldrc;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2859
    invoke-virtual {p1, v0}, Lbfz;->L(Ljava/lang/String;)Lcyx;

    move-result-object v0

    .line 2860
    if-eqz v0, :cond_0

    .line 2861
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2867
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 2864
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p1, v1, v0}, Lbfz;->b(Ljava/util/List;I)V

    .line 2865
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2867
    invoke-virtual {p1}, Lbfz;->c()V

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2870
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "hash_pinned"

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 2872
    return-void
.end method
