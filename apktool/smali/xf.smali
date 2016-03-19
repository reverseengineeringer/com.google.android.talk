.class public final Lxf;
.super Landroid/widget/RatingBar;
.source "SourceFile"


# instance fields
.field private a:Lxd;

.field private b:Lvv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    sget v0, Laen;->ab:I

    invoke-direct {p0, p1, p2, v0}, Lxf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {p1}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lxf;->b:Lvv;

    .line 51
    new-instance v0, Lxd;

    iget-object v1, p0, Lxf;->b:Lvv;

    invoke-direct {v0, p0, v1}, Lxd;-><init>(Landroid/widget/ProgressBar;Lvv;)V

    iput-object v0, p0, Lxf;->a:Lxd;

    .line 52
    iget-object v0, p0, Lxf;->a:Lxd;

    invoke-virtual {v0, p2, p3}, Lxd;->a(Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    .line 59
    iget-object v0, p0, Lxf;->a:Lxd;

    invoke-virtual {v0}, Lxd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lxf;->getNumStars()I

    move-result v1

    mul-int/2addr v0, v1

    .line 62
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lks;->a(III)I

    move-result v0

    invoke-virtual {p0}, Lxf;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lxf;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
