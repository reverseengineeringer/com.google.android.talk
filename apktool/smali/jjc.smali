.class public final Ljjc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    iput-object v0, p0, Ljjc;->a:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Ljjc;->b:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Ljjc;->c:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Ljjc;->d:Ljava/lang/String;

    .line 48
    iput v1, p0, Ljjc;->e:I

    .line 49
    iput v1, p0, Ljjc;->f:I

    .line 50
    iput-object v0, p0, Ljjc;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Ljjc;->eE:I

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
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjc;->a:Ljava/lang/String;

    goto :goto_0

    .line 1128
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjc;->b:Ljava/lang/String;

    goto :goto_0

    .line 1132
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjc;->c:Ljava/lang/String;

    goto :goto_0

    .line 1136
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjc;->d:Ljava/lang/String;

    goto :goto_0

    .line 1140
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1141
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1146
    :pswitch_0
    iput v0, p0, Ljjc;->e:I

    goto :goto_0

    .line 1152
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1153
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1157
    :pswitch_1
    iput v0, p0, Ljjc;->f:I

    goto :goto_0

    .line 1114
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

    .line 1141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 57
    iget-object v0, p0, Ljjc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Ljjc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Ljjc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Ljjc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Ljjc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Ljjc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Ljjc;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Ljjc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 69
    :cond_3
    iget v0, p0, Ljjc;->e:I

    if-eq v0, v2, :cond_4

    .line 70
    const/4 v0, 0x5

    iget v1, p0, Ljjc;->e:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 72
    :cond_4
    iget v0, p0, Ljjc;->f:I

    if-eq v0, v2, :cond_5

    .line 73
    const/4 v0, 0x6

    iget v1, p0, Ljjc;->f:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v1, p0, Ljjc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    iget-object v2, p0, Ljjc;->a:Ljava/lang/String;

    .line 83
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Ljjc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Ljjc;->b:Ljava/lang/String;

    .line 87
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Ljjc;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Ljjc;->c:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Ljjc;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Ljjc;->d:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget v1, p0, Ljjc;->e:I

    if-eq v1, v3, :cond_4

    .line 98
    const/4 v1, 0x5

    iget v2, p0, Ljjc;->e:I

    .line 99
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget v1, p0, Ljjc;->f:I

    if-eq v1, v3, :cond_5

    .line 102
    const/4 v1, 0x6

    iget v2, p0, Ljjc;->f:I

    .line 103
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_5
    return v0
.end method
