.class public final Lkac;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkac;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36338
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37343
    iput-object v0, p0, Lkac;->a:[B

    .line 37344
    iput-object v0, p0, Lkac;->eD:Llyd;

    .line 37345
    const/4 v0, -0x1

    iput v0, p0, Lkac;->eE:I

    .line 36340
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 37373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37374
    sparse-switch v0, :sswitch_data_0

    .line 37378
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37379
    :sswitch_0
    return-object p0

    .line 37384
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkac;->a:[B

    goto :goto_0

    .line 37374
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
    .line 36352
    iget-object v0, p0, Lkac;->a:[B

    if-eqz v0, :cond_0

    .line 36353
    const/4 v0, 0x1

    iget-object v1, p0, Lkac;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 36355
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36356
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 36360
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36361
    iget-object v1, p0, Lkac;->a:[B

    if-eqz v1, :cond_0

    .line 36362
    const/4 v1, 0x1

    iget-object v2, p0, Lkac;->a:[B

    .line 36363
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 36365
    :cond_0
    return v0
.end method
