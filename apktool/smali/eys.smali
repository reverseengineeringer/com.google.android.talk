.class public final Leys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lejb;


# static fields
.field public static a:I

.field private static final b:Z

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lezi;->t:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leys;->b:Z

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leys;->c:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    sput v0, Leys;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Leys;->e:I

    .line 32
    iput-boolean v0, p0, Leys;->h:Z

    .line 50
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 52
    :goto_0
    sget-object v1, Leys;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iput-object p1, p0, Leys;->d:Landroid/graphics/Bitmap;

    .line 54
    iput-object p2, p0, Leys;->g:Ljava/lang/String;

    .line 55
    iput v0, p0, Leys;->f:I

    .line 57
    sget v0, Leys;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Leys;->a:I

    iput v0, p0, Leys;->i:I

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-boolean v0, Leys;->b:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "RefcountedBitmap created: "

    invoke-virtual {p0}, Leys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget v0, p0, Leys;->e:I

    if-lez v0, :cond_0

    move v0, v1

    .line 2134
    :goto_0
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 94
    iget v0, p0, Leys;->i:I

    if-lez v0, :cond_1

    .line 3134
    :goto_1
    const-string v0, "Expected condition to be true"

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 94
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 70
    sget-object v1, Leys;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-boolean v0, Leys;->b:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "RefcountedBitmap acquire :"

    invoke-virtual {p0}, Leys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    iget v0, p0, Leys;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leys;->e:I

    .line 75
    monitor-exit v1

    return-void

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget v0, p0, Leys;->i:I

    if-lez v0, :cond_0

    move v0, v1

    .line 4134
    :goto_0
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 178
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 83
    sget-object v1, Leys;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-boolean v0, Leys;->b:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "RefcountedBitmap release : "

    invoke-virtual {p0}, Leys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_0
    :goto_0
    iget v0, p0, Leys;->e:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 1134
    :goto_1
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 88
    iget v0, p0, Leys;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leys;->e:I

    .line 89
    monitor-exit v1

    return-void

    .line 85
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    sget-object v1, Leys;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-boolean v2, Leys;->b:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "RefcountedBitmap dispose : "

    invoke-virtual {p0}, Leys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    iget-boolean v2, p0, Leys;->h:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Leys;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 109
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    .line 111
    :cond_1
    iget v2, p0, Leys;->i:I

    neg-int v2, v2

    iput v2, p0, Leys;->i:I

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Leys;->d:Landroid/graphics/Bitmap;

    .line 113
    monitor-exit v1

    return-object v0

    .line 105
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 123
    sget-object v1, Leys;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-boolean v0, Leys;->b:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "RefcountedBitmap getBitmapWithoutRefcount : "

    invoke-virtual {p0}, Leys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    :cond_0
    :goto_0
    invoke-direct {p0}, Leys;->j()V

    .line 128
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Leys;->h:Z

    .line 130
    invoke-virtual {p0}, Leys;->b()V

    .line 131
    monitor-exit v1

    return-object v0

    .line 125
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Leys;->j()V

    .line 140
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leys;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Leys;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Leys;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 182
    iget v0, p0, Leys;->i:I

    iget v1, p0, Leys;->e:I

    iget-object v2, p0, Leys;->g:Ljava/lang/String;

    iget-boolean v3, p0, Leys;->h:Z

    iget v4, p0, Leys;->f:I

    iget-object v5, p0, Leys;->d:Landroid/graphics/Bitmap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x62

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "RefCountedBitmap id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " count="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dontreturn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
