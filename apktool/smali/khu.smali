.class public final Lkhu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkhk;

.field public b:Lkii;

.field public c:[Lkie;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3969
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4974
    iput-object v1, p0, Lkhu;->responseHeader:Lkdp;

    .line 4975
    invoke-static {}, Lkhk;->d()[Lkhk;

    move-result-object v0

    iput-object v0, p0, Lkhu;->a:[Lkhk;

    .line 4976
    iput-object v1, p0, Lkhu;->b:Lkii;

    .line 4977
    invoke-static {}, Lkie;->d()[Lkie;

    move-result-object v0

    iput-object v0, p0, Lkhu;->c:[Lkie;

    .line 4978
    iput-object v1, p0, Lkhu;->eD:Llyd;

    .line 4979
    const/4 v0, -0x1

    iput v0, p0, Lkhu;->eE:I

    .line 3971
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5048
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5049
    sparse-switch v0, :sswitch_data_0

    .line 5053
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5054
    :sswitch_0
    return-object p0

    .line 5059
    :sswitch_1
    iget-object v0, p0, Lkhu;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5060
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkhu;->responseHeader:Lkdp;

    .line 5062
    :cond_1
    iget-object v0, p0, Lkhu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5066
    :sswitch_2
    const/16 v0, 0x12

    .line 5067
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5068
    iget-object v0, p0, Lkhu;->a:[Lkhk;

    if-nez v0, :cond_3

    move v0, v1

    .line 5069
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhk;

    .line 5071
    if-eqz v0, :cond_2

    .line 5072
    iget-object v3, p0, Lkhu;->a:[Lkhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5074
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5075
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 5076
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5077
    invoke-virtual {p1}, Llxy;->a()I

    .line 5074
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5068
    :cond_3
    iget-object v0, p0, Lkhu;->a:[Lkhk;

    array-length v0, v0

    goto :goto_1

    .line 5080
    :cond_4
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 5081
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5082
    iput-object v2, p0, Lkhu;->a:[Lkhk;

    goto :goto_0

    .line 5086
    :sswitch_3
    iget-object v0, p0, Lkhu;->b:Lkii;

    if-nez v0, :cond_5

    .line 5087
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhu;->b:Lkii;

    .line 5089
    :cond_5
    iget-object v0, p0, Lkhu;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5093
    :sswitch_4
    const/16 v0, 0x22

    .line 5094
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5095
    iget-object v0, p0, Lkhu;->c:[Lkie;

    if-nez v0, :cond_7

    move v0, v1

    .line 5096
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkie;

    .line 5098
    if-eqz v0, :cond_6

    .line 5099
    iget-object v3, p0, Lkhu;->c:[Lkie;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5101
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 5102
    new-instance v3, Lkie;

    invoke-direct {v3}, Lkie;-><init>()V

    aput-object v3, v2, v0

    .line 5103
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5104
    invoke-virtual {p1}, Llxy;->a()I

    .line 5101
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5095
    :cond_7
    iget-object v0, p0, Lkhu;->c:[Lkie;

    array-length v0, v0

    goto :goto_3

    .line 5107
    :cond_8
    new-instance v3, Lkie;

    invoke-direct {v3}, Lkie;-><init>()V

    aput-object v3, v2, v0

    .line 5108
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5109
    iput-object v2, p0, Lkhu;->c:[Lkie;

    goto/16 :goto_0

    .line 5049
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3986
    iget-object v0, p0, Lkhu;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 3987
    const/4 v0, 0x1

    iget-object v2, p0, Lkhu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3989
    :cond_0
    iget-object v0, p0, Lkhu;->a:[Lkhk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkhu;->a:[Lkhk;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 3990
    :goto_0
    iget-object v2, p0, Lkhu;->a:[Lkhk;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3991
    iget-object v2, p0, Lkhu;->a:[Lkhk;

    aget-object v2, v2, v0

    .line 3992
    if-eqz v2, :cond_1

    .line 3993
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3990
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3997
    :cond_2
    iget-object v0, p0, Lkhu;->b:Lkii;

    if-eqz v0, :cond_3

    .line 3998
    const/4 v0, 0x3

    iget-object v2, p0, Lkhu;->b:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4000
    :cond_3
    iget-object v0, p0, Lkhu;->c:[Lkie;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkhu;->c:[Lkie;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4001
    :goto_1
    iget-object v0, p0, Lkhu;->c:[Lkie;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 4002
    iget-object v0, p0, Lkhu;->c:[Lkie;

    aget-object v0, v0, v1

    .line 4003
    if-eqz v0, :cond_4

    .line 4004
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 4001
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4008
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4009
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4013
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4014
    iget-object v2, p0, Lkhu;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 4015
    const/4 v2, 0x1

    iget-object v3, p0, Lkhu;->responseHeader:Lkdp;

    .line 4016
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4018
    :cond_0
    iget-object v2, p0, Lkhu;->a:[Lkhk;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkhu;->a:[Lkhk;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 4019
    :goto_0
    iget-object v3, p0, Lkhu;->a:[Lkhk;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4020
    iget-object v3, p0, Lkhu;->a:[Lkhk;

    aget-object v3, v3, v0

    .line 4021
    if-eqz v3, :cond_1

    .line 4022
    const/4 v4, 0x2

    .line 4023
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4019
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4027
    :cond_3
    iget-object v2, p0, Lkhu;->b:Lkii;

    if-eqz v2, :cond_4

    .line 4028
    const/4 v2, 0x3

    iget-object v3, p0, Lkhu;->b:Lkii;

    .line 4029
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4031
    :cond_4
    iget-object v2, p0, Lkhu;->c:[Lkie;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkhu;->c:[Lkie;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 4032
    :goto_1
    iget-object v2, p0, Lkhu;->c:[Lkie;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 4033
    iget-object v2, p0, Lkhu;->c:[Lkie;

    aget-object v2, v2, v1

    .line 4034
    if-eqz v2, :cond_5

    .line 4035
    const/4 v3, 0x4

    .line 4036
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4032
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4040
    :cond_6
    return v0
.end method
