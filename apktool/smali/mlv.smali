.class public final Lmlv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1309
    iput-object v0, p0, Lmlv;->a:Ljava/lang/String;

    .line 1310
    iput-object v0, p0, Lmlv;->b:Ljava/lang/String;

    .line 1311
    iput-object v0, p0, Lmlv;->c:Ljava/lang/String;

    .line 1312
    iput-object v0, p0, Lmlv;->d:Ljava/lang/String;

    .line 1313
    iput-object v0, p0, Lmlv;->e:Ljava/lang/String;

    .line 1314
    iput-object v0, p0, Lmlv;->eD:Llyd;

    .line 1315
    const/4 v0, -0x1

    iput v0, p0, Lmlv;->eE:I

    .line 306
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1372
    sparse-switch v0, :sswitch_data_0

    .line 1376
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    :sswitch_0
    return-object p0

    .line 1382
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlv;->a:Ljava/lang/String;

    goto :goto_0

    .line 1386
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlv;->b:Ljava/lang/String;

    goto :goto_0

    .line 1390
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlv;->c:Ljava/lang/String;

    goto :goto_0

    .line 1394
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlv;->d:Ljava/lang/String;

    goto :goto_0

    .line 1398
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlv;->e:Ljava/lang/String;

    goto :goto_0

    .line 1372
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lmlv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    iget-object v1, p0, Lmlv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lmlv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x2

    iget-object v1, p0, Lmlv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lmlv;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 329
    const/4 v0, 0x3

    iget-object v1, p0, Lmlv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 331
    :cond_2
    iget-object v0, p0, Lmlv;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 332
    const/4 v0, 0x4

    iget-object v1, p0, Lmlv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 334
    :cond_3
    iget-object v0, p0, Lmlv;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 335
    const/4 v0, 0x5

    iget-object v1, p0, Lmlv;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 337
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 338
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 343
    iget-object v1, p0, Lmlv;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x1

    iget-object v2, p0, Lmlv;->a:Ljava/lang/String;

    .line 345
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_0
    iget-object v1, p0, Lmlv;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 348
    const/4 v1, 0x2

    iget-object v2, p0, Lmlv;->b:Ljava/lang/String;

    .line 349
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_1
    iget-object v1, p0, Lmlv;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 352
    const/4 v1, 0x3

    iget-object v2, p0, Lmlv;->c:Ljava/lang/String;

    .line 353
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_2
    iget-object v1, p0, Lmlv;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 356
    const/4 v1, 0x4

    iget-object v2, p0, Lmlv;->d:Ljava/lang/String;

    .line 357
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_3
    iget-object v1, p0, Lmlv;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 360
    const/4 v1, 0x5

    iget-object v2, p0, Lmlv;->e:Ljava/lang/String;

    .line 361
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_4
    return v0
.end method
