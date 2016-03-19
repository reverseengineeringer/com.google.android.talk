.class public final Lmli;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmli;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:[Lmlj;

.field public d:Lmlj;

.field public e:Lmks;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1289
    iput-object v1, p0, Lmli;->a:[B

    .line 1290
    iput-object v1, p0, Lmli;->b:Ljava/lang/String;

    .line 1291
    invoke-static {}, Lmlj;->d()[Lmlj;

    move-result-object v0

    iput-object v0, p0, Lmli;->c:[Lmlj;

    .line 1292
    iput-object v1, p0, Lmli;->d:Lmlj;

    .line 1293
    iput-object v1, p0, Lmli;->e:Lmks;

    .line 1294
    iput-object v1, p0, Lmli;->f:Ljava/lang/Integer;

    .line 1295
    iput-object v1, p0, Lmli;->eD:Llyd;

    .line 1296
    const/4 v0, -0x1

    iput v0, p0, Lmli;->eE:I

    .line 286
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1369
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1370
    sparse-switch v0, :sswitch_data_0

    .line 1374
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :sswitch_0
    return-object p0

    .line 1380
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmli;->a:[B

    goto :goto_0

    .line 1384
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmli;->b:Ljava/lang/String;

    goto :goto_0

    .line 1388
    :sswitch_3
    const/16 v0, 0x1a

    .line 1389
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1390
    iget-object v0, p0, Lmli;->c:[Lmlj;

    if-nez v0, :cond_2

    move v0, v1

    .line 1391
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmlj;

    .line 1393
    if-eqz v0, :cond_1

    .line 1394
    iget-object v3, p0, Lmli;->c:[Lmlj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1397
    new-instance v3, Lmlj;

    invoke-direct {v3}, Lmlj;-><init>()V

    aput-object v3, v2, v0

    .line 1398
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1399
    invoke-virtual {p1}, Llxy;->a()I

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1390
    :cond_2
    iget-object v0, p0, Lmli;->c:[Lmlj;

    array-length v0, v0

    goto :goto_1

    .line 1402
    :cond_3
    new-instance v3, Lmlj;

    invoke-direct {v3}, Lmlj;-><init>()V

    aput-object v3, v2, v0

    .line 1403
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1404
    iput-object v2, p0, Lmli;->c:[Lmlj;

    goto :goto_0

    .line 1408
    :sswitch_4
    iget-object v0, p0, Lmli;->d:Lmlj;

    if-nez v0, :cond_4

    .line 1409
    new-instance v0, Lmlj;

    invoke-direct {v0}, Lmlj;-><init>()V

    iput-object v0, p0, Lmli;->d:Lmlj;

    .line 1411
    :cond_4
    iget-object v0, p0, Lmli;->d:Lmlj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1415
    :sswitch_5
    iget-object v0, p0, Lmli;->e:Lmks;

    if-nez v0, :cond_5

    .line 1416
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmli;->e:Lmks;

    .line 1418
    :cond_5
    iget-object v0, p0, Lmli;->e:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1422
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1423
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1427
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmli;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 1423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lmli;->a:[B

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iget-object v1, p0, Lmli;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 306
    :cond_0
    iget-object v0, p0, Lmli;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x2

    iget-object v1, p0, Lmli;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lmli;->c:[Lmlj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmli;->c:[Lmlj;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 310
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmli;->c:[Lmlj;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 311
    iget-object v1, p0, Lmli;->c:[Lmlj;

    aget-object v1, v1, v0

    .line 312
    if-eqz v1, :cond_2

    .line 313
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lmli;->d:Lmlj;

    if-eqz v0, :cond_4

    .line 318
    const/4 v0, 0x4

    iget-object v1, p0, Lmli;->d:Lmlj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 320
    :cond_4
    iget-object v0, p0, Lmli;->e:Lmks;

    if-eqz v0, :cond_5

    .line 321
    const/4 v0, 0x5

    iget-object v1, p0, Lmli;->e:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 323
    :cond_5
    iget-object v0, p0, Lmli;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 324
    const/4 v0, 0x6

    iget-object v1, p0, Lmli;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 326
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 327
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 331
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 332
    iget-object v1, p0, Lmli;->a:[B

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x1

    iget-object v2, p0, Lmli;->a:[B

    .line 334
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_0
    iget-object v1, p0, Lmli;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 337
    const/4 v1, 0x2

    iget-object v2, p0, Lmli;->b:Ljava/lang/String;

    .line 338
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_1
    iget-object v1, p0, Lmli;->c:[Lmlj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmli;->c:[Lmlj;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 341
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmli;->c:[Lmlj;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 342
    iget-object v2, p0, Lmli;->c:[Lmlj;

    aget-object v2, v2, v0

    .line 343
    if-eqz v2, :cond_2

    .line 344
    const/4 v3, 0x3

    .line 345
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 341
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 349
    :cond_4
    iget-object v1, p0, Lmli;->d:Lmlj;

    if-eqz v1, :cond_5

    .line 350
    const/4 v1, 0x4

    iget-object v2, p0, Lmli;->d:Lmlj;

    .line 351
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_5
    iget-object v1, p0, Lmli;->e:Lmks;

    if-eqz v1, :cond_6

    .line 354
    const/4 v1, 0x5

    iget-object v2, p0, Lmli;->e:Lmks;

    .line 355
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_6
    iget-object v1, p0, Lmli;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 358
    const/4 v1, 0x6

    iget-object v2, p0, Lmli;->f:Ljava/lang/Integer;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_7
    return v0
.end method
