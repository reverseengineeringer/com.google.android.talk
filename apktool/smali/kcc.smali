.class public final Lkcc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lkcr;

.field public c:Ljava/lang/Integer;

.field public d:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8249
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9254
    iput-object v1, p0, Lkcc;->a:Ljava/lang/Integer;

    .line 9255
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkcc;->b:[Lkcr;

    .line 9256
    iput-object v1, p0, Lkcc;->c:Ljava/lang/Integer;

    .line 9257
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkcc;->d:[[B

    .line 9258
    iput-object v1, p0, Lkcc;->eD:Llyd;

    .line 9259
    const/4 v0, -0x1

    iput v0, p0, Lkcc;->eE:I

    .line 8251
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9334
    sparse-switch v0, :sswitch_data_0

    .line 9338
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9339
    :sswitch_0
    return-object p0

    .line 9344
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9345
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9348
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcc;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 9354
    :sswitch_2
    const/16 v0, 0x12

    .line 9355
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9356
    iget-object v0, p0, Lkcc;->d:[[B

    if-nez v0, :cond_2

    move v0, v1

    .line 9357
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 9358
    if-eqz v0, :cond_1

    .line 9359
    iget-object v3, p0, Lkcc;->d:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9361
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9362
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 9363
    invoke-virtual {p1}, Llxy;->a()I

    .line 9361
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9356
    :cond_2
    iget-object v0, p0, Lkcc;->d:[[B

    array-length v0, v0

    goto :goto_1

    .line 9366
    :cond_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 9367
    iput-object v2, p0, Lkcc;->d:[[B

    goto :goto_0

    .line 9371
    :sswitch_3
    const/16 v0, 0x1a

    .line 9372
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9373
    iget-object v0, p0, Lkcc;->b:[Lkcr;

    if-nez v0, :cond_5

    move v0, v1

    .line 9374
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 9376
    if-eqz v0, :cond_4

    .line 9377
    iget-object v3, p0, Lkcc;->b:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9379
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 9380
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 9381
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9382
    invoke-virtual {p1}, Llxy;->a()I

    .line 9379
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9373
    :cond_5
    iget-object v0, p0, Lkcc;->b:[Lkcr;

    array-length v0, v0

    goto :goto_3

    .line 9385
    :cond_6
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 9386
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9387
    iput-object v2, p0, Lkcc;->b:[Lkcr;

    goto/16 :goto_0

    .line 9391
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9392
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 9396
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcc;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 9334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 9345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 9392
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8266
    iget-object v0, p0, Lkcc;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8267
    const/4 v0, 0x1

    iget-object v2, p0, Lkcc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 8269
    :cond_0
    iget-object v0, p0, Lkcc;->d:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkcc;->d:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 8270
    :goto_0
    iget-object v2, p0, Lkcc;->d:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 8271
    iget-object v2, p0, Lkcc;->d:[[B

    aget-object v2, v2, v0

    .line 8272
    if-eqz v2, :cond_1

    .line 8273
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 8270
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8277
    :cond_2
    iget-object v0, p0, Lkcc;->b:[Lkcr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkcc;->b:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 8278
    :goto_1
    iget-object v0, p0, Lkcc;->b:[Lkcr;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 8279
    iget-object v0, p0, Lkcc;->b:[Lkcr;

    aget-object v0, v0, v1

    .line 8280
    if-eqz v0, :cond_3

    .line 8281
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 8278
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8285
    :cond_4
    iget-object v0, p0, Lkcc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 8286
    const/4 v0, 0x4

    iget-object v1, p0, Lkcc;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8288
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8289
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8293
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8294
    iget-object v1, p0, Lkcc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8295
    const/4 v1, 0x1

    iget-object v3, p0, Lkcc;->a:Ljava/lang/Integer;

    .line 8296
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8298
    :cond_0
    iget-object v1, p0, Lkcc;->d:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkcc;->d:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    move v4, v2

    .line 8301
    :goto_0
    iget-object v5, p0, Lkcc;->d:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 8302
    iget-object v5, p0, Lkcc;->d:[[B

    aget-object v5, v5, v1

    .line 8303
    if-eqz v5, :cond_1

    .line 8304
    add-int/lit8 v4, v4, 0x1

    .line 8306
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 8301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8309
    :cond_2
    add-int/2addr v0, v3

    .line 8310
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 8312
    :cond_3
    iget-object v1, p0, Lkcc;->b:[Lkcr;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkcc;->b:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 8313
    :goto_1
    iget-object v1, p0, Lkcc;->b:[Lkcr;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    .line 8314
    iget-object v1, p0, Lkcc;->b:[Lkcr;

    aget-object v1, v1, v2

    .line 8315
    if-eqz v1, :cond_4

    .line 8316
    const/4 v3, 0x3

    .line 8317
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8313
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8321
    :cond_5
    iget-object v1, p0, Lkcc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 8322
    const/4 v1, 0x4

    iget-object v2, p0, Lkcc;->c:Ljava/lang/Integer;

    .line 8323
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8325
    :cond_6
    return v0
.end method
