.class public final Ljwu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzr;

.field public b:[Lkbi;

.field public c:[B

.field public d:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7847
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8852
    iput-object v1, p0, Ljwu;->requestHeader:Lkdo;

    .line 8853
    iput-object v1, p0, Ljwu;->a:Ljzr;

    .line 8854
    invoke-static {}, Lkbi;->d()[Lkbi;

    move-result-object v0

    iput-object v0, p0, Ljwu;->b:[Lkbi;

    .line 8855
    iput-object v1, p0, Ljwu;->c:[B

    .line 8856
    iput-object v1, p0, Ljwu;->d:Ljava/lang/Long;

    .line 8857
    iput-object v1, p0, Ljwu;->eD:Llyd;

    .line 8858
    const/4 v0, -0x1

    iput v0, p0, Ljwu;->eE:I

    .line 7849
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8924
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8925
    sparse-switch v0, :sswitch_data_0

    .line 8929
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8930
    :sswitch_0
    return-object p0

    .line 8935
    :sswitch_1
    iget-object v0, p0, Ljwu;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 8936
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljwu;->requestHeader:Lkdo;

    .line 8938
    :cond_1
    iget-object v0, p0, Ljwu;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8942
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljwu;->c:[B

    goto :goto_0

    .line 8946
    :sswitch_3
    const/16 v0, 0x1a

    .line 8947
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8948
    iget-object v0, p0, Ljwu;->b:[Lkbi;

    if-nez v0, :cond_3

    move v0, v1

    .line 8949
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbi;

    .line 8951
    if-eqz v0, :cond_2

    .line 8952
    iget-object v3, p0, Ljwu;->b:[Lkbi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8954
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8955
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 8956
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8957
    invoke-virtual {p1}, Llxy;->a()I

    .line 8954
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8948
    :cond_3
    iget-object v0, p0, Ljwu;->b:[Lkbi;

    array-length v0, v0

    goto :goto_1

    .line 8960
    :cond_4
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 8961
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8962
    iput-object v2, p0, Ljwu;->b:[Lkbi;

    goto :goto_0

    .line 8966
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwu;->d:Ljava/lang/Long;

    goto :goto_0

    .line 8970
    :sswitch_5
    iget-object v0, p0, Ljwu;->a:Ljzr;

    if-nez v0, :cond_5

    .line 8971
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    iput-object v0, p0, Ljwu;->a:Ljzr;

    .line 8973
    :cond_5
    iget-object v0, p0, Ljwu;->a:Ljzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8925
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 7865
    iget-object v0, p0, Ljwu;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 7866
    const/4 v0, 0x1

    iget-object v1, p0, Ljwu;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7868
    :cond_0
    iget-object v0, p0, Ljwu;->c:[B

    if-eqz v0, :cond_1

    .line 7869
    const/4 v0, 0x2

    iget-object v1, p0, Ljwu;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 7871
    :cond_1
    iget-object v0, p0, Ljwu;->b:[Lkbi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljwu;->b:[Lkbi;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 7872
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljwu;->b:[Lkbi;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 7873
    iget-object v1, p0, Ljwu;->b:[Lkbi;

    aget-object v1, v1, v0

    .line 7874
    if-eqz v1, :cond_2

    .line 7875
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 7872
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7879
    :cond_3
    iget-object v0, p0, Ljwu;->d:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 7880
    const/4 v0, 0x4

    iget-object v1, p0, Ljwu;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 7882
    :cond_4
    iget-object v0, p0, Ljwu;->a:Ljzr;

    if-eqz v0, :cond_5

    .line 7883
    const/4 v0, 0x5

    iget-object v1, p0, Ljwu;->a:Ljzr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7885
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7886
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 7890
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7891
    iget-object v1, p0, Ljwu;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 7892
    const/4 v1, 0x1

    iget-object v2, p0, Ljwu;->requestHeader:Lkdo;

    .line 7893
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7895
    :cond_0
    iget-object v1, p0, Ljwu;->c:[B

    if-eqz v1, :cond_1

    .line 7896
    const/4 v1, 0x2

    iget-object v2, p0, Ljwu;->c:[B

    .line 7897
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7899
    :cond_1
    iget-object v1, p0, Ljwu;->b:[Lkbi;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljwu;->b:[Lkbi;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 7900
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljwu;->b:[Lkbi;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 7901
    iget-object v2, p0, Ljwu;->b:[Lkbi;

    aget-object v2, v2, v0

    .line 7902
    if-eqz v2, :cond_2

    .line 7903
    const/4 v3, 0x3

    .line 7904
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7900
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 7908
    :cond_4
    iget-object v1, p0, Ljwu;->d:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 7909
    const/4 v1, 0x4

    iget-object v2, p0, Ljwu;->d:Ljava/lang/Long;

    .line 7910
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7912
    :cond_5
    iget-object v1, p0, Ljwu;->a:Ljzr;

    if-eqz v1, :cond_6

    .line 7913
    const/4 v1, 0x5

    iget-object v2, p0, Ljwu;->a:Ljzr;

    .line 7914
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7916
    :cond_6
    return v0
.end method
