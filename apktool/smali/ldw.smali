.class public final Lldw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lldx;

.field public b:Ljava/lang/Long;

.field public c:Lldy;

.field public d:[Llee;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2147
    iput-object v1, p0, Lldw;->a:Lldx;

    .line 2148
    iput-object v1, p0, Lldw;->b:Ljava/lang/Long;

    .line 2149
    iput-object v1, p0, Lldw;->c:Lldy;

    .line 2150
    invoke-static {}, Llee;->d()[Llee;

    move-result-object v0

    iput-object v0, p0, Lldw;->d:[Llee;

    .line 2151
    iput-object v1, p0, Lldw;->eD:Llyd;

    .line 2152
    const/4 v0, -0x1

    iput v0, p0, Lldw;->eE:I

    .line 1144
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2212
    sparse-switch v0, :sswitch_data_0

    .line 2216
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    :sswitch_0
    return-object p0

    .line 2222
    :sswitch_1
    iget-object v0, p0, Lldw;->a:Lldx;

    if-nez v0, :cond_1

    .line 2223
    new-instance v0, Lldx;

    invoke-direct {v0}, Lldx;-><init>()V

    iput-object v0, p0, Lldw;->a:Lldx;

    .line 2225
    :cond_1
    iget-object v0, p0, Lldw;->a:Lldx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2229
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lldw;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2233
    :sswitch_3
    iget-object v0, p0, Lldw;->c:Lldy;

    if-nez v0, :cond_2

    .line 2234
    new-instance v0, Lldy;

    invoke-direct {v0}, Lldy;-><init>()V

    iput-object v0, p0, Lldw;->c:Lldy;

    .line 2236
    :cond_2
    iget-object v0, p0, Lldw;->c:Lldy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2240
    :sswitch_4
    const/16 v0, 0x22

    .line 2241
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2242
    iget-object v0, p0, Lldw;->d:[Llee;

    if-nez v0, :cond_4

    move v0, v1

    .line 2243
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llee;

    .line 2245
    if-eqz v0, :cond_3

    .line 2246
    iget-object v3, p0, Lldw;->d:[Llee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2248
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 2249
    new-instance v3, Llee;

    invoke-direct {v3}, Llee;-><init>()V

    aput-object v3, v2, v0

    .line 2250
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2251
    invoke-virtual {p1}, Llxy;->a()I

    .line 2248
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2242
    :cond_4
    iget-object v0, p0, Lldw;->d:[Llee;

    array-length v0, v0

    goto :goto_1

    .line 2254
    :cond_5
    new-instance v3, Llee;

    invoke-direct {v3}, Llee;-><init>()V

    aput-object v3, v2, v0

    .line 2255
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2256
    iput-object v2, p0, Lldw;->d:[Llee;

    goto :goto_0

    .line 2212
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1159
    iget-object v0, p0, Lldw;->a:Lldx;

    if-eqz v0, :cond_0

    .line 1160
    const/4 v0, 0x1

    iget-object v1, p0, Lldw;->a:Lldx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1162
    :cond_0
    iget-object v0, p0, Lldw;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1163
    const/4 v0, 0x2

    iget-object v1, p0, Lldw;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1165
    :cond_1
    iget-object v0, p0, Lldw;->c:Lldy;

    if-eqz v0, :cond_2

    .line 1166
    const/4 v0, 0x3

    iget-object v1, p0, Lldw;->c:Lldy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1168
    :cond_2
    iget-object v0, p0, Lldw;->d:[Llee;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lldw;->d:[Llee;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1169
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lldw;->d:[Llee;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1170
    iget-object v1, p0, Lldw;->d:[Llee;

    aget-object v1, v1, v0

    .line 1171
    if-eqz v1, :cond_3

    .line 1172
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1169
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1176
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1177
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1181
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1182
    iget-object v1, p0, Lldw;->a:Lldx;

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x1

    iget-object v2, p0, Lldw;->a:Lldx;

    .line 1184
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    :cond_0
    iget-object v1, p0, Lldw;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1187
    const/4 v1, 0x2

    iget-object v2, p0, Lldw;->b:Ljava/lang/Long;

    .line 1188
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1190
    :cond_1
    iget-object v1, p0, Lldw;->c:Lldy;

    if-eqz v1, :cond_2

    .line 1191
    const/4 v1, 0x3

    iget-object v2, p0, Lldw;->c:Lldy;

    .line 1192
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_2
    iget-object v1, p0, Lldw;->d:[Llee;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lldw;->d:[Llee;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1195
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lldw;->d:[Llee;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1196
    iget-object v2, p0, Lldw;->d:[Llee;

    aget-object v2, v2, v0

    .line 1197
    if-eqz v2, :cond_3

    .line 1198
    const/4 v3, 0x4

    .line 1199
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1203
    :cond_5
    return v0
.end method
