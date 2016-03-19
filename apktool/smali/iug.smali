.class public final Liug;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liug;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liug;->a:[Ljava/lang/String;

    .line 33
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liug;->b:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Liug;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Liug;->eE:I

    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1100
    sparse-switch v0, :sswitch_data_0

    .line 1104
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :sswitch_0
    return-object p0

    .line 1110
    :sswitch_1
    const/16 v0, 0xa

    .line 1111
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1112
    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1113
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1114
    if-eqz v0, :cond_1

    .line 1115
    iget-object v3, p0, Liug;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1118
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1119
    invoke-virtual {p1}, Llxy;->a()I

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1112
    :cond_2
    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1122
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1123
    iput-object v2, p0, Liug;->a:[Ljava/lang/String;

    goto :goto_0

    .line 1127
    :sswitch_2
    const/16 v0, 0x12

    .line 1128
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1129
    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 1130
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1131
    if-eqz v0, :cond_4

    .line 1132
    iget-object v3, p0, Liug;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1135
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1136
    invoke-virtual {p1}, Llxy;->a()I

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1129
    :cond_5
    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 1139
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1140
    iput-object v2, p0, Liug;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1100
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 42
    :goto_0
    iget-object v2, p0, Liug;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 43
    iget-object v2, p0, Liug;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 44
    if-eqz v2, :cond_0

    .line 45
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 50
    :goto_1
    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 51
    iget-object v0, p0, Liug;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 52
    if-eqz v0, :cond_2

    .line 53
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 50
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 58
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0}, Llyb;->b()I

    move-result v4

    .line 63
    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Liug;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 66
    :goto_0
    iget-object v5, p0, Liug;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 67
    iget-object v5, p0, Liug;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 68
    if-eqz v5, :cond_0

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 71
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    add-int v0, v4, v2

    .line 75
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 77
    :goto_1
    iget-object v2, p0, Liug;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Liug;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 80
    :goto_2
    iget-object v4, p0, Liug;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 81
    iget-object v4, p0, Liug;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 82
    if-eqz v4, :cond_2

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 88
    :cond_3
    add-int/2addr v0, v2

    .line 89
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 91
    :cond_4
    return v0

    :cond_5
    move v0, v4

    goto :goto_1
.end method
