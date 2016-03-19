.class final Ldgj;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Ldgj;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Ldgj;->a:Ldfq;

    .line 1055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 445
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const-string v2, "com.google.android.talk"

    .line 444
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method
