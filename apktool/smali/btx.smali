.class public final Lbtx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lbtx;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbtx;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 1034
    iget-object v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 299
    invoke-virtual {v1}, Lbty;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lbtx;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 2034
    iget-object v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 300
    invoke-virtual {v1, v0}, Lbty;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 301
    iget-object v1, p0, Lbtx;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 3034
    iget-object v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    .line 301
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 305
    :cond_0
    return-void

    .line 299
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
