.class public final Ljdr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljdr;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Llyb;-><init>()V

    .line 247
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljdr;->a:[I

    .line 248
    iput-object v1, p0, Ljdr;->b:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Ljdr;->eD:Llyd;

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Ljdr;->eE:I

    .line 251
    return-void
.end method

.method public static d()[Ljdr;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Ljdr;->c:[Ljdr;

    if-nez v0, :cond_1

    .line 228
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v0, Ljdr;->c:[Ljdr;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Ljdr;

    sput-object v0, Ljdr;->c:[Ljdr;

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_1
    sget-object v0, Ljdr;->c:[Ljdr;

    return-object v0

    .line 233
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
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1292
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1293
    sparse-switch v0, :sswitch_data_0

    .line 1297
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    :sswitch_0
    return-object p0

    .line 1303
    :sswitch_1
    const/16 v0, 0x8

    .line 1304
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1305
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1307
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1308
    if-eqz v3, :cond_1

    .line 1309
    invoke-virtual {p1}, Llxy;->a()I

    .line 1311
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1312
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1307
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1327
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1331
    :cond_2
    if-eqz v1, :cond_0

    .line 1332
    iget-object v0, p0, Ljdr;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1333
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1334
    iput-object v5, p0, Ljdr;->a:[I

    goto :goto_0

    .line 1332
    :cond_3
    iget-object v0, p0, Ljdr;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 1336
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1337
    if-eqz v0, :cond_5

    .line 1338
    iget-object v4, p0, Ljdr;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    iput-object v3, p0, Ljdr;->a:[I

    goto :goto_0

    .line 1347
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1348
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1351
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1352
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1353
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1368
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1372
    :cond_6
    if-eqz v0, :cond_a

    .line 1373
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1374
    iget-object v1, p0, Ljdr;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1375
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1376
    if-eqz v1, :cond_7

    .line 1377
    iget-object v0, p0, Ljdr;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1380
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1381
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1396
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1374
    :cond_8
    iget-object v1, p0, Ljdr;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 1400
    :cond_9
    iput-object v4, p0, Ljdr;->a:[I

    .line 1402
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1406
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdr;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1293
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 1312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1353
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1381
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Ljdr;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdr;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljdr;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 258
    const/4 v1, 0x1

    iget-object v2, p0, Ljdr;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Ljdr;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x2

    iget-object v1, p0, Ljdr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 264
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 265
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 270
    iget-object v1, p0, Ljdr;->a:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljdr;->a:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    .line 272
    :goto_0
    iget-object v3, p0, Ljdr;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 273
    iget-object v3, p0, Ljdr;->a:[I

    aget v3, v3, v0

    .line 275
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    add-int v0, v2, v1

    .line 278
    iget-object v1, p0, Ljdr;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 280
    :goto_1
    iget-object v1, p0, Ljdr;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 281
    const/4 v1, 0x2

    iget-object v2, p0, Ljdr;->b:Ljava/lang/String;

    .line 282
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
