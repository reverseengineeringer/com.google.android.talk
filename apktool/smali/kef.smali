.class public final Lkef;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkef;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxo;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32967
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33972
    iput-object v1, p0, Lkef;->responseHeader:Lkdp;

    .line 33973
    invoke-static {}, Ljxo;->d()[Ljxo;

    move-result-object v0

    iput-object v0, p0, Lkef;->a:[Ljxo;

    .line 33974
    iput-object v1, p0, Lkef;->eD:Llyd;

    .line 33975
    const/4 v0, -0x1

    iput v0, p0, Lkef;->eE:I

    .line 32969
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34021
    sparse-switch v0, :sswitch_data_0

    .line 34025
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34026
    :sswitch_0
    return-object p0

    .line 34031
    :sswitch_1
    iget-object v0, p0, Lkef;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 34032
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkef;->responseHeader:Lkdp;

    .line 34034
    :cond_1
    iget-object v0, p0, Lkef;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34038
    :sswitch_2
    const/16 v0, 0x12

    .line 34039
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 34040
    iget-object v0, p0, Lkef;->a:[Ljxo;

    if-nez v0, :cond_3

    move v0, v1

    .line 34041
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxo;

    .line 34043
    if-eqz v0, :cond_2

    .line 34044
    iget-object v3, p0, Lkef;->a:[Ljxo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34046
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 34047
    new-instance v3, Ljxo;

    invoke-direct {v3}, Ljxo;-><init>()V

    aput-object v3, v2, v0

    .line 34048
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 34049
    invoke-virtual {p1}, Llxy;->a()I

    .line 34046
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34040
    :cond_3
    iget-object v0, p0, Lkef;->a:[Ljxo;

    array-length v0, v0

    goto :goto_1

    .line 34052
    :cond_4
    new-instance v3, Ljxo;

    invoke-direct {v3}, Ljxo;-><init>()V

    aput-object v3, v2, v0

    .line 34053
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 34054
    iput-object v2, p0, Lkef;->a:[Ljxo;

    goto :goto_0

    .line 34021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 32982
    iget-object v0, p0, Lkef;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 32983
    const/4 v0, 0x1

    iget-object v1, p0, Lkef;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32985
    :cond_0
    iget-object v0, p0, Lkef;->a:[Ljxo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkef;->a:[Ljxo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 32986
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkef;->a:[Ljxo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 32987
    iget-object v1, p0, Lkef;->a:[Ljxo;

    aget-object v1, v1, v0

    .line 32988
    if-eqz v1, :cond_1

    .line 32989
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 32986
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32993
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 32994
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 32998
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 32999
    iget-object v1, p0, Lkef;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 33000
    const/4 v1, 0x1

    iget-object v2, p0, Lkef;->responseHeader:Lkdp;

    .line 33001
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33003
    :cond_0
    iget-object v1, p0, Lkef;->a:[Ljxo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkef;->a:[Ljxo;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 33004
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkef;->a:[Ljxo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 33005
    iget-object v2, p0, Lkef;->a:[Ljxo;

    aget-object v2, v2, v0

    .line 33006
    if-eqz v2, :cond_1

    .line 33007
    const/4 v3, 0x2

    .line 33008
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 33004
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 33012
    :cond_3
    return v0
.end method
