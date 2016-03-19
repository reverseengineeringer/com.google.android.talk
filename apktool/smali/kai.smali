.class public final Lkai;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkai;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljzi;

.field public b:[I

.field public c:Ljzi;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30137
    invoke-direct {p0}, Llyb;-><init>()V

    .line 31142
    iput-object v1, p0, Lkai;->requestHeader:Lkdo;

    .line 31143
    invoke-static {}, Ljzi;->d()[Ljzi;

    move-result-object v0

    iput-object v0, p0, Lkai;->a:[Ljzi;

    .line 31144
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkai;->b:[I

    .line 31145
    iput-object v1, p0, Lkai;->c:Ljzi;

    .line 31146
    iput-object v1, p0, Lkai;->eD:Llyd;

    .line 31147
    const/4 v0, -0x1

    iput v0, p0, Lkai;->eE:I

    .line 30139
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 31214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31215
    sparse-switch v0, :sswitch_data_0

    .line 31219
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31220
    :sswitch_0
    return-object p0

    .line 31225
    :sswitch_1
    iget-object v0, p0, Lkai;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 31226
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkai;->requestHeader:Lkdo;

    .line 31228
    :cond_1
    iget-object v0, p0, Lkai;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31232
    :sswitch_2
    iget-object v0, p0, Lkai;->c:Ljzi;

    if-nez v0, :cond_2

    .line 31233
    new-instance v0, Ljzi;

    invoke-direct {v0}, Ljzi;-><init>()V

    iput-object v0, p0, Lkai;->c:Ljzi;

    .line 31235
    :cond_2
    iget-object v0, p0, Lkai;->c:Ljzi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31239
    :sswitch_3
    const/16 v0, 0x1a

    .line 31240
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 31241
    iget-object v0, p0, Lkai;->a:[Ljzi;

    if-nez v0, :cond_4

    move v0, v1

    .line 31242
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzi;

    .line 31244
    if-eqz v0, :cond_3

    .line 31245
    iget-object v3, p0, Lkai;->a:[Ljzi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31247
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 31248
    new-instance v3, Ljzi;

    invoke-direct {v3}, Ljzi;-><init>()V

    aput-object v3, v2, v0

    .line 31249
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 31250
    invoke-virtual {p1}, Llxy;->a()I

    .line 31247
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31241
    :cond_4
    iget-object v0, p0, Lkai;->a:[Ljzi;

    array-length v0, v0

    goto :goto_1

    .line 31253
    :cond_5
    new-instance v3, Ljzi;

    invoke-direct {v3}, Ljzi;-><init>()V

    aput-object v3, v2, v0

    .line 31254
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 31255
    iput-object v2, p0, Lkai;->a:[Ljzi;

    goto :goto_0

    .line 31259
    :sswitch_4
    const/16 v0, 0x20

    .line 31260
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 31261
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 31263
    :goto_3
    if-ge v3, v4, :cond_7

    .line 31264
    if-eqz v3, :cond_6

    .line 31265
    invoke-virtual {p1}, Llxy;->a()I

    .line 31267
    :cond_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 31268
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 31263
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 31272
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_4

    .line 31276
    :cond_7
    if-eqz v2, :cond_0

    .line 31277
    iget-object v0, p0, Lkai;->b:[I

    if-nez v0, :cond_8

    move v0, v1

    .line 31278
    :goto_5
    if-nez v0, :cond_9

    array-length v3, v5

    if-ne v2, v3, :cond_9

    .line 31279
    iput-object v5, p0, Lkai;->b:[I

    goto/16 :goto_0

    .line 31277
    :cond_8
    iget-object v0, p0, Lkai;->b:[I

    array-length v0, v0

    goto :goto_5

    .line 31281
    :cond_9
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 31282
    if-eqz v0, :cond_a

    .line 31283
    iget-object v4, p0, Lkai;->b:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31285
    :cond_a
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31286
    iput-object v3, p0, Lkai;->b:[I

    goto/16 :goto_0

    .line 31292
    :sswitch_5
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 31293
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 31296
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 31297
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 31298
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 31302
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 31306
    :cond_b
    if-eqz v0, :cond_f

    .line 31307
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 31308
    iget-object v2, p0, Lkai;->b:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 31309
    :goto_7
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 31310
    if-eqz v2, :cond_c

    .line 31311
    iget-object v0, p0, Lkai;->b:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31313
    :cond_c
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_e

    .line 31314
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 31315
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 31319
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_8

    .line 31308
    :cond_d
    iget-object v2, p0, Lkai;->b:[I

    array-length v2, v2

    goto :goto_7

    .line 31323
    :cond_e
    iput-object v4, p0, Lkai;->b:[I

    .line 31325
    :cond_f
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 31215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 31268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 31298
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 31315
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30154
    iget-object v0, p0, Lkai;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 30155
    const/4 v0, 0x1

    iget-object v2, p0, Lkai;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 30157
    :cond_0
    iget-object v0, p0, Lkai;->c:Ljzi;

    if-eqz v0, :cond_1

    .line 30158
    const/4 v0, 0x2

    iget-object v2, p0, Lkai;->c:Ljzi;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 30160
    :cond_1
    iget-object v0, p0, Lkai;->a:[Ljzi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkai;->a:[Ljzi;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 30161
    :goto_0
    iget-object v2, p0, Lkai;->a:[Ljzi;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 30162
    iget-object v2, p0, Lkai;->a:[Ljzi;

    aget-object v2, v2, v0

    .line 30163
    if-eqz v2, :cond_2

    .line 30164
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 30161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30168
    :cond_3
    iget-object v0, p0, Lkai;->b:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkai;->b:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 30169
    :goto_1
    iget-object v0, p0, Lkai;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 30170
    const/4 v0, 0x4

    iget-object v2, p0, Lkai;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 30169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30173
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 30174
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 30178
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 30179
    iget-object v2, p0, Lkai;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 30180
    const/4 v2, 0x1

    iget-object v3, p0, Lkai;->requestHeader:Lkdo;

    .line 30181
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30183
    :cond_0
    iget-object v2, p0, Lkai;->c:Ljzi;

    if-eqz v2, :cond_1

    .line 30184
    const/4 v2, 0x2

    iget-object v3, p0, Lkai;->c:Ljzi;

    .line 30185
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30187
    :cond_1
    iget-object v2, p0, Lkai;->a:[Ljzi;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkai;->a:[Ljzi;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 30188
    :goto_0
    iget-object v3, p0, Lkai;->a:[Ljzi;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 30189
    iget-object v3, p0, Lkai;->a:[Ljzi;

    aget-object v3, v3, v0

    .line 30190
    if-eqz v3, :cond_2

    .line 30191
    const/4 v4, 0x3

    .line 30192
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 30188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 30196
    :cond_4
    iget-object v2, p0, Lkai;->b:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkai;->b:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    .line 30198
    :goto_1
    iget-object v3, p0, Lkai;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 30199
    iget-object v3, p0, Lkai;->b:[I

    aget v3, v3, v1

    .line 30201
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 30198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30203
    :cond_5
    add-int/2addr v0, v2

    .line 30204
    iget-object v1, p0, Lkai;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 30206
    :cond_6
    return v0
.end method
