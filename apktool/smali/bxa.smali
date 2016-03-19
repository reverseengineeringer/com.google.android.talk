.class final Lbxa;
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
    .line 383
    iput-object p1, p0, Lbxa;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lbxa;->a:Lbwy;

    .line 1077
    iget-boolean v0, v0, Lbwy;->A:Z

    .line 386
    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lbxa;->a:Lbwy;

    .line 2077
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbwy;->b(Z)V

    .line 389
    :cond_0
    return-void
.end method
