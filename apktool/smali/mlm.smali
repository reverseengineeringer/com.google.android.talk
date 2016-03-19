.class public final Lmlm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:[Lmln;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1278
    iput-object v1, p0, Lmlm;->a:Ljava/lang/String;

    .line 1279
    iput-object v1, p0, Lmlm;->b:Ljava/lang/Integer;

    .line 1280
    invoke-static {}, Lmln;->d()[Lmln;

    move-result-object v0

    iput-object v0, p0, Lmlm;->c:[Lmln;

    .line 1281
    iput-object v1, p0, Lmlm;->eD:Llyd;

    .line 1282
    const/4 v0, -0x1

    iput v0, p0, Lmlm;->eE:I

    .line 275
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1335
    sparse-switch v0, :sswitch_data_0

    .line 1339
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    :sswitch_0
    return-object p0

    .line 1345
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlm;->a:Ljava/lang/String;

    goto :goto_0

    .line 1349
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlm;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1353
    :sswitch_3
    const/16 v0, 0x1a

    .line 1354
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1355
    iget-object v0, p0, Lmlm;->c:[Lmln;

    if-nez v0, :cond_2

    move v0, v1

    .line 1356
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmln;

    .line 1358
    if-eqz v0, :cond_1

    .line 1359
    iget-object v3, p0, Lmlm;->c:[Lmln;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1362
    new-instance v3, Lmln;

    invoke-direct {v3}, Lmln;-><init>()V

    aput-object v3, v2, v0

    .line 1363
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1364
    invoke-virtual {p1}, Llxy;->a()I

    .line 1361
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1355
    :cond_2
    iget-object v0, p0, Lmlm;->c:[Lmln;

    array-length v0, v0

    goto :goto_1

    .line 1367
    :cond_3
    new-instance v3, Lmln;

    invoke-direct {v3}, Lmln;-><init>()V

    aput-object v3, v2, v0

    .line 1368
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1369
    iput-object v2, p0, Lmlm;->c:[Lmln;

    goto :goto_0

    .line 1335
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lmlm;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    iget-object v1, p0, Lmlm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lmlm;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 293
    const/4 v0, 0x2

    iget-object v1, p0, Lmlm;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 295
    :cond_1
    iget-object v0, p0, Lmlm;->c:[Lmln;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmlm;->c:[Lmln;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 296
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlm;->c:[Lmln;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 297
    iget-object v1, p0, Lmlm;->c:[Lmln;

    aget-object v1, v1, v0

    .line 298
    if-eqz v1, :cond_2

    .line 299
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 304
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 308
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 309
    iget-object v1, p0, Lmlm;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x1

    iget-object v2, p0, Lmlm;->a:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_0
    iget-object v1, p0, Lmlm;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x2

    iget-object v2, p0, Lmlm;->b:Ljava/lang/Integer;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_1
    iget-object v1, p0, Lmlm;->c:[Lmln;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmlm;->c:[Lmln;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 318
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmlm;->c:[Lmln;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 319
    iget-object v2, p0, Lmlm;->c:[Lmln;

    aget-object v2, v2, v0

    .line 320
    if-eqz v2, :cond_2

    .line 321
    const/4 v3, 0x3

    .line 322
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 326
    :cond_4
    return v0
.end method
