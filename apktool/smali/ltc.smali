.class public final Lltc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lltc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lltc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Llte;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    iput-object v1, p0, Lltc;->a:Ljava/lang/String;

    .line 33
    invoke-static {}, Llte;->d()[Llte;

    move-result-object v0

    iput-object v0, p0, Lltc;->b:[Llte;

    .line 34
    iput-object v1, p0, Lltc;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lltc;->eE:I

    .line 36
    return-void
.end method

.method public static d()[Lltc;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lltc;->c:[Lltc;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lltc;->c:[Lltc;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lltc;

    sput-object v0, Lltc;->c:[Lltc;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lltc;->c:[Lltc;

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
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lltc;->a:Ljava/lang/String;

    goto :goto_0

    .line 1094
    :sswitch_2
    const/16 v0, 0x12

    .line 1095
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1096
    iget-object v0, p0, Lltc;->b:[Llte;

    if-nez v0, :cond_2

    move v0, v1

    .line 1097
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llte;

    .line 1099
    if-eqz v0, :cond_1

    .line 1100
    iget-object v3, p0, Lltc;->b:[Llte;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1103
    new-instance v3, Llte;

    invoke-direct {v3}, Llte;-><init>()V

    aput-object v3, v2, v0

    .line 1104
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1105
    invoke-virtual {p1}, Llxy;->a()I

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1096
    :cond_2
    iget-object v0, p0, Lltc;->b:[Llte;

    array-length v0, v0

    goto :goto_1

    .line 1108
    :cond_3
    new-instance v3, Llte;

    invoke-direct {v3}, Llte;-><init>()V

    aput-object v3, v2, v0

    .line 1109
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1110
    iput-object v2, p0, Lltc;->b:[Llte;

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
    iget-object v0, p0, Lltc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lltc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lltc;->b:[Llte;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lltc;->b:[Llte;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lltc;->b:[Llte;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 46
    iget-object v1, p0, Lltc;->b:[Llte;

    aget-object v1, v1, v0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 53
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 58
    iget-object v1, p0, Lltc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Lltc;->a:Ljava/lang/String;

    .line 60
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Lltc;->b:[Llte;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lltc;->b:[Llte;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 63
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lltc;->b:[Llte;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 64
    iget-object v2, p0, Lltc;->b:[Llte;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_1

    .line 66
    const/4 v3, 0x2

    .line 67
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 71
    :cond_3
    return v0
.end method
