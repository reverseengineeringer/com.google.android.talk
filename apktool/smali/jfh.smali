.class public final Ljfh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljfh;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1265
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljfh;->a:[I

    .line 1266
    iput-object v1, p0, Ljfh;->b:Ljava/lang/String;

    .line 1267
    iput-object v1, p0, Ljfh;->eD:Llyd;

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Ljfh;->eE:I

    .line 262
    return-void
.end method

.method public static d()[Ljfh;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Ljfh;->c:[Ljfh;

    if-nez v0, :cond_1

    .line 242
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v0, Ljfh;->c:[Ljfh;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    new-array v0, v0, [Ljfh;

    sput-object v0, Ljfh;->c:[Ljfh;

    .line 247
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    sget-object v0, Ljfh;->c:[Ljfh;

    return-object v0

    .line 247
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

    .line 1311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1312
    sparse-switch v0, :sswitch_data_0

    .line 1316
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    :sswitch_0
    return-object p0

    .line 1322
    :sswitch_1
    const/16 v0, 0x8

    .line 1323
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1324
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1326
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1327
    if-eqz v3, :cond_1

    .line 1328
    invoke-virtual {p1}, Llxy;->a()I

    .line 1330
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1331
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1326
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1346
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1350
    :cond_2
    if-eqz v1, :cond_0

    .line 1351
    iget-object v0, p0, Ljfh;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1352
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1353
    iput-object v5, p0, Ljfh;->a:[I

    goto :goto_0

    .line 1351
    :cond_3
    iget-object v0, p0, Ljfh;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 1355
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1356
    if-eqz v0, :cond_5

    .line 1357
    iget-object v4, p0, Ljfh;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    iput-object v3, p0, Ljfh;->a:[I

    goto :goto_0

    .line 1366
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1367
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1370
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1371
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1372
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1387
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1391
    :cond_6
    if-eqz v0, :cond_a

    .line 1392
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1393
    iget-object v1, p0, Ljfh;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1394
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1395
    if-eqz v1, :cond_7

    .line 1396
    iget-object v0, p0, Ljfh;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1399
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1400
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1415
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1393
    :cond_8
    iget-object v1, p0, Ljfh;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 1419
    :cond_9
    iput-object v4, p0, Ljfh;->a:[I

    .line 1421
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1425
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfh;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1312
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 1331
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

    .line 1372
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

    .line 1400
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
    .line 275
    iget-object v0, p0, Ljfh;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljfh;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljfh;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 277
    const/4 v1, 0x1

    iget-object v2, p0, Ljfh;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Ljfh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x2

    iget-object v1, p0, Ljfh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 283
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 284
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 289
    iget-object v1, p0, Ljfh;->a:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljfh;->a:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    .line 291
    :goto_0
    iget-object v3, p0, Ljfh;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 292
    iget-object v3, p0, Ljfh;->a:[I

    aget v3, v3, v0

    .line 294
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    add-int v0, v2, v1

    .line 297
    iget-object v1, p0, Ljfh;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 299
    :goto_1
    iget-object v1, p0, Ljfh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 300
    const/4 v1, 0x2

    iget-object v2, p0, Ljfh;->b:Ljava/lang/String;

    .line 301
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
