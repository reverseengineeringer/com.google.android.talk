.class public final Ljzn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkbg;

.field public b:Lkbg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15382
    invoke-direct {p0}, Llyb;-><init>()V

    .line 16387
    iput-object v0, p0, Ljzn;->a:Lkbg;

    .line 16388
    iput-object v0, p0, Ljzn;->b:Lkbg;

    .line 16389
    iput-object v0, p0, Ljzn;->eD:Llyd;

    .line 16390
    const/4 v0, -0x1

    iput v0, p0, Ljzn;->eE:I

    .line 15384
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 16425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16426
    sparse-switch v0, :sswitch_data_0

    .line 16430
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16431
    :sswitch_0
    return-object p0

    .line 16436
    :sswitch_1
    iget-object v0, p0, Ljzn;->a:Lkbg;

    if-nez v0, :cond_1

    .line 16437
    new-instance v0, Lkbg;

    invoke-direct {v0}, Lkbg;-><init>()V

    iput-object v0, p0, Ljzn;->a:Lkbg;

    .line 16439
    :cond_1
    iget-object v0, p0, Ljzn;->a:Lkbg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16443
    :sswitch_2
    iget-object v0, p0, Ljzn;->b:Lkbg;

    if-nez v0, :cond_2

    .line 16444
    new-instance v0, Lkbg;

    invoke-direct {v0}, Lkbg;-><init>()V

    iput-object v0, p0, Ljzn;->b:Lkbg;

    .line 16446
    :cond_2
    iget-object v0, p0, Ljzn;->b:Lkbg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16426
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
    .line 15397
    iget-object v0, p0, Ljzn;->a:Lkbg;

    if-eqz v0, :cond_0

    .line 15398
    const/4 v0, 0x1

    iget-object v1, p0, Ljzn;->a:Lkbg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 15400
    :cond_0
    iget-object v0, p0, Ljzn;->b:Lkbg;

    if-eqz v0, :cond_1

    .line 15401
    const/4 v0, 0x2

    iget-object v1, p0, Ljzn;->b:Lkbg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 15403
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 15404
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 15408
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 15409
    iget-object v1, p0, Ljzn;->a:Lkbg;

    if-eqz v1, :cond_0

    .line 15410
    const/4 v1, 0x1

    iget-object v2, p0, Ljzn;->a:Lkbg;

    .line 15411
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15413
    :cond_0
    iget-object v1, p0, Ljzn;->b:Lkbg;

    if-eqz v1, :cond_1

    .line 15414
    const/4 v1, 0x2

    iget-object v2, p0, Ljzn;->b:Lkbg;

    .line 15415
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15417
    :cond_1
    return v0
.end method
