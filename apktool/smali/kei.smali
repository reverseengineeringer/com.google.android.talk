.class public final Lkei;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkei;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16160
    invoke-direct {p0}, Llyb;-><init>()V

    .line 17165
    iput-object v0, p0, Lkei;->responseHeader:Lkdp;

    .line 17166
    iput-object v0, p0, Lkei;->a:Ljava/lang/Long;

    .line 17167
    iput-object v0, p0, Lkei;->eD:Llyd;

    .line 17168
    const/4 v0, -0x1

    iput v0, p0, Lkei;->eE:I

    .line 16162
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 17203
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 17204
    sparse-switch v0, :sswitch_data_0

    .line 17208
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17209
    :sswitch_0
    return-object p0

    .line 17214
    :sswitch_1
    iget-object v0, p0, Lkei;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 17215
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkei;->responseHeader:Lkdp;

    .line 17217
    :cond_1
    iget-object v0, p0, Lkei;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 17221
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkei;->a:Ljava/lang/Long;

    goto :goto_0

    .line 17204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 16175
    iget-object v0, p0, Lkei;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 16176
    const/4 v0, 0x1

    iget-object v1, p0, Lkei;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 16178
    :cond_0
    iget-object v0, p0, Lkei;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 16179
    const/4 v0, 0x2

    iget-object v1, p0, Lkei;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 16181
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 16182
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 16186
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 16187
    iget-object v1, p0, Lkei;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 16188
    const/4 v1, 0x1

    iget-object v2, p0, Lkei;->responseHeader:Lkdp;

    .line 16189
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16191
    :cond_0
    iget-object v1, p0, Lkei;->a:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 16192
    const/4 v1, 0x2

    iget-object v2, p0, Lkei;->a:Ljava/lang/Long;

    .line 16193
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16195
    :cond_1
    return v0
.end method
