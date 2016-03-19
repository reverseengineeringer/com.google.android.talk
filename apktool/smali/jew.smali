.class public final Ljew;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljew;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljew;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljex;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1145
    iput-object v1, p0, Ljew;->a:Ljava/lang/String;

    .line 1146
    invoke-static {}, Ljex;->d()[Ljex;

    move-result-object v0

    iput-object v0, p0, Ljew;->b:[Ljex;

    .line 1147
    iput-object v1, p0, Ljew;->eD:Llyd;

    .line 1148
    const/4 v0, -0x1

    iput v0, p0, Ljew;->eE:I

    .line 142
    return-void
.end method

.method public static d()[Ljew;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Ljew;->c:[Ljew;

    if-nez v0, :cond_1

    .line 122
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-object v0, Ljew;->c:[Ljew;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljew;

    sput-object v0, Ljew;->c:[Ljew;

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    sget-object v0, Ljew;->c:[Ljew;

    return-object v0

    .line 127
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

    .line 1193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1194
    sparse-switch v0, :sswitch_data_0

    .line 1198
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    :sswitch_0
    return-object p0

    .line 1204
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljew;->a:Ljava/lang/String;

    goto :goto_0

    .line 1208
    :sswitch_2
    const/16 v0, 0x12

    .line 1209
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1210
    iget-object v0, p0, Ljew;->b:[Ljex;

    if-nez v0, :cond_2

    move v0, v1

    .line 1211
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljex;

    .line 1213
    if-eqz v0, :cond_1

    .line 1214
    iget-object v3, p0, Ljew;->b:[Ljex;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1216
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1217
    new-instance v3, Ljex;

    invoke-direct {v3}, Ljex;-><init>()V

    aput-object v3, v2, v0

    .line 1218
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1219
    invoke-virtual {p1}, Llxy;->a()I

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1210
    :cond_2
    iget-object v0, p0, Ljew;->b:[Ljex;

    array-length v0, v0

    goto :goto_1

    .line 1222
    :cond_3
    new-instance v3, Ljex;

    invoke-direct {v3}, Ljex;-><init>()V

    aput-object v3, v2, v0

    .line 1223
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1224
    iput-object v2, p0, Ljew;->b:[Ljex;

    goto :goto_0

    .line 1194
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
    .line 155
    iget-object v0, p0, Ljew;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iget-object v1, p0, Ljew;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Ljew;->b:[Ljex;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljew;->b:[Ljex;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 159
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljew;->b:[Ljex;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 160
    iget-object v1, p0, Ljew;->b:[Ljex;

    aget-object v1, v1, v0

    .line 161
    if-eqz v1, :cond_1

    .line 162
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 167
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 171
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 172
    iget-object v1, p0, Ljew;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x1

    iget-object v2, p0, Ljew;->a:Ljava/lang/String;

    .line 174
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_0
    iget-object v1, p0, Ljew;->b:[Ljex;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljew;->b:[Ljex;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 177
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljew;->b:[Ljex;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 178
    iget-object v2, p0, Ljew;->b:[Ljex;

    aget-object v2, v2, v0

    .line 179
    if-eqz v2, :cond_1

    .line 180
    const/4 v3, 0x2

    .line 181
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 185
    :cond_3
    return v0
.end method
