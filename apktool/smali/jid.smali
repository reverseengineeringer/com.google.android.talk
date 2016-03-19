.class public final Ljid;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljid;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljpo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1311
    iput-object v0, p0, Ljid;->a:Ljava/lang/Integer;

    .line 1312
    iput-object v0, p0, Ljid;->b:Ljpo;

    .line 1313
    iput-object v0, p0, Ljid;->eD:Llyd;

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Ljid;->eE:I

    .line 308
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1350
    sparse-switch v0, :sswitch_data_0

    .line 1354
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    :sswitch_0
    return-object p0

    .line 1360
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1361
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1367
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljid;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1373
    :sswitch_2
    iget-object v0, p0, Ljid;->b:Ljpo;

    if-nez v0, :cond_1

    .line 1374
    new-instance v0, Ljpo;

    invoke-direct {v0}, Ljpo;-><init>()V

    iput-object v0, p0, Ljid;->b:Ljpo;

    .line 1376
    :cond_1
    iget-object v0, p0, Ljid;->b:Ljpo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1350
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Ljid;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iget-object v1, p0, Ljid;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 324
    :cond_0
    iget-object v0, p0, Ljid;->b:Ljpo;

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x2

    iget-object v1, p0, Ljid;->b:Ljpo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 327
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 328
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 333
    iget-object v1, p0, Ljid;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x1

    iget-object v2, p0, Ljid;->a:Ljava/lang/Integer;

    .line 335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_0
    iget-object v1, p0, Ljid;->b:Ljpo;

    if-eqz v1, :cond_1

    .line 338
    const/4 v1, 0x2

    iget-object v2, p0, Ljid;->b:Ljpo;

    .line 339
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_1
    return v0
.end method
