.class public final Leuo;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile e:[Leuo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1042
    const-string v0, ""

    iput-object v0, p0, Leuo;->a:Ljava/lang/String;

    .line 1043
    const-string v0, ""

    iput-object v0, p0, Leuo;->b:Ljava/lang/String;

    .line 1044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leuo;->c:J

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Leuo;->d:Z

    .line 1046
    const/4 v0, -0x1

    iput v0, p0, Leuo;->eE:I

    .line 39
    return-void
.end method

.method public static d()[Leuo;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Leuo;->e:[Leuo;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Leuo;->e:[Leuo;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Leuo;

    sput-object v0, Leuo;->e:[Leuo;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Leuo;->e:[Leuo;

    return-object v0

    .line 18
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
    .line 2095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2096
    sparse-switch v0, :sswitch_data_0

    .line 3095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 2100
    if-nez v0, :cond_0

    .line 2101
    :sswitch_0
    return-object p0

    .line 2106
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leuo;->a:Ljava/lang/String;

    goto :goto_0

    .line 2110
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leuo;->b:Ljava/lang/String;

    goto :goto_0

    .line 2114
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    iput-wide v0, p0, Leuo;->c:J

    goto :goto_0

    .line 2118
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Leuo;->d:Z

    goto :goto_0

    .line 2096
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Leuo;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Leuo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Leuo;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Leuo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 59
    :cond_1
    iget-wide v0, p0, Leuo;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-wide v2, p0, Leuo;->c:J

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 62
    :cond_2
    iget-boolean v0, p0, Leuo;->d:Z

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-boolean v1, p0, Leuo;->d:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 65
    :cond_3
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 66
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    .line 70
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 71
    iget-object v1, p0, Leuo;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iget-object v2, p0, Leuo;->a:Ljava/lang/String;

    .line 73
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Leuo;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    const/4 v1, 0x2

    iget-object v2, p0, Leuo;->b:Ljava/lang/String;

    .line 77
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_1
    iget-wide v2, p0, Leuo;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 80
    const/4 v1, 0x3

    iget-wide v2, p0, Leuo;->c:J

    .line 81
    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_2
    iget-boolean v1, p0, Leuo;->d:Z

    if-eqz v1, :cond_3

    .line 84
    const/4 v1, 0x4

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 85
    add-int/2addr v0, v1

    .line 87
    :cond_3
    return v0
.end method
