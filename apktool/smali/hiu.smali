.class final Lhiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<",
        "Lkia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhit;


# direct methods
.method constructor <init>(Lhit;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lhiu;->a:Lhit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    check-cast p1, Lkia;

    .line 1178
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 2037
    iget-boolean v0, v0, Lhit;->e:Z

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    const-string v0, "vclib"

    const-string v1, "Resolve flow canceled, ignoring success (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v0, p1, Lkia;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    const-string v0, "vclib"

    const-string v1, "Successfully resolved hangout (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 3037
    iget-object v0, v0, Lhit;->b:Lhbp;

    .line 1185
    invoke-interface {v0, p1}, Lhbp;->a(Llyi;)V

    goto :goto_0

    .line 1188
    :cond_1
    const-string v0, "vclib"

    const-string v1, "Hangout ID missing in successful resolve response (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1190
    const-string v0, "Hangout ID missing in successful resolve response"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 4037
    iget-object v0, v0, Lhit;->b:Lhbp;

    .line 1191
    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    goto :goto_0
.end method

.method public synthetic b(Llyi;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    check-cast p1, Lkia;

    .line 4138
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 5037
    iget-boolean v0, v0, Lhit;->e:Z

    .line 4138
    if-eqz v0, :cond_0

    .line 4139
    const-string v0, "vclib"

    const-string v1, "Resolve flow canceled, ignoring error (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4169
    :goto_0
    return-void

    .line 4144
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lkia;->b:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 4145
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 4146
    :cond_1
    const-string v0, "vclib"

    const-string v1, "Resolve flow failed (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4147
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 6037
    iget-object v0, v0, Lhit;->b:Lhbp;

    .line 4147
    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    goto :goto_0

    .line 4154
    :cond_2
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 7037
    iget-object v0, v0, Lhit;->a:Lhkt;

    .line 8037
    invoke-static {v0}, Lhit;->b(Lhkt;)Z

    move-result v0

    .line 4154
    if-nez v0, :cond_3

    .line 4155
    const-string v0, "vclib"

    const-string v1, "Resolve flow failed (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4156
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 9037
    iget-object v0, v0, Lhit;->b:Lhbp;

    .line 4156
    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    goto :goto_0

    .line 4161
    :cond_3
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 10037
    iget-wide v0, v0, Lhit;->d:J

    .line 4161
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 4162
    iget-object v0, p0, Lhiu;->a:Lhit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    .line 11037
    iput-wide v2, v0, Lhit;->d:J

    .line 4166
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lhiu;->a:Lhit;

    .line 12037
    iget-wide v2, v2, Lhit;->d:J

    .line 4166
    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 4167
    const-string v0, "vclib"

    const-string v1, "Knocking resolve flow timed out"

    .line 12101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4168
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 13037
    iget-object v0, v0, Lhit;->b:Lhbp;

    .line 4168
    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    goto :goto_0

    .line 4173
    :cond_5
    iget-object v0, p0, Lhiu;->a:Lhit;

    .line 14037
    iget-object v0, v0, Lhit;->c:Landroid/os/Handler;

    .line 4173
    iget-object v1, p0, Lhiu;->a:Lhit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
