.class public final Ljnn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljlq;

.field public c:Lmdt;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v1, p0, Ljnn;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljlq;->d()[Ljlq;

    move-result-object v0

    iput-object v0, p0, Ljnn;->b:[Ljlq;

    .line 43
    iput-object v1, p0, Ljnn;->c:Lmdt;

    .line 44
    iput-object v1, p0, Ljnn;->d:Ljava/lang/Long;

    .line 45
    iput-object v1, p0, Ljnn;->e:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Ljnn;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljnn;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1113
    sparse-switch v0, :sswitch_data_0

    .line 1117
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    :sswitch_0
    return-object p0

    .line 1123
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljnn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1127
    :sswitch_2
    const/16 v0, 0x12

    .line 1128
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1129
    iget-object v0, p0, Ljnn;->b:[Ljlq;

    if-nez v0, :cond_2

    move v0, v1

    .line 1130
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljlq;

    .line 1132
    if-eqz v0, :cond_1

    .line 1133
    iget-object v3, p0, Ljnn;->b:[Ljlq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1136
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 1137
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1138
    invoke-virtual {p1}, Llxy;->a()I

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1129
    :cond_2
    iget-object v0, p0, Ljnn;->b:[Ljlq;

    array-length v0, v0

    goto :goto_1

    .line 1141
    :cond_3
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 1142
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1143
    iput-object v2, p0, Ljnn;->b:[Ljlq;

    goto :goto_0

    .line 1147
    :sswitch_3
    iget-object v0, p0, Ljnn;->c:Lmdt;

    if-nez v0, :cond_4

    .line 1148
    new-instance v0, Lmdt;

    invoke-direct {v0}, Lmdt;-><init>()V

    iput-object v0, p0, Ljnn;->c:Lmdt;

    .line 1150
    :cond_4
    iget-object v0, p0, Ljnn;->c:Lmdt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1154
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljnn;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1158
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljnn;->e:Ljava/lang/String;

    goto :goto_0

    .line 1113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Ljnn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Ljnn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Ljnn;->b:[Ljlq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljnn;->b:[Ljlq;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljnn;->b:[Ljlq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Ljnn;->b:[Ljlq;

    aget-object v1, v1, v0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Ljnn;->c:Lmdt;

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x3

    iget-object v1, p0, Ljnn;->c:Lmdt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_3
    iget-object v0, p0, Ljnn;->d:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 68
    const/4 v0, 0x4

    iget-object v1, p0, Ljnn;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 70
    :cond_4
    iget-object v0, p0, Ljnn;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 71
    const/4 v0, 0x5

    iget-object v1, p0, Ljnn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 73
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 74
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 78
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 79
    iget-object v1, p0, Ljnn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Ljnn;->a:Ljava/lang/String;

    .line 81
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Ljnn;->b:[Ljlq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljnn;->b:[Ljlq;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 84
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljnn;->b:[Ljlq;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 85
    iget-object v2, p0, Ljnn;->b:[Ljlq;

    aget-object v2, v2, v0

    .line 86
    if-eqz v2, :cond_1

    .line 87
    const/4 v3, 0x2

    .line 88
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 92
    :cond_3
    iget-object v1, p0, Ljnn;->c:Lmdt;

    if-eqz v1, :cond_4

    .line 93
    const/4 v1, 0x3

    iget-object v2, p0, Ljnn;->c:Lmdt;

    .line 94
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_4
    iget-object v1, p0, Ljnn;->d:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 97
    const/4 v1, 0x4

    iget-object v2, p0, Ljnn;->d:Ljava/lang/Long;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_5
    iget-object v1, p0, Ljnn;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 101
    const/4 v1, 0x5

    iget-object v2, p0, Ljnn;->e:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_6
    return v0
.end method
