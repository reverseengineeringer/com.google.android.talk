.class public final Lkff;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkff;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkfb;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6404
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7409
    iput-object v0, p0, Lkff;->a:Lkfb;

    .line 7410
    iput-object v0, p0, Lkff;->b:Ljava/lang/String;

    .line 7411
    iput-object v0, p0, Lkff;->eD:Llyd;

    .line 7412
    const/4 v0, -0x1

    iput v0, p0, Lkff;->eE:I

    .line 6406
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 7447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7448
    sparse-switch v0, :sswitch_data_0

    .line 7452
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7453
    :sswitch_0
    return-object p0

    .line 7458
    :sswitch_1
    iget-object v0, p0, Lkff;->a:Lkfb;

    if-nez v0, :cond_1

    .line 7459
    new-instance v0, Lkfb;

    invoke-direct {v0}, Lkfb;-><init>()V

    iput-object v0, p0, Lkff;->a:Lkfb;

    .line 7461
    :cond_1
    iget-object v0, p0, Lkff;->a:Lkfb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7465
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkff;->b:Ljava/lang/String;

    goto :goto_0

    .line 7448
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
    .line 6419
    iget-object v0, p0, Lkff;->a:Lkfb;

    if-eqz v0, :cond_0

    .line 6420
    const/4 v0, 0x1

    iget-object v1, p0, Lkff;->a:Lkfb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6422
    :cond_0
    iget-object v0, p0, Lkff;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6423
    const/4 v0, 0x2

    iget-object v1, p0, Lkff;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6425
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6426
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6430
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6431
    iget-object v1, p0, Lkff;->a:Lkfb;

    if-eqz v1, :cond_0

    .line 6432
    const/4 v1, 0x1

    iget-object v2, p0, Lkff;->a:Lkfb;

    .line 6433
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6435
    :cond_0
    iget-object v1, p0, Lkff;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6436
    const/4 v1, 0x2

    iget-object v2, p0, Lkff;->b:Ljava/lang/String;

    .line 6437
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6439
    :cond_1
    return v0
.end method
