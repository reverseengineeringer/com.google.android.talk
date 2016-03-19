.class public final Llut;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llut;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Llut;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Llyb;-><init>()V

    .line 403
    iput-object v1, p0, Llut;->a:Ljava/lang/Integer;

    .line 404
    iput-object v1, p0, Llut;->b:Ljava/lang/Float;

    .line 405
    iput-object v1, p0, Llut;->c:Ljava/lang/Integer;

    .line 406
    iput-object v1, p0, Llut;->d:Ljava/lang/Float;

    .line 407
    iput-object v1, p0, Llut;->e:Ljava/lang/Float;

    .line 408
    const/high16 v0, -0x80000000

    iput v0, p0, Llut;->f:I

    .line 409
    iput-object v1, p0, Llut;->eD:Llyd;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Llut;->eE:I

    .line 411
    return-void
.end method

.method public static d()[Llut;
    .locals 2

    .prologue
    .line 371
    sget-object v0, Llut;->g:[Llut;

    if-nez v0, :cond_1

    .line 372
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    sget-object v0, Llut;->g:[Llut;

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    new-array v0, v0, [Llut;

    sput-object v0, Llut;->g:[Llut;

    .line 377
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_1
    sget-object v0, Llut;->g:[Llut;

    return-object v0

    .line 377
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4472
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4473
    sparse-switch v0, :sswitch_data_0

    .line 4477
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4478
    :sswitch_0
    return-object p0

    .line 4483
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llut;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4487
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llut;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4491
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llut;->e:Ljava/lang/Float;

    goto :goto_0

    .line 4495
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4496
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 4519
    :sswitch_5
    iput v0, p0, Llut;->f:I

    goto :goto_0

    .line 4525
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llut;->b:Ljava/lang/Float;

    goto :goto_0

    .line 4529
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llut;->d:Ljava/lang/Float;

    goto :goto_0

    .line 4473
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch

    .line 4496
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0xc8 -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_5
        0xe3 -> :sswitch_5
        0xf0 -> :sswitch_5
        0xf1 -> :sswitch_5
        0x12c -> :sswitch_5
        0x12e -> :sswitch_5
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x138 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x13c -> :sswitch_5
        0x3a98 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Llut;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iget-object v1, p0, Llut;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 419
    :cond_0
    iget-object v0, p0, Llut;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 420
    const/4 v0, 0x2

    iget-object v1, p0, Llut;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 422
    :cond_1
    iget-object v0, p0, Llut;->e:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 423
    const/4 v0, 0x3

    iget-object v1, p0, Llut;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 425
    :cond_2
    iget v0, p0, Llut;->f:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 426
    const/4 v0, 0x4

    iget v1, p0, Llut;->f:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 428
    :cond_3
    iget-object v0, p0, Llut;->b:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 429
    const/4 v0, 0x5

    iget-object v1, p0, Llut;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 431
    :cond_4
    iget-object v0, p0, Llut;->d:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 432
    const/4 v0, 0x6

    iget-object v1, p0, Llut;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 434
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 435
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 439
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 440
    iget-object v1, p0, Llut;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 441
    const/4 v1, 0x1

    iget-object v2, p0, Llut;->a:Ljava/lang/Integer;

    .line 442
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_0
    iget-object v1, p0, Llut;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x2

    iget-object v2, p0, Llut;->c:Ljava/lang/Integer;

    .line 446
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_1
    iget-object v1, p0, Llut;->e:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 449
    const/4 v1, 0x3

    iget-object v2, p0, Llut;->e:Ljava/lang/Float;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 450
    add-int/2addr v0, v1

    .line 452
    :cond_2
    iget v1, p0, Llut;->f:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 453
    const/4 v1, 0x4

    iget v2, p0, Llut;->f:I

    .line 454
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_3
    iget-object v1, p0, Llut;->b:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 457
    const/4 v1, 0x5

    iget-object v2, p0, Llut;->b:Ljava/lang/Float;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 458
    add-int/2addr v0, v1

    .line 460
    :cond_4
    iget-object v1, p0, Llut;->d:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 461
    const/4 v1, 0x6

    iget-object v2, p0, Llut;->d:Ljava/lang/Float;

    .line 462
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 462
    add-int/2addr v0, v1

    .line 464
    :cond_5
    return v0
.end method
