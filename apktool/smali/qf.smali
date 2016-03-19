.class public Lqf;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1328
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lqf;->a:I

    .line 1329
    const v0, 0x800013

    iput v0, p0, Lqf;->a:I

    .line 1330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1320
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1317
    iput v2, p0, Lqf;->a:I

    .line 1322
    sget-object v0, Lsb;->t:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1323
    sget v1, Lsb;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lqf;->a:I

    .line 1324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1325
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lqf;->a:I

    .line 1349
    return-void
.end method

.method public constructor <init>(Lqf;)V
    .locals 1

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lqf;->a:I

    .line 1344
    iget v0, p1, Lqf;->a:I

    iput v0, p0, Lqf;->a:I

    .line 1345
    return-void
.end method
