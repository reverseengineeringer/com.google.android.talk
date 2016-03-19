.class public final Lmma;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmma;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmma;


# instance fields
.field public a:Lmiv;

.field public b:[Lmkt;

.field public c:Lmkt;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v1, p0, Lmma;->a:Lmiv;

    .line 1050
    invoke-static {}, Lmkt;->d()[Lmkt;

    move-result-object v0

    iput-object v0, p0, Lmma;->b:[Lmkt;

    .line 1051
    iput-object v1, p0, Lmma;->c:Lmkt;

    .line 1052
    iput-object v1, p0, Lmma;->d:Ljava/lang/String;

    .line 1053
    iput-object v1, p0, Lmma;->e:Ljava/lang/String;

    .line 1054
    iput-object v1, p0, Lmma;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lmma;->eE:I

    .line 46
    return-void
.end method

.method public static d()[Lmma;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lmma;->f:[Lmma;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lmma;->f:[Lmma;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lmma;

    sput-object v0, Lmma;->f:[Lmma;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lmma;->f:[Lmma;

    return-object v0

    .line 22
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

    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1122
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    iget-object v0, p0, Lmma;->a:Lmiv;

    if-nez v0, :cond_1

    .line 1133
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    iput-object v0, p0, Lmma;->a:Lmiv;

    .line 1135
    :cond_1
    iget-object v0, p0, Lmma;->a:Lmiv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1139
    :sswitch_2
    const/16 v0, 0x12

    .line 1140
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1141
    iget-object v0, p0, Lmma;->b:[Lmkt;

    if-nez v0, :cond_3

    move v0, v1

    .line 1142
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkt;

    .line 1144
    if-eqz v0, :cond_2

    .line 1145
    iget-object v3, p0, Lmma;->b:[Lmkt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1148
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1149
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1150
    invoke-virtual {p1}, Llxy;->a()I

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1141
    :cond_3
    iget-object v0, p0, Lmma;->b:[Lmkt;

    array-length v0, v0

    goto :goto_1

    .line 1153
    :cond_4
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1154
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1155
    iput-object v2, p0, Lmma;->b:[Lmkt;

    goto :goto_0

    .line 1159
    :sswitch_3
    iget-object v0, p0, Lmma;->c:Lmkt;

    if-nez v0, :cond_5

    .line 1160
    new-instance v0, Lmkt;

    invoke-direct {v0}, Lmkt;-><init>()V

    iput-object v0, p0, Lmma;->c:Lmkt;

    .line 1162
    :cond_5
    iget-object v0, p0, Lmma;->c:Lmkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1166
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmma;->d:Ljava/lang/String;

    goto :goto_0

    .line 1170
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmma;->e:Ljava/lang/String;

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lmma;->a:Lmiv;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lmma;->a:Lmiv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lmma;->b:[Lmkt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmma;->b:[Lmkt;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmma;->b:[Lmkt;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 67
    iget-object v1, p0, Lmma;->b:[Lmkt;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lmma;->c:Lmkt;

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x3

    iget-object v1, p0, Lmma;->c:Lmkt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lmma;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lmma;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lmma;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lmma;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 83
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 87
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 88
    iget-object v1, p0, Lmma;->a:Lmiv;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lmma;->a:Lmiv;

    .line 90
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget-object v1, p0, Lmma;->b:[Lmkt;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmma;->b:[Lmkt;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 93
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmma;->b:[Lmkt;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lmma;->b:[Lmkt;

    aget-object v2, v2, v0

    .line 95
    if-eqz v2, :cond_1

    .line 96
    const/4 v3, 0x2

    .line 97
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 101
    :cond_3
    iget-object v1, p0, Lmma;->c:Lmkt;

    if-eqz v1, :cond_4

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lmma;->c:Lmkt;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_4
    iget-object v1, p0, Lmma;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, Lmma;->d:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_5
    iget-object v1, p0, Lmma;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 110
    const/4 v1, 0x5

    iget-object v2, p0, Lmma;->e:Ljava/lang/String;

    .line 111
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_6
    return v0
.end method
