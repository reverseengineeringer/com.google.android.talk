.class public final Lyq;
.super Laac;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 888
    invoke-direct {p0, v0, v0}, Laac;-><init>(II)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lyq;->a:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lyq;->b:I

    .line 889
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0, p1, p2}, Laac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lyq;->a:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lyq;->b:I

    .line 885
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0, p1}, Laac;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lyq;->a:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lyq;->b:I

    .line 897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 892
    invoke-direct {p0, p1}, Laac;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lyq;->a:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lyq;->b:I

    .line 893
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lyq;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lyq;->b:I

    return v0
.end method
