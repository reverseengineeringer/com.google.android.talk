.class public final Lhus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:J


# instance fields
.field b:Ljuc;

.field private final c:I

.field private final d:Ljava/lang/Exception;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private g:I

.field private h:Landroid/os/Bundle;

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lhus;->a:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lhut;->c:I

    iput v0, p0, Lhus;->g:I

    .line 67
    iput p1, p0, Lhus;->c:I

    .line 68
    iput-object p2, p0, Lhus;->d:Ljava/lang/Exception;

    .line 69
    iput-object p3, p0, Lhus;->e:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhus;->f:J

    .line 71
    return-void
.end method

.method constructor <init>(ILjava/lang/Exception;Ljava/lang/String;[BJ)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lhut;->c:I

    iput v0, p0, Lhus;->g:I

    .line 78
    iput p1, p0, Lhus;->c:I

    .line 79
    iput-object p2, p0, Lhus;->d:Ljava/lang/Exception;

    .line 80
    iput-object p3, p0, Lhus;->e:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lhus;->i:[B

    .line 82
    iput-wide p5, p0, Lhus;->f:J

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lhus;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lhus;)Z
    .locals 1

    .prologue
    .line 140
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhus;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lhus;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lhus;->g:I

    .line 198
    return-void
.end method

.method public b()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lhus;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhus;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lhus;->i:[B

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1191
    iget-object v0, p0, Lhus;->i:[B

    invoke-static {v0, v1}, Laal;->a([BLjava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    .line 1192
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lhus;->i:[B

    .line 118
    :cond_0
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    .line 121
    :cond_1
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method e()[B
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lhus;->i()V

    .line 126
    iget-object v0, p0, Lhus;->i:[B

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lhus;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lhus;->f:J

    return-wide v0
.end method

.method h()Z
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lhus;->f:J

    sub-long/2addr v0, v2

    sget-wide v2, Lhus;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    invoke-static {v0}, Laal;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    iput-object v0, p0, Lhus;->i:[B

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    goto :goto_0
.end method

.method j()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lhus;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p0}, Lhus;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "TaskResult(message=%s, age=%s, errorCode=%d, exception=%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lhus;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-wide v4, p0, Lhus;->f:J

    .line 156
    invoke-static {v4, v5}, Laal;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lhus;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lhus;->d:Ljava/lang/Exception;

    aput-object v3, v2, v8

    .line 154
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lhus;->h:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bundle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "TaskResult(message=%s, age=%s, extras=%s)"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lhus;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-wide v4, p0, Lhus;->f:J

    .line 169
    invoke-static {v4, v5}, Laal;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    .line 167
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lhus;->i:[B

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lhus;->i:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "byte["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method
