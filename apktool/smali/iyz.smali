.class public final Liyz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:[Liza;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1190
    iput-object v1, p0, Liyz;->a:Ljava/lang/Integer;

    .line 1191
    iput-object v1, p0, Liyz;->b:Ljava/lang/Integer;

    .line 1192
    invoke-static {}, Liza;->d()[Liza;

    move-result-object v0

    iput-object v0, p0, Liyz;->c:[Liza;

    .line 1193
    iput-object v1, p0, Liyz;->d:Ljava/lang/Boolean;

    .line 1194
    iput-object v1, p0, Liyz;->e:Ljava/lang/Integer;

    .line 1195
    iput-object v1, p0, Liyz;->f:Ljava/lang/Integer;

    .line 1196
    iput-object v1, p0, Liyz;->g:Ljava/lang/Integer;

    .line 1197
    iput-object v1, p0, Liyz;->eD:Llyd;

    .line 1198
    const/4 v0, -0x1

    iput v0, p0, Liyz;->eE:I

    .line 187
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2278
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2279
    sparse-switch v0, :sswitch_data_0

    .line 2283
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2284
    :sswitch_0
    return-object p0

    .line 2289
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2290
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2297
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liyz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2303
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2304
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 2311
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liyz;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2317
    :sswitch_5
    const/16 v0, 0x1a

    .line 2318
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2319
    iget-object v0, p0, Liyz;->c:[Liza;

    if-nez v0, :cond_2

    move v0, v1

    .line 2320
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Liza;

    .line 2322
    if-eqz v0, :cond_1

    .line 2323
    iget-object v3, p0, Liyz;->c:[Liza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2325
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2326
    new-instance v3, Liza;

    invoke-direct {v3}, Liza;-><init>()V

    aput-object v3, v2, v0

    .line 2327
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2328
    invoke-virtual {p1}, Llxy;->a()I

    .line 2325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2319
    :cond_2
    iget-object v0, p0, Liyz;->c:[Liza;

    array-length v0, v0

    goto :goto_1

    .line 2331
    :cond_3
    new-instance v3, Liza;

    invoke-direct {v3}, Liza;-><init>()V

    aput-object v3, v2, v0

    .line 2332
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2333
    iput-object v2, p0, Liyz;->c:[Liza;

    goto :goto_0

    .line 2337
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liyz;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2341
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2342
    sparse-switch v0, :sswitch_data_3

    goto :goto_0

    .line 2349
    :sswitch_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liyz;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2355
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2356
    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    .line 2363
    :sswitch_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liyz;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2369
    :sswitch_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2370
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2375
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liyz;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2279
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_5
        0x20 -> :sswitch_6
        0x28 -> :sswitch_7
        0x30 -> :sswitch_9
        0x38 -> :sswitch_b
    .end sparse-switch

    .line 2290
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
    .end sparse-switch

    .line 2304
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_4
        0x14 -> :sswitch_4
        0x1e -> :sswitch_4
        0x28 -> :sswitch_4
        0x32 -> :sswitch_4
    .end sparse-switch

    .line 2342
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_8
        0xa -> :sswitch_8
        0x14 -> :sswitch_8
        0x1e -> :sswitch_8
        0x28 -> :sswitch_8
        0x32 -> :sswitch_8
    .end sparse-switch

    .line 2356
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_a
        0x14 -> :sswitch_a
        0x1e -> :sswitch_a
        0x28 -> :sswitch_a
        0x32 -> :sswitch_a
    .end sparse-switch

    .line 2370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Liyz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iget-object v1, p0, Liyz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 208
    :cond_0
    iget-object v0, p0, Liyz;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x2

    iget-object v1, p0, Liyz;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 211
    :cond_1
    iget-object v0, p0, Liyz;->c:[Liza;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liyz;->c:[Liza;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 212
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Liyz;->c:[Liza;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 213
    iget-object v1, p0, Liyz;->c:[Liza;

    aget-object v1, v1, v0

    .line 214
    if-eqz v1, :cond_2

    .line 215
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Liyz;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 220
    const/4 v0, 0x4

    iget-object v1, p0, Liyz;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 222
    :cond_4
    iget-object v0, p0, Liyz;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 223
    const/4 v0, 0x5

    iget-object v1, p0, Liyz;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 225
    :cond_5
    iget-object v0, p0, Liyz;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 226
    const/4 v0, 0x6

    iget-object v1, p0, Liyz;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 228
    :cond_6
    iget-object v0, p0, Liyz;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 229
    const/4 v0, 0x7

    iget-object v1, p0, Liyz;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 231
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 232
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 236
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 237
    iget-object v1, p0, Liyz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    iget-object v2, p0, Liyz;->a:Ljava/lang/Integer;

    .line 239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_0
    iget-object v1, p0, Liyz;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x2

    iget-object v2, p0, Liyz;->b:Ljava/lang/Integer;

    .line 243
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_1
    iget-object v1, p0, Liyz;->c:[Liza;

    if-eqz v1, :cond_4

    iget-object v1, p0, Liyz;->c:[Liza;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 246
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Liyz;->c:[Liza;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 247
    iget-object v2, p0, Liyz;->c:[Liza;

    aget-object v2, v2, v0

    .line 248
    if-eqz v2, :cond_2

    .line 249
    const/4 v3, 0x3

    .line 250
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 254
    :cond_4
    iget-object v1, p0, Liyz;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 255
    const/4 v1, 0x4

    iget-object v2, p0, Liyz;->d:Ljava/lang/Boolean;

    .line 256
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 256
    add-int/2addr v0, v1

    .line 258
    :cond_5
    iget-object v1, p0, Liyz;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 259
    const/4 v1, 0x5

    iget-object v2, p0, Liyz;->e:Ljava/lang/Integer;

    .line 260
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_6
    iget-object v1, p0, Liyz;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 263
    const/4 v1, 0x6

    iget-object v2, p0, Liyz;->f:Ljava/lang/Integer;

    .line 264
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_7
    iget-object v1, p0, Liyz;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 267
    const/4 v1, 0x7

    iget-object v2, p0, Liyz;->g:Ljava/lang/Integer;

    .line 268
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_8
    return v0
.end method
