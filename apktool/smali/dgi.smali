.class final Ldgi;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Ldgi;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Ldgi;->a:Ldfq;

    .line 1055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 437
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const-string v2, "com.google.android.gms"

    .line 436
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method
