.class public final Luw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 1068
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d()Lza;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lza;->k()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 2068
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d()Lza;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lza;->c()V

    .line 148
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Liq;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Luw;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Liq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liq;->a(Z)V

    goto :goto_0
.end method
