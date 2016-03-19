.class public final Lmp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lsn;


# direct methods
.method public constructor <init>(Lsn;)V
    .locals 0

    .prologue
    .line 2162
    iput-object p1, p0, Lmp;->a:Lsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmp;->a:Lsn;

    .line 2074
    iget-object v0, v0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 1165
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1166
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1167
    return-void
.end method
