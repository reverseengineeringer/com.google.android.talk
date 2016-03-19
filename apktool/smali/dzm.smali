.class public final Ldzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldju;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1204
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a()V

    .line 674
    invoke-static {p1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Ldzn;

    invoke-direct {v1, p0}, Ldzn;-><init>(Ldzm;)V

    .line 675
    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 682
    return-void
.end method
