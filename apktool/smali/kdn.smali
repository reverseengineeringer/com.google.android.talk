.class public final Lkdn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxr;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23169
    invoke-direct {p0}, Llyb;-><init>()V

    .line 24174
    iput-object v0, p0, Lkdn;->responseHeader:Lkdp;

    .line 24175
    iput-object v0, p0, Lkdn;->a:Ljxr;

    .line 24176
    iput-object v0, p0, Lkdn;->eD:Llyd;

    .line 24177
    const/4 v0, -0x1

    iput v0, p0, Lkdn;->eE:I

    .line 23171
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 24212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 24213
    sparse-switch v0, :sswitch_data_0

    .line 24217
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24218
    :sswitch_0
    return-object p0

    .line 24223
    :sswitch_1
    iget-object v0, p0, Lkdn;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 24224
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdn;->responseHeader:Lkdp;

    .line 24226
    :cond_1
    iget-object v0, p0, Lkdn;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24230
    :sswitch_2
    iget-object v0, p0, Lkdn;->a:Ljxr;

    if-nez v0, :cond_2

    .line 24231
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Lkdn;->a:Ljxr;

    .line 24233
    :cond_2
    iget-object v0, p0, Lkdn;->a:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24213
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
    .line 23184
    iget-object v0, p0, Lkdn;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 23185
    const/4 v0, 0x1

    iget-object v1, p0, Lkdn;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23187
    :cond_0
    iget-object v0, p0, Lkdn;->a:Ljxr;

    if-eqz v0, :cond_1

    .line 23188
    const/4 v0, 0x2

    iget-object v1, p0, Lkdn;->a:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23190
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 23191
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 23195
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 23196
    iget-object v1, p0, Lkdn;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 23197
    const/4 v1, 0x1

    iget-object v2, p0, Lkdn;->responseHeader:Lkdp;

    .line 23198
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23200
    :cond_0
    iget-object v1, p0, Lkdn;->a:Ljxr;

    if-eqz v1, :cond_1

    .line 23201
    const/4 v1, 0x2

    iget-object v2, p0, Lkdn;->a:Ljxr;

    .line 23202
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23204
    :cond_1
    return v0
.end method
