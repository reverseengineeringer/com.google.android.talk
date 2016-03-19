.class final Lhve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyc;


# instance fields
.field final synthetic a:Lhva;


# direct methods
.method constructor <init>(Lhva;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lhve;->a:Lhva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ligq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1176
    const/4 v0, 0x0

    .line 1177
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 1178
    check-cast v0, Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 172
    :goto_1
    return-object p2

    .line 1179
    :cond_1
    instance-of v1, p2, Lhxu;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1180
    check-cast v0, Lhxu;

    move-object v1, p2

    .line 1181
    check-cast v1, Lhxu;

    iget-object v1, v1, Lhxu;->a:Landroid/graphics/Bitmap;

    .line 1182
    iget v2, v0, Lhxu;->b:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget v2, v0, Lhxu;->c:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1183
    :cond_2
    iget v2, v0, Lhxu;->b:I

    iget v0, v0, Lhxu;->c:I

    invoke-static {v1, v4, v4, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lhve;->a:Lhva;

    .line 2031
    iget-object v1, v1, Lhva;->b:Lhye;

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lhye;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lhve;->a:Lhva;

    .line 3031
    iget-object v2, v2, Lhva;->a:Landroid/content/Context;

    .line 167
    invoke-static {v2}, Laal;->H(Landroid/content/Context;)F

    move-result v2

    .line 169
    invoke-static {v0, v2, v1}, Liky;->a(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 171
    iget-object v1, p0, Lhve;->a:Lhva;

    .line 4031
    iget-object v1, v1, Lhva;->b:Lhye;

    .line 171
    invoke-interface {v1, v0}, Lhye;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
