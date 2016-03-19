.class public final Lkjh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkja;

.field public b:Lkii;

.field public c:[Lkja;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4003
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5008
    iput-object v1, p0, Lkjh;->responseHeader:Lkdp;

    .line 5009
    iput-object v1, p0, Lkjh;->a:Lkja;

    .line 5010
    iput-object v1, p0, Lkjh;->b:Lkii;

    .line 5011
    invoke-static {}, Lkja;->d()[Lkja;

    move-result-object v0

    iput-object v0, p0, Lkjh;->c:[Lkja;

    .line 5012
    iput-object v1, p0, Lkjh;->eD:Llyd;

    .line 5013
    const/4 v0, -0x1

    iput v0, p0, Lkjh;->eE:I

    .line 4005
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5073
    sparse-switch v0, :sswitch_data_0

    .line 5077
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5078
    :sswitch_0
    return-object p0

    .line 5083
    :sswitch_1
    iget-object v0, p0, Lkjh;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5084
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkjh;->responseHeader:Lkdp;

    .line 5086
    :cond_1
    iget-object v0, p0, Lkjh;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5090
    :sswitch_2
    iget-object v0, p0, Lkjh;->a:Lkja;

    if-nez v0, :cond_2

    .line 5091
    new-instance v0, Lkja;

    invoke-direct {v0}, Lkja;-><init>()V

    iput-object v0, p0, Lkjh;->a:Lkja;

    .line 5093
    :cond_2
    iget-object v0, p0, Lkjh;->a:Lkja;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5097
    :sswitch_3
    iget-object v0, p0, Lkjh;->b:Lkii;

    if-nez v0, :cond_3

    .line 5098
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjh;->b:Lkii;

    .line 5100
    :cond_3
    iget-object v0, p0, Lkjh;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5104
    :sswitch_4
    const/16 v0, 0x22

    .line 5105
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5106
    iget-object v0, p0, Lkjh;->c:[Lkja;

    if-nez v0, :cond_5

    move v0, v1

    .line 5107
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkja;

    .line 5109
    if-eqz v0, :cond_4

    .line 5110
    iget-object v3, p0, Lkjh;->c:[Lkja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5112
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 5113
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5114
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5115
    invoke-virtual {p1}, Llxy;->a()I

    .line 5112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5106
    :cond_5
    iget-object v0, p0, Lkjh;->c:[Lkja;

    array-length v0, v0

    goto :goto_1

    .line 5118
    :cond_6
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5119
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5120
    iput-object v2, p0, Lkjh;->c:[Lkja;

    goto :goto_0

    .line 5073
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
    .line 4020
    iget-object v0, p0, Lkjh;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4021
    const/4 v0, 0x1

    iget-object v1, p0, Lkjh;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4023
    :cond_0
    iget-object v0, p0, Lkjh;->a:Lkja;

    if-eqz v0, :cond_1

    .line 4024
    const/4 v0, 0x2

    iget-object v1, p0, Lkjh;->a:Lkja;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4026
    :cond_1
    iget-object v0, p0, Lkjh;->b:Lkii;

    if-eqz v0, :cond_2

    .line 4027
    const/4 v0, 0x3

    iget-object v1, p0, Lkjh;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4029
    :cond_2
    iget-object v0, p0, Lkjh;->c:[Lkja;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjh;->c:[Lkja;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4030
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjh;->c:[Lkja;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 4031
    iget-object v1, p0, Lkjh;->c:[Lkja;

    aget-object v1, v1, v0

    .line 4032
    if-eqz v1, :cond_3

    .line 4033
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4030
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4037
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4038
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4042
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4043
    iget-object v1, p0, Lkjh;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 4044
    const/4 v1, 0x1

    iget-object v2, p0, Lkjh;->responseHeader:Lkdp;

    .line 4045
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4047
    :cond_0
    iget-object v1, p0, Lkjh;->a:Lkja;

    if-eqz v1, :cond_1

    .line 4048
    const/4 v1, 0x2

    iget-object v2, p0, Lkjh;->a:Lkja;

    .line 4049
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4051
    :cond_1
    iget-object v1, p0, Lkjh;->b:Lkii;

    if-eqz v1, :cond_2

    .line 4052
    const/4 v1, 0x3

    iget-object v2, p0, Lkjh;->b:Lkii;

    .line 4053
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4055
    :cond_2
    iget-object v1, p0, Lkjh;->c:[Lkja;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkjh;->c:[Lkja;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 4056
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkjh;->c:[Lkja;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 4057
    iget-object v2, p0, Lkjh;->c:[Lkja;

    aget-object v2, v2, v0

    .line 4058
    if-eqz v2, :cond_3

    .line 4059
    const/4 v3, 0x4

    .line 4060
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4056
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 4064
    :cond_5
    return v0
.end method
