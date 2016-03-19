.class public final Lkbx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkby;

.field public b:Lkbz;

.field public c:Lkca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7003
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8008
    iput-object v0, p0, Lkbx;->a:Lkby;

    .line 8009
    iput-object v0, p0, Lkbx;->b:Lkbz;

    .line 8010
    iput-object v0, p0, Lkbx;->c:Lkca;

    .line 8011
    iput-object v0, p0, Lkbx;->eD:Llyd;

    .line 8012
    const/4 v0, -0x1

    iput v0, p0, Lkbx;->eE:I

    .line 7005
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 8054
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8055
    sparse-switch v0, :sswitch_data_0

    .line 8059
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8060
    :sswitch_0
    return-object p0

    .line 8065
    :sswitch_1
    iget-object v0, p0, Lkbx;->b:Lkbz;

    if-nez v0, :cond_1

    .line 8066
    new-instance v0, Lkbz;

    invoke-direct {v0}, Lkbz;-><init>()V

    iput-object v0, p0, Lkbx;->b:Lkbz;

    .line 8068
    :cond_1
    iget-object v0, p0, Lkbx;->b:Lkbz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8072
    :sswitch_2
    iget-object v0, p0, Lkbx;->c:Lkca;

    if-nez v0, :cond_2

    .line 8073
    new-instance v0, Lkca;

    invoke-direct {v0}, Lkca;-><init>()V

    iput-object v0, p0, Lkbx;->c:Lkca;

    .line 8075
    :cond_2
    iget-object v0, p0, Lkbx;->c:Lkca;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8079
    :sswitch_3
    iget-object v0, p0, Lkbx;->a:Lkby;

    if-nez v0, :cond_3

    .line 8080
    new-instance v0, Lkby;

    invoke-direct {v0}, Lkby;-><init>()V

    iput-object v0, p0, Lkbx;->a:Lkby;

    .line 8082
    :cond_3
    iget-object v0, p0, Lkbx;->a:Lkby;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8055
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7019
    iget-object v0, p0, Lkbx;->b:Lkbz;

    if-eqz v0, :cond_0

    .line 7020
    const/4 v0, 0x1

    iget-object v1, p0, Lkbx;->b:Lkbz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7022
    :cond_0
    iget-object v0, p0, Lkbx;->c:Lkca;

    if-eqz v0, :cond_1

    .line 7023
    const/4 v0, 0x2

    iget-object v1, p0, Lkbx;->c:Lkca;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7025
    :cond_1
    iget-object v0, p0, Lkbx;->a:Lkby;

    if-eqz v0, :cond_2

    .line 7026
    const/4 v0, 0x3

    iget-object v1, p0, Lkbx;->a:Lkby;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7028
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7029
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7033
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7034
    iget-object v1, p0, Lkbx;->b:Lkbz;

    if-eqz v1, :cond_0

    .line 7035
    const/4 v1, 0x1

    iget-object v2, p0, Lkbx;->b:Lkbz;

    .line 7036
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7038
    :cond_0
    iget-object v1, p0, Lkbx;->c:Lkca;

    if-eqz v1, :cond_1

    .line 7039
    const/4 v1, 0x2

    iget-object v2, p0, Lkbx;->c:Lkca;

    .line 7040
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7042
    :cond_1
    iget-object v1, p0, Lkbx;->a:Lkby;

    if-eqz v1, :cond_2

    .line 7043
    const/4 v1, 0x3

    iget-object v2, p0, Lkbx;->a:Lkby;

    .line 7044
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7046
    :cond_2
    return v0
.end method
