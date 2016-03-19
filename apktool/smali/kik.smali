.class public final Lkik;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkik;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1173
    invoke-static {}, Lkil;->d()[Lkil;

    move-result-object v0

    iput-object v0, p0, Lkik;->a:[Lkil;

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lkik;->eD:Llyd;

    .line 1175
    const/4 v0, -0x1

    iput v0, p0, Lkik;->eE:I

    .line 170
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

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
    const/16 v0, 0xa

    .line 1225
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1226
    iget-object v0, p0, Lkik;->a:[Lkil;

    if-nez v0, :cond_2

    move v0, v1

    .line 1227
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkil;

    .line 1229
    if-eqz v0, :cond_1

    .line 1230
    iget-object v3, p0, Lkik;->a:[Lkil;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1233
    new-instance v3, Lkil;

    invoke-direct {v3}, Lkil;-><init>()V

    aput-object v3, v2, v0

    .line 1234
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1235
    invoke-virtual {p1}, Llxy;->a()I

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1226
    :cond_2
    iget-object v0, p0, Lkik;->a:[Lkil;

    array-length v0, v0

    goto :goto_1

    .line 1238
    :cond_3
    new-instance v3, Lkil;

    invoke-direct {v3}, Lkil;-><init>()V

    aput-object v3, v2, v0

    .line 1239
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1240
    iput-object v2, p0, Lkik;->a:[Lkil;

    goto :goto_0

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lkik;->a:[Lkil;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkik;->a:[Lkil;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 183
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkik;->a:[Lkil;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lkik;->a:[Lkil;

    aget-object v1, v1, v0

    .line 185
    if-eqz v1, :cond_0

    .line 186
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 191
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 195
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 196
    iget-object v0, p0, Lkik;->a:[Lkil;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkik;->a:[Lkil;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkik;->a:[Lkil;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 198
    iget-object v2, p0, Lkik;->a:[Lkil;

    aget-object v2, v2, v0

    .line 199
    if-eqz v2, :cond_0

    .line 200
    const/4 v3, 0x1

    .line 201
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    return v1
.end method
