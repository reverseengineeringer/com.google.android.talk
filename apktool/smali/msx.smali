.class public final Lmsx;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile c:[Lmsx;


# instance fields
.field public a:[Lmsv;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1182
    invoke-static {}, Lmsv;->d()[Lmsv;

    move-result-object v0

    iput-object v0, p0, Lmsx;->a:[Lmsv;

    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lmsx;->b:Ljava/lang/String;

    .line 1184
    const/4 v0, -0x1

    iput v0, p0, Lmsx;->eE:I

    .line 179
    return-void
.end method

.method public static d()[Lmsx;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lmsx;->c:[Lmsx;

    if-nez v0, :cond_1

    .line 159
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lmsx;->c:[Lmsx;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    new-array v0, v0, [Lmsx;

    sput-object v0, Lmsx;->c:[Lmsx;

    .line 164
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    sget-object v0, Lmsx;->c:[Lmsx;

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1230
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1234
    if-nez v0, :cond_0

    .line 1235
    :sswitch_0
    return-object p0

    .line 1240
    :sswitch_1
    const/16 v0, 0xa

    .line 1241
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1242
    iget-object v0, p0, Lmsx;->a:[Lmsv;

    if-nez v0, :cond_2

    move v0, v1

    .line 1243
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmsv;

    .line 1245
    if-eqz v0, :cond_1

    .line 1246
    iget-object v3, p0, Lmsx;->a:[Lmsv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1248
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1249
    new-instance v3, Lmsv;

    invoke-direct {v3}, Lmsv;-><init>()V

    aput-object v3, v2, v0

    .line 1250
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1251
    invoke-virtual {p1}, Llxy;->a()I

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1242
    :cond_2
    iget-object v0, p0, Lmsx;->a:[Lmsv;

    array-length v0, v0

    goto :goto_1

    .line 1254
    :cond_3
    new-instance v3, Lmsv;

    invoke-direct {v3}, Lmsv;-><init>()V

    aput-object v3, v2, v0

    .line 1255
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1256
    iput-object v2, p0, Lmsx;->a:[Lmsv;

    goto :goto_0

    .line 1260
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmsx;->b:Ljava/lang/String;

    goto :goto_0

    .line 1230
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
    .line 191
    iget-object v0, p0, Lmsx;->a:[Lmsv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmsx;->a:[Lmsv;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 192
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmsx;->a:[Lmsv;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lmsx;->a:[Lmsv;

    aget-object v1, v1, v0

    .line 194
    if-eqz v1, :cond_0

    .line 195
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lmsx;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    const/4 v0, 0x2

    iget-object v1, p0, Lmsx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 202
    :cond_2
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 203
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Llyi;->b()I

    move-result v1

    .line 208
    iget-object v0, p0, Lmsx;->a:[Lmsv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmsx;->a:[Lmsv;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 209
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmsx;->a:[Lmsv;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 210
    iget-object v2, p0, Lmsx;->a:[Lmsv;

    aget-object v2, v2, v0

    .line 211
    if-eqz v2, :cond_0

    .line 212
    const/4 v3, 0x1

    .line 213
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lmsx;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const/4 v0, 0x2

    iget-object v2, p0, Lmsx;->b:Ljava/lang/String;

    .line 219
    invoke-static {v0, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 221
    :cond_2
    return v1
.end method
