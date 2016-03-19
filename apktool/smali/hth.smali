.class public Lhth;
.super Lhtg;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lhtg;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lhth;->b:F

    iput v0, p0, Lhth;->a:F

    .line 20
    iput p1, p0, Lhth;->c:F

    .line 21
    iput p2, p0, Lhth;->d:F

    .line 22
    iput p3, p0, Lhth;->e:F

    .line 23
    iput p4, p0, Lhth;->f:F

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lhth;->h:F

    iput v0, p0, Lhth;->g:F

    .line 25
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lhth;->c(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lhth;->b(F)F

    move-result v0

    return v0
.end method
