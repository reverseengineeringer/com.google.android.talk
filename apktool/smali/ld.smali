.class public final Lld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Lkg;


# direct methods
.method public constructor <init>(Lkg;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lld;->a:Lkg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lmr;

    invoke-direct {v0, p2}, Lmr;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Lld;->a:Lkg;

    invoke-virtual {v1, p1, v0}, Lkg;->a(Landroid/view/View;Lmq;)Lmq;

    move-result-object v0

    check-cast v0, Lmr;

    .line 64
    invoke-virtual {v0}, Lmr;->e()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
