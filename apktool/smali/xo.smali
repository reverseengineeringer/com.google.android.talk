.class final Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Lxl;


# direct methods
.method constructor <init>(Lxl;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lxo;->b:Lxl;

    iput-object p2, p0, Lxo;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lxo;->b:Lxl;

    iget-object v0, v0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_0

    .line 803
    iget-object v1, p0, Lxo;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 805
    :cond_0
    return-void
.end method
