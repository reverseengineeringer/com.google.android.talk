.class public final Llht;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llht;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Llhu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1309
    iput-object v1, p0, Llht;->a:Ljava/lang/Long;

    .line 1310
    invoke-static {}, Llhu;->d()[Llhu;

    move-result-object v0

    iput-object v0, p0, Llht;->b:[Llhu;

    .line 1311
    iput-object v1, p0, Llht;->eD:Llyd;

    .line 1312
    const/4 v0, -0x1

    iput v0, p0, Llht;->eE:I

    .line 306
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1358
    sparse-switch v0, :sswitch_data_0

    .line 1362
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    :sswitch_0
    return-object p0

    .line 1368
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llht;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1372
    :sswitch_2
    const/16 v0, 0x12

    .line 1373
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1374
    iget-object v0, p0, Llht;->b:[Llhu;

    if-nez v0, :cond_2

    move v0, v1

    .line 1375
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llhu;

    .line 1377
    if-eqz v0, :cond_1

    .line 1378
    iget-object v3, p0, Llht;->b:[Llhu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1380
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1381
    new-instance v3, Llhu;

    invoke-direct {v3}, Llhu;-><init>()V

    aput-object v3, v2, v0

    .line 1382
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1383
    invoke-virtual {p1}, Llxy;->a()I

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1374
    :cond_2
    iget-object v0, p0, Llht;->b:[Llhu;

    array-length v0, v0

    goto :goto_1

    .line 1386
    :cond_3
    new-instance v3, Llhu;

    invoke-direct {v3}, Llhu;-><init>()V

    aput-object v3, v2, v0

    .line 1387
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1388
    iput-object v2, p0, Llht;->b:[Llhu;

    goto :goto_0

    .line 1358
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Llht;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    iget-object v1, p0, Llht;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 322
    :cond_0
    iget-object v0, p0, Llht;->b:[Llhu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llht;->b:[Llhu;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 323
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llht;->b:[Llhu;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 324
    iget-object v1, p0, Llht;->b:[Llhu;

    aget-object v1, v1, v0

    .line 325
    if-eqz v1, :cond_1

    .line 326
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 331
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 335
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 336
    iget-object v1, p0, Llht;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x1

    iget-object v2, p0, Llht;->a:Ljava/lang/Long;

    .line 338
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_0
    iget-object v1, p0, Llht;->b:[Llhu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llht;->b:[Llhu;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 341
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llht;->b:[Llhu;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 342
    iget-object v2, p0, Llht;->b:[Llhu;

    aget-object v2, v2, v0

    .line 343
    if-eqz v2, :cond_1

    .line 344
    const/4 v3, 0x2

    .line 345
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 341
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 349
    :cond_3
    return v0
.end method
