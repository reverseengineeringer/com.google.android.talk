.class public final Lkao;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkao;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34300
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35305
    iput-object v0, p0, Lkao;->responseHeader:Lkdp;

    .line 35306
    iput-object v0, p0, Lkao;->a:Ljava/lang/String;

    .line 35307
    iput-object v0, p0, Lkao;->eD:Llyd;

    .line 35308
    const/4 v0, -0x1

    iput v0, p0, Lkao;->eE:I

    .line 34302
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 35343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35344
    sparse-switch v0, :sswitch_data_0

    .line 35348
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35349
    :sswitch_0
    return-object p0

    .line 35354
    :sswitch_1
    iget-object v0, p0, Lkao;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 35355
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkao;->responseHeader:Lkdp;

    .line 35357
    :cond_1
    iget-object v0, p0, Lkao;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35361
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkao;->a:Ljava/lang/String;

    goto :goto_0

    .line 35344
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
    .line 34315
    iget-object v0, p0, Lkao;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 34316
    const/4 v0, 0x1

    iget-object v1, p0, Lkao;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34318
    :cond_0
    iget-object v0, p0, Lkao;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34319
    const/4 v0, 0x2

    iget-object v1, p0, Lkao;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 34321
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34322
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 34326
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 34327
    iget-object v1, p0, Lkao;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 34328
    const/4 v1, 0x1

    iget-object v2, p0, Lkao;->responseHeader:Lkdp;

    .line 34329
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34331
    :cond_0
    iget-object v1, p0, Lkao;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 34332
    const/4 v1, 0x2

    iget-object v2, p0, Lkao;->a:Ljava/lang/String;

    .line 34333
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34335
    :cond_1
    return v0
.end method
