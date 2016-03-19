.class public final Lklw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1283
    iput-object v0, p0, Lklw;->a:Ljava/lang/Integer;

    .line 1284
    iput-object v0, p0, Lklw;->b:Ljava/lang/Integer;

    .line 1285
    iput-object v0, p0, Lklw;->c:Ljava/lang/Integer;

    .line 1286
    iput-object v0, p0, Lklw;->d:Ljava/lang/Boolean;

    .line 1287
    iput-object v0, p0, Lklw;->eD:Llyd;

    .line 1288
    const/4 v0, -0x1

    iput v0, p0, Lklw;->eE:I

    .line 280
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2338
    sparse-switch v0, :sswitch_data_0

    .line 2342
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2343
    :sswitch_0
    return-object p0

    .line 2348
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2349
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2352
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklw;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2358
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2359
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2363
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklw;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2369
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lklw;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2373
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2374
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2379
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_4
        0xa8 -> :sswitch_5
    .end sparse-switch

    .line 2349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2359
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_3
        0x14 -> :sswitch_3
        0x1e -> :sswitch_3
    .end sparse-switch

    .line 2374
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lklw;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x2

    iget-object v1, p0, Lklw;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 298
    :cond_0
    iget-object v0, p0, Lklw;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x3

    iget-object v1, p0, Lklw;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 301
    :cond_1
    iget-object v0, p0, Lklw;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 302
    const/4 v0, 0x4

    iget-object v1, p0, Lklw;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 304
    :cond_2
    iget-object v0, p0, Lklw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 305
    const/16 v0, 0x15

    iget-object v1, p0, Lklw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 307
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 308
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 313
    iget-object v1, p0, Lklw;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x2

    iget-object v2, p0, Lklw;->b:Ljava/lang/Integer;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_0
    iget-object v1, p0, Lklw;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 318
    const/4 v1, 0x3

    iget-object v2, p0, Lklw;->c:Ljava/lang/Integer;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_1
    iget-object v1, p0, Lklw;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 322
    const/4 v1, 0x4

    iget-object v2, p0, Lklw;->d:Ljava/lang/Boolean;

    .line 323
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 323
    add-int/2addr v0, v1

    .line 325
    :cond_2
    iget-object v1, p0, Lklw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 326
    const/16 v1, 0x15

    iget-object v2, p0, Lklw;->a:Ljava/lang/Integer;

    .line 327
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_3
    return v0
.end method
