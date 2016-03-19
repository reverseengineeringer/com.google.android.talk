.class final Lro;
.super Lrm;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lrg;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lrm;-><init>(Landroid/content/Context;Landroid/view/Window;Lrg;)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrp;

    invoke-direct {v0, p0, p1}, Lrp;-><init>(Lro;Landroid/view/Window$Callback;)V

    return-object v0
.end method
