.class public final Ljyb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:[Lkbi;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14001
    invoke-direct {p0}, Llyb;-><init>()V

    .line 15006
    iput-object v1, p0, Ljyb;->a:Ljxw;

    .line 15007
    invoke-static {}, Lkbi;->d()[Lkbi;

    move-result-object v0

    iput-object v0, p0, Ljyb;->b:[Lkbi;

    .line 15008
    iput-object v1, p0, Ljyb;->c:Ljava/lang/Integer;

    .line 15009
    iput-object v1, p0, Ljyb;->d:Ljava/lang/String;

    .line 15010
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Ljyb;->e:[[B

    .line 15011
    iput-object v1, p0, Ljyb;->eD:Llyd;

    .line 15012
    const/4 v0, -0x1

    iput v0, p0, Ljyb;->eE:I

    .line 14003
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 15094
    sparse-switch v0, :sswitch_data_0

    .line 15098
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15099
    :sswitch_0
    return-object p0

    .line 15104
    :sswitch_1
    iget-object v0, p0, Ljyb;->a:Ljxw;

    if-nez v0, :cond_1

    .line 15105
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljyb;->a:Ljxw;

    .line 15107
    :cond_1
    iget-object v0, p0, Ljyb;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15111
    :sswitch_2
    const/16 v0, 0x12

    .line 15112
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15113
    iget-object v0, p0, Ljyb;->e:[[B

    if-nez v0, :cond_3

    move v0, v1

    .line 15114
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 15115
    if-eqz v0, :cond_2

    .line 15116
    iget-object v3, p0, Ljyb;->e:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15118
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 15119
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 15120
    invoke-virtual {p1}, Llxy;->a()I

    .line 15118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15113
    :cond_3
    iget-object v0, p0, Ljyb;->e:[[B

    array-length v0, v0

    goto :goto_1

    .line 15123
    :cond_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 15124
    iput-object v2, p0, Ljyb;->e:[[B

    goto :goto_0

    .line 15128
    :sswitch_3
    const/16 v0, 0x1a

    .line 15129
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15130
    iget-object v0, p0, Ljyb;->b:[Lkbi;

    if-nez v0, :cond_6

    move v0, v1

    .line 15131
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbi;

    .line 15133
    if-eqz v0, :cond_5

    .line 15134
    iget-object v3, p0, Ljyb;->b:[Lkbi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15136
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 15137
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 15138
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 15139
    invoke-virtual {p1}, Llxy;->a()I

    .line 15136
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 15130
    :cond_6
    iget-object v0, p0, Ljyb;->b:[Lkbi;

    array-length v0, v0

    goto :goto_3

    .line 15142
    :cond_7
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 15143
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 15144
    iput-object v2, p0, Ljyb;->b:[Lkbi;

    goto/16 :goto_0

    .line 15148
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 15149
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 15153
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyb;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 15159
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljyb;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 15094
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 15149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 14019
    iget-object v0, p0, Ljyb;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 14020
    const/4 v0, 0x1

    iget-object v2, p0, Ljyb;->a:Ljxw;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 14022
    :cond_0
    iget-object v0, p0, Ljyb;->e:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyb;->e:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 14023
    :goto_0
    iget-object v2, p0, Ljyb;->e:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 14024
    iget-object v2, p0, Ljyb;->e:[[B

    aget-object v2, v2, v0

    .line 14025
    if-eqz v2, :cond_1

    .line 14026
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 14023
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14030
    :cond_2
    iget-object v0, p0, Ljyb;->b:[Lkbi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljyb;->b:[Lkbi;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 14031
    :goto_1
    iget-object v0, p0, Ljyb;->b:[Lkbi;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 14032
    iget-object v0, p0, Ljyb;->b:[Lkbi;

    aget-object v0, v0, v1

    .line 14033
    if-eqz v0, :cond_3

    .line 14034
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 14031
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14038
    :cond_4
    iget-object v0, p0, Ljyb;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 14039
    const/4 v0, 0x4

    iget-object v1, p0, Ljyb;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 14041
    :cond_5
    iget-object v0, p0, Ljyb;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 14042
    const/4 v0, 0x5

    iget-object v1, p0, Ljyb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 14044
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 14045
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 14049
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 14050
    iget-object v1, p0, Ljyb;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 14051
    const/4 v1, 0x1

    iget-object v3, p0, Ljyb;->a:Ljxw;

    .line 14052
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14054
    :cond_0
    iget-object v1, p0, Ljyb;->e:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljyb;->e:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    move v4, v2

    .line 14057
    :goto_0
    iget-object v5, p0, Ljyb;->e:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 14058
    iget-object v5, p0, Ljyb;->e:[[B

    aget-object v5, v5, v1

    .line 14059
    if-eqz v5, :cond_1

    .line 14060
    add-int/lit8 v4, v4, 0x1

    .line 14062
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 14057
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14065
    :cond_2
    add-int/2addr v0, v3

    .line 14066
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 14068
    :cond_3
    iget-object v1, p0, Ljyb;->b:[Lkbi;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljyb;->b:[Lkbi;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 14069
    :goto_1
    iget-object v1, p0, Ljyb;->b:[Lkbi;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    .line 14070
    iget-object v1, p0, Ljyb;->b:[Lkbi;

    aget-object v1, v1, v2

    .line 14071
    if-eqz v1, :cond_4

    .line 14072
    const/4 v3, 0x3

    .line 14073
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14069
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14077
    :cond_5
    iget-object v1, p0, Ljyb;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 14078
    const/4 v1, 0x4

    iget-object v2, p0, Ljyb;->c:Ljava/lang/Integer;

    .line 14079
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14081
    :cond_6
    iget-object v1, p0, Ljyb;->d:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 14082
    const/4 v1, 0x5

    iget-object v2, p0, Ljyb;->d:Ljava/lang/String;

    .line 14083
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14085
    :cond_7
    return v0
.end method
