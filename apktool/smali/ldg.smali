.class public final Lldg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Integer;

.field public c:[Lldh;

.field public d:[Lldi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Llyb;-><init>()V

    .line 260
    const/high16 v0, -0x80000000

    iput v0, p0, Lldg;->a:I

    .line 261
    iput-object v1, p0, Lldg;->b:Ljava/lang/Integer;

    .line 262
    invoke-static {}, Lldh;->d()[Lldh;

    move-result-object v0

    iput-object v0, p0, Lldg;->c:[Lldh;

    .line 263
    invoke-static {}, Lldi;->d()[Lldi;

    move-result-object v0

    iput-object v0, p0, Lldg;->d:[Lldi;

    .line 264
    iput-object v1, p0, Lldg;->eD:Llyd;

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lldg;->eE:I

    .line 266
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1334
    sparse-switch v0, :sswitch_data_0

    .line 1338
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    :sswitch_0
    return-object p0

    .line 1344
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1345
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1352
    :pswitch_0
    iput v0, p0, Lldg;->a:I

    goto :goto_0

    .line 1358
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lldg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1362
    :sswitch_3
    const/16 v0, 0x1a

    .line 1363
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1364
    iget-object v0, p0, Lldg;->c:[Lldh;

    if-nez v0, :cond_2

    move v0, v1

    .line 1365
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldh;

    .line 1367
    if-eqz v0, :cond_1

    .line 1368
    iget-object v3, p0, Lldg;->c:[Lldh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1370
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1371
    new-instance v3, Lldh;

    invoke-direct {v3}, Lldh;-><init>()V

    aput-object v3, v2, v0

    .line 1372
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1373
    invoke-virtual {p1}, Llxy;->a()I

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1364
    :cond_2
    iget-object v0, p0, Lldg;->c:[Lldh;

    array-length v0, v0

    goto :goto_1

    .line 1376
    :cond_3
    new-instance v3, Lldh;

    invoke-direct {v3}, Lldh;-><init>()V

    aput-object v3, v2, v0

    .line 1377
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1378
    iput-object v2, p0, Lldg;->c:[Lldh;

    goto :goto_0

    .line 1382
    :sswitch_4
    const/16 v0, 0x22

    .line 1383
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1384
    iget-object v0, p0, Lldg;->d:[Lldi;

    if-nez v0, :cond_5

    move v0, v1

    .line 1385
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lldi;

    .line 1387
    if-eqz v0, :cond_4

    .line 1388
    iget-object v3, p0, Lldg;->d:[Lldi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1390
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1391
    new-instance v3, Lldi;

    invoke-direct {v3}, Lldi;-><init>()V

    aput-object v3, v2, v0

    .line 1392
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1393
    invoke-virtual {p1}, Llxy;->a()I

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1384
    :cond_5
    iget-object v0, p0, Lldg;->d:[Lldi;

    array-length v0, v0

    goto :goto_3

    .line 1396
    :cond_6
    new-instance v3, Lldi;

    invoke-direct {v3}, Lldi;-><init>()V

    aput-object v3, v2, v0

    .line 1397
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1398
    iput-object v2, p0, Lldg;->d:[Lldi;

    goto/16 :goto_0

    .line 1334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    iget v0, p0, Lldg;->a:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    .line 272
    const/4 v0, 0x1

    iget v2, p0, Lldg;->a:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 274
    :cond_0
    iget-object v0, p0, Lldg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x2

    iget-object v2, p0, Lldg;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 277
    :cond_1
    iget-object v0, p0, Lldg;->c:[Lldh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lldg;->c:[Lldh;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 278
    :goto_0
    iget-object v2, p0, Lldg;->c:[Lldh;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 279
    iget-object v2, p0, Lldg;->c:[Lldh;

    aget-object v2, v2, v0

    .line 280
    if-eqz v2, :cond_2

    .line 281
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_3
    iget-object v0, p0, Lldg;->d:[Lldi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lldg;->d:[Lldi;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 286
    :goto_1
    iget-object v0, p0, Lldg;->d:[Lldi;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 287
    iget-object v0, p0, Lldg;->d:[Lldi;

    aget-object v0, v0, v1

    .line 288
    if-eqz v0, :cond_4

    .line 289
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 286
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 294
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 299
    iget v2, p0, Lldg;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 300
    const/4 v2, 0x1

    iget v3, p0, Lldg;->a:I

    .line 301
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    :cond_0
    iget-object v2, p0, Lldg;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 304
    const/4 v2, 0x2

    iget-object v3, p0, Lldg;->b:Ljava/lang/Integer;

    .line 305
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    :cond_1
    iget-object v2, p0, Lldg;->c:[Lldh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lldg;->c:[Lldh;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 308
    :goto_0
    iget-object v3, p0, Lldg;->c:[Lldh;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 309
    iget-object v3, p0, Lldg;->c:[Lldh;

    aget-object v3, v3, v0

    .line 310
    if-eqz v3, :cond_2

    .line 311
    const/4 v4, 0x3

    .line 312
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 316
    :cond_4
    iget-object v2, p0, Lldg;->d:[Lldi;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lldg;->d:[Lldi;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 317
    :goto_1
    iget-object v2, p0, Lldg;->d:[Lldi;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 318
    iget-object v2, p0, Lldg;->d:[Lldi;

    aget-object v2, v2, v1

    .line 319
    if-eqz v2, :cond_5

    .line 320
    const/4 v3, 0x4

    .line 321
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_6
    return v0
.end method
