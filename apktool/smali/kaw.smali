.class public final Lkaw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkaw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lkcr;

.field public c:Ljava/lang/Long;

.field public d:Ljxw;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9303
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10308
    iput-object v1, p0, Lkaw;->a:Ljava/lang/Integer;

    .line 10309
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkaw;->b:[Lkcr;

    .line 10310
    iput-object v1, p0, Lkaw;->c:Ljava/lang/Long;

    .line 10311
    iput-object v1, p0, Lkaw;->d:Ljxw;

    .line 10312
    iput-object v1, p0, Lkaw;->e:Ljava/lang/Long;

    .line 10313
    iput-object v1, p0, Lkaw;->f:Ljava/lang/Boolean;

    .line 10314
    iput-object v1, p0, Lkaw;->g:Ljava/lang/Integer;

    .line 10315
    iput-object v1, p0, Lkaw;->eD:Llyd;

    .line 10316
    const/4 v0, -0x1

    iput v0, p0, Lkaw;->eE:I

    .line 9305
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11396
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11397
    sparse-switch v0, :sswitch_data_0

    .line 11401
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11402
    :sswitch_0
    return-object p0

    .line 11407
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11408
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11415
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkaw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 11421
    :sswitch_2
    const/16 v0, 0x12

    .line 11422
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 11423
    iget-object v0, p0, Lkaw;->b:[Lkcr;

    if-nez v0, :cond_2

    move v0, v1

    .line 11424
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 11426
    if-eqz v0, :cond_1

    .line 11427
    iget-object v3, p0, Lkaw;->b:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11429
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 11430
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 11431
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 11432
    invoke-virtual {p1}, Llxy;->a()I

    .line 11429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11423
    :cond_2
    iget-object v0, p0, Lkaw;->b:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 11435
    :cond_3
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 11436
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 11437
    iput-object v2, p0, Lkaw;->b:[Lkcr;

    goto :goto_0

    .line 11441
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkaw;->c:Ljava/lang/Long;

    goto :goto_0

    .line 11445
    :sswitch_4
    iget-object v0, p0, Lkaw;->d:Ljxw;

    if-nez v0, :cond_4

    .line 11446
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkaw;->d:Ljxw;

    .line 11448
    :cond_4
    iget-object v0, p0, Lkaw;->d:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11452
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkaw;->e:Ljava/lang/Long;

    goto/16 :goto_0

    .line 11456
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkaw;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11460
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11461
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 11465
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkaw;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11397
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 11408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 11461
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9323
    iget-object v0, p0, Lkaw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9324
    const/4 v0, 0x1

    iget-object v1, p0, Lkaw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9326
    :cond_0
    iget-object v0, p0, Lkaw;->b:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkaw;->b:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 9327
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkaw;->b:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 9328
    iget-object v1, p0, Lkaw;->b:[Lkcr;

    aget-object v1, v1, v0

    .line 9329
    if-eqz v1, :cond_1

    .line 9330
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 9327
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9334
    :cond_2
    iget-object v0, p0, Lkaw;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 9335
    const/4 v0, 0x3

    iget-object v1, p0, Lkaw;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9337
    :cond_3
    iget-object v0, p0, Lkaw;->d:Ljxw;

    if-eqz v0, :cond_4

    .line 9338
    const/4 v0, 0x4

    iget-object v1, p0, Lkaw;->d:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9340
    :cond_4
    iget-object v0, p0, Lkaw;->e:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 9341
    const/4 v0, 0x5

    iget-object v1, p0, Lkaw;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9343
    :cond_5
    iget-object v0, p0, Lkaw;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 9344
    const/4 v0, 0x6

    iget-object v1, p0, Lkaw;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9346
    :cond_6
    iget-object v0, p0, Lkaw;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 9347
    const/4 v0, 0x7

    iget-object v1, p0, Lkaw;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9349
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9350
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 9354
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9355
    iget-object v1, p0, Lkaw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9356
    const/4 v1, 0x1

    iget-object v2, p0, Lkaw;->a:Ljava/lang/Integer;

    .line 9357
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9359
    :cond_0
    iget-object v1, p0, Lkaw;->b:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkaw;->b:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 9360
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkaw;->b:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 9361
    iget-object v2, p0, Lkaw;->b:[Lkcr;

    aget-object v2, v2, v0

    .line 9362
    if-eqz v2, :cond_1

    .line 9363
    const/4 v3, 0x2

    .line 9364
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9360
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9368
    :cond_3
    iget-object v1, p0, Lkaw;->c:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 9369
    const/4 v1, 0x3

    iget-object v2, p0, Lkaw;->c:Ljava/lang/Long;

    .line 9370
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9372
    :cond_4
    iget-object v1, p0, Lkaw;->d:Ljxw;

    if-eqz v1, :cond_5

    .line 9373
    const/4 v1, 0x4

    iget-object v2, p0, Lkaw;->d:Ljxw;

    .line 9374
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9376
    :cond_5
    iget-object v1, p0, Lkaw;->e:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 9377
    const/4 v1, 0x5

    iget-object v2, p0, Lkaw;->e:Ljava/lang/Long;

    .line 9378
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9380
    :cond_6
    iget-object v1, p0, Lkaw;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 9381
    const/4 v1, 0x6

    iget-object v2, p0, Lkaw;->f:Ljava/lang/Boolean;

    .line 9382
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9382
    add-int/2addr v0, v1

    .line 9384
    :cond_7
    iget-object v1, p0, Lkaw;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 9385
    const/4 v1, 0x7

    iget-object v2, p0, Lkaw;->g:Ljava/lang/Integer;

    .line 9386
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9388
    :cond_8
    return v0
.end method
