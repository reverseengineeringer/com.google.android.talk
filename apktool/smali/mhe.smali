.class final Lmhe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmhd;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lmhd;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1992
    iput-object p1, p0, Lmhe;->a:Lmhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object v2, p0, Lmhe;->b:Landroid/graphics/Paint;

    iput-object v2, p0, Lmhe;->c:Landroid/graphics/Paint;

    .line 1990
    const/4 v0, 0x0

    iput v0, p0, Lmhe;->h:I

    .line 1994
    const-string v0, "x"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2140
    invoke-virtual {p1, v0, p2, v1}, Lmhd;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 1994
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lmhe;->d:F

    .line 1995
    const-string v0, "y"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3140
    invoke-virtual {p1, v0, p2, v1}, Lmhd;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lmhe;->e:F

    .line 1996
    iput-object v2, p0, Lmhe;->f:Ljava/lang/String;

    .line 1997
    iput-boolean v4, p0, Lmhe;->g:Z

    .line 1999
    new-instance v0, Lmhc;

    .line 3999
    invoke-direct {v0, p2}, Lmhc;-><init>(Lorg/xml/sax/Attributes;)V

    .line 2000
    iget-object v1, p1, Lmhd;->w:Ljava/util/HashMap;

    .line 4140
    invoke-virtual {p1, v0, v1}, Lmhd;->a(Lmhc;Ljava/util/HashMap;)Z

    move-result v1

    .line 2000
    if-eqz v1, :cond_0

    .line 2001
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lmhd;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lmhe;->c:Landroid/graphics/Paint;

    .line 2002
    iget-object v1, p0, Lmhe;->c:Landroid/graphics/Paint;

    .line 5140
    invoke-virtual {p1, p2, v1}, Lmhd;->a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    .line 6140
    :cond_0
    invoke-virtual {p1, v0}, Lmhd;->a(Lmhc;)Z

    move-result v0

    .line 2004
    if-eqz v0, :cond_1

    .line 2005
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lmhd;->d:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmhe;->b:Landroid/graphics/Paint;

    .line 2006
    iget-object v0, p0, Lmhe;->b:Landroid/graphics/Paint;

    .line 7140
    invoke-virtual {p1, p2, v0}, Lmhd;->a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    .line 2009
    :cond_1
    const-string v0, "alignment-baseline"

    .line 8091
    invoke-static {v0, p2}, Lmgw;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 2010
    const-string v1, "middle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2011
    iput v4, p0, Lmhe;->h:I

    .line 2015
    :cond_2
    :goto_0
    return-void

    .line 2012
    :cond_3
    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2013
    const/4 v0, 0x2

    iput v0, p0, Lmhe;->h:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmhe;->g:Z

    .line 2042
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 2045
    iget-object v0, p0, Lmhe;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lmhe;->f:Ljava/lang/String;

    iget v1, p0, Lmhe;->d:F

    iget v2, p0, Lmhe;->e:F

    iget-object v3, p0, Lmhe;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2048
    :cond_0
    iget-object v0, p0, Lmhe;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 2049
    iget-object v0, p0, Lmhe;->f:Ljava/lang/String;

    iget v1, p0, Lmhe;->d:F

    iget v2, p0, Lmhe;->e:F

    iget-object v3, p0, Lmhe;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2052
    :cond_1
    return-void
.end method

.method public a([CII)V
    .locals 5

    .prologue
    .line 9037
    iget-boolean v0, p0, Lmhe;->g:Z

    .line 2018
    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lmhe;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2020
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    move-object v1, p0

    .line 2022
    :goto_0
    iput-object v0, v1, Lmhe;->f:Ljava/lang/String;

    .line 2026
    iget v0, p0, Lmhe;->h:I

    if-lez v0, :cond_0

    .line 2027
    iget-object v0, p0, Lmhe;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmhe;->c:Landroid/graphics/Paint;

    .line 2028
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2029
    iget-object v2, p0, Lmhe;->f:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lmhe;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2031
    iget v2, p0, Lmhe;->e:F

    iget v0, p0, Lmhe;->h:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    add-float/2addr v0, v2

    iput v0, p0, Lmhe;->e:F

    .line 2034
    :cond_0
    return-void

    .line 2022
    :cond_1
    iget-object v0, p0, Lmhe;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_0

    .line 2027
    :cond_3
    iget-object v0, p0, Lmhe;->b:Landroid/graphics/Paint;

    goto :goto_1

    .line 2031
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2
.end method
