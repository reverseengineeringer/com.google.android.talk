.class public final Llkj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3566
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4571
    iput-object v0, p0, Llkj;->a:Llkk;

    .line 4572
    iput-object v0, p0, Llkj;->eD:Llyd;

    .line 4573
    const/4 v0, -0x1

    iput v0, p0, Llkj;->eE:I

    .line 3568
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4601
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4602
    sparse-switch v0, :sswitch_data_0

    .line 4606
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4607
    :sswitch_0
    return-object p0

    .line 4612
    :sswitch_1
    iget-object v0, p0, Llkj;->a:Llkk;

    if-nez v0, :cond_1

    .line 4613
    new-instance v0, Llkk;

    invoke-direct {v0}, Llkk;-><init>()V

    iput-object v0, p0, Llkj;->a:Llkk;

    .line 4615
    :cond_1
    iget-object v0, p0, Llkj;->a:Llkk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4602
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3580
    iget-object v0, p0, Llkj;->a:Llkk;

    if-eqz v0, :cond_0

    .line 3581
    const/4 v0, 0x2

    iget-object v1, p0, Llkj;->a:Llkk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3583
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3584
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3588
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3589
    iget-object v1, p0, Llkj;->a:Llkk;

    if-eqz v1, :cond_0

    .line 3590
    const/4 v1, 0x2

    iget-object v2, p0, Llkj;->a:Llkk;

    .line 3591
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3593
    :cond_0
    return v0
.end method
