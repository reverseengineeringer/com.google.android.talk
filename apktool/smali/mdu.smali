.class public final Lmdu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmdu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmdu;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:[Lmdt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Lmdu;->a:Ljava/lang/String;

    .line 39
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    .line 40
    invoke-static {}, Lmdt;->d()[Lmdt;

    move-result-object v0

    iput-object v0, p0, Lmdu;->c:[Lmdt;

    .line 41
    iput-object v1, p0, Lmdu;->eD:Llyd;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lmdu;->eE:I

    .line 43
    return-void
.end method

.method public static d()[Lmdu;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lmdu;->d:[Lmdu;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lmdu;->d:[Lmdu;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lmdu;

    sput-object v0, Lmdu;->d:[Lmdu;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lmdu;->d:[Lmdu;

    return-object v0

    .line 21
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

    .line 1104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1105
    sparse-switch v0, :sswitch_data_0

    .line 1109
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    :sswitch_0
    return-object p0

    .line 1115
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmdu;->a:Ljava/lang/String;

    goto :goto_0

    .line 1119
    :sswitch_2
    const/16 v0, 0x12

    .line 1120
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1121
    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1122
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1123
    if-eqz v0, :cond_1

    .line 1124
    iget-object v3, p0, Lmdu;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1126
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1127
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1128
    invoke-virtual {p1}, Llxy;->a()I

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1121
    :cond_2
    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1131
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1132
    iput-object v2, p0, Lmdu;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1136
    :sswitch_3
    const/16 v0, 0x1a

    .line 1137
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1138
    iget-object v0, p0, Lmdu;->c:[Lmdt;

    if-nez v0, :cond_5

    move v0, v1

    .line 1139
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmdt;

    .line 1141
    if-eqz v0, :cond_4

    .line 1142
    iget-object v3, p0, Lmdu;->c:[Lmdt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1145
    new-instance v3, Lmdt;

    invoke-direct {v3}, Lmdt;-><init>()V

    aput-object v3, v2, v0

    .line 1146
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1147
    invoke-virtual {p1}, Llxy;->a()I

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1138
    :cond_5
    iget-object v0, p0, Lmdu;->c:[Lmdt;

    array-length v0, v0

    goto :goto_3

    .line 1150
    :cond_6
    new-instance v3, Lmdt;

    invoke-direct {v3}, Lmdt;-><init>()V

    aput-object v3, v2, v0

    .line 1151
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1152
    iput-object v2, p0, Lmdu;->c:[Lmdt;

    goto/16 :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x1

    iget-object v2, p0, Lmdu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 50
    :goto_0
    iget-object v2, p0, Lmdu;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lmdu;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lmdu;->c:[Lmdt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmdu;->c:[Lmdt;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 58
    :goto_1
    iget-object v0, p0, Lmdu;->c:[Lmdt;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 59
    iget-object v0, p0, Lmdu;->c:[Lmdt;

    aget-object v0, v0, v1

    .line 60
    if-eqz v0, :cond_2

    .line 61
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 66
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 71
    const/4 v2, 0x1

    iget-object v3, p0, Lmdu;->a:Ljava/lang/String;

    .line 72
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int v4, v0, v2

    .line 73
    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmdu;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    move v2, v1

    move v3, v1

    .line 76
    :goto_0
    iget-object v5, p0, Lmdu;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 77
    iget-object v5, p0, Lmdu;->b:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 78
    if-eqz v5, :cond_0

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    add-int v0, v4, v2

    .line 85
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 87
    :goto_1
    iget-object v2, p0, Lmdu;->c:[Lmdt;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmdu;->c:[Lmdt;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 88
    :goto_2
    iget-object v2, p0, Lmdu;->c:[Lmdt;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 89
    iget-object v2, p0, Lmdu;->c:[Lmdt;

    aget-object v2, v2, v1

    .line 90
    if-eqz v2, :cond_2

    .line 91
    const/4 v3, 0x3

    .line 92
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_3
    return v0

    :cond_4
    move v0, v4

    goto :goto_1
.end method
