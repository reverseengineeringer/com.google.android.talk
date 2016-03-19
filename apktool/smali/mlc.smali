.class public final Lmlc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lmlc;


# instance fields
.field public a:Lmks;

.field public b:[Lmmt;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1055
    iput-object v1, p0, Lmlc;->a:Lmks;

    .line 1056
    invoke-static {}, Lmmt;->d()[Lmmt;

    move-result-object v0

    iput-object v0, p0, Lmlc;->b:[Lmmt;

    .line 1057
    iput-object v1, p0, Lmlc;->c:Ljava/lang/String;

    .line 1058
    iput-object v1, p0, Lmlc;->d:Ljava/lang/String;

    .line 1059
    iput-object v1, p0, Lmlc;->e:Ljava/lang/Long;

    .line 1060
    iput-object v1, p0, Lmlc;->f:Ljava/lang/Long;

    .line 1061
    iput-object v1, p0, Lmlc;->eD:Llyd;

    .line 1062
    const/4 v0, -0x1

    iput v0, p0, Lmlc;->eE:I

    .line 52
    return-void
.end method

.method public static d()[Lmlc;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lmlc;->g:[Lmlc;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lmlc;->g:[Lmlc;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lmlc;

    sput-object v0, Lmlc;->g:[Lmlc;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lmlc;->g:[Lmlc;

    return-object v0

    .line 25
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

    .line 1131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1132
    sparse-switch v0, :sswitch_data_0

    .line 1136
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    :sswitch_0
    return-object p0

    .line 1142
    :sswitch_1
    iget-object v0, p0, Lmlc;->a:Lmks;

    if-nez v0, :cond_1

    .line 1143
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlc;->a:Lmks;

    .line 1145
    :cond_1
    iget-object v0, p0, Lmlc;->a:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1149
    :sswitch_2
    const/16 v0, 0x12

    .line 1150
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1151
    iget-object v0, p0, Lmlc;->b:[Lmmt;

    if-nez v0, :cond_3

    move v0, v1

    .line 1152
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmt;

    .line 1154
    if-eqz v0, :cond_2

    .line 1155
    iget-object v3, p0, Lmlc;->b:[Lmmt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1158
    new-instance v3, Lmmt;

    invoke-direct {v3}, Lmmt;-><init>()V

    aput-object v3, v2, v0

    .line 1159
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1160
    invoke-virtual {p1}, Llxy;->a()I

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1151
    :cond_3
    iget-object v0, p0, Lmlc;->b:[Lmmt;

    array-length v0, v0

    goto :goto_1

    .line 1163
    :cond_4
    new-instance v3, Lmmt;

    invoke-direct {v3}, Lmmt;-><init>()V

    aput-object v3, v2, v0

    .line 1164
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1165
    iput-object v2, p0, Lmlc;->b:[Lmmt;

    goto :goto_0

    .line 1169
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlc;->c:Ljava/lang/String;

    goto :goto_0

    .line 1173
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlc;->d:Ljava/lang/String;

    goto :goto_0

    .line 1177
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmlc;->e:Ljava/lang/Long;

    goto :goto_0

    .line 1181
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmlc;->f:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1132
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lmlc;->a:Lmks;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iget-object v1, p0, Lmlc;->a:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lmlc;->b:[Lmmt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmlc;->b:[Lmmt;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 73
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlc;->b:[Lmmt;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v1, p0, Lmlc;->b:[Lmmt;

    aget-object v1, v1, v0

    .line 75
    if-eqz v1, :cond_1

    .line 76
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x3

    iget-object v1, p0, Lmlc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lmlc;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x4

    iget-object v1, p0, Lmlc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lmlc;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 85
    const/4 v0, 0x5

    iget-object v1, p0, Lmlc;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 87
    :cond_4
    iget-object v0, p0, Lmlc;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 88
    const/4 v0, 0x6

    iget-object v1, p0, Lmlc;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 90
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 91
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 96
    iget-object v1, p0, Lmlc;->a:Lmks;

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    iget-object v2, p0, Lmlc;->a:Lmks;

    .line 98
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    iget-object v1, p0, Lmlc;->b:[Lmmt;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmlc;->b:[Lmmt;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 101
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmlc;->b:[Lmmt;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 102
    iget-object v2, p0, Lmlc;->b:[Lmmt;

    aget-object v2, v2, v0

    .line 103
    if-eqz v2, :cond_1

    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 109
    :cond_3
    const/4 v1, 0x3

    iget-object v2, p0, Lmlc;->c:Ljava/lang/String;

    .line 110
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Lmlc;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 112
    const/4 v1, 0x4

    iget-object v2, p0, Lmlc;->d:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_4
    iget-object v1, p0, Lmlc;->e:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 116
    const/4 v1, 0x5

    iget-object v2, p0, Lmlc;->e:Ljava/lang/Long;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_5
    iget-object v1, p0, Lmlc;->f:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 120
    const/4 v1, 0x6

    iget-object v2, p0, Lmlc;->f:Ljava/lang/Long;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_6
    return v0
.end method
