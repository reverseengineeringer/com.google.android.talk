.class public final Ljkg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljkc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Ljjl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6135
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7140
    iput-object v1, p0, Ljkg;->a:Ljkc;

    .line 7141
    iput-object v1, p0, Ljkg;->b:Ljava/lang/String;

    .line 7142
    iput-object v1, p0, Ljkg;->c:Ljava/lang/String;

    .line 7143
    invoke-static {}, Ljjl;->d()[Ljjl;

    move-result-object v0

    iput-object v0, p0, Ljkg;->d:[Ljjl;

    .line 7144
    iput-object v1, p0, Ljkg;->eD:Llyd;

    .line 7145
    const/4 v0, -0x1

    iput v0, p0, Ljkg;->eE:I

    .line 6137
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7205
    sparse-switch v0, :sswitch_data_0

    .line 7209
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7210
    :sswitch_0
    return-object p0

    .line 7215
    :sswitch_1
    iget-object v0, p0, Ljkg;->a:Ljkc;

    if-nez v0, :cond_1

    .line 7216
    new-instance v0, Ljkc;

    invoke-direct {v0}, Ljkc;-><init>()V

    iput-object v0, p0, Ljkg;->a:Ljkc;

    .line 7218
    :cond_1
    iget-object v0, p0, Ljkg;->a:Ljkc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7222
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkg;->b:Ljava/lang/String;

    goto :goto_0

    .line 7226
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkg;->c:Ljava/lang/String;

    goto :goto_0

    .line 7230
    :sswitch_4
    const/16 v0, 0x22

    .line 7231
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7232
    iget-object v0, p0, Ljkg;->d:[Ljjl;

    if-nez v0, :cond_3

    move v0, v1

    .line 7233
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjl;

    .line 7235
    if-eqz v0, :cond_2

    .line 7236
    iget-object v3, p0, Ljkg;->d:[Ljjl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7238
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 7239
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 7240
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 7241
    invoke-virtual {p1}, Llxy;->a()I

    .line 7238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7232
    :cond_3
    iget-object v0, p0, Ljkg;->d:[Ljjl;

    array-length v0, v0

    goto :goto_1

    .line 7244
    :cond_4
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 7245
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 7246
    iput-object v2, p0, Ljkg;->d:[Ljjl;

    goto :goto_0

    .line 7205
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 6152
    iget-object v0, p0, Ljkg;->a:Ljkc;

    if-eqz v0, :cond_0

    .line 6153
    const/4 v0, 0x1

    iget-object v1, p0, Ljkg;->a:Ljkc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6155
    :cond_0
    iget-object v0, p0, Ljkg;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6156
    const/4 v0, 0x2

    iget-object v1, p0, Ljkg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6158
    :cond_1
    iget-object v0, p0, Ljkg;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6159
    const/4 v0, 0x3

    iget-object v1, p0, Ljkg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6161
    :cond_2
    iget-object v0, p0, Ljkg;->d:[Ljjl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljkg;->d:[Ljjl;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 6162
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljkg;->d:[Ljjl;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 6163
    iget-object v1, p0, Ljkg;->d:[Ljjl;

    aget-object v1, v1, v0

    .line 6164
    if-eqz v1, :cond_3

    .line 6165
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 6162
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6169
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6170
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 6174
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6175
    iget-object v1, p0, Ljkg;->a:Ljkc;

    if-eqz v1, :cond_0

    .line 6176
    const/4 v1, 0x1

    iget-object v2, p0, Ljkg;->a:Ljkc;

    .line 6177
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6179
    :cond_0
    iget-object v1, p0, Ljkg;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6180
    const/4 v1, 0x2

    iget-object v2, p0, Ljkg;->b:Ljava/lang/String;

    .line 6181
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6183
    :cond_1
    iget-object v1, p0, Ljkg;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6184
    const/4 v1, 0x3

    iget-object v2, p0, Ljkg;->c:Ljava/lang/String;

    .line 6185
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6187
    :cond_2
    iget-object v1, p0, Ljkg;->d:[Ljjl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljkg;->d:[Ljjl;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 6188
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljkg;->d:[Ljjl;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 6189
    iget-object v2, p0, Ljkg;->d:[Ljjl;

    aget-object v2, v2, v0

    .line 6190
    if-eqz v2, :cond_3

    .line 6191
    const/4 v3, 0x4

    .line 6192
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6188
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 6196
    :cond_5
    return v0
.end method
