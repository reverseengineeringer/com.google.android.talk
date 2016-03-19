.class public final Lwp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 3176
    iput-object p1, p0, Lwp;->a:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lwp;->a:Landroid/support/v7/widget/Toolbar;

    .line 2120
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->f:Labd;

    .line 1179
    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lwp;->a:Landroid/support/v7/widget/Toolbar;

    .line 3120
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->f:Labd;

    .line 1180
    invoke-virtual {v0, p1}, Labd;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
