.class public final Lllu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llmq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2323
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3328
    iput-object v0, p0, Lllu;->a:Llmq;

    .line 3329
    iput-object v0, p0, Lllu;->eD:Llyd;

    .line 3330
    const/4 v0, -0x1

    iput v0, p0, Lllu;->eE:I

    .line 2325
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3359
    sparse-switch v0, :sswitch_data_0

    .line 3363
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3364
    :sswitch_0
    return-object p0

    .line 3369
    :sswitch_1
    iget-object v0, p0, Lllu;->a:Llmq;

    if-nez v0, :cond_1

    .line 3370
    new-instance v0, Llmq;

    invoke-direct {v0}, Llmq;-><init>()V

    iput-object v0, p0, Lllu;->a:Llmq;

    .line 3372
    :cond_1
    iget-object v0, p0, Lllu;->a:Llmq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3359
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
    .line 2337
    iget-object v0, p0, Lllu;->a:Llmq;

    if-eqz v0, :cond_0

    .line 2338
    const/4 v0, 0x1

    iget-object v1, p0, Lllu;->a:Llmq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2340
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2341
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2345
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2346
    iget-object v1, p0, Lllu;->a:Llmq;

    if-eqz v1, :cond_0

    .line 2347
    const/4 v1, 0x1

    iget-object v2, p0, Lllu;->a:Llmq;

    .line 2348
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    :cond_0
    return v0
.end method
