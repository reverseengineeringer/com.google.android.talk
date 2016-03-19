.class public final Lmfa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:[B

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Llyb;-><init>()V

    .line 53
    iput-object v0, p0, Lmfa;->a:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lmfa;->b:[B

    .line 55
    iput-object v0, p0, Lmfa;->c:[B

    .line 56
    iput-object v0, p0, Lmfa;->d:Ljava/lang/Long;

    .line 57
    iput-object v0, p0, Lmfa;->e:Ljava/lang/Long;

    .line 58
    iput-object v0, p0, Lmfa;->f:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lmfa;->g:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lmfa;->eD:Llyd;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lmfa;->eE:I

    .line 62
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1119
    sparse-switch v0, :sswitch_data_0

    .line 1123
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    :sswitch_0
    return-object p0

    .line 1129
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmfa;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1133
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmfa;->b:[B

    goto :goto_0

    .line 1137
    :sswitch_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmfa;->c:[B

    goto :goto_0

    .line 1141
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmfa;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1145
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmfa;->e:Ljava/lang/Long;

    goto :goto_0

    .line 1149
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfa;->f:Ljava/lang/String;

    goto :goto_0

    .line 1153
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfa;->g:Ljava/lang/String;

    goto :goto_0

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lmfa;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lmfa;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 69
    const/4 v0, 0x3

    iget-object v1, p0, Lmfa;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 70
    iget-object v0, p0, Lmfa;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Lmfa;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 73
    :cond_0
    iget-object v0, p0, Lmfa;->e:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x6

    iget-object v1, p0, Lmfa;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 76
    :cond_1
    iget-object v0, p0, Lmfa;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x7

    iget-object v1, p0, Lmfa;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lmfa;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 80
    const/16 v0, 0x8

    iget-object v1, p0, Lmfa;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 83
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 88
    const/4 v1, 0x1

    iget-object v2, p0, Lmfa;->a:Ljava/lang/Integer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    const/4 v1, 0x2

    iget-object v2, p0, Lmfa;->b:[B

    .line 91
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    const/4 v1, 0x3

    iget-object v2, p0, Lmfa;->c:[B

    .line 93
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lmfa;->d:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x4

    iget-object v2, p0, Lmfa;->d:Ljava/lang/Long;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_0
    iget-object v1, p0, Lmfa;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x6

    iget-object v2, p0, Lmfa;->e:Ljava/lang/Long;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_1
    iget-object v1, p0, Lmfa;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x7

    iget-object v2, p0, Lmfa;->f:Ljava/lang/String;

    .line 104
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_2
    iget-object v1, p0, Lmfa;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 107
    const/16 v1, 0x8

    iget-object v2, p0, Lmfa;->g:Ljava/lang/String;

    .line 108
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_3
    return v0
.end method
