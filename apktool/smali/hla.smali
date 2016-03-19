.class public final Lhla;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/SurfaceTexture;

.field private final b:Landroid/view/Surface;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lhla;-><init>(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;IIZ)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;IIZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lhla;->a:Landroid/graphics/SurfaceTexture;

    .line 47
    iput-object p2, p0, Lhla;->b:Landroid/view/Surface;

    .line 48
    iput p3, p0, Lhla;->c:I

    .line 49
    iput p4, p0, Lhla;->d:I

    .line 50
    iput-boolean p5, p0, Lhla;->e:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;IIZ)V
    .locals 6

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 1198
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Landroid/view/Surface;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lhla;-><init>(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;IIZ)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhla;->a:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lhla;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lhla;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lhla;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lhla;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lhla;

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Lhla;

    .line 77
    iget-object v1, p0, Lhla;->b:Landroid/view/Surface;

    iget-object v2, p1, Lhla;->b:Landroid/view/Surface;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lhla;->a:Landroid/graphics/SurfaceTexture;

    iget-object v2, p1, Lhla;->a:Landroid/graphics/SurfaceTexture;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lhla;->b:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 89
    iget-object v0, p0, Lhla;->b:Landroid/view/Surface;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhla;->a:Landroid/graphics/SurfaceTexture;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhla;->c:I

    iget v3, p0, Lhla;->d:I

    iget-boolean v4, p0, Lhla;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x55

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "SurfaceInfo(surface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",surfaceTexture="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
