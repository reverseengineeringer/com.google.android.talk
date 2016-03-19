.class public abstract Ldym;
.super Ldyx;
.source "SourceFile"

# interfaces
.implements Lbci;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:J

.field private final e:J

.field private f:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ldyx;-><init>(Landroid/os/Parcel;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ldym;->a:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ldym;->e:J

    .line 80
    return-void
.end method

.method public constructor <init>(Lbfd;JJ)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 71
    iput-wide p2, p0, Ldym;->a:J

    .line 72
    iput-wide p4, p0, Ldym;->e:J

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ldym;->f:I

    .line 74
    return-void
.end method


# virtual methods
.method protected a(Lbcg;)I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ldym;->a(I)V

    .line 128
    invoke-super {p0, p1}, Ldyx;->a(Lbcg;)I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Ldym;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iput p1, p0, Ldym;->f:I

    .line 96
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldym;->a(J)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ldym;->f:I

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected a(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Ldyx;->a(Landroid/os/Parcel;I)V

    .line 85
    iget-wide v0, p0, Ldym;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Ldym;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method

.method public b()Lbcj;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lbcj;->c:Lbcj;

    return-object v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Ldym;->f:I

    return v0
.end method

.method public e()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget v1, p0, Ldym;->f:I

    if-lez v1, :cond_0

    .line 119
    monitor-exit p0

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ldym;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Ldym;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget v1, p0, Ldym;->f:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 138
    monitor-exit p0

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 142
    invoke-virtual {p0}, Ldym;->i()J

    move-result-wide v4

    .line 145
    sub-long v6, v2, v4

    iget-wide v8, p0, Ldym;->e:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_1

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget v0, p0, Ldym;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ldym;->a(J)V

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract i()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
