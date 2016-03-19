.class public final Llfq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Double;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:[Llfp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1343
    iput-object v1, p0, Llfq;->a:Ljava/lang/Double;

    .line 1344
    iput-object v1, p0, Llfq;->b:Ljava/lang/Double;

    .line 1345
    iput-object v1, p0, Llfq;->c:Ljava/lang/Double;

    .line 1346
    invoke-static {}, Llfp;->d()[Llfp;

    move-result-object v0

    iput-object v0, p0, Llfq;->d:[Llfp;

    .line 1347
    iput-object v1, p0, Llfq;->eD:Llyd;

    .line 1348
    const/4 v0, -0x1

    iput v0, p0, Llfq;->eE:I

    .line 340
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4407
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4408
    sparse-switch v0, :sswitch_data_0

    .line 4412
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4413
    :sswitch_0
    return-object p0

    .line 4418
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfq;->a:Ljava/lang/Double;

    goto :goto_0

    .line 4422
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfq;->b:Ljava/lang/Double;

    goto :goto_0

    .line 4426
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfq;->c:Ljava/lang/Double;

    goto :goto_0

    .line 4430
    :sswitch_4
    const/16 v0, 0x22

    .line 4431
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4432
    iget-object v0, p0, Llfq;->d:[Llfp;

    if-nez v0, :cond_2

    move v0, v1

    .line 4433
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llfp;

    .line 4435
    if-eqz v0, :cond_1

    .line 4436
    iget-object v3, p0, Llfq;->d:[Llfp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4438
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4439
    new-instance v3, Llfp;

    invoke-direct {v3}, Llfp;-><init>()V

    aput-object v3, v2, v0

    .line 4440
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4441
    invoke-virtual {p1}, Llxy;->a()I

    .line 4438
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4432
    :cond_2
    iget-object v0, p0, Llfq;->d:[Llfp;

    array-length v0, v0

    goto :goto_1

    .line 4444
    :cond_3
    new-instance v3, Llfp;

    invoke-direct {v3}, Llfp;-><init>()V

    aput-object v3, v2, v0

    .line 4445
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4446
    iput-object v2, p0, Llfq;->d:[Llfp;

    goto :goto_0

    .line 4408
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Llfq;->a:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    iget-object v1, p0, Llfq;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 358
    :cond_0
    iget-object v0, p0, Llfq;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, 0x2

    iget-object v1, p0, Llfq;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 361
    :cond_1
    iget-object v0, p0, Llfq;->c:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 362
    const/4 v0, 0x3

    iget-object v1, p0, Llfq;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 364
    :cond_2
    iget-object v0, p0, Llfq;->d:[Llfp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llfq;->d:[Llfp;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 365
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llfq;->d:[Llfp;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 366
    iget-object v1, p0, Llfq;->d:[Llfp;

    aget-object v1, v1, v0

    .line 367
    if-eqz v1, :cond_3

    .line 368
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 365
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 373
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 377
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 378
    iget-object v1, p0, Llfq;->a:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x1

    iget-object v2, p0, Llfq;->a:Ljava/lang/Double;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 380
    add-int/2addr v0, v1

    .line 382
    :cond_0
    iget-object v1, p0, Llfq;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 383
    const/4 v1, 0x2

    iget-object v2, p0, Llfq;->b:Ljava/lang/Double;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 384
    add-int/2addr v0, v1

    .line 386
    :cond_1
    iget-object v1, p0, Llfq;->c:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 387
    const/4 v1, 0x3

    iget-object v2, p0, Llfq;->c:Ljava/lang/Double;

    .line 388
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 3561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 388
    add-int/2addr v0, v1

    .line 390
    :cond_2
    iget-object v1, p0, Llfq;->d:[Llfp;

    if-eqz v1, :cond_5

    iget-object v1, p0, Llfq;->d:[Llfp;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 391
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llfq;->d:[Llfp;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 392
    iget-object v2, p0, Llfq;->d:[Llfp;

    aget-object v2, v2, v0

    .line 393
    if-eqz v2, :cond_3

    .line 394
    const/4 v3, 0x4

    .line 395
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 391
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 399
    :cond_5
    return v0
.end method
