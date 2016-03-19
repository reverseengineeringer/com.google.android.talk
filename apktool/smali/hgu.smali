.class public final Lhgu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;

.field static b:Z

.field static c:Lhgu;

.field static d:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/Integer;",
            "Lhgu;",
            ">;"
        }
    .end annotation
.end field

.field static e:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/Integer;",
            "Lhgu;",
            ">;"
        }
    .end annotation
.end field

.field static f:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/Integer;",
            "Lhgu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Lhlp;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhgu;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lhgu;->d:Lhq;

    .line 28
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lhgu;->e:Lhq;

    .line 29
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lhgu;->f:Lhq;

    return-void
.end method

.method public constructor <init>(Lhlp;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lhgu;->g:Lhlp;

    .line 36
    iput p2, p0, Lhgu;->h:I

    .line 37
    return-void
.end method

.method public static a(I)Lhgu;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lhgu;->a()V

    .line 59
    sget-object v0, Lhgu;->d:Lhq;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgu;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lhgu;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 160
    if-nez p0, :cond_0

    move-object v0, v1

    .line 180
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 166
    const-string v2, "vclib"

    const-string v3, "VideoSpecification can\'t parse "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_1
    invoke-static {v5, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 174
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 175
    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    new-instance v0, Lhgu;

    new-instance v4, Lhlp;

    invoke-direct {v4, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v4, v1}, Lhgu;-><init>(Lhlp;I)V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    const-string v2, "vclib"

    const-string v3, "VideoSpecification can\'t parse "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    :goto_2
    invoke-static {v5, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 178
    goto :goto_0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static a()V
    .locals 6

    .prologue
    .line 134
    sget-object v1, Lhgu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 137
    :cond_0
    sget-boolean v0, Lhgu;->b:Z

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lhgu;->a:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Video specs wait timed out (at least 10000ms elapsed)"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public static b(I)Lhgu;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lhgu;->a()V

    .line 84
    sget-object v0, Lhgu;->f:Lhq;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgu;

    return-object v0
.end method


# virtual methods
.method public b()Lhlp;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lhgu;->g:Lhlp;

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lhgu;->g:Lhlp;

    iget v0, v0, Lhlp;->a:I

    iget-object v1, p0, Lhgu;->g:Lhlp;

    iget v1, v1, Lhlp;->b:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lhgu;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    check-cast p1, Lhgu;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v1, p0, Lhgu;->g:Lhlp;

    iget-object v2, p1, Lhgu;->g:Lhlp;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lhgu;->h:I

    iget v2, p1, Lhgu;->h:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lhgu;->g:Lhlp;

    invoke-virtual {v0}, Lhlp;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x115

    iget v1, p0, Lhgu;->h:I

    add-int/2addr v0, v1

    return v0
.end method
