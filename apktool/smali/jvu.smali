.class public final Ljvu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljvo;

.field public b:[J

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4174
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5179
    invoke-static {}, Ljvo;->d()[Ljvo;

    move-result-object v0

    iput-object v0, p0, Ljvu;->a:[Ljvo;

    .line 5180
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Ljvu;->b:[J

    .line 5181
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    .line 5182
    const/4 v0, 0x0

    iput-object v0, p0, Ljvu;->eD:Llyd;

    .line 5183
    const/4 v0, -0x1

    iput v0, p0, Ljvu;->eE:I

    .line 4176
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 6258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6259
    sparse-switch v0, :sswitch_data_0

    .line 6263
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6264
    :sswitch_0
    return-object p0

    .line 6269
    :sswitch_1
    const/16 v0, 0xa

    .line 6270
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6271
    iget-object v0, p0, Ljvu;->a:[Ljvo;

    if-nez v0, :cond_2

    move v0, v1

    .line 6272
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljvo;

    .line 6274
    if-eqz v0, :cond_1

    .line 6275
    iget-object v3, p0, Ljvu;->a:[Ljvo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6277
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6278
    new-instance v3, Ljvo;

    invoke-direct {v3}, Ljvo;-><init>()V

    aput-object v3, v2, v0

    .line 6279
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6280
    invoke-virtual {p1}, Llxy;->a()I

    .line 6277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6271
    :cond_2
    iget-object v0, p0, Ljvu;->a:[Ljvo;

    array-length v0, v0

    goto :goto_1

    .line 6283
    :cond_3
    new-instance v3, Ljvo;

    invoke-direct {v3}, Ljvo;-><init>()V

    aput-object v3, v2, v0

    .line 6284
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6285
    iput-object v2, p0, Ljvu;->a:[Ljvo;

    goto :goto_0

    .line 6289
    :sswitch_2
    const/16 v0, 0x10

    .line 6290
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6291
    iget-object v0, p0, Ljvu;->b:[J

    if-nez v0, :cond_5

    move v0, v1

    .line 6292
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 6293
    if-eqz v0, :cond_4

    .line 6294
    iget-object v3, p0, Ljvu;->b:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6296
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6297
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 6298
    invoke-virtual {p1}, Llxy;->a()I

    .line 6296
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6291
    :cond_5
    iget-object v0, p0, Ljvu;->b:[J

    array-length v0, v0

    goto :goto_3

    .line 6301
    :cond_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 6302
    iput-object v2, p0, Ljvu;->b:[J

    goto :goto_0

    .line 6306
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 6307
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 6310
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 6311
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 6312
    invoke-virtual {p1}, Llxy;->e()J

    .line 6313
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6315
    :cond_7
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 6316
    iget-object v2, p0, Ljvu;->b:[J

    if-nez v2, :cond_9

    move v2, v1

    .line 6317
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 6318
    if-eqz v2, :cond_8

    .line 6319
    iget-object v4, p0, Ljvu;->b:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6321
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 6322
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 6321
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6316
    :cond_9
    iget-object v2, p0, Ljvu;->b:[J

    array-length v2, v2

    goto :goto_6

    .line 6324
    :cond_a
    iput-object v0, p0, Ljvu;->b:[J

    .line 6325
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 6329
    :sswitch_4
    const/16 v0, 0x1a

    .line 6330
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6331
    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    .line 6332
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6333
    if-eqz v0, :cond_b

    .line 6334
    iget-object v3, p0, Ljvu;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6336
    :cond_b
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 6337
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6338
    invoke-virtual {p1}, Llxy;->a()I

    .line 6336
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6331
    :cond_c
    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_8

    .line 6341
    :cond_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6342
    iput-object v2, p0, Ljvu;->c:[Ljava/lang/String;

    goto/16 :goto_0

    .line 6259
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4190
    iget-object v0, p0, Ljvu;->a:[Ljvo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvu;->a:[Ljvo;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 4191
    :goto_0
    iget-object v2, p0, Ljvu;->a:[Ljvo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4192
    iget-object v2, p0, Ljvu;->a:[Ljvo;

    aget-object v2, v2, v0

    .line 4193
    if-eqz v2, :cond_0

    .line 4194
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 4191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4198
    :cond_1
    iget-object v0, p0, Ljvu;->b:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljvu;->b:[J

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 4199
    :goto_1
    iget-object v2, p0, Ljvu;->b:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4200
    const/4 v2, 0x2

    iget-object v3, p0, Ljvu;->b:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Llxz;->b(IJ)V

    .line 4199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4203
    :cond_2
    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4204
    :goto_2
    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 4205
    iget-object v0, p0, Ljvu;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 4206
    if-eqz v0, :cond_3

    .line 4207
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 4204
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4211
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4212
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4216
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4217
    iget-object v2, p0, Ljvu;->a:[Ljvo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljvu;->a:[Ljvo;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 4218
    :goto_0
    iget-object v3, p0, Ljvu;->a:[Ljvo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 4219
    iget-object v3, p0, Ljvu;->a:[Ljvo;

    aget-object v3, v3, v0

    .line 4220
    if-eqz v3, :cond_0

    .line 4221
    const/4 v4, 0x1

    .line 4222
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4226
    :cond_2
    iget-object v2, p0, Ljvu;->b:[J

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljvu;->b:[J

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 4228
    :goto_1
    iget-object v4, p0, Ljvu;->b:[J

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 4229
    iget-object v4, p0, Ljvu;->b:[J

    aget-wide v4, v4, v2

    .line 5765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v4

    .line 4231
    add-int/2addr v3, v4

    .line 4228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4233
    :cond_3
    add-int/2addr v0, v3

    .line 4234
    iget-object v2, p0, Ljvu;->b:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4236
    :cond_4
    iget-object v2, p0, Ljvu;->c:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljvu;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 4239
    :goto_2
    iget-object v4, p0, Ljvu;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 4240
    iget-object v4, p0, Ljvu;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 4241
    if-eqz v4, :cond_5

    .line 4242
    add-int/lit8 v3, v3, 0x1

    .line 4244
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4239
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4247
    :cond_6
    add-int/2addr v0, v2

    .line 4248
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 4250
    :cond_7
    return v0
.end method
