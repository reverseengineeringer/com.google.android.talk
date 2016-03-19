.class public final Lmgb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgc;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:[Lmgh;

.field public i:Ljava/lang/Boolean;

.field public j:[Lmgg;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1184
    iput-object v1, p0, Lmgb;->a:Lmgc;

    .line 1185
    iput-object v1, p0, Lmgb;->b:Ljava/lang/Boolean;

    .line 1186
    iput-object v1, p0, Lmgb;->c:Ljava/lang/Boolean;

    .line 1187
    iput-object v1, p0, Lmgb;->d:Ljava/lang/String;

    .line 1188
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmgb;->e:[Ljava/lang/String;

    .line 1189
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmgb;->f:[Ljava/lang/String;

    .line 1190
    iput-object v1, p0, Lmgb;->g:Ljava/lang/Boolean;

    .line 1191
    invoke-static {}, Lmgh;->d()[Lmgh;

    move-result-object v0

    iput-object v0, p0, Lmgb;->h:[Lmgh;

    .line 1192
    iput-object v1, p0, Lmgb;->i:Ljava/lang/Boolean;

    .line 1193
    invoke-static {}, Lmgg;->d()[Lmgg;

    move-result-object v0

    iput-object v0, p0, Lmgb;->j:[Lmgg;

    .line 1194
    iput-object v1, p0, Lmgb;->k:Ljava/lang/Boolean;

    .line 1195
    iput-object v1, p0, Lmgb;->eD:Llyd;

    .line 1196
    const/4 v0, -0x1

    iput v0, p0, Lmgb;->eE:I

    .line 181
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6344
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6345
    sparse-switch v0, :sswitch_data_0

    .line 6349
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6350
    :sswitch_0
    return-object p0

    .line 6355
    :sswitch_1
    iget-object v0, p0, Lmgb;->a:Lmgc;

    if-nez v0, :cond_1

    .line 6356
    new-instance v0, Lmgc;

    invoke-direct {v0}, Lmgc;-><init>()V

    iput-object v0, p0, Lmgb;->a:Lmgc;

    .line 6358
    :cond_1
    iget-object v0, p0, Lmgb;->a:Lmgc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6362
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgb;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 6366
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6370
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmgb;->d:Ljava/lang/String;

    goto :goto_0

    .line 6374
    :sswitch_5
    const/16 v0, 0xe2

    .line 6375
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6376
    iget-object v0, p0, Lmgb;->e:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 6377
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6378
    if-eqz v0, :cond_2

    .line 6379
    iget-object v3, p0, Lmgb;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6381
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 6382
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6383
    invoke-virtual {p1}, Llxy;->a()I

    .line 6381
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6376
    :cond_3
    iget-object v0, p0, Lmgb;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 6386
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6387
    iput-object v2, p0, Lmgb;->e:[Ljava/lang/String;

    goto :goto_0

    .line 6391
    :sswitch_6
    const/16 v0, 0xea

    .line 6392
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6393
    iget-object v0, p0, Lmgb;->f:[Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    .line 6394
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6395
    if-eqz v0, :cond_5

    .line 6396
    iget-object v3, p0, Lmgb;->f:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6398
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 6399
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6400
    invoke-virtual {p1}, Llxy;->a()I

    .line 6398
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6393
    :cond_6
    iget-object v0, p0, Lmgb;->f:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 6403
    :cond_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6404
    iput-object v2, p0, Lmgb;->f:[Ljava/lang/String;

    goto/16 :goto_0

    .line 6408
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgb;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6412
    :sswitch_8
    const/16 v0, 0xfa

    .line 6413
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6414
    iget-object v0, p0, Lmgb;->h:[Lmgh;

    if-nez v0, :cond_9

    move v0, v1

    .line 6415
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lmgh;

    .line 6417
    if-eqz v0, :cond_8

    .line 6418
    iget-object v3, p0, Lmgb;->h:[Lmgh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6420
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 6421
    new-instance v3, Lmgh;

    invoke-direct {v3}, Lmgh;-><init>()V

    aput-object v3, v2, v0

    .line 6422
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6423
    invoke-virtual {p1}, Llxy;->a()I

    .line 6420
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6414
    :cond_9
    iget-object v0, p0, Lmgb;->h:[Lmgh;

    array-length v0, v0

    goto :goto_5

    .line 6426
    :cond_a
    new-instance v3, Lmgh;

    invoke-direct {v3}, Lmgh;-><init>()V

    aput-object v3, v2, v0

    .line 6427
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6428
    iput-object v2, p0, Lmgb;->h:[Lmgh;

    goto/16 :goto_0

    .line 6432
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgb;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6436
    :sswitch_a
    const/16 v0, 0x10a

    .line 6437
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6438
    iget-object v0, p0, Lmgb;->j:[Lmgg;

    if-nez v0, :cond_c

    move v0, v1

    .line 6439
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lmgg;

    .line 6441
    if-eqz v0, :cond_b

    .line 6442
    iget-object v3, p0, Lmgb;->j:[Lmgg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6444
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 6445
    new-instance v3, Lmgg;

    invoke-direct {v3}, Lmgg;-><init>()V

    aput-object v3, v2, v0

    .line 6446
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6447
    invoke-virtual {p1}, Llxy;->a()I

    .line 6444
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6438
    :cond_c
    iget-object v0, p0, Lmgb;->j:[Lmgg;

    array-length v0, v0

    goto :goto_7

    .line 6450
    :cond_d
    new-instance v3, Lmgg;

    invoke-direct {v3}, Lmgg;-><init>()V

    aput-object v3, v2, v0

    .line 6451
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6452
    iput-object v2, p0, Lmgb;->j:[Lmgg;

    goto/16 :goto_0

    .line 6456
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgb;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6345
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xc8 -> :sswitch_2
        0xd0 -> :sswitch_3
        0xda -> :sswitch_4
        0xe2 -> :sswitch_5
        0xea -> :sswitch_6
        0xf0 -> :sswitch_7
        0xfa -> :sswitch_8
        0x100 -> :sswitch_9
        0x10a -> :sswitch_a
        0x110 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lmgb;->a:Lmgc;

    if-eqz v0, :cond_0

    .line 204
    const/16 v0, 0x15

    iget-object v2, p0, Lmgb;->a:Lmgc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lmgb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 207
    const/16 v0, 0x19

    iget-object v2, p0, Lmgb;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 209
    :cond_1
    iget-object v0, p0, Lmgb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 210
    const/16 v0, 0x1a

    iget-object v2, p0, Lmgb;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 212
    :cond_2
    iget-object v0, p0, Lmgb;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 213
    const/16 v0, 0x1b

    iget-object v2, p0, Lmgb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 215
    :cond_3
    iget-object v0, p0, Lmgb;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmgb;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 216
    :goto_0
    iget-object v2, p0, Lmgb;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 217
    iget-object v2, p0, Lmgb;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 218
    if-eqz v2, :cond_4

    .line 219
    const/16 v3, 0x1c

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 216
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_5
    iget-object v0, p0, Lmgb;->f:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmgb;->f:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 224
    :goto_1
    iget-object v2, p0, Lmgb;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 225
    iget-object v2, p0, Lmgb;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 226
    if-eqz v2, :cond_6

    .line 227
    const/16 v3, 0x1d

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 224
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_7
    iget-object v0, p0, Lmgb;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 232
    const/16 v0, 0x1e

    iget-object v2, p0, Lmgb;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 234
    :cond_8
    iget-object v0, p0, Lmgb;->h:[Lmgh;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmgb;->h:[Lmgh;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 235
    :goto_2
    iget-object v2, p0, Lmgb;->h:[Lmgh;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 236
    iget-object v2, p0, Lmgb;->h:[Lmgh;

    aget-object v2, v2, v0

    .line 237
    if-eqz v2, :cond_9

    .line 238
    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 235
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 242
    :cond_a
    iget-object v0, p0, Lmgb;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 243
    const/16 v0, 0x20

    iget-object v2, p0, Lmgb;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 245
    :cond_b
    iget-object v0, p0, Lmgb;->j:[Lmgg;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmgb;->j:[Lmgg;

    array-length v0, v0

    if-lez v0, :cond_d

    .line 246
    :goto_3
    iget-object v0, p0, Lmgb;->j:[Lmgg;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 247
    iget-object v0, p0, Lmgb;->j:[Lmgg;

    aget-object v0, v0, v1

    .line 248
    if-eqz v0, :cond_c

    .line 249
    const/16 v2, 0x21

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 246
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 253
    :cond_d
    iget-object v0, p0, Lmgb;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 254
    const/16 v0, 0x22

    iget-object v1, p0, Lmgb;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 256
    :cond_e
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 257
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 262
    iget-object v1, p0, Lmgb;->a:Lmgc;

    if-eqz v1, :cond_0

    .line 263
    const/16 v1, 0x15

    iget-object v3, p0, Lmgb;->a:Lmgc;

    .line 264
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_0
    iget-object v1, p0, Lmgb;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 267
    const/16 v1, 0x19

    iget-object v3, p0, Lmgb;->b:Ljava/lang/Boolean;

    .line 268
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 268
    add-int/2addr v0, v1

    .line 270
    :cond_1
    iget-object v1, p0, Lmgb;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 271
    const/16 v1, 0x1a

    iget-object v3, p0, Lmgb;->c:Ljava/lang/Boolean;

    .line 272
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 272
    add-int/2addr v0, v1

    .line 274
    :cond_2
    iget-object v1, p0, Lmgb;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 275
    const/16 v1, 0x1b

    iget-object v3, p0, Lmgb;->d:Ljava/lang/String;

    .line 276
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_3
    iget-object v1, p0, Lmgb;->e:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmgb;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 281
    :goto_0
    iget-object v5, p0, Lmgb;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 282
    iget-object v5, p0, Lmgb;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 283
    if-eqz v5, :cond_4

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 286
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 281
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_5
    add-int/2addr v0, v3

    .line 290
    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    .line 292
    :cond_6
    iget-object v1, p0, Lmgb;->f:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmgb;->f:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v3, v2

    move v4, v2

    .line 295
    :goto_1
    iget-object v5, p0, Lmgb;->f:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 296
    iget-object v5, p0, Lmgb;->f:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 297
    if-eqz v5, :cond_7

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 300
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 295
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_8
    add-int/2addr v0, v3

    .line 304
    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    .line 306
    :cond_9
    iget-object v1, p0, Lmgb;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 307
    const/16 v1, 0x1e

    iget-object v3, p0, Lmgb;->g:Ljava/lang/Boolean;

    .line 308
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 308
    add-int/2addr v0, v1

    .line 310
    :cond_a
    iget-object v1, p0, Lmgb;->h:[Lmgh;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lmgb;->h:[Lmgh;

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v0

    move v0, v2

    .line 311
    :goto_2
    iget-object v3, p0, Lmgb;->h:[Lmgh;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 312
    iget-object v3, p0, Lmgb;->h:[Lmgh;

    aget-object v3, v3, v0

    .line 313
    if-eqz v3, :cond_b

    .line 314
    const/16 v4, 0x1f

    .line 315
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v1, v3

    .line 311
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    move v0, v1

    .line 319
    :cond_d
    iget-object v1, p0, Lmgb;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 320
    const/16 v1, 0x20

    iget-object v3, p0, Lmgb;->i:Ljava/lang/Boolean;

    .line 321
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 321
    add-int/2addr v0, v1

    .line 323
    :cond_e
    iget-object v1, p0, Lmgb;->j:[Lmgg;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmgb;->j:[Lmgg;

    array-length v1, v1

    if-lez v1, :cond_10

    .line 324
    :goto_3
    iget-object v1, p0, Lmgb;->j:[Lmgg;

    array-length v1, v1

    if-ge v2, v1, :cond_10

    .line 325
    iget-object v1, p0, Lmgb;->j:[Lmgg;

    aget-object v1, v1, v2

    .line 326
    if-eqz v1, :cond_f

    .line 327
    const/16 v3, 0x21

    .line 328
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 332
    :cond_10
    iget-object v1, p0, Lmgb;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 333
    const/16 v1, 0x22

    iget-object v2, p0, Lmgb;->k:Ljava/lang/Boolean;

    .line 334
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 334
    add-int/2addr v0, v1

    .line 336
    :cond_11
    return v0
.end method
