.class public final Ljqn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0}, Llyb;-><init>()V

    .line 317
    iput-object v0, p0, Ljqn;->a:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Ljqn;->b:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Ljqn;->c:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Ljqn;->d:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Ljqn;->e:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Ljqn;->f:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Ljqn;->eD:Llyd;

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Ljqn;->eE:I

    .line 325
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1387
    sparse-switch v0, :sswitch_data_0

    .line 1391
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    :sswitch_0
    return-object p0

    .line 1397
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1401
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->b:Ljava/lang/String;

    goto :goto_0

    .line 1405
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->c:Ljava/lang/String;

    goto :goto_0

    .line 1409
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->d:Ljava/lang/String;

    goto :goto_0

    .line 1413
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->e:Ljava/lang/String;

    goto :goto_0

    .line 1417
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqn;->f:Ljava/lang/String;

    goto :goto_0

    .line 1387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Ljqn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iget-object v1, p0, Ljqn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 333
    :cond_0
    iget-object v0, p0, Ljqn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    const/4 v0, 0x2

    iget-object v1, p0, Ljqn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 336
    :cond_1
    iget-object v0, p0, Ljqn;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 337
    const/4 v0, 0x3

    iget-object v1, p0, Ljqn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 339
    :cond_2
    iget-object v0, p0, Ljqn;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 340
    const/4 v0, 0x4

    iget-object v1, p0, Ljqn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 342
    :cond_3
    iget-object v0, p0, Ljqn;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 343
    const/4 v0, 0x5

    iget-object v1, p0, Ljqn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 345
    :cond_4
    iget-object v0, p0, Ljqn;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 346
    const/4 v0, 0x6

    iget-object v1, p0, Ljqn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 348
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 349
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 353
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 354
    iget-object v1, p0, Ljqn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x1

    iget-object v2, p0, Ljqn;->a:Ljava/lang/String;

    .line 356
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_0
    iget-object v1, p0, Ljqn;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 359
    const/4 v1, 0x2

    iget-object v2, p0, Ljqn;->b:Ljava/lang/String;

    .line 360
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_1
    iget-object v1, p0, Ljqn;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 363
    const/4 v1, 0x3

    iget-object v2, p0, Ljqn;->c:Ljava/lang/String;

    .line 364
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_2
    iget-object v1, p0, Ljqn;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 367
    const/4 v1, 0x4

    iget-object v2, p0, Ljqn;->d:Ljava/lang/String;

    .line 368
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_3
    iget-object v1, p0, Ljqn;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 371
    const/4 v1, 0x5

    iget-object v2, p0, Ljqn;->e:Ljava/lang/String;

    .line 372
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_4
    iget-object v1, p0, Ljqn;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 375
    const/4 v1, 0x6

    iget-object v2, p0, Ljqn;->f:Ljava/lang/String;

    .line 376
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_5
    return v0
.end method
