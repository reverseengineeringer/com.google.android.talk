.class public final Lmkh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmki;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1142
    invoke-static {}, Lmki;->d()[Lmki;

    move-result-object v0

    iput-object v0, p0, Lmkh;->a:[Lmki;

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lmkh;->eD:Llyd;

    .line 1144
    const/4 v0, -0x1

    iput v0, p0, Lmkh;->eE:I

    .line 139
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1183
    sparse-switch v0, :sswitch_data_0

    .line 1187
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    :sswitch_0
    return-object p0

    .line 1193
    :sswitch_1
    const/16 v0, 0xa

    .line 1194
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1195
    iget-object v0, p0, Lmkh;->a:[Lmki;

    if-nez v0, :cond_2

    move v0, v1

    .line 1196
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmki;

    .line 1198
    if-eqz v0, :cond_1

    .line 1199
    iget-object v3, p0, Lmkh;->a:[Lmki;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1202
    new-instance v3, Lmki;

    invoke-direct {v3}, Lmki;-><init>()V

    aput-object v3, v2, v0

    .line 1203
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1204
    invoke-virtual {p1}, Llxy;->a()I

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1195
    :cond_2
    iget-object v0, p0, Lmkh;->a:[Lmki;

    array-length v0, v0

    goto :goto_1

    .line 1207
    :cond_3
    new-instance v3, Lmki;

    invoke-direct {v3}, Lmki;-><init>()V

    aput-object v3, v2, v0

    .line 1208
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1209
    iput-object v2, p0, Lmkh;->a:[Lmki;

    goto :goto_0

    .line 1183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lmkh;->a:[Lmki;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmkh;->a:[Lmki;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmkh;->a:[Lmki;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lmkh;->a:[Lmki;

    aget-object v1, v1, v0

    .line 154
    if-eqz v1, :cond_0

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 160
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 165
    iget-object v0, p0, Lmkh;->a:[Lmki;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmkh;->a:[Lmki;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 166
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmkh;->a:[Lmki;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lmkh;->a:[Lmki;

    aget-object v2, v2, v0

    .line 168
    if-eqz v2, :cond_0

    .line 169
    const/4 v3, 0x1

    .line 170
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return v1
.end method
