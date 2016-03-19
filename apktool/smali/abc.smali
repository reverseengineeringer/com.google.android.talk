.class public final Labc;
.super Lqf;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1873
    invoke-direct {p0, v0, v0}, Lqf;-><init>(II)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 1874
    const v0, 0x800013

    iput v0, p0, Labc;->a:I

    .line 1875
    return-void
.end method

.method public constructor <init>(Labc;)V
    .locals 1

    .prologue
    .line 1887
    invoke-direct {p0, p1}, Lqf;-><init>(Lqf;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 1889
    iget v0, p1, Labc;->b:I

    iput v0, p0, Labc;->b:I

    .line 1890
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1869
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 1870
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1904
    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 1905
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1897
    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 2908
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Labc;->leftMargin:I

    .line 2909
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Labc;->topMargin:I

    .line 2910
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Labc;->rightMargin:I

    .line 2911
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Labc;->bottomMargin:I

    .line 1901
    return-void
.end method

.method public constructor <init>(Lqf;)V
    .locals 1

    .prologue
    .line 1893
    invoke-direct {p0, p1}, Lqf;-><init>(Lqf;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Labc;->b:I

    .line 1894
    return-void
.end method
