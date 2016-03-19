.class final Lbnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldju;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 3285
    invoke-static {}, Lbng;->aa()V

    .line 3177
    invoke-static {p1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Lbnu;

    invoke-direct {v1, p0}, Lbnu;-><init>(Lbnt;)V

    .line 3178
    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 3185
    return-void
.end method
