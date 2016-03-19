.class public final Liyc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmbz;

.field public b:Lmcc;

.field public c:Ljava/lang/String;

.field public d:Lmrg;

.field public e:Litc;

.field public f:Litd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    iput-object v0, p0, Liyc;->a:Lmbz;

    .line 45
    iput-object v0, p0, Liyc;->b:Lmcc;

    .line 46
    iput-object v0, p0, Liyc;->c:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Liyc;->d:Lmrg;

    .line 48
    iput-object v0, p0, Liyc;->e:Litc;

    .line 49
    iput-object v0, p0, Liyc;->f:Litd;

    .line 50
    iput-object v0, p0, Liyc;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Liyc;->eE:I

    .line 52
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1114
    sparse-switch v0, :sswitch_data_0

    .line 1118
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    :sswitch_0
    return-object p0

    .line 1124
    :sswitch_1
    iget-object v0, p0, Liyc;->a:Lmbz;

    if-nez v0, :cond_1

    .line 1125
    new-instance v0, Lmbz;

    invoke-direct {v0}, Lmbz;-><init>()V

    iput-object v0, p0, Liyc;->a:Lmbz;

    .line 1127
    :cond_1
    iget-object v0, p0, Liyc;->a:Lmbz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1131
    :sswitch_2
    iget-object v0, p0, Liyc;->b:Lmcc;

    if-nez v0, :cond_2

    .line 1132
    new-instance v0, Lmcc;

    invoke-direct {v0}, Lmcc;-><init>()V

    iput-object v0, p0, Liyc;->b:Lmcc;

    .line 1134
    :cond_2
    iget-object v0, p0, Liyc;->b:Lmcc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1138
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liyc;->c:Ljava/lang/String;

    goto :goto_0

    .line 1142
    :sswitch_4
    iget-object v0, p0, Liyc;->d:Lmrg;

    if-nez v0, :cond_3

    .line 1143
    new-instance v0, Lmrg;

    invoke-direct {v0}, Lmrg;-><init>()V

    iput-object v0, p0, Liyc;->d:Lmrg;

    .line 1145
    :cond_3
    iget-object v0, p0, Liyc;->d:Lmrg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1149
    :sswitch_5
    iget-object v0, p0, Liyc;->e:Litc;

    if-nez v0, :cond_4

    .line 1150
    new-instance v0, Litc;

    invoke-direct {v0}, Litc;-><init>()V

    iput-object v0, p0, Liyc;->e:Litc;

    .line 1152
    :cond_4
    iget-object v0, p0, Liyc;->e:Litc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1156
    :sswitch_6
    iget-object v0, p0, Liyc;->f:Litd;

    if-nez v0, :cond_5

    .line 1157
    new-instance v0, Litd;

    invoke-direct {v0}, Litd;-><init>()V

    iput-object v0, p0, Liyc;->f:Litd;

    .line 1159
    :cond_5
    iget-object v0, p0, Liyc;->f:Litd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Liyc;->a:Lmbz;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Liyc;->a:Lmbz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 60
    :cond_0
    iget-object v0, p0, Liyc;->b:Lmcc;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Liyc;->b:Lmcc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 63
    :cond_1
    iget-object v0, p0, Liyc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Liyc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Liyc;->d:Lmrg;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Liyc;->d:Lmrg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 69
    :cond_3
    iget-object v0, p0, Liyc;->e:Litc;

    if-eqz v0, :cond_4

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Liyc;->e:Litc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_4
    iget-object v0, p0, Liyc;->f:Litd;

    if-eqz v0, :cond_5

    .line 73
    const/4 v0, 0x6

    iget-object v1, p0, Liyc;->f:Litd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v1, p0, Liyc;->a:Lmbz;

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    iget-object v2, p0, Liyc;->a:Lmbz;

    .line 83
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Liyc;->b:Lmcc;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Liyc;->b:Lmcc;

    .line 87
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Liyc;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Liyc;->c:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Liyc;->d:Lmrg;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Liyc;->d:Lmrg;

    .line 95
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget-object v1, p0, Liyc;->e:Litc;

    if-eqz v1, :cond_4

    .line 98
    const/4 v1, 0x5

    iget-object v2, p0, Liyc;->e:Litc;

    .line 99
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget-object v1, p0, Liyc;->f:Litd;

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x6

    iget-object v2, p0, Liyc;->f:Litd;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_5
    return v0
.end method
