.class final Lbti;
.super Laaa;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Laaa;-><init>()V

    .line 14
    iput p1, p0, Lbti;->a:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbti;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 26
    :cond_0
    return-void
.end method
