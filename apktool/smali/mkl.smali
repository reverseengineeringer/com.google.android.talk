.class public final Lmkl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmkk;

.field public b:[Lmkk;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1248
    invoke-static {}, Lmkk;->d()[Lmkk;

    move-result-object v0

    iput-object v0, p0, Lmkl;->a:[Lmkk;

    .line 1249
    invoke-static {}, Lmkk;->d()[Lmkk;

    move-result-object v0

    iput-object v0, p0, Lmkl;->b:[Lmkk;

    .line 1250
    iput-object v1, p0, Lmkl;->c:Ljava/lang/String;

    .line 1251
    iput-object v1, p0, Lmkl;->eD:Llyd;

    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Lmkl;->eE:I

    .line 245
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1314
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1315
    sparse-switch v0, :sswitch_data_0

    .line 1319
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    :sswitch_0
    return-object p0

    .line 1325
    :sswitch_1
    const/16 v0, 0xa

    .line 1326
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1327
    iget-object v0, p0, Lmkl;->a:[Lmkk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1328
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkk;

    .line 1330
    if-eqz v0, :cond_1

    .line 1331
    iget-object v3, p0, Lmkl;->a:[Lmkk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1333
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1334
    new-instance v3, Lmkk;

    invoke-direct {v3}, Lmkk;-><init>()V

    aput-object v3, v2, v0

    .line 1335
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1336
    invoke-virtual {p1}, Llxy;->a()I

    .line 1333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1327
    :cond_2
    iget-object v0, p0, Lmkl;->a:[Lmkk;

    array-length v0, v0

    goto :goto_1

    .line 1339
    :cond_3
    new-instance v3, Lmkk;

    invoke-direct {v3}, Lmkk;-><init>()V

    aput-object v3, v2, v0

    .line 1340
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1341
    iput-object v2, p0, Lmkl;->a:[Lmkk;

    goto :goto_0

    .line 1345
    :sswitch_2
    const/16 v0, 0x12

    .line 1346
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1347
    iget-object v0, p0, Lmkl;->b:[Lmkk;

    if-nez v0, :cond_5

    move v0, v1

    .line 1348
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkk;

    .line 1350
    if-eqz v0, :cond_4

    .line 1351
    iget-object v3, p0, Lmkl;->b:[Lmkk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1353
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1354
    new-instance v3, Lmkk;

    invoke-direct {v3}, Lmkk;-><init>()V

    aput-object v3, v2, v0

    .line 1355
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1356
    invoke-virtual {p1}, Llxy;->a()I

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1347
    :cond_5
    iget-object v0, p0, Lmkl;->b:[Lmkk;

    array-length v0, v0

    goto :goto_3

    .line 1359
    :cond_6
    new-instance v3, Lmkk;

    invoke-direct {v3}, Lmkk;-><init>()V

    aput-object v3, v2, v0

    .line 1360
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1361
    iput-object v2, p0, Lmkl;->b:[Lmkk;

    goto/16 :goto_0

    .line 1365
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkl;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1315
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lmkl;->a:[Lmkk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmkl;->a:[Lmkk;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 260
    :goto_0
    iget-object v2, p0, Lmkl;->a:[Lmkk;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 261
    iget-object v2, p0, Lmkl;->a:[Lmkk;

    aget-object v2, v2, v0

    .line 262
    if-eqz v2, :cond_0

    .line 263
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lmkl;->b:[Lmkk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmkl;->b:[Lmkk;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 268
    :goto_1
    iget-object v0, p0, Lmkl;->b:[Lmkk;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 269
    iget-object v0, p0, Lmkl;->b:[Lmkk;

    aget-object v0, v0, v1

    .line 270
    if-eqz v0, :cond_2

    .line 271
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 268
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_3
    iget-object v0, p0, Lmkl;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 276
    const/4 v0, 0x3

    iget-object v1, p0, Lmkl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 278
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 279
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 284
    iget-object v2, p0, Lmkl;->a:[Lmkk;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmkl;->a:[Lmkk;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 285
    :goto_0
    iget-object v3, p0, Lmkl;->a:[Lmkk;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 286
    iget-object v3, p0, Lmkl;->a:[Lmkk;

    aget-object v3, v3, v0

    .line 287
    if-eqz v3, :cond_0

    .line 288
    const/4 v4, 0x1

    .line 289
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 293
    :cond_2
    iget-object v2, p0, Lmkl;->b:[Lmkk;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmkl;->b:[Lmkk;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 294
    :goto_1
    iget-object v2, p0, Lmkl;->b:[Lmkk;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 295
    iget-object v2, p0, Lmkl;->b:[Lmkk;

    aget-object v2, v2, v1

    .line 296
    if-eqz v2, :cond_3

    .line 297
    const/4 v3, 0x2

    .line 298
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_4
    iget-object v1, p0, Lmkl;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 303
    const/4 v1, 0x3

    iget-object v2, p0, Lmkl;->c:Ljava/lang/String;

    .line 304
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_5
    return v0
.end method
