.class public final Lhoz;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile g:[Lhoz;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lhoz;->a:Ljava/lang/String;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lhoz;->b:Ljava/lang/String;

    .line 1050
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lhoz;->c:[Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lhoz;->d:Ljava/lang/String;

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhoz;->e:Z

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lhoz;->f:Ljava/lang/String;

    .line 1054
    const/4 v0, -0x1

    iput v0, p0, Lhoz;->eE:I

    .line 45
    return-void
.end method

.method public static d()[Lhoz;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lhoz;->g:[Lhoz;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lhoz;->g:[Lhoz;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lhoz;

    sput-object v0, Lhoz;->g:[Lhoz;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lhoz;->g:[Lhoz;

    return-object v0

    .line 20
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

    .line 1124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1125
    sparse-switch v0, :sswitch_data_0

    .line 1129
    invoke-static {p1, v0}, Llyo;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    :sswitch_0
    return-object p0

    .line 1135
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhoz;->a:Ljava/lang/String;

    goto :goto_0

    .line 1139
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhoz;->b:Ljava/lang/String;

    goto :goto_0

    .line 1143
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1145
    iget-object v0, p0, Lhoz;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1146
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1147
    if-eqz v0, :cond_1

    .line 1148
    iget-object v3, p0, Lhoz;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1150
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1151
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1152
    invoke-virtual {p1}, Llxy;->a()I

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1145
    :cond_2
    iget-object v0, p0, Lhoz;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1155
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1156
    iput-object v2, p0, Lhoz;->c:[Ljava/lang/String;

    goto :goto_0

    .line 1160
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhoz;->d:Ljava/lang/String;

    goto :goto_0

    .line 1164
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhoz;->f:Ljava/lang/String;

    goto :goto_0

    .line 1168
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lhoz;->e:Z

    goto :goto_0

    .line 1125
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lhoz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lhoz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lhoz;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhoz;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lhoz;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lhoz;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 66
    if-eqz v1, :cond_0

    .line 67
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lhoz;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x4

    iget-object v1, p0, Lhoz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lhoz;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    const/4 v0, 0x5

    iget-object v1, p0, Lhoz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 77
    :cond_3
    iget-boolean v0, p0, Lhoz;->e:Z

    if-eqz v0, :cond_4

    .line 78
    const/4 v0, 0x6

    iget-boolean v1, p0, Lhoz;->e:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 80
    :cond_4
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 81
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-super {p0}, Llyi;->b()I

    move-result v1

    .line 86
    const/4 v2, 0x1

    iget-object v3, p0, Lhoz;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 88
    const/4 v2, 0x2

    iget-object v3, p0, Lhoz;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int v3, v1, v2

    .line 90
    iget-object v1, p0, Lhoz;->c:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lhoz;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v2, v0

    .line 93
    :goto_0
    iget-object v4, p0, Lhoz;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 94
    iget-object v4, p0, Lhoz;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 95
    if-eqz v4, :cond_0

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    add-int v0, v3, v1

    .line 102
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 104
    :goto_1
    iget-object v1, p0, Lhoz;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Lhoz;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_2
    iget-object v1, p0, Lhoz;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    const/4 v1, 0x5

    iget-object v2, p0, Lhoz;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_3
    iget-boolean v1, p0, Lhoz;->e:Z

    if-eqz v1, :cond_4

    .line 113
    const/4 v1, 0x6

    invoke-static {v1}, Llxz;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_4
    return v0

    :cond_5
    move v0, v3

    goto :goto_1
.end method
