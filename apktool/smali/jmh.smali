.class public final Ljmh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:[Ljmi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Llyb;-><init>()V

    .line 135
    iput-object v1, p0, Ljmh;->a:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Ljmh;->b:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Ljmh;->c:Ljava/lang/Long;

    .line 138
    invoke-static {}, Ljmi;->d()[Ljmi;

    move-result-object v0

    iput-object v0, p0, Ljmh;->d:[Ljmi;

    .line 139
    iput-object v1, p0, Ljmh;->eD:Llyd;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Ljmh;->eE:I

    .line 141
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
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljmh;->a:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljmh;->b:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljmh;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1221
    :sswitch_4
    const/16 v0, 0x22

    .line 1222
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1223
    iget-object v0, p0, Ljmh;->d:[Ljmi;

    if-nez v0, :cond_2

    move v0, v1

    .line 1224
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljmi;

    .line 1226
    if-eqz v0, :cond_1

    .line 1227
    iget-object v3, p0, Ljmh;->d:[Ljmi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1229
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1230
    new-instance v3, Ljmi;

    invoke-direct {v3}, Ljmi;-><init>()V

    aput-object v3, v2, v0

    .line 1231
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1232
    invoke-virtual {p1}, Llxy;->a()I

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1223
    :cond_2
    iget-object v0, p0, Ljmh;->d:[Ljmi;

    array-length v0, v0

    goto :goto_1

    .line 1235
    :cond_3
    new-instance v3, Ljmi;

    invoke-direct {v3}, Ljmi;-><init>()V

    aput-object v3, v2, v0

    .line 1236
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1237
    iput-object v2, p0, Ljmh;->d:[Ljmi;

    goto :goto_0

    .line 1199
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Ljmh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iget-object v1, p0, Ljmh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Ljmh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x2

    iget-object v1, p0, Ljmh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 152
    :cond_1
    iget-object v0, p0, Ljmh;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x3

    iget-object v1, p0, Ljmh;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 155
    :cond_2
    iget-object v0, p0, Ljmh;->d:[Ljmi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljmh;->d:[Ljmi;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 156
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljmh;->d:[Ljmi;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 157
    iget-object v1, p0, Ljmh;->d:[Ljmi;

    aget-object v1, v1, v0

    .line 158
    if-eqz v1, :cond_3

    .line 159
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 156
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 164
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 168
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 169
    iget-object v1, p0, Ljmh;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    iget-object v2, p0, Ljmh;->a:Ljava/lang/String;

    .line 171
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_0
    iget-object v1, p0, Ljmh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x2

    iget-object v2, p0, Ljmh;->b:Ljava/lang/String;

    .line 175
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_1
    iget-object v1, p0, Ljmh;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 178
    const/4 v1, 0x3

    iget-object v2, p0, Ljmh;->c:Ljava/lang/Long;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_2
    iget-object v1, p0, Ljmh;->d:[Ljmi;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljmh;->d:[Ljmi;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 182
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljmh;->d:[Ljmi;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 183
    iget-object v2, p0, Ljmh;->d:[Ljmi;

    aget-object v2, v2, v0

    .line 184
    if-eqz v2, :cond_3

    .line 185
    const/4 v3, 0x4

    .line 186
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 190
    :cond_5
    return v0
.end method
