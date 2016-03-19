.class public final Lluo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lluo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Llyb;-><init>()V

    .line 50
    iput-object v0, p0, Lluo;->a:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lluo;->b:Ljava/lang/Boolean;

    .line 52
    iput-object v0, p0, Lluo;->c:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lluo;->d:Ljava/lang/Long;

    .line 54
    iput-object v0, p0, Lluo;->e:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lluo;->f:Ljava/lang/Boolean;

    .line 56
    iput-object v0, p0, Lluo;->g:Ljava/lang/Long;

    .line 57
    iput-object v0, p0, Lluo;->h:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lluo;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lluo;->eE:I

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 4135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4136
    sparse-switch v0, :sswitch_data_0

    .line 4140
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4141
    :sswitch_0
    return-object p0

    .line 4146
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lluo;->a:Ljava/lang/String;

    goto :goto_0

    .line 4150
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lluo;->c:Ljava/lang/String;

    goto :goto_0

    .line 4154
    :sswitch_3
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lluo;->d:Ljava/lang/Long;

    goto :goto_0

    .line 4158
    :sswitch_4
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lluo;->e:Ljava/lang/Long;

    goto :goto_0

    .line 4162
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lluo;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 4166
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lluo;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 4170
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lluo;->g:Ljava/lang/Long;

    goto :goto_0

    .line 4174
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lluo;->h:Ljava/lang/String;

    goto :goto_0

    .line 4136
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lluo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iget-object v1, p0, Lluo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lluo;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lluo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lluo;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x3

    iget-object v1, p0, Lluo;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 74
    :cond_2
    iget-object v0, p0, Lluo;->e:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 75
    const/4 v0, 0x4

    iget-object v1, p0, Lluo;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 77
    :cond_3
    iget-object v0, p0, Lluo;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 78
    const/4 v0, 0x5

    iget-object v1, p0, Lluo;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 80
    :cond_4
    iget-object v0, p0, Lluo;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 81
    const/4 v0, 0x6

    iget-object v1, p0, Lluo;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 83
    :cond_5
    iget-object v0, p0, Lluo;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 84
    const/4 v0, 0x7

    iget-object v1, p0, Lluo;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 86
    :cond_6
    iget-object v0, p0, Lluo;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 87
    const/16 v0, 0x8

    iget-object v1, p0, Lluo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 89
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 90
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 95
    iget-object v1, p0, Lluo;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iget-object v2, p0, Lluo;->a:Ljava/lang/String;

    .line 97
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_0
    iget-object v1, p0, Lluo;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x2

    iget-object v2, p0, Lluo;->c:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_1
    iget-object v1, p0, Lluo;->d:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 104
    const/4 v1, 0x3

    iget-object v2, p0, Lluo;->d:Ljava/lang/Long;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 105
    add-int/2addr v0, v1

    .line 107
    :cond_2
    iget-object v1, p0, Lluo;->e:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 108
    const/4 v1, 0x4

    iget-object v2, p0, Lluo;->e:Ljava/lang/Long;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 109
    add-int/2addr v0, v1

    .line 111
    :cond_3
    iget-object v1, p0, Lluo;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 112
    const/4 v1, 0x5

    iget-object v2, p0, Lluo;->f:Ljava/lang/Boolean;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 113
    add-int/2addr v0, v1

    .line 115
    :cond_4
    iget-object v1, p0, Lluo;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 116
    const/4 v1, 0x6

    iget-object v2, p0, Lluo;->b:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 117
    add-int/2addr v0, v1

    .line 119
    :cond_5
    iget-object v1, p0, Lluo;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 120
    const/4 v1, 0x7

    iget-object v2, p0, Lluo;->g:Ljava/lang/Long;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_6
    iget-object v1, p0, Lluo;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 124
    const/16 v1, 0x8

    iget-object v2, p0, Lluo;->h:Ljava/lang/String;

    .line 125
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_7
    return v0
.end method
