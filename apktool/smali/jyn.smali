.class public final Ljyn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljxw;

.field public c:Ljava/lang/Long;

.field public d:[Ljava/lang/String;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31301
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32306
    iput-object v1, p0, Ljyn;->requestHeader:Lkdo;

    .line 32307
    iput-object v1, p0, Ljyn;->a:Ljava/lang/Integer;

    .line 32308
    iput-object v1, p0, Ljyn;->b:Ljxw;

    .line 32309
    iput-object v1, p0, Ljyn;->c:Ljava/lang/Long;

    .line 32310
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljyn;->d:[Ljava/lang/String;

    .line 32311
    iput-object v1, p0, Ljyn;->eD:Llyd;

    .line 32312
    const/4 v0, -0x1

    iput v0, p0, Ljyn;->eE:I

    .line 31303
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32383
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32384
    sparse-switch v0, :sswitch_data_0

    .line 32388
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32389
    :sswitch_0
    return-object p0

    .line 32394
    :sswitch_1
    iget-object v0, p0, Ljyn;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 32395
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljyn;->requestHeader:Lkdo;

    .line 32397
    :cond_1
    iget-object v0, p0, Ljyn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32401
    :sswitch_2
    iget-object v0, p0, Ljyn;->b:Ljxw;

    if-nez v0, :cond_2

    .line 32402
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljyn;->b:Ljxw;

    .line 32404
    :cond_2
    iget-object v0, p0, Ljyn;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32408
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyn;->c:Ljava/lang/Long;

    goto :goto_0

    .line 32412
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32413
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 32417
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyn;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 32423
    :sswitch_5
    const/16 v0, 0x2a

    .line 32424
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 32425
    iget-object v0, p0, Ljyn;->d:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 32426
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 32427
    if-eqz v0, :cond_3

    .line 32428
    iget-object v3, p0, Ljyn;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32430
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 32431
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32432
    invoke-virtual {p1}, Llxy;->a()I

    .line 32430
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32425
    :cond_4
    iget-object v0, p0, Ljyn;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 32435
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32436
    iput-object v2, p0, Ljyn;->d:[Ljava/lang/String;

    goto :goto_0

    .line 32384
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 32413
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
    .line 31319
    iget-object v0, p0, Ljyn;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 31320
    const/4 v0, 0x1

    iget-object v1, p0, Ljyn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31322
    :cond_0
    iget-object v0, p0, Ljyn;->b:Ljxw;

    if-eqz v0, :cond_1

    .line 31323
    const/4 v0, 0x2

    iget-object v1, p0, Ljyn;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31325
    :cond_1
    iget-object v0, p0, Ljyn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 31326
    const/4 v0, 0x3

    iget-object v1, p0, Ljyn;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 31328
    :cond_2
    iget-object v0, p0, Ljyn;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 31329
    const/4 v0, 0x4

    iget-object v1, p0, Ljyn;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 31331
    :cond_3
    iget-object v0, p0, Ljyn;->d:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljyn;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 31332
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljyn;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 31333
    iget-object v1, p0, Ljyn;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 31334
    if-eqz v1, :cond_4

    .line 31335
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 31332
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31339
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31340
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 31344
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31345
    iget-object v2, p0, Ljyn;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 31346
    const/4 v2, 0x1

    iget-object v3, p0, Ljyn;->requestHeader:Lkdo;

    .line 31347
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31349
    :cond_0
    iget-object v2, p0, Ljyn;->b:Ljxw;

    if-eqz v2, :cond_1

    .line 31350
    const/4 v2, 0x2

    iget-object v3, p0, Ljyn;->b:Ljxw;

    .line 31351
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31353
    :cond_1
    iget-object v2, p0, Ljyn;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 31354
    const/4 v2, 0x3

    iget-object v3, p0, Ljyn;->c:Ljava/lang/Long;

    .line 31355
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31357
    :cond_2
    iget-object v2, p0, Ljyn;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 31358
    const/4 v2, 0x4

    iget-object v3, p0, Ljyn;->a:Ljava/lang/Integer;

    .line 31359
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31361
    :cond_3
    iget-object v2, p0, Ljyn;->d:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljyn;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 31364
    :goto_0
    iget-object v4, p0, Ljyn;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 31365
    iget-object v4, p0, Ljyn;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 31366
    if-eqz v4, :cond_4

    .line 31367
    add-int/lit8 v3, v3, 0x1

    .line 31369
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 31364
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31372
    :cond_5
    add-int/2addr v0, v2

    .line 31373
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 31375
    :cond_6
    return v0
.end method
