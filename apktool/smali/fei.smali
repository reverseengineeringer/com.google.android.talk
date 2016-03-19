.class final Lfei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lfeh;

.field private final b:Z


# direct methods
.method constructor <init>(Lfeh;Z)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lfei;->a:Lfeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-boolean p2, p0, Lfei;->b:Z

    .line 391
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 395
    iget-boolean v0, p0, Lfei;->b:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lfei;->a:Lfeh;

    iget-object v0, v0, Lfeh;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lfei;->a:Lfeh;

    iget-object v2, v0, Lfeh;->e:Lcom/google/android/apps/hangouts/views/RichStatusView;

    move v0, v1

    .line 1268
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 1269
    iget-object v3, v2, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    aget-object v3, v3, v0

    iget-object v3, v3, Lfeh;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1270
    const/4 v0, 0x1

    .line 1275
    :goto_1
    if-eqz v0, :cond_2

    .line 1276
    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/views/RichStatusView;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    .line 1268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    :cond_2
    invoke-virtual {v2, v4}, Lcom/google/android/apps/hangouts/views/RichStatusView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
