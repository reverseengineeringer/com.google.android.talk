.class final Laxf;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "SourceFile"


# instance fields
.field final synthetic a:Laxe;

.field private b:Laxb;


# direct methods
.method constructor <init>(Laxe;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Laxf;->a:Laxe;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 55
    new-instance v0, Laxb;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Laxb;-><init>(F)V

    iput-object v0, p0, Laxf;->b:Laxb;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laxf;->b:Laxb;

    .line 61
    invoke-virtual {v0, p1}, Laxb;->getInterpolation(F)F

    move-result v0

    .line 60
    invoke-super {p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
