.class public final Lmlb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmlc;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1233
    invoke-static {}, Lmlc;->d()[Lmlc;

    move-result-object v0

    iput-object v0, p0, Lmlb;->a:[Lmlc;

    .line 1234
    iput-object v1, p0, Lmlb;->b:Ljava/lang/Boolean;

    .line 1235
    iput-object v1, p0, Lmlb;->c:Ljava/lang/Boolean;

    .line 1236
    iput-object v1, p0, Lmlb;->d:Ljava/lang/Integer;

    .line 1237
    iput-object v1, p0, Lmlb;->eD:Llyd;

    .line 1238
    const/4 v0, -0x1

    iput v0, p0, Lmlb;->eE:I

    .line 230
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3298
    sparse-switch v0, :sswitch_data_0

    .line 3302
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3303
    :sswitch_0
    return-object p0

    .line 3308
    :sswitch_1
    const/16 v0, 0xa

    .line 3309
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3310
    iget-object v0, p0, Lmlb;->a:[Lmlc;

    if-nez v0, :cond_2

    move v0, v1

    .line 3311
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmlc;

    .line 3313
    if-eqz v0, :cond_1

    .line 3314
    iget-object v3, p0, Lmlb;->a:[Lmlc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3316
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3317
    new-instance v3, Lmlc;

    invoke-direct {v3}, Lmlc;-><init>()V

    aput-object v3, v2, v0

    .line 3318
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3319
    invoke-virtual {p1}, Llxy;->a()I

    .line 3316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3310
    :cond_2
    iget-object v0, p0, Lmlb;->a:[Lmlc;

    array-length v0, v0

    goto :goto_1

    .line 3322
    :cond_3
    new-instance v3, Lmlc;

    invoke-direct {v3}, Lmlc;-><init>()V

    aput-object v3, v2, v0

    .line 3323
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3324
    iput-object v2, p0, Lmlb;->a:[Lmlc;

    goto :goto_0

    .line 3328
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmlb;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3332
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmlb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3336
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlb;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3298
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lmlb;->a:[Lmlc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlb;->a:[Lmlc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlb;->a:[Lmlc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lmlb;->a:[Lmlc;

    aget-object v1, v1, v0

    .line 248
    if-eqz v1, :cond_0

    .line 249
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lmlb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x2

    iget-object v1, p0, Lmlb;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 256
    :cond_2
    iget-object v0, p0, Lmlb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 257
    const/4 v0, 0x3

    iget-object v1, p0, Lmlb;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 259
    :cond_3
    iget-object v0, p0, Lmlb;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 260
    const/4 v0, 0x4

    iget-object v1, p0, Lmlb;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 262
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 263
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 268
    iget-object v0, p0, Lmlb;->a:[Lmlc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlb;->a:[Lmlc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmlb;->a:[Lmlc;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 270
    iget-object v2, p0, Lmlb;->a:[Lmlc;

    aget-object v2, v2, v0

    .line 271
    if-eqz v2, :cond_0

    .line 272
    const/4 v3, 0x1

    .line 273
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lmlb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 278
    const/4 v0, 0x2

    iget-object v2, p0, Lmlb;->b:Ljava/lang/Boolean;

    .line 279
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 279
    add-int/2addr v1, v0

    .line 281
    :cond_2
    iget-object v0, p0, Lmlb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 282
    const/4 v0, 0x3

    iget-object v2, p0, Lmlb;->c:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 283
    add-int/2addr v1, v0

    .line 285
    :cond_3
    iget-object v0, p0, Lmlb;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 286
    const/4 v0, 0x4

    iget-object v2, p0, Lmlb;->d:Ljava/lang/Integer;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 289
    :cond_4
    return v1
.end method
