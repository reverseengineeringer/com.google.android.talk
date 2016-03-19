.class public final Ljqm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljql;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Llyb;-><init>()V

    .line 194
    invoke-static {}, Ljql;->d()[Ljql;

    move-result-object v0

    iput-object v0, p0, Ljqm;->a:[Ljql;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Ljqm;->eD:Llyd;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Ljqm;->eE:I

    .line 197
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1234
    sparse-switch v0, :sswitch_data_0

    .line 1238
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    :sswitch_0
    return-object p0

    .line 1244
    :sswitch_1
    const/16 v0, 0xa

    .line 1245
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1246
    iget-object v0, p0, Ljqm;->a:[Ljql;

    if-nez v0, :cond_2

    move v0, v1

    .line 1247
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljql;

    .line 1249
    if-eqz v0, :cond_1

    .line 1250
    iget-object v3, p0, Ljqm;->a:[Ljql;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1253
    new-instance v3, Ljql;

    invoke-direct {v3}, Ljql;-><init>()V

    aput-object v3, v2, v0

    .line 1254
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1255
    invoke-virtual {p1}, Llxy;->a()I

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1246
    :cond_2
    iget-object v0, p0, Ljqm;->a:[Ljql;

    array-length v0, v0

    goto :goto_1

    .line 1258
    :cond_3
    new-instance v3, Ljql;

    invoke-direct {v3}, Ljql;-><init>()V

    aput-object v3, v2, v0

    .line 1259
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1260
    iput-object v2, p0, Ljqm;->a:[Ljql;

    goto :goto_0

    .line 1234
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Ljqm;->a:[Ljql;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljqm;->a:[Ljql;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 203
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljqm;->a:[Ljql;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Ljqm;->a:[Ljql;

    aget-object v1, v1, v0

    .line 205
    if-eqz v1, :cond_0

    .line 206
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 211
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 216
    iget-object v0, p0, Ljqm;->a:[Ljql;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljqm;->a:[Ljql;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 217
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljqm;->a:[Ljql;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    iget-object v2, p0, Ljqm;->a:[Ljql;

    aget-object v2, v2, v0

    .line 219
    if-eqz v2, :cond_0

    .line 220
    const/4 v3, 0x1

    .line 221
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v1
.end method
