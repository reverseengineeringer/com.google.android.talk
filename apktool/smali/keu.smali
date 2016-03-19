.class public final Lkeu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkeu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16404
    invoke-direct {p0}, Llyb;-><init>()V

    .line 17409
    iput-object v0, p0, Lkeu;->a:Llcf;

    .line 17410
    iput-object v0, p0, Lkeu;->eD:Llyd;

    .line 17411
    const/4 v0, -0x1

    iput v0, p0, Lkeu;->eE:I

    .line 16406
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 17439
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 17440
    sparse-switch v0, :sswitch_data_0

    .line 17444
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17445
    :sswitch_0
    return-object p0

    .line 17450
    :sswitch_1
    iget-object v0, p0, Lkeu;->a:Llcf;

    if-nez v0, :cond_1

    .line 17451
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkeu;->a:Llcf;

    .line 17453
    :cond_1
    iget-object v0, p0, Lkeu;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 17440
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 16418
    iget-object v0, p0, Lkeu;->a:Llcf;

    if-eqz v0, :cond_0

    .line 16419
    const/4 v0, 0x1

    iget-object v1, p0, Lkeu;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 16421
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 16422
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 16426
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 16427
    iget-object v1, p0, Lkeu;->a:Llcf;

    if-eqz v1, :cond_0

    .line 16428
    const/4 v1, 0x1

    iget-object v2, p0, Lkeu;->a:Llcf;

    .line 16429
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16431
    :cond_0
    return v0
.end method
