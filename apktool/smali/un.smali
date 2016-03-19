.class public final Lun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 3052
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->g()V

    .line 118
    iget-object v0, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 4052
    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 4447
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 5052
    iget-object v2, v2, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 118
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lmd;->c(F)Lmd;

    move-result-object v1

    iget-object v2, p0, Lun;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 6052
    iget-object v2, v2, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Lmn;

    .line 118
    invoke-virtual {v1, v2}, Lmd;->a(Lmn;)Lmd;

    move-result-object v1

    .line 7052
    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c:Lmd;

    .line 121
    return-void
.end method
