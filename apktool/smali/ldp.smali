.class public final Lldp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lldp;


# instance fields
.field public a:Lldf;

.field public b:[Lldq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Llyb;-><init>()V

    .line 158
    iput-object v1, p0, Lldp;->a:Lldf;

    .line 159
    invoke-static {}, Lldq;->d()[Lldq;

    move-result-object v0

    iput-object v0, p0, Lldp;->b:[Lldq;

    .line 160
    iput-object v1, p0, Lldp;->eD:Llyd;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lldp;->eE:I

    .line 162
    return-void
.end method

.method public static d()[Lldp;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lldp;->c:[Lldp;

    if-nez v0, :cond_1

    .line 139
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lldp;->c:[Lldp;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Lldp;

    sput-object v0, Lldp;->c:[Lldp;

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    sget-object v0, Lldp;->c:[Lldp;

    return-object v0

    .line 144
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

    .line 1205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1206
    sparse-switch v0, :sswitch_data_0

    .line 1210
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    :sswitch_0
    return-object p0

    .line 1216
    :sswitch_1
    iget-object v0, p0, Lldp;->a:Lldf;

    if-nez v0, :cond_1

    .line 1217
    new-instance v0, Lldf;

    invoke-direct {v0}, Lldf;-><init>()V

    iput-object v0, p0, Lldp;->a:Lldf;

    .line 1219
    :cond_1
    iget-object v0, p0, Lldp;->a:Lldf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1223
    :sswitch_2
    const/16 v0, 0x12

    .line 1224
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1225
    iget-object v0, p0, Lldp;->b:[Lldq;

    if-nez v0, :cond_3

    move v0, v1

    .line 1226
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldq;

    .line 1228
    if-eqz v0, :cond_2

    .line 1229
    iget-object v3, p0, Lldp;->b:[Lldq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1231
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1232
    new-instance v3, Lldq;

    invoke-direct {v3}, Lldq;-><init>()V

    aput-object v3, v2, v0

    .line 1233
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1234
    invoke-virtual {p1}, Llxy;->a()I

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1225
    :cond_3
    iget-object v0, p0, Lldp;->b:[Lldq;

    array-length v0, v0

    goto :goto_1

    .line 1237
    :cond_4
    new-instance v3, Lldq;

    invoke-direct {v3}, Lldq;-><init>()V

    aput-object v3, v2, v0

    .line 1238
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1239
    iput-object v2, p0, Lldp;->b:[Lldq;

    goto :goto_0

    .line 1206
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
    .line 167
    iget-object v0, p0, Lldp;->a:Lldf;

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iget-object v1, p0, Lldp;->a:Lldf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lldp;->b:[Lldq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lldp;->b:[Lldq;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 171
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lldp;->b:[Lldq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 172
    iget-object v1, p0, Lldp;->b:[Lldq;

    aget-object v1, v1, v0

    .line 173
    if-eqz v1, :cond_1

    .line 174
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 179
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 184
    iget-object v1, p0, Lldp;->a:Lldf;

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x1

    iget-object v2, p0, Lldp;->a:Lldf;

    .line 186
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_0
    iget-object v1, p0, Lldp;->b:[Lldq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lldp;->b:[Lldq;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 189
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lldp;->b:[Lldq;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 190
    iget-object v2, p0, Lldp;->b:[Lldq;

    aget-object v2, v2, v0

    .line 191
    if-eqz v2, :cond_1

    .line 192
    const/4 v3, 0x2

    .line 193
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 197
    :cond_3
    return v0
.end method
