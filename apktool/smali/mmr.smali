.class public final Lmmr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lmmr;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1062
    iput-object v0, p0, Lmmr;->a:Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Lmmr;->b:Ljava/lang/String;

    .line 1064
    iput-object v0, p0, Lmmr;->c:Ljava/lang/Boolean;

    .line 1065
    iput-object v0, p0, Lmmr;->d:Ljava/lang/Boolean;

    .line 1066
    iput-object v0, p0, Lmmr;->e:Ljava/lang/Integer;

    .line 1067
    iput-object v0, p0, Lmmr;->f:Ljava/lang/Long;

    .line 1068
    iput-object v0, p0, Lmmr;->eD:Llyd;

    .line 1069
    const/4 v0, -0x1

    iput v0, p0, Lmmr;->eE:I

    .line 59
    return-void
.end method

.method public static d()[Lmmr;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lmmr;->g:[Lmmr;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lmmr;->g:[Lmmr;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lmmr;

    sput-object v0, Lmmr;->g:[Lmmr;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lmmr;->g:[Lmmr;

    return-object v0

    .line 32
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
    .line 3132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3133
    sparse-switch v0, :sswitch_data_0

    .line 3137
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3138
    :sswitch_0
    return-object p0

    .line 3143
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmr;->a:Ljava/lang/String;

    goto :goto_0

    .line 3147
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmr;->b:Ljava/lang/String;

    goto :goto_0

    .line 3151
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmmr;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3155
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmmr;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3159
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3160
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3164
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmmr;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 3170
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmmr;->f:Ljava/lang/Long;

    goto :goto_0

    .line 3133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 3160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lmmr;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lmmr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lmmr;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Lmmr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lmmr;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lmmr;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 85
    :cond_2
    iget-object v0, p0, Lmmr;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Lmmr;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 88
    :cond_3
    iget-object v0, p0, Lmmr;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    iget-object v1, p0, Lmmr;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 91
    :cond_4
    iget-object v0, p0, Lmmr;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x6

    iget-object v1, p0, Lmmr;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 94
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 95
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 100
    iget-object v1, p0, Lmmr;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-object v2, p0, Lmmr;->a:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lmmr;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lmmr;->b:Ljava/lang/String;

    .line 106
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-object v1, p0, Lmmr;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lmmr;->c:Ljava/lang/Boolean;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 110
    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-object v1, p0, Lmmr;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lmmr;->d:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 114
    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget-object v1, p0, Lmmr;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 117
    const/4 v1, 0x5

    iget-object v2, p0, Lmmr;->e:Ljava/lang/Integer;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_4
    iget-object v1, p0, Lmmr;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x6

    iget-object v2, p0, Lmmr;->f:Ljava/lang/Long;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_5
    return v0
.end method
