.class final Lenz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldju;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1069
    invoke-static {}, Leny;->a()V

    .line 633
    invoke-static {p1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Leoa;

    invoke-direct {v1, p0}, Leoa;-><init>(Lenz;)V

    .line 634
    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method
