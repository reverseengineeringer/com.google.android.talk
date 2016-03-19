.class public final Ljcr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljaj;

.field public b:Ljaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9376
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10381
    iput-object v0, p0, Ljcr;->a:Ljaj;

    .line 10382
    iput-object v0, p0, Ljcr;->b:Ljaj;

    .line 10383
    iput-object v0, p0, Ljcr;->eD:Llyd;

    .line 10384
    const/4 v0, -0x1

    iput v0, p0, Ljcr;->eE:I

    .line 9378
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10419
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10420
    sparse-switch v0, :sswitch_data_0

    .line 10424
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10425
    :sswitch_0
    return-object p0

    .line 10430
    :sswitch_1
    iget-object v0, p0, Ljcr;->a:Ljaj;

    if-nez v0, :cond_1

    .line 10431
    new-instance v0, Ljaj;

    invoke-direct {v0}, Ljaj;-><init>()V

    iput-object v0, p0, Ljcr;->a:Ljaj;

    .line 10433
    :cond_1
    iget-object v0, p0, Ljcr;->a:Ljaj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10437
    :sswitch_2
    iget-object v0, p0, Ljcr;->b:Ljaj;

    if-nez v0, :cond_2

    .line 10438
    new-instance v0, Ljaj;

    invoke-direct {v0}, Ljaj;-><init>()V

    iput-object v0, p0, Ljcr;->b:Ljaj;

    .line 10440
    :cond_2
    iget-object v0, p0, Ljcr;->b:Ljaj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10420
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9391
    iget-object v0, p0, Ljcr;->a:Ljaj;

    if-eqz v0, :cond_0

    .line 9392
    const/4 v0, 0x1

    iget-object v1, p0, Ljcr;->a:Ljaj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9394
    :cond_0
    iget-object v0, p0, Ljcr;->b:Ljaj;

    if-eqz v0, :cond_1

    .line 9395
    const/4 v0, 0x2

    iget-object v1, p0, Ljcr;->b:Ljaj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9397
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9398
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9402
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9403
    iget-object v1, p0, Ljcr;->a:Ljaj;

    if-eqz v1, :cond_0

    .line 9404
    const/4 v1, 0x1

    iget-object v2, p0, Ljcr;->a:Ljaj;

    .line 9405
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9407
    :cond_0
    iget-object v1, p0, Ljcr;->b:Ljaj;

    if-eqz v1, :cond_1

    .line 9408
    const/4 v1, 0x2

    iget-object v2, p0, Ljcr;->b:Ljaj;

    .line 9409
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9411
    :cond_1
    return v0
.end method
