.class public final Lljd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lljd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lljd;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2094
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3099
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lljd;->a:[Ljava/lang/String;

    .line 3100
    iput-object v1, p0, Lljd;->b:Ljava/lang/String;

    .line 3101
    iput-object v1, p0, Lljd;->eD:Llyd;

    .line 3102
    const/4 v0, -0x1

    iput v0, p0, Lljd;->eE:I

    .line 2096
    return-void
.end method

.method public static d()[Lljd;
    .locals 2

    .prologue
    .line 2075
    sget-object v0, Lljd;->c:[Lljd;

    if-nez v0, :cond_1

    .line 2076
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2078
    :try_start_0
    sget-object v0, Lljd;->c:[Lljd;

    if-nez v0, :cond_0

    .line 2079
    const/4 v0, 0x0

    new-array v0, v0, [Lljd;

    sput-object v0, Lljd;->c:[Lljd;

    .line 2081
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2083
    :cond_1
    sget-object v0, Lljd;->c:[Lljd;

    return-object v0

    .line 2081
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

    .line 3152
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3153
    sparse-switch v0, :sswitch_data_0

    .line 3157
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3158
    :sswitch_0
    return-object p0

    .line 3163
    :sswitch_1
    const/16 v0, 0xa

    .line 3164
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3165
    iget-object v0, p0, Lljd;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3166
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3167
    if-eqz v0, :cond_1

    .line 3168
    iget-object v3, p0, Lljd;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3170
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3171
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3172
    invoke-virtual {p1}, Llxy;->a()I

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3165
    :cond_2
    iget-object v0, p0, Lljd;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3175
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3176
    iput-object v2, p0, Lljd;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3180
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lljd;->b:Ljava/lang/String;

    goto :goto_0

    .line 3153
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
    .line 2109
    iget-object v0, p0, Lljd;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lljd;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2110
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lljd;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2111
    iget-object v1, p0, Lljd;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2112
    if-eqz v1, :cond_0

    .line 2113
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2117
    :cond_1
    iget-object v0, p0, Lljd;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2118
    const/4 v0, 0x2

    iget-object v1, p0, Lljd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2120
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2121
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2125
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 2126
    iget-object v1, p0, Lljd;->a:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lljd;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    move v2, v0

    .line 2129
    :goto_0
    iget-object v4, p0, Lljd;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 2130
    iget-object v4, p0, Lljd;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 2131
    if-eqz v4, :cond_0

    .line 2132
    add-int/lit8 v2, v2, 0x1

    .line 2134
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 2129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2137
    :cond_1
    add-int v0, v3, v1

    .line 2138
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 2140
    :goto_1
    iget-object v1, p0, Lljd;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2141
    const/4 v1, 0x2

    iget-object v2, p0, Lljd;->b:Ljava/lang/String;

    .line 2142
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2144
    :cond_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
