.class public final Lkce;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkce;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23395
    invoke-direct {p0}, Llyb;-><init>()V

    .line 24400
    iput-object v0, p0, Lkce;->requestHeader:Lkdo;

    .line 24401
    iput-object v0, p0, Lkce;->a:Ljxw;

    .line 24402
    iput-object v0, p0, Lkce;->b:Ljava/lang/Integer;

    .line 24403
    iput-object v0, p0, Lkce;->c:Ljava/lang/Long;

    .line 24404
    iput-object v0, p0, Lkce;->eD:Llyd;

    .line 24405
    const/4 v0, -0x1

    iput v0, p0, Lkce;->eE:I

    .line 23397
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 24454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 24455
    sparse-switch v0, :sswitch_data_0

    .line 24459
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24460
    :sswitch_0
    return-object p0

    .line 24465
    :sswitch_1
    iget-object v0, p0, Lkce;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 24466
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkce;->requestHeader:Lkdo;

    .line 24468
    :cond_1
    iget-object v0, p0, Lkce;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24472
    :sswitch_2
    iget-object v0, p0, Lkce;->a:Ljxw;

    if-nez v0, :cond_2

    .line 24473
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkce;->a:Ljxw;

    .line 24475
    :cond_2
    iget-object v0, p0, Lkce;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24479
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 24480
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 24484
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkce;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 24490
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkce;->c:Ljava/lang/Long;

    goto :goto_0

    .line 24455
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 24480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 23412
    iget-object v0, p0, Lkce;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 23413
    const/4 v0, 0x1

    iget-object v1, p0, Lkce;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23415
    :cond_0
    iget-object v0, p0, Lkce;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 23416
    const/4 v0, 0x2

    iget-object v1, p0, Lkce;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23418
    :cond_1
    iget-object v0, p0, Lkce;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 23419
    const/4 v0, 0x3

    iget-object v1, p0, Lkce;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 23421
    :cond_2
    iget-object v0, p0, Lkce;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 23422
    const/4 v0, 0x4

    iget-object v1, p0, Lkce;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 23424
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 23425
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 23429
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 23430
    iget-object v1, p0, Lkce;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 23431
    const/4 v1, 0x1

    iget-object v2, p0, Lkce;->requestHeader:Lkdo;

    .line 23432
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23434
    :cond_0
    iget-object v1, p0, Lkce;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 23435
    const/4 v1, 0x2

    iget-object v2, p0, Lkce;->a:Ljxw;

    .line 23436
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23438
    :cond_1
    iget-object v1, p0, Lkce;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 23439
    const/4 v1, 0x3

    iget-object v2, p0, Lkce;->b:Ljava/lang/Integer;

    .line 23440
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23442
    :cond_2
    iget-object v1, p0, Lkce;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 23443
    const/4 v1, 0x4

    iget-object v2, p0, Lkce;->c:Ljava/lang/Long;

    .line 23444
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23446
    :cond_3
    return v0
.end method
