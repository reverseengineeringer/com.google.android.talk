.class public final Lkjg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkja;

.field public b:Lkii;

.field public c:[Lkja;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3836
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4841
    iput-object v1, p0, Lkjg;->requestHeader:Lkdo;

    .line 4842
    iput-object v1, p0, Lkjg;->a:Lkja;

    .line 4843
    iput-object v1, p0, Lkjg;->b:Lkii;

    .line 4844
    invoke-static {}, Lkja;->d()[Lkja;

    move-result-object v0

    iput-object v0, p0, Lkjg;->c:[Lkja;

    .line 4845
    iput-object v1, p0, Lkjg;->eD:Llyd;

    .line 4846
    const/4 v0, -0x1

    iput v0, p0, Lkjg;->eE:I

    .line 3838
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4905
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4906
    sparse-switch v0, :sswitch_data_0

    .line 4910
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4911
    :sswitch_0
    return-object p0

    .line 4916
    :sswitch_1
    iget-object v0, p0, Lkjg;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 4917
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkjg;->requestHeader:Lkdo;

    .line 4919
    :cond_1
    iget-object v0, p0, Lkjg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4923
    :sswitch_2
    iget-object v0, p0, Lkjg;->a:Lkja;

    if-nez v0, :cond_2

    .line 4924
    new-instance v0, Lkja;

    invoke-direct {v0}, Lkja;-><init>()V

    iput-object v0, p0, Lkjg;->a:Lkja;

    .line 4926
    :cond_2
    iget-object v0, p0, Lkjg;->a:Lkja;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4930
    :sswitch_3
    iget-object v0, p0, Lkjg;->b:Lkii;

    if-nez v0, :cond_3

    .line 4931
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjg;->b:Lkii;

    .line 4933
    :cond_3
    iget-object v0, p0, Lkjg;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4937
    :sswitch_4
    const/16 v0, 0x22

    .line 4938
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4939
    iget-object v0, p0, Lkjg;->c:[Lkja;

    if-nez v0, :cond_5

    move v0, v1

    .line 4940
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkja;

    .line 4942
    if-eqz v0, :cond_4

    .line 4943
    iget-object v3, p0, Lkjg;->c:[Lkja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4945
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4946
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 4947
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4948
    invoke-virtual {p1}, Llxy;->a()I

    .line 4945
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4939
    :cond_5
    iget-object v0, p0, Lkjg;->c:[Lkja;

    array-length v0, v0

    goto :goto_1

    .line 4951
    :cond_6
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 4952
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4953
    iput-object v2, p0, Lkjg;->c:[Lkja;

    goto :goto_0

    .line 4906
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3853
    iget-object v0, p0, Lkjg;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 3854
    const/4 v0, 0x1

    iget-object v1, p0, Lkjg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3856
    :cond_0
    iget-object v0, p0, Lkjg;->a:Lkja;

    if-eqz v0, :cond_1

    .line 3857
    const/4 v0, 0x2

    iget-object v1, p0, Lkjg;->a:Lkja;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3859
    :cond_1
    iget-object v0, p0, Lkjg;->b:Lkii;

    if-eqz v0, :cond_2

    .line 3860
    const/4 v0, 0x3

    iget-object v1, p0, Lkjg;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3862
    :cond_2
    iget-object v0, p0, Lkjg;->c:[Lkja;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjg;->c:[Lkja;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 3863
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjg;->c:[Lkja;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 3864
    iget-object v1, p0, Lkjg;->c:[Lkja;

    aget-object v1, v1, v0

    .line 3865
    if-eqz v1, :cond_3

    .line 3866
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3863
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3870
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3871
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 3875
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3876
    iget-object v1, p0, Lkjg;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 3877
    const/4 v1, 0x1

    iget-object v2, p0, Lkjg;->requestHeader:Lkdo;

    .line 3878
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3880
    :cond_0
    iget-object v1, p0, Lkjg;->a:Lkja;

    if-eqz v1, :cond_1

    .line 3881
    const/4 v1, 0x2

    iget-object v2, p0, Lkjg;->a:Lkja;

    .line 3882
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3884
    :cond_1
    iget-object v1, p0, Lkjg;->b:Lkii;

    if-eqz v1, :cond_2

    .line 3885
    const/4 v1, 0x3

    iget-object v2, p0, Lkjg;->b:Lkii;

    .line 3886
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3888
    :cond_2
    iget-object v1, p0, Lkjg;->c:[Lkja;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkjg;->c:[Lkja;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 3889
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkjg;->c:[Lkja;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 3890
    iget-object v2, p0, Lkjg;->c:[Lkja;

    aget-object v2, v2, v0

    .line 3891
    if-eqz v2, :cond_3

    .line 3892
    const/4 v3, 0x4

    .line 3893
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3889
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3897
    :cond_5
    return v0
.end method
