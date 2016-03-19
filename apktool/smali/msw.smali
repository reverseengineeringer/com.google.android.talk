.class public final Lmsw;
.super Llyi;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[Lmsx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1043
    iput v0, p0, Lmsw;->a:I

    .line 1044
    iput v0, p0, Lmsw;->b:I

    .line 1045
    invoke-static {}, Lmsx;->d()[Lmsx;

    move-result-object v0

    iput-object v0, p0, Lmsw;->c:[Lmsx;

    .line 1046
    const/4 v0, -0x1

    iput v0, p0, Lmsw;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1098
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1099
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1103
    if-nez v0, :cond_0

    .line 1104
    :sswitch_0
    return-object p0

    .line 1109
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsw;->a:I

    goto :goto_0

    .line 1113
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsw;->b:I

    goto :goto_0

    .line 1117
    :sswitch_3
    const/16 v0, 0x1a

    .line 1118
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1119
    iget-object v0, p0, Lmsw;->c:[Lmsx;

    if-nez v0, :cond_2

    move v0, v1

    .line 1120
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmsx;

    .line 1122
    if-eqz v0, :cond_1

    .line 1123
    iget-object v3, p0, Lmsw;->c:[Lmsx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1126
    new-instance v3, Lmsx;

    invoke-direct {v3}, Lmsx;-><init>()V

    aput-object v3, v2, v0

    .line 1127
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1128
    invoke-virtual {p1}, Llxy;->a()I

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1119
    :cond_2
    iget-object v0, p0, Lmsw;->c:[Lmsx;

    array-length v0, v0

    goto :goto_1

    .line 1131
    :cond_3
    new-instance v3, Lmsx;

    invoke-direct {v3}, Lmsx;-><init>()V

    aput-object v3, v2, v0

    .line 1132
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1133
    iput-object v2, p0, Lmsw;->c:[Lmsx;

    goto :goto_0

    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lmsw;->a:I

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget v1, p0, Lmsw;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 56
    :cond_0
    iget v0, p0, Lmsw;->b:I

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget v1, p0, Lmsw;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 59
    :cond_1
    iget-object v0, p0, Lmsw;->c:[Lmsx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmsw;->c:[Lmsx;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmsw;->c:[Lmsx;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 61
    iget-object v1, p0, Lmsw;->c:[Lmsx;

    aget-object v1, v1, v0

    .line 62
    if-eqz v1, :cond_2

    .line 63
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 68
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 72
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 73
    iget v1, p0, Lmsw;->a:I

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iget v2, p0, Lmsw;->a:I

    .line 75
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_0
    iget v1, p0, Lmsw;->b:I

    if-eqz v1, :cond_1

    .line 78
    const/4 v1, 0x2

    iget v2, p0, Lmsw;->b:I

    .line 79
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_1
    iget-object v1, p0, Lmsw;->c:[Lmsx;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmsw;->c:[Lmsx;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 82
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmsw;->c:[Lmsx;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 83
    iget-object v2, p0, Lmsw;->c:[Lmsx;

    aget-object v2, v2, v0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 90
    :cond_4
    return v0
.end method
