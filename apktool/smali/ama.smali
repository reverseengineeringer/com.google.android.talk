.class final Lama;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamp;


# instance fields
.field private final a:Lamb;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lamb;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lama;->a:Lamb;

    .line 85
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lama;->a:Lamb;

    invoke-virtual {v0, p0}, Lamb;->a(Lamp;)V

    .line 118
    return-void
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lama;->b:I

    .line 89
    iput p2, p0, Lama;->c:I

    .line 90
    iput-object p3, p0, Lama;->d:Landroid/graphics/Bitmap$Config;

    .line 91
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    instance-of v1, p1, Lama;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Lama;

    .line 97
    iget v1, p0, Lama;->b:I

    iget v2, p1, Lama;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lama;->c:I

    iget v2, p1, Lama;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lama;->d:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lama;->d:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lama;->b:I

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lama;->c:I

    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lama;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lama;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 107
    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget v0, p0, Lama;->b:I

    iget v1, p0, Lama;->c:I

    iget-object v2, p0, Lama;->d:Landroid/graphics/Bitmap$Config;

    .line 1011
    invoke-static {v0, v1, v2}, Lalz;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method
