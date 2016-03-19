.class final Lbxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lbxb;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lbxb;->a:Lbwy;

    .line 1077
    iget-object v0, v0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 453
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setPressed(Z)V

    .line 454
    iget-object v0, p0, Lbxb;->a:Lbwy;

    .line 2077
    iget-object v0, v0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 454
    new-instance v1, Lbxc;

    invoke-direct {v1, p0}, Lbxc;-><init>(Lbxb;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    return-void
.end method
