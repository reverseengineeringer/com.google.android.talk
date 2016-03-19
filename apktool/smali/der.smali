.class final Lder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldeq;


# direct methods
.method constructor <init>(Ldeq;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lder;->a:Ldeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v0, p0, Lder;->a:Ldeq;

    iget-object v0, v0, Ldeq;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lder;->a:Ldeq;

    iget-object v0, v0, Ldeq;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lder;->a:Ldeq;

    iget-object v0, v0, Ldeq;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    return-void
.end method
