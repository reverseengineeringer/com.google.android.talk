.class public Ldsz;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public g:I

.field public h:[B

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkfu;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2748
    iget-object v0, p1, Lkfu;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2750
    iget-object v0, p1, Lkfu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p1, Lkfu;->a:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2751
    packed-switch v0, :pswitch_data_0

    .line 2759
    const-string v0, "Babel"

    iget-object v2, p1, Lkfu;->a:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected error code for UpdateFavoriteContactResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2764
    :cond_0
    :goto_0
    iget-object v0, p1, Lkfu;->c:[B

    iput-object v0, p0, Ldsz;->h:[B

    .line 2765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldsz;->i:Ljava/util/Map;

    .line 2766
    iget-object v2, p1, Lkfu;->b:[Lkaa;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 2767
    iget-object v5, v4, Lkaa;->a:Lkcr;

    iget-object v5, v5, Lkcr;->b:Ljava/lang/String;

    .line 2768
    iget-object v6, p0, Ldsz;->i:Ljava/util/Map;

    iget-object v4, v4, Lkaa;->c:Ljava/lang/Integer;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2753
    :pswitch_0
    sget v0, Ldta;->a:I

    iput v0, p0, Ldsz;->g:I

    goto :goto_0

    .line 2756
    :pswitch_1
    sget v0, Ldta;->b:I

    iput v0, p0, Ldsz;->g:I

    goto :goto_0

    .line 2770
    :cond_1
    const-string v0, "Babel"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2771
    const-string v2, "Babel"

    const-string v0, "UpdateFavoriteContactResponse debugUrl: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lkfu;->responseHeader:Lkdp;

    iget-object v0, v0, Lkdp;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2774
    :cond_2
    return-void

    .line 2771
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 2751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2778
    new-instance v0, Lkfu;

    invoke-direct {v0}, Lkfu;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2779
    check-cast v0, Lkfu;

    .line 2780
    iget-object v1, v0, Lkfu;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsz;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2781
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkfu;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2783
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsz;

    invoke-direct {v1, v0}, Ldsz;-><init>(Lkfu;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 5

    .prologue
    .line 2790
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2792
    invoke-virtual {p1}, Lbfz;->a()V

    .line 2795
    :try_start_0
    invoke-virtual {p1}, Lbfz;->s()Ljava/util/List;

    move-result-object v2

    .line 2796
    iget-object v0, p0, Ldsz;->b:Leff;

    check-cast v0, Ldqb;

    .line 2797
    invoke-virtual {v0}, Ldqb;->p()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2798
    invoke-virtual {p1, v1}, Lbfz;->L(Ljava/lang/String;)Lcyx;

    move-result-object v1

    .line 2799
    if-eqz v1, :cond_0

    .line 2800
    invoke-virtual {v0}, Ldqb;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2801
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2810
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 2802
    :cond_1
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2803
    const/4 v4, 0x0

    invoke-interface {v2, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2807
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0}, Lbfz;->b(Ljava/util/List;I)V

    .line 2808
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2810
    invoke-virtual {p1}, Lbfz;->c()V

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2813
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "hash_pinned"

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 2815
    return-void
.end method
