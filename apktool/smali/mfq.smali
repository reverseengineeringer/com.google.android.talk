.class public final Lmfq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Llyb;-><init>()V

    .line 180
    iput-object v0, p0, Lmfq;->a:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lmfq;->b:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lmfq;->eD:Llyd;

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lmfq;->eE:I

    .line 184
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1213
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1214
    sparse-switch v0, :sswitch_data_0

    .line 1218
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    :sswitch_0
    return-object p0

    .line 1224
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfq;->a:Ljava/lang/String;

    goto :goto_0

    .line 1228
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfq;->b:Ljava/lang/String;

    goto :goto_0

    .line 1214
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
    .line 189
    const/4 v0, 0x1

    iget-object v1, p0, Lmfq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 190
    iget-object v0, p0, Lmfq;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x2

    iget-object v1, p0, Lmfq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 194
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 199
    const/4 v1, 0x1

    iget-object v2, p0, Lmfq;->a:Ljava/lang/String;

    .line 200
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    iget-object v1, p0, Lmfq;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x2

    iget-object v2, p0, Lmfq;->b:Ljava/lang/String;

    .line 203
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_0
    return v0
.end method
