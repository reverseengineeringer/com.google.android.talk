.class public final Ljiz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljiz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljja;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Llyb;-><init>()V

    .line 129
    iput-object v1, p0, Ljiz;->a:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljja;->d()[Ljja;

    move-result-object v0

    iput-object v0, p0, Ljiz;->b:[Ljja;

    .line 131
    iput-object v1, p0, Ljiz;->eD:Llyd;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Ljiz;->eE:I

    .line 133
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1177
    sparse-switch v0, :sswitch_data_0

    .line 1181
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    :sswitch_0
    return-object p0

    .line 1187
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiz;->a:Ljava/lang/String;

    goto :goto_0

    .line 1191
    :sswitch_2
    const/16 v0, 0x12

    .line 1192
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1193
    iget-object v0, p0, Ljiz;->b:[Ljja;

    if-nez v0, :cond_2

    move v0, v1

    .line 1194
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljja;

    .line 1196
    if-eqz v0, :cond_1

    .line 1197
    iget-object v3, p0, Ljiz;->b:[Ljja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1199
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1200
    new-instance v3, Ljja;

    invoke-direct {v3}, Ljja;-><init>()V

    aput-object v3, v2, v0

    .line 1201
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1202
    invoke-virtual {p1}, Llxy;->a()I

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1193
    :cond_2
    iget-object v0, p0, Ljiz;->b:[Ljja;

    array-length v0, v0

    goto :goto_1

    .line 1205
    :cond_3
    new-instance v3, Ljja;

    invoke-direct {v3}, Ljja;-><init>()V

    aput-object v3, v2, v0

    .line 1206
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1207
    iput-object v2, p0, Ljiz;->b:[Ljja;

    goto :goto_0

    .line 1177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Ljiz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iget-object v1, p0, Ljiz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Ljiz;->b:[Ljja;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljiz;->b:[Ljja;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 142
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljiz;->b:[Ljja;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 143
    iget-object v1, p0, Ljiz;->b:[Ljja;

    aget-object v1, v1, v0

    .line 144
    if-eqz v1, :cond_1

    .line 145
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 150
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 154
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 155
    iget-object v1, p0, Ljiz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    iget-object v2, p0, Ljiz;->a:Ljava/lang/String;

    .line 157
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_0
    iget-object v1, p0, Ljiz;->b:[Ljja;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljiz;->b:[Ljja;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 160
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljiz;->b:[Ljja;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 161
    iget-object v2, p0, Ljiz;->b:[Ljja;

    aget-object v2, v2, v0

    .line 162
    if-eqz v2, :cond_1

    .line 163
    const/4 v3, 0x2

    .line 164
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    :cond_3
    return v0
.end method
