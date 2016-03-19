.class public final Lldm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lldn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Llyb;-><init>()V

    .line 159
    invoke-static {}, Lldn;->d()[Lldn;

    move-result-object v0

    iput-object v0, p0, Lldm;->a:[Lldn;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lldm;->eD:Llyd;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lldm;->eE:I

    .line 162
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1199
    sparse-switch v0, :sswitch_data_0

    .line 1203
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    :sswitch_0
    return-object p0

    .line 1209
    :sswitch_1
    const/16 v0, 0xa

    .line 1210
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1211
    iget-object v0, p0, Lldm;->a:[Lldn;

    if-nez v0, :cond_2

    move v0, v1

    .line 1212
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldn;

    .line 1214
    if-eqz v0, :cond_1

    .line 1215
    iget-object v3, p0, Lldm;->a:[Lldn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1217
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1218
    new-instance v3, Lldn;

    invoke-direct {v3}, Lldn;-><init>()V

    aput-object v3, v2, v0

    .line 1219
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1220
    invoke-virtual {p1}, Llxy;->a()I

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1211
    :cond_2
    iget-object v0, p0, Lldm;->a:[Lldn;

    array-length v0, v0

    goto :goto_1

    .line 1223
    :cond_3
    new-instance v3, Lldn;

    invoke-direct {v3}, Lldn;-><init>()V

    aput-object v3, v2, v0

    .line 1224
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1225
    iput-object v2, p0, Lldm;->a:[Lldn;

    goto :goto_0

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lldm;->a:[Lldn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lldm;->a:[Lldn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lldm;->a:[Lldn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lldm;->a:[Lldn;

    aget-object v1, v1, v0

    .line 170
    if-eqz v1, :cond_0

    .line 171
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 176
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 181
    iget-object v0, p0, Lldm;->a:[Lldn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lldm;->a:[Lldn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 182
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lldm;->a:[Lldn;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 183
    iget-object v2, p0, Lldm;->a:[Lldn;

    aget-object v2, v2, v0

    .line 184
    if-eqz v2, :cond_0

    .line 185
    const/4 v3, 0x1

    .line 186
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return v1
.end method
