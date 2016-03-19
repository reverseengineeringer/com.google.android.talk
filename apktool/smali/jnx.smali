.class public final Ljnx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljnx;


# instance fields
.field public a:[Ljnw;

.field public b:Ljoa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    invoke-static {}, Ljnw;->d()[Ljnw;

    move-result-object v0

    iput-object v0, p0, Ljnx;->a:[Ljnw;

    .line 33
    iput-object v1, p0, Ljnx;->b:Ljoa;

    .line 34
    iput-object v1, p0, Ljnx;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ljnx;->eE:I

    .line 36
    return-void
.end method

.method public static d()[Ljnx;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljnx;->c:[Ljnx;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljnx;->c:[Ljnx;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljnx;

    sput-object v0, Ljnx;->c:[Ljnx;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljnx;->c:[Ljnx;

    return-object v0

    .line 18
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

    .line 1079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1080
    sparse-switch v0, :sswitch_data_0

    .line 1084
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    :sswitch_0
    return-object p0

    .line 1090
    :sswitch_1
    const/16 v0, 0xa

    .line 1091
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1092
    iget-object v0, p0, Ljnx;->a:[Ljnw;

    if-nez v0, :cond_2

    move v0, v1

    .line 1093
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljnw;

    .line 1095
    if-eqz v0, :cond_1

    .line 1096
    iget-object v3, p0, Ljnx;->a:[Ljnw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1098
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1099
    new-instance v3, Ljnw;

    invoke-direct {v3}, Ljnw;-><init>()V

    aput-object v3, v2, v0

    .line 1100
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1101
    invoke-virtual {p1}, Llxy;->a()I

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1092
    :cond_2
    iget-object v0, p0, Ljnx;->a:[Ljnw;

    array-length v0, v0

    goto :goto_1

    .line 1104
    :cond_3
    new-instance v3, Ljnw;

    invoke-direct {v3}, Ljnw;-><init>()V

    aput-object v3, v2, v0

    .line 1105
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1106
    iput-object v2, p0, Ljnx;->a:[Ljnw;

    goto :goto_0

    .line 1110
    :sswitch_2
    iget-object v0, p0, Ljnx;->b:Ljoa;

    if-nez v0, :cond_4

    .line 1111
    new-instance v0, Ljoa;

    invoke-direct {v0}, Ljoa;-><init>()V

    iput-object v0, p0, Ljnx;->b:Ljoa;

    .line 1113
    :cond_4
    iget-object v0, p0, Ljnx;->b:Ljoa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1080
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
    .line 41
    iget-object v0, p0, Ljnx;->a:[Ljnw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljnx;->a:[Ljnw;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljnx;->a:[Ljnw;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 43
    iget-object v1, p0, Ljnx;->a:[Ljnw;

    aget-object v1, v1, v0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Ljnx;->b:Ljoa;

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x2

    iget-object v1, p0, Ljnx;->b:Ljoa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 53
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 58
    iget-object v0, p0, Ljnx;->a:[Ljnw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljnx;->a:[Ljnw;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljnx;->a:[Ljnw;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Ljnx;->a:[Ljnw;

    aget-object v2, v2, v0

    .line 61
    if-eqz v2, :cond_0

    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Ljnx;->b:Ljoa;

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x2

    iget-object v2, p0, Ljnx;->b:Ljoa;

    .line 69
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 71
    :cond_2
    return v1
.end method
