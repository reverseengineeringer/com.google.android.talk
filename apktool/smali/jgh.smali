.class public final Ljgh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1199
    iput-object v0, p0, Ljgh;->a:Ljava/lang/String;

    .line 1200
    iput-object v0, p0, Ljgh;->b:Ljava/lang/String;

    .line 1201
    iput-object v0, p0, Ljgh;->c:Ljava/lang/String;

    .line 1202
    iput-object v0, p0, Ljgh;->d:Ljava/lang/String;

    .line 1203
    iput-object v0, p0, Ljgh;->e:Ljava/lang/String;

    .line 1204
    iput-object v0, p0, Ljgh;->eD:Llyd;

    .line 1205
    const/4 v0, -0x1

    iput v0, p0, Ljgh;->eE:I

    .line 196
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1262
    sparse-switch v0, :sswitch_data_0

    .line 1266
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    :sswitch_0
    return-object p0

    .line 1272
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgh;->a:Ljava/lang/String;

    goto :goto_0

    .line 1276
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgh;->b:Ljava/lang/String;

    goto :goto_0

    .line 1280
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgh;->c:Ljava/lang/String;

    goto :goto_0

    .line 1284
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgh;->d:Ljava/lang/String;

    goto :goto_0

    .line 1288
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgh;->e:Ljava/lang/String;

    goto :goto_0

    .line 1262
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Ljgh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iget-object v1, p0, Ljgh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Ljgh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x2

    iget-object v1, p0, Ljgh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 218
    :cond_1
    iget-object v0, p0, Ljgh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x3

    iget-object v1, p0, Ljgh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 221
    :cond_2
    iget-object v0, p0, Ljgh;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 222
    const/4 v0, 0x4

    iget-object v1, p0, Ljgh;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 224
    :cond_3
    iget-object v0, p0, Ljgh;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 225
    const/4 v0, 0x5

    iget-object v1, p0, Ljgh;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 227
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 228
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 233
    iget-object v1, p0, Ljgh;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x1

    iget-object v2, p0, Ljgh;->a:Ljava/lang/String;

    .line 235
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_0
    iget-object v1, p0, Ljgh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 238
    const/4 v1, 0x2

    iget-object v2, p0, Ljgh;->b:Ljava/lang/String;

    .line 239
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_1
    iget-object v1, p0, Ljgh;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 242
    const/4 v1, 0x3

    iget-object v2, p0, Ljgh;->c:Ljava/lang/String;

    .line 243
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_2
    iget-object v1, p0, Ljgh;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 246
    const/4 v1, 0x4

    iget-object v2, p0, Ljgh;->d:Ljava/lang/String;

    .line 247
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_3
    iget-object v1, p0, Ljgh;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 250
    const/4 v1, 0x5

    iget-object v2, p0, Ljgh;->e:Ljava/lang/String;

    .line 251
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_4
    return v0
.end method
