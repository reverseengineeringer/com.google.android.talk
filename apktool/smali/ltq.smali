.class public final Lltq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lltq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llqs;

.field public c:I

.field public d:Lltu;

.field public e:Ljava/lang/String;

.field public f:Lltr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Llyb;-><init>()V

    .line 54
    iput-object v1, p0, Lltq;->a:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lltq;->b:Llqs;

    .line 56
    const/high16 v0, -0x80000000

    iput v0, p0, Lltq;->c:I

    .line 57
    iput-object v1, p0, Lltq;->d:Lltu;

    .line 58
    iput-object v1, p0, Lltq;->e:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lltq;->f:Lltr;

    .line 60
    iput-object v1, p0, Lltq;->eD:Llyd;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lltq;->eE:I

    .line 62
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1124
    sparse-switch v0, :sswitch_data_0

    .line 1128
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    :sswitch_0
    return-object p0

    .line 1134
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lltq;->a:Ljava/lang/String;

    goto :goto_0

    .line 1138
    :sswitch_2
    iget-object v0, p0, Lltq;->b:Llqs;

    if-nez v0, :cond_1

    .line 1139
    new-instance v0, Llqs;

    invoke-direct {v0}, Llqs;-><init>()V

    iput-object v0, p0, Lltq;->b:Llqs;

    .line 1141
    :cond_1
    iget-object v0, p0, Lltq;->b:Llqs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1145
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1146
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1153
    :pswitch_0
    iput v0, p0, Lltq;->c:I

    goto :goto_0

    .line 1159
    :sswitch_4
    iget-object v0, p0, Lltq;->d:Lltu;

    if-nez v0, :cond_2

    .line 1160
    new-instance v0, Lltu;

    invoke-direct {v0}, Lltu;-><init>()V

    iput-object v0, p0, Lltq;->d:Lltu;

    .line 1162
    :cond_2
    iget-object v0, p0, Lltq;->d:Lltu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1166
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lltq;->e:Ljava/lang/String;

    goto :goto_0

    .line 1170
    :sswitch_6
    iget-object v0, p0, Lltq;->f:Lltr;

    if-nez v0, :cond_3

    .line 1171
    new-instance v0, Lltr;

    invoke-direct {v0}, Lltr;-><init>()V

    iput-object v0, p0, Lltq;->f:Lltr;

    .line 1173
    :cond_3
    iget-object v0, p0, Lltq;->f:Lltr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lltq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iget-object v1, p0, Lltq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lltq;->b:Llqs;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x2

    iget-object v1, p0, Lltq;->b:Llqs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 73
    :cond_1
    iget v0, p0, Lltq;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 74
    const/4 v0, 0x3

    iget v1, p0, Lltq;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 76
    :cond_2
    iget-object v0, p0, Lltq;->d:Lltu;

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lltq;->d:Lltu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 79
    :cond_3
    iget-object v0, p0, Lltq;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lltq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_4
    iget-object v0, p0, Lltq;->f:Lltr;

    if-eqz v0, :cond_5

    .line 83
    const/4 v0, 0x6

    iget-object v1, p0, Lltq;->f:Lltr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 85
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 86
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 91
    iget-object v1, p0, Lltq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iget-object v2, p0, Lltq;->a:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_0
    iget-object v1, p0, Lltq;->b:Llqs;

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    iget-object v2, p0, Lltq;->b:Llqs;

    .line 97
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iget v1, p0, Lltq;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 100
    const/4 v1, 0x3

    iget v2, p0, Lltq;->c:I

    .line 101
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_2
    iget-object v1, p0, Lltq;->d:Lltu;

    if-eqz v1, :cond_3

    .line 104
    const/4 v1, 0x4

    iget-object v2, p0, Lltq;->d:Lltu;

    .line 105
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_3
    iget-object v1, p0, Lltq;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 108
    const/4 v1, 0x5

    iget-object v2, p0, Lltq;->e:Ljava/lang/String;

    .line 109
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_4
    iget-object v1, p0, Lltq;->f:Lltr;

    if-eqz v1, :cond_5

    .line 112
    const/4 v1, 0x6

    iget-object v2, p0, Lltq;->f:Lltr;

    .line 113
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_5
    return v0
.end method
