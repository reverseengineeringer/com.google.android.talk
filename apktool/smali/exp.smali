.class final Lexp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldju;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1032
    invoke-static {}, Lexo;->b()V

    .line 311
    invoke-static {p1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Lexq;

    invoke-direct {v1, p0}, Lexq;-><init>(Lexp;)V

    .line 312
    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method
