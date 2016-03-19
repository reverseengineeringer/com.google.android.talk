.class public final Lkhp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhk;

.field public b:Lkii;

.field public c:[Lkhk;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5003
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6008
    iput-object v1, p0, Lkhp;->requestHeader:Lkdo;

    .line 6009
    iput-object v1, p0, Lkhp;->a:Lkhk;

    .line 6010
    iput-object v1, p0, Lkhp;->b:Lkii;

    .line 6011
    invoke-static {}, Lkhk;->d()[Lkhk;

    move-result-object v0

    iput-object v0, p0, Lkhp;->c:[Lkhk;

    .line 6012
    iput-object v1, p0, Lkhp;->eD:Llyd;

    .line 6013
    const/4 v0, -0x1

    iput v0, p0, Lkhp;->eE:I

    .line 5005
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6073
    sparse-switch v0, :sswitch_data_0

    .line 6077
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6078
    :sswitch_0
    return-object p0

    .line 6083
    :sswitch_1
    iget-object v0, p0, Lkhp;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 6084
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhp;->requestHeader:Lkdo;

    .line 6086
    :cond_1
    iget-object v0, p0, Lkhp;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6090
    :sswitch_2
    iget-object v0, p0, Lkhp;->a:Lkhk;

    if-nez v0, :cond_2

    .line 6091
    new-instance v0, Lkhk;

    invoke-direct {v0}, Lkhk;-><init>()V

    iput-object v0, p0, Lkhp;->a:Lkhk;

    .line 6093
    :cond_2
    iget-object v0, p0, Lkhp;->a:Lkhk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6097
    :sswitch_3
    iget-object v0, p0, Lkhp;->b:Lkii;

    if-nez v0, :cond_3

    .line 6098
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhp;->b:Lkii;

    .line 6100
    :cond_3
    iget-object v0, p0, Lkhp;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6104
    :sswitch_4
    const/16 v0, 0x22

    .line 6105
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6106
    iget-object v0, p0, Lkhp;->c:[Lkhk;

    if-nez v0, :cond_5

    move v0, v1

    .line 6107
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhk;

    .line 6109
    if-eqz v0, :cond_4

    .line 6110
    iget-object v3, p0, Lkhp;->c:[Lkhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6112
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6113
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 6114
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6115
    invoke-virtual {p1}, Llxy;->a()I

    .line 6112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6106
    :cond_5
    iget-object v0, p0, Lkhp;->c:[Lkhk;

    array-length v0, v0

    goto :goto_1

    .line 6118
    :cond_6
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 6119
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6120
    iput-object v2, p0, Lkhp;->c:[Lkhk;

    goto :goto_0

    .line 6073
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
    .line 5020
    iget-object v0, p0, Lkhp;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 5021
    const/4 v0, 0x1

    iget-object v1, p0, Lkhp;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5023
    :cond_0
    iget-object v0, p0, Lkhp;->a:Lkhk;

    if-eqz v0, :cond_1

    .line 5024
    const/4 v0, 0x2

    iget-object v1, p0, Lkhp;->a:Lkhk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5026
    :cond_1
    iget-object v0, p0, Lkhp;->b:Lkii;

    if-eqz v0, :cond_2

    .line 5027
    const/4 v0, 0x3

    iget-object v1, p0, Lkhp;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5029
    :cond_2
    iget-object v0, p0, Lkhp;->c:[Lkhk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkhp;->c:[Lkhk;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 5030
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhp;->c:[Lkhk;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 5031
    iget-object v1, p0, Lkhp;->c:[Lkhk;

    aget-object v1, v1, v0

    .line 5032
    if-eqz v1, :cond_3

    .line 5033
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 5030
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5037
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5038
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 5042
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5043
    iget-object v1, p0, Lkhp;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 5044
    const/4 v1, 0x1

    iget-object v2, p0, Lkhp;->requestHeader:Lkdo;

    .line 5045
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5047
    :cond_0
    iget-object v1, p0, Lkhp;->a:Lkhk;

    if-eqz v1, :cond_1

    .line 5048
    const/4 v1, 0x2

    iget-object v2, p0, Lkhp;->a:Lkhk;

    .line 5049
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5051
    :cond_1
    iget-object v1, p0, Lkhp;->b:Lkii;

    if-eqz v1, :cond_2

    .line 5052
    const/4 v1, 0x3

    iget-object v2, p0, Lkhp;->b:Lkii;

    .line 5053
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5055
    :cond_2
    iget-object v1, p0, Lkhp;->c:[Lkhk;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkhp;->c:[Lkhk;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 5056
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhp;->c:[Lkhk;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5057
    iget-object v2, p0, Lkhp;->c:[Lkhk;

    aget-object v2, v2, v0

    .line 5058
    if-eqz v2, :cond_3

    .line 5059
    const/4 v3, 0x4

    .line 5060
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5056
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 5064
    :cond_5
    return v0
.end method
