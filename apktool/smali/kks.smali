.class public final Lkks;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkks;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Lkla;

.field public d:Lkkt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1198
    iput-object v0, p0, Lkks;->a:Ljava/lang/Integer;

    .line 1199
    iput-object v0, p0, Lkks;->b:Ljava/lang/Integer;

    .line 1200
    iput-object v0, p0, Lkks;->c:Lkla;

    .line 1201
    iput-object v0, p0, Lkks;->d:Lkkt;

    .line 1202
    iput-object v0, p0, Lkks;->eD:Llyd;

    .line 1203
    const/4 v0, -0x1

    iput v0, p0, Lkks;->eE:I

    .line 195
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1249
    sparse-switch v0, :sswitch_data_0

    .line 1253
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    :sswitch_0
    return-object p0

    .line 1259
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1260
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1310
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkks;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1316
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1317
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1324
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkks;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1330
    :sswitch_3
    iget-object v0, p0, Lkks;->c:Lkla;

    if-nez v0, :cond_1

    .line 1331
    new-instance v0, Lkla;

    invoke-direct {v0}, Lkla;-><init>()V

    iput-object v0, p0, Lkks;->c:Lkla;

    .line 1333
    :cond_1
    iget-object v0, p0, Lkks;->c:Lkla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1337
    :sswitch_4
    iget-object v0, p0, Lkks;->d:Lkkt;

    if-nez v0, :cond_2

    .line 1338
    new-instance v0, Lkkt;

    invoke-direct {v0}, Lkkt;-><init>()V

    iput-object v0, p0, Lkks;->d:Lkkt;

    .line 1340
    :cond_2
    iget-object v0, p0, Lkks;->d:Lkkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1317
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iget-object v1, p0, Lkks;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 211
    iget-object v0, p0, Lkks;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x2

    iget-object v1, p0, Lkks;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 214
    :cond_0
    iget-object v0, p0, Lkks;->c:Lkla;

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x3

    iget-object v1, p0, Lkks;->c:Lkla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lkks;->d:Lkkt;

    if-eqz v0, :cond_2

    .line 218
    const/4 v0, 0x4

    iget-object v1, p0, Lkks;->d:Lkkt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 220
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 221
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 226
    const/4 v1, 0x1

    iget-object v2, p0, Lkks;->a:Ljava/lang/Integer;

    .line 227
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lkks;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x2

    iget-object v2, p0, Lkks;->b:Ljava/lang/Integer;

    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_0
    iget-object v1, p0, Lkks;->c:Lkla;

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x3

    iget-object v2, p0, Lkks;->c:Lkla;

    .line 234
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1
    iget-object v1, p0, Lkks;->d:Lkkt;

    if-eqz v1, :cond_2

    .line 237
    const/4 v1, 0x4

    iget-object v2, p0, Lkks;->d:Lkkt;

    .line 238
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_2
    return v0
.end method
