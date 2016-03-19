.class public final Ljwc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile l:[Ljwc;


# instance fields
.field public a:I

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Llyb;-><init>()V

    .line 68
    const/high16 v0, -0x80000000

    iput v0, p0, Ljwc;->a:I

    .line 69
    iput-object v1, p0, Ljwc;->b:Ljava/lang/Long;

    .line 70
    iput-object v1, p0, Ljwc;->c:Ljava/lang/Long;

    .line 71
    iput-object v1, p0, Ljwc;->d:Ljava/lang/Integer;

    .line 72
    iput-object v1, p0, Ljwc;->e:Ljava/lang/Integer;

    .line 73
    iput-object v1, p0, Ljwc;->f:Ljava/lang/Integer;

    .line 74
    iput-object v1, p0, Ljwc;->g:Ljava/lang/Boolean;

    .line 75
    iput-object v1, p0, Ljwc;->h:Ljava/lang/Boolean;

    .line 76
    iput-object v1, p0, Ljwc;->i:Ljava/lang/Boolean;

    .line 77
    iput-object v1, p0, Ljwc;->j:Ljava/lang/Boolean;

    .line 78
    iput-object v1, p0, Ljwc;->k:Ljava/lang/Integer;

    .line 79
    iput-object v1, p0, Ljwc;->eD:Llyd;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljwc;->eE:I

    .line 81
    return-void
.end method

.method public static d()[Ljwc;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ljwc;->l:[Ljwc;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Ljwc;->l:[Ljwc;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljwc;

    sput-object v0, Ljwc;->l:[Ljwc;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Ljwc;->l:[Ljwc;

    return-object v0

    .line 27
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
    .locals 2

    .prologue
    .line 5173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5174
    sparse-switch v0, :sswitch_data_0

    .line 5178
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5179
    :sswitch_0
    return-object p0

    .line 5184
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5185
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5191
    :pswitch_1
    iput v0, p0, Ljwc;->a:I

    goto :goto_0

    .line 5197
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwc;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5201
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwc;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 5205
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwc;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 5209
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwc;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 5213
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwc;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 5217
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwc;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 5221
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwc;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 5225
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwc;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 5229
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwc;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 5233
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwc;->c:Ljava/lang/Long;

    goto/16 :goto_0

    .line 5174
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x58 -> :sswitch_8
        0x60 -> :sswitch_9
        0x68 -> :sswitch_a
        0x70 -> :sswitch_b
    .end sparse-switch

    .line 5185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x1

    iget v1, p0, Ljwc;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 87
    iget-object v0, p0, Ljwc;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x2

    iget-object v1, p0, Ljwc;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 90
    :cond_0
    iget-object v0, p0, Ljwc;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x4

    iget-object v1, p0, Ljwc;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 93
    :cond_1
    iget-object v0, p0, Ljwc;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x5

    iget-object v1, p0, Ljwc;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 96
    :cond_2
    iget-object v0, p0, Ljwc;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x6

    iget-object v1, p0, Ljwc;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 99
    :cond_3
    iget-object v0, p0, Ljwc;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x7

    iget-object v1, p0, Ljwc;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 102
    :cond_4
    iget-object v0, p0, Ljwc;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 103
    const/16 v0, 0x8

    iget-object v1, p0, Ljwc;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 105
    :cond_5
    iget-object v0, p0, Ljwc;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 106
    const/16 v0, 0xb

    iget-object v1, p0, Ljwc;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 108
    :cond_6
    iget-object v0, p0, Ljwc;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 109
    const/16 v0, 0xc

    iget-object v1, p0, Ljwc;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 111
    :cond_7
    iget-object v0, p0, Ljwc;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 112
    const/16 v0, 0xd

    iget-object v1, p0, Ljwc;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 114
    :cond_8
    iget-object v0, p0, Ljwc;->c:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 115
    const/16 v0, 0xe

    iget-object v1, p0, Ljwc;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 117
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 118
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 123
    const/4 v1, 0x1

    iget v2, p0, Ljwc;->a:I

    .line 124
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Ljwc;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x2

    iget-object v2, p0, Ljwc;->b:Ljava/lang/Long;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_0
    iget-object v1, p0, Ljwc;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x4

    iget-object v2, p0, Ljwc;->e:Ljava/lang/Integer;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_1
    iget-object v1, p0, Ljwc;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 134
    const/4 v1, 0x5

    iget-object v2, p0, Ljwc;->f:Ljava/lang/Integer;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_2
    iget-object v1, p0, Ljwc;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 138
    const/4 v1, 0x6

    iget-object v2, p0, Ljwc;->g:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 139
    add-int/2addr v0, v1

    .line 141
    :cond_3
    iget-object v1, p0, Ljwc;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 142
    const/4 v1, 0x7

    iget-object v2, p0, Ljwc;->h:Ljava/lang/Boolean;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 143
    add-int/2addr v0, v1

    .line 145
    :cond_4
    iget-object v1, p0, Ljwc;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 146
    const/16 v1, 0x8

    iget-object v2, p0, Ljwc;->i:Ljava/lang/Boolean;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 147
    add-int/2addr v0, v1

    .line 149
    :cond_5
    iget-object v1, p0, Ljwc;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 150
    const/16 v1, 0xb

    iget-object v2, p0, Ljwc;->k:Ljava/lang/Integer;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_6
    iget-object v1, p0, Ljwc;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 154
    const/16 v1, 0xc

    iget-object v2, p0, Ljwc;->d:Ljava/lang/Integer;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_7
    iget-object v1, p0, Ljwc;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 158
    const/16 v1, 0xd

    iget-object v2, p0, Ljwc;->j:Ljava/lang/Boolean;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 159
    add-int/2addr v0, v1

    .line 161
    :cond_8
    iget-object v1, p0, Ljwc;->c:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 162
    const/16 v1, 0xe

    iget-object v2, p0, Ljwc;->c:Ljava/lang/Long;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_9
    return v0
.end method
