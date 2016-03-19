.class public final Ljcx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljcy;

.field public c:I

.field public d:Ljcw;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Llyb;-><init>()V

    .line 281
    iput-object v1, p0, Ljcx;->a:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Ljcx;->b:Ljcy;

    .line 283
    const/high16 v0, -0x80000000

    iput v0, p0, Ljcx;->c:I

    .line 284
    iput-object v1, p0, Ljcx;->d:Ljcw;

    .line 285
    iput-object v1, p0, Ljcx;->e:Ljava/lang/Integer;

    .line 286
    iput-object v1, p0, Ljcx;->eD:Llyd;

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Ljcx;->eE:I

    .line 288
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1343
    sparse-switch v0, :sswitch_data_0

    .line 1347
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    :sswitch_0
    return-object p0

    .line 1353
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcx;->a:Ljava/lang/String;

    goto :goto_0

    .line 1357
    :sswitch_2
    iget-object v0, p0, Ljcx;->b:Ljcy;

    if-nez v0, :cond_1

    .line 1358
    new-instance v0, Ljcy;

    invoke-direct {v0}, Ljcy;-><init>()V

    iput-object v0, p0, Ljcx;->b:Ljcy;

    .line 1360
    :cond_1
    iget-object v0, p0, Ljcx;->b:Ljcy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1364
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1365
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1368
    :pswitch_0
    iput v0, p0, Ljcx;->c:I

    goto :goto_0

    .line 1374
    :sswitch_4
    iget-object v0, p0, Ljcx;->d:Ljcw;

    if-nez v0, :cond_2

    .line 1375
    new-instance v0, Ljcw;

    invoke-direct {v0}, Ljcw;-><init>()V

    iput-object v0, p0, Ljcx;->d:Ljcw;

    .line 1377
    :cond_2
    iget-object v0, p0, Ljcx;->d:Ljcw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1381
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcx;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1343
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 1365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Ljcx;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iget-object v1, p0, Ljcx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 296
    :cond_0
    iget-object v0, p0, Ljcx;->b:Ljcy;

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x2

    iget-object v1, p0, Ljcx;->b:Ljcy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 299
    :cond_1
    iget v0, p0, Ljcx;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 300
    const/4 v0, 0x3

    iget v1, p0, Ljcx;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 302
    :cond_2
    iget-object v0, p0, Ljcx;->d:Ljcw;

    if-eqz v0, :cond_3

    .line 303
    const/4 v0, 0x4

    iget-object v1, p0, Ljcx;->d:Ljcw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 305
    :cond_3
    iget-object v0, p0, Ljcx;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 306
    const/4 v0, 0x5

    iget-object v1, p0, Ljcx;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 308
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 309
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 314
    iget-object v1, p0, Ljcx;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    iget-object v2, p0, Ljcx;->a:Ljava/lang/String;

    .line 316
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_0
    iget-object v1, p0, Ljcx;->b:Ljcy;

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x2

    iget-object v2, p0, Ljcx;->b:Ljcy;

    .line 320
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_1
    iget v1, p0, Ljcx;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 323
    const/4 v1, 0x3

    iget v2, p0, Ljcx;->c:I

    .line 324
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_2
    iget-object v1, p0, Ljcx;->d:Ljcw;

    if-eqz v1, :cond_3

    .line 327
    const/4 v1, 0x4

    iget-object v2, p0, Ljcx;->d:Ljcw;

    .line 328
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_3
    iget-object v1, p0, Ljcx;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 331
    const/4 v1, 0x5

    iget-object v2, p0, Ljcx;->e:Ljava/lang/Integer;

    .line 332
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_4
    return v0
.end method
