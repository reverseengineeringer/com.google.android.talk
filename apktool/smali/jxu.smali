.class public final Ljxu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcr;

.field public b:Ljxw;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9168
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10173
    iput-object v0, p0, Ljxu;->a:Lkcr;

    .line 10174
    iput-object v0, p0, Ljxu;->b:Ljxw;

    .line 10175
    iput-object v0, p0, Ljxu;->c:Ljava/lang/String;

    .line 10176
    iput-object v0, p0, Ljxu;->eD:Llyd;

    .line 10177
    const/4 v0, -0x1

    iput v0, p0, Ljxu;->eE:I

    .line 9170
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10220
    sparse-switch v0, :sswitch_data_0

    .line 10224
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10225
    :sswitch_0
    return-object p0

    .line 10230
    :sswitch_1
    iget-object v0, p0, Ljxu;->a:Lkcr;

    if-nez v0, :cond_1

    .line 10231
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljxu;->a:Lkcr;

    .line 10233
    :cond_1
    iget-object v0, p0, Ljxu;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10237
    :sswitch_2
    iget-object v0, p0, Ljxu;->b:Ljxw;

    if-nez v0, :cond_2

    .line 10238
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljxu;->b:Ljxw;

    .line 10240
    :cond_2
    iget-object v0, p0, Ljxu;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10244
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxu;->c:Ljava/lang/String;

    goto :goto_0

    .line 10220
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
    .line 9184
    iget-object v0, p0, Ljxu;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 9185
    const/4 v0, 0x1

    iget-object v1, p0, Ljxu;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9187
    :cond_0
    iget-object v0, p0, Ljxu;->b:Ljxw;

    if-eqz v0, :cond_1

    .line 9188
    const/4 v0, 0x2

    iget-object v1, p0, Ljxu;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9190
    :cond_1
    iget-object v0, p0, Ljxu;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9191
    const/4 v0, 0x3

    iget-object v1, p0, Ljxu;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9193
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9194
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9198
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9199
    iget-object v1, p0, Ljxu;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 9200
    const/4 v1, 0x1

    iget-object v2, p0, Ljxu;->a:Lkcr;

    .line 9201
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9203
    :cond_0
    iget-object v1, p0, Ljxu;->b:Ljxw;

    if-eqz v1, :cond_1

    .line 9204
    const/4 v1, 0x2

    iget-object v2, p0, Ljxu;->b:Ljxw;

    .line 9205
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9207
    :cond_1
    iget-object v1, p0, Ljxu;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9208
    const/4 v1, 0x3

    iget-object v2, p0, Ljxu;->c:Ljava/lang/String;

    .line 9209
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9211
    :cond_2
    return v0
.end method
