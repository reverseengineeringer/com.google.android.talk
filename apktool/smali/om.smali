.class public final Lom;
.super Lii;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0

    .prologue
    .line 2123
    iput-object p1, p0, Lom;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Lii;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lmy;)V
    .locals 1

    .prologue
    .line 2127
    invoke-super {p0, p1, p2}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 3090
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    .line 2129
    if-nez v0, :cond_0

    .line 2133
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmy;->c(Landroid/view/View;)V

    .line 2135
    :cond_0
    return-void
.end method
