.class public final Lkam;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkam;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkaa;

.field public b:[B

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29826
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30831
    iput-object v1, p0, Lkam;->responseHeader:Lkdp;

    .line 30832
    invoke-static {}, Lkaa;->d()[Lkaa;

    move-result-object v0

    iput-object v0, p0, Lkam;->a:[Lkaa;

    .line 30833
    iput-object v1, p0, Lkam;->b:[B

    .line 30834
    iput-object v1, p0, Lkam;->eD:Llyd;

    .line 30835
    const/4 v0, -0x1

    iput v0, p0, Lkam;->eE:I

    .line 29828
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30887
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30888
    sparse-switch v0, :sswitch_data_0

    .line 30892
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30893
    :sswitch_0
    return-object p0

    .line 30898
    :sswitch_1
    iget-object v0, p0, Lkam;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 30899
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkam;->responseHeader:Lkdp;

    .line 30901
    :cond_1
    iget-object v0, p0, Lkam;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30905
    :sswitch_2
    const/16 v0, 0x12

    .line 30906
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30907
    iget-object v0, p0, Lkam;->a:[Lkaa;

    if-nez v0, :cond_3

    move v0, v1

    .line 30908
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkaa;

    .line 30910
    if-eqz v0, :cond_2

    .line 30911
    iget-object v3, p0, Lkam;->a:[Lkaa;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30913
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30914
    new-instance v3, Lkaa;

    invoke-direct {v3}, Lkaa;-><init>()V

    aput-object v3, v2, v0

    .line 30915
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30916
    invoke-virtual {p1}, Llxy;->a()I

    .line 30913
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30907
    :cond_3
    iget-object v0, p0, Lkam;->a:[Lkaa;

    array-length v0, v0

    goto :goto_1

    .line 30919
    :cond_4
    new-instance v3, Lkaa;

    invoke-direct {v3}, Lkaa;-><init>()V

    aput-object v3, v2, v0

    .line 30920
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30921
    iput-object v2, p0, Lkam;->a:[Lkaa;

    goto :goto_0

    .line 30925
    :sswitch_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkam;->b:[B

    goto :goto_0

    .line 30888
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 29842
    iget-object v0, p0, Lkam;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 29843
    const/4 v0, 0x1

    iget-object v1, p0, Lkam;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29845
    :cond_0
    iget-object v0, p0, Lkam;->a:[Lkaa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkam;->a:[Lkaa;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 29846
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkam;->a:[Lkaa;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 29847
    iget-object v1, p0, Lkam;->a:[Lkaa;

    aget-object v1, v1, v0

    .line 29848
    if-eqz v1, :cond_1

    .line 29849
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 29846
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29853
    :cond_2
    iget-object v0, p0, Lkam;->b:[B

    if-eqz v0, :cond_3

    .line 29854
    const/4 v0, 0x3

    iget-object v1, p0, Lkam;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 29856
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29857
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 29861
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29862
    iget-object v1, p0, Lkam;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 29863
    const/4 v1, 0x1

    iget-object v2, p0, Lkam;->responseHeader:Lkdp;

    .line 29864
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29866
    :cond_0
    iget-object v1, p0, Lkam;->a:[Lkaa;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkam;->a:[Lkaa;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 29867
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkam;->a:[Lkaa;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 29868
    iget-object v2, p0, Lkam;->a:[Lkaa;

    aget-object v2, v2, v0

    .line 29869
    if-eqz v2, :cond_1

    .line 29870
    const/4 v3, 0x2

    .line 29871
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 29867
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 29875
    :cond_3
    iget-object v1, p0, Lkam;->b:[B

    if-eqz v1, :cond_4

    .line 29876
    const/4 v1, 0x3

    iget-object v2, p0, Lkam;->b:[B

    .line 29877
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 29879
    :cond_4
    return v0
.end method
