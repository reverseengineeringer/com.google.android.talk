.class public final Labd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lsh;


# direct methods
.method public constructor <init>(Lsh;)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Labd;->a:Lsh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Labd;->a:Lsh;

    .line 2051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 1073
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
