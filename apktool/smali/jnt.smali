.class public final Ljnt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljnt;


# instance fields
.field public a:Ljnz;

.field public b:Ljoa;

.field public c:[Ljnw;

.field public d:[Ljnx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Ljnt;->a:Ljnz;

    .line 39
    iput-object v1, p0, Ljnt;->b:Ljoa;

    .line 40
    invoke-static {}, Ljnw;->d()[Ljnw;

    move-result-object v0

    iput-object v0, p0, Ljnt;->c:[Ljnw;

    .line 41
    invoke-static {}, Ljnx;->d()[Ljnx;

    move-result-object v0

    iput-object v0, p0, Ljnt;->d:[Ljnx;

    .line 42
    iput-object v1, p0, Ljnt;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljnt;->eE:I

    .line 44
    return-void
.end method

.method public static d()[Ljnt;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljnt;->e:[Ljnt;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljnt;->e:[Ljnt;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljnt;

    sput-object v0, Ljnt;->e:[Ljnt;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljnt;->e:[Ljnt;

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

    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    iget-object v0, p0, Ljnt;->a:Ljnz;

    if-nez v0, :cond_1

    .line 1123
    new-instance v0, Ljnz;

    invoke-direct {v0}, Ljnz;-><init>()V

    iput-object v0, p0, Ljnt;->a:Ljnz;

    .line 1125
    :cond_1
    iget-object v0, p0, Ljnt;->a:Ljnz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1129
    :sswitch_2
    iget-object v0, p0, Ljnt;->b:Ljoa;

    if-nez v0, :cond_2

    .line 1130
    new-instance v0, Ljoa;

    invoke-direct {v0}, Ljoa;-><init>()V

    iput-object v0, p0, Ljnt;->b:Ljoa;

    .line 1132
    :cond_2
    iget-object v0, p0, Ljnt;->b:Ljoa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1136
    :sswitch_3
    const/16 v0, 0x1a

    .line 1137
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1138
    iget-object v0, p0, Ljnt;->c:[Ljnw;

    if-nez v0, :cond_4

    move v0, v1

    .line 1139
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljnw;

    .line 1141
    if-eqz v0, :cond_3

    .line 1142
    iget-object v3, p0, Ljnt;->c:[Ljnw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1145
    new-instance v3, Ljnw;

    invoke-direct {v3}, Ljnw;-><init>()V

    aput-object v3, v2, v0

    .line 1146
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1147
    invoke-virtual {p1}, Llxy;->a()I

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1138
    :cond_4
    iget-object v0, p0, Ljnt;->c:[Ljnw;

    array-length v0, v0

    goto :goto_1

    .line 1150
    :cond_5
    new-instance v3, Ljnw;

    invoke-direct {v3}, Ljnw;-><init>()V

    aput-object v3, v2, v0

    .line 1151
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1152
    iput-object v2, p0, Ljnt;->c:[Ljnw;

    goto :goto_0

    .line 1156
    :sswitch_4
    const/16 v0, 0x22

    .line 1157
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1158
    iget-object v0, p0, Ljnt;->d:[Ljnx;

    if-nez v0, :cond_7

    move v0, v1

    .line 1159
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljnx;

    .line 1161
    if-eqz v0, :cond_6

    .line 1162
    iget-object v3, p0, Ljnt;->d:[Ljnx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1165
    new-instance v3, Ljnx;

    invoke-direct {v3}, Ljnx;-><init>()V

    aput-object v3, v2, v0

    .line 1166
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1167
    invoke-virtual {p1}, Llxy;->a()I

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1158
    :cond_7
    iget-object v0, p0, Ljnt;->d:[Ljnx;

    array-length v0, v0

    goto :goto_3

    .line 1170
    :cond_8
    new-instance v3, Ljnx;

    invoke-direct {v3}, Ljnx;-><init>()V

    aput-object v3, v2, v0

    .line 1171
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1172
    iput-object v2, p0, Ljnt;->d:[Ljnx;

    goto/16 :goto_0

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Ljnt;->a:Ljnz;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v2, p0, Ljnt;->a:Ljnz;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_0
    iget-object v0, p0, Ljnt;->b:Ljoa;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v2, p0, Ljnt;->b:Ljoa;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 55
    :cond_1
    iget-object v0, p0, Ljnt;->c:[Ljnw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljnt;->c:[Ljnw;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 56
    :goto_0
    iget-object v2, p0, Ljnt;->c:[Ljnw;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 57
    iget-object v2, p0, Ljnt;->c:[Ljnw;

    aget-object v2, v2, v0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Ljnt;->d:[Ljnx;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljnt;->d:[Ljnx;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 64
    :goto_1
    iget-object v0, p0, Ljnt;->d:[Ljnx;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 65
    iget-object v0, p0, Ljnt;->d:[Ljnx;

    aget-object v0, v0, v1

    .line 66
    if-eqz v0, :cond_4

    .line 67
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 64
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 72
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 77
    iget-object v2, p0, Ljnt;->a:Ljnz;

    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x1

    iget-object v3, p0, Ljnt;->a:Ljnz;

    .line 79
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 81
    :cond_0
    iget-object v2, p0, Ljnt;->b:Ljoa;

    if-eqz v2, :cond_1

    .line 82
    const/4 v2, 0x2

    iget-object v3, p0, Ljnt;->b:Ljoa;

    .line 83
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 85
    :cond_1
    iget-object v2, p0, Ljnt;->c:[Ljnw;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljnt;->c:[Ljnw;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 86
    :goto_0
    iget-object v3, p0, Ljnt;->c:[Ljnw;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 87
    iget-object v3, p0, Ljnt;->c:[Ljnw;

    aget-object v3, v3, v0

    .line 88
    if-eqz v3, :cond_2

    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 94
    :cond_4
    iget-object v2, p0, Ljnt;->d:[Ljnx;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljnt;->d:[Ljnx;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 95
    :goto_1
    iget-object v2, p0, Ljnt;->d:[Ljnx;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 96
    iget-object v2, p0, Ljnt;->d:[Ljnx;

    aget-object v2, v2, v1

    .line 97
    if-eqz v2, :cond_5

    .line 98
    const/4 v3, 0x4

    .line 99
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_6
    return v0
.end method
