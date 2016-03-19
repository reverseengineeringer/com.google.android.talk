.class public final Llla;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llla;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llmi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3224
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4229
    iput-object v0, p0, Llla;->a:Llmi;

    .line 4230
    iput-object v0, p0, Llla;->eD:Llyd;

    .line 4231
    const/4 v0, -0x1

    iput v0, p0, Llla;->eE:I

    .line 3226
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4260
    sparse-switch v0, :sswitch_data_0

    .line 4264
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4265
    :sswitch_0
    return-object p0

    .line 4270
    :sswitch_1
    iget-object v0, p0, Llla;->a:Llmi;

    if-nez v0, :cond_1

    .line 4271
    new-instance v0, Llmi;

    invoke-direct {v0}, Llmi;-><init>()V

    iput-object v0, p0, Llla;->a:Llmi;

    .line 4273
    :cond_1
    iget-object v0, p0, Llla;->a:Llmi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4260
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
    .line 3238
    iget-object v0, p0, Llla;->a:Llmi;

    if-eqz v0, :cond_0

    .line 3239
    const/4 v0, 0x1

    iget-object v1, p0, Llla;->a:Llmi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3241
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3242
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3246
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3247
    iget-object v1, p0, Llla;->a:Llmi;

    if-eqz v1, :cond_0

    .line 3248
    const/4 v1, 0x1

    iget-object v2, p0, Llla;->a:Llmi;

    .line 3249
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3251
    :cond_0
    return v0
.end method
