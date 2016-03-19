.class public Laac;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public c:Laao;

.field public final d:Landroid/graphics/Rect;

.field public e:Z

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 8698
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laac;->d:Landroid/graphics/Rect;

    .line 8687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laac;->e:Z

    .line 8691
    const/4 v0, 0x0

    iput-boolean v0, p0, Laac;->f:Z

    .line 8699
    return-void
.end method

.method public constructor <init>(Laac;)V
    .locals 1

    .prologue
    .line 8710
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laac;->d:Landroid/graphics/Rect;

    .line 8687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laac;->e:Z

    .line 8691
    const/4 v0, 0x0

    iput-boolean v0, p0, Laac;->f:Z

    .line 8711
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 8694
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laac;->d:Landroid/graphics/Rect;

    .line 8687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laac;->e:Z

    .line 8691
    const/4 v0, 0x0

    iput-boolean v0, p0, Laac;->f:Z

    .line 8695
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 8706
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laac;->d:Landroid/graphics/Rect;

    .line 8687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laac;->e:Z

    .line 8691
    const/4 v0, 0x0

    iput-boolean v0, p0, Laac;->f:Z

    .line 8707
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 8702
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laac;->d:Landroid/graphics/Rect;

    .line 8687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laac;->e:Z

    .line 8691
    const/4 v0, 0x0

    iput-boolean v0, p0, Laac;->f:Z

    .line 8703
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 8741
    iget-object v0, p0, Laac;->c:Laao;

    invoke-virtual {v0}, Laao;->m()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 8752
    iget-object v0, p0, Laac;->c:Laao;

    invoke-virtual {v0}, Laao;->t()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 8769
    iget-object v0, p0, Laac;->c:Laao;

    invoke-virtual {v0}, Laao;->d()I

    move-result v0

    return v0
.end method
