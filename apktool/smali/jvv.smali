.class public final Ljvv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile l:[Ljvv;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1205
    iput-object v1, p0, Ljvv;->a:Ljava/lang/String;

    .line 1206
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljvv;->b:[I

    .line 1207
    iput-object v1, p0, Ljvv;->c:Ljava/lang/String;

    .line 1208
    iput-object v1, p0, Ljvv;->d:Ljava/lang/String;

    .line 1209
    iput-object v1, p0, Ljvv;->e:Ljava/lang/Boolean;

    .line 1210
    iput-object v1, p0, Ljvv;->f:Ljava/lang/Boolean;

    .line 1211
    iput-object v1, p0, Ljvv;->g:Ljava/lang/Boolean;

    .line 1212
    iput-object v1, p0, Ljvv;->h:Ljava/lang/Integer;

    .line 1213
    iput-object v1, p0, Ljvv;->i:Ljava/lang/Boolean;

    .line 1214
    iput-object v1, p0, Ljvv;->j:Ljava/lang/Boolean;

    .line 1215
    iput-object v1, p0, Ljvv;->k:Ljava/lang/Boolean;

    .line 1216
    iput-object v1, p0, Ljvv;->eD:Llyd;

    .line 1217
    const/4 v0, -0x1

    iput v0, p0, Ljvv;->eE:I

    .line 202
    return-void
.end method

.method public static d()[Ljvv;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Ljvv;->l:[Ljvv;

    if-nez v0, :cond_1

    .line 155
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Ljvv;->l:[Ljvv;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [Ljvv;

    sput-object v0, Ljvv;->l:[Ljvv;

    .line 160
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    sget-object v0, Ljvv;->l:[Ljvv;

    return-object v0

    .line 160
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7323
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7324
    sparse-switch v0, :sswitch_data_0

    .line 7328
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7329
    :sswitch_0
    return-object p0

    .line 7334
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvv;->a:Ljava/lang/String;

    goto :goto_0

    .line 7338
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvv;->d:Ljava/lang/String;

    goto :goto_0

    .line 7342
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 7346
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 7350
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 7354
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvv;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 7358
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 7362
    :sswitch_8
    const/16 v0, 0x40

    .line 7363
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7364
    iget-object v0, p0, Ljvv;->b:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 7365
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 7366
    if-eqz v0, :cond_1

    .line 7367
    iget-object v3, p0, Ljvv;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7369
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7370
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 7371
    invoke-virtual {p1}, Llxy;->a()I

    .line 7369
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7364
    :cond_2
    iget-object v0, p0, Ljvv;->b:[I

    array-length v0, v0

    goto :goto_1

    .line 7374
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 7375
    iput-object v2, p0, Ljvv;->b:[I

    goto/16 :goto_0

    .line 7379
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 7380
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 7383
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 7384
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 7385
    invoke-virtual {p1}, Llxy;->f()I

    .line 7386
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7388
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 7389
    iget-object v2, p0, Ljvv;->b:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 7390
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 7391
    if-eqz v2, :cond_5

    .line 7392
    iget-object v4, p0, Ljvv;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7394
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 7395
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 7394
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7389
    :cond_6
    iget-object v2, p0, Ljvv;->b:[I

    array-length v2, v2

    goto :goto_4

    .line 7397
    :cond_7
    iput-object v0, p0, Ljvv;->b:[I

    .line 7398
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 7402
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7406
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvv;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 7410
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvv;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Ljvv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iget-object v1, p0, Ljvv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Ljvv;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x2

    iget-object v1, p0, Ljvv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 230
    :cond_1
    iget-object v0, p0, Ljvv;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 231
    const/4 v0, 0x3

    iget-object v1, p0, Ljvv;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 233
    :cond_2
    iget-object v0, p0, Ljvv;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, 0x4

    iget-object v1, p0, Ljvv;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 236
    :cond_3
    iget-object v0, p0, Ljvv;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 237
    const/4 v0, 0x5

    iget-object v1, p0, Ljvv;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 239
    :cond_4
    iget-object v0, p0, Ljvv;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 240
    const/4 v0, 0x6

    iget-object v1, p0, Ljvv;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 242
    :cond_5
    iget-object v0, p0, Ljvv;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 243
    const/4 v0, 0x7

    iget-object v1, p0, Ljvv;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 245
    :cond_6
    iget-object v0, p0, Ljvv;->b:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljvv;->b:[I

    array-length v0, v0

    if-lez v0, :cond_7

    .line 246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljvv;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 247
    const/16 v1, 0x8

    iget-object v2, p0, Ljvv;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_7
    iget-object v0, p0, Ljvv;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 251
    const/16 v0, 0x9

    iget-object v1, p0, Ljvv;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 253
    :cond_8
    iget-object v0, p0, Ljvv;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 254
    const/16 v0, 0xa

    iget-object v1, p0, Ljvv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 256
    :cond_9
    iget-object v0, p0, Ljvv;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 257
    const/16 v0, 0xb

    iget-object v1, p0, Ljvv;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 259
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 260
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 265
    iget-object v2, p0, Ljvv;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 266
    const/4 v2, 0x1

    iget-object v3, p0, Ljvv;->a:Ljava/lang/String;

    .line 267
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    :cond_0
    iget-object v2, p0, Ljvv;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 270
    const/4 v2, 0x2

    iget-object v3, p0, Ljvv;->d:Ljava/lang/String;

    .line 271
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 273
    :cond_1
    iget-object v2, p0, Ljvv;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 274
    const/4 v2, 0x3

    iget-object v3, p0, Ljvv;->e:Ljava/lang/Boolean;

    .line 275
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 275
    add-int/2addr v0, v2

    .line 277
    :cond_2
    iget-object v2, p0, Ljvv;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 278
    const/4 v2, 0x4

    iget-object v3, p0, Ljvv;->f:Ljava/lang/Boolean;

    .line 279
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 279
    add-int/2addr v0, v2

    .line 281
    :cond_3
    iget-object v2, p0, Ljvv;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 282
    const/4 v2, 0x5

    iget-object v3, p0, Ljvv;->g:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 283
    add-int/2addr v0, v2

    .line 285
    :cond_4
    iget-object v2, p0, Ljvv;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 286
    const/4 v2, 0x6

    iget-object v3, p0, Ljvv;->h:Ljava/lang/Integer;

    .line 287
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_5
    iget-object v2, p0, Ljvv;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 290
    const/4 v2, 0x7

    iget-object v3, p0, Ljvv;->i:Ljava/lang/Boolean;

    .line 291
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 291
    add-int/2addr v0, v2

    .line 293
    :cond_6
    iget-object v2, p0, Ljvv;->b:[I

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljvv;->b:[I

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    .line 295
    :goto_0
    iget-object v3, p0, Ljvv;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 296
    iget-object v3, p0, Ljvv;->b:[I

    aget v3, v3, v1

    .line 298
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_7
    add-int/2addr v0, v2

    .line 301
    iget-object v1, p0, Ljvv;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 303
    :cond_8
    iget-object v1, p0, Ljvv;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 304
    const/16 v1, 0x9

    iget-object v2, p0, Ljvv;->j:Ljava/lang/Boolean;

    .line 305
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 305
    add-int/2addr v0, v1

    .line 307
    :cond_9
    iget-object v1, p0, Ljvv;->c:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 308
    const/16 v1, 0xa

    iget-object v2, p0, Ljvv;->c:Ljava/lang/String;

    .line 309
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_a
    iget-object v1, p0, Ljvv;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 312
    const/16 v1, 0xb

    iget-object v2, p0, Ljvv;->k:Ljava/lang/Boolean;

    .line 313
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 313
    add-int/2addr v0, v1

    .line 315
    :cond_b
    return v0
.end method
