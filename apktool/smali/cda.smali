.class public final Lcda;
.super Lbxq;
.source "SourceFile"

# interfaces
.implements Lbxr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lbxq;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)Lcda;
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcda;

    invoke-direct {v0}, Lcda;-><init>()V

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v2, "title"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->iR:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "message"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->iQ:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "positive"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->al:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "negative"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->U:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lcda;->setArguments(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {v0, v0, v1}, Lcda;->setTargetFragment(Lav;I)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "clear_recent_calls"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcda;->an:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Lbg;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "clear_recent_calls"

    invoke-virtual {p0, p1, v0}, Lcda;->a(Lbg;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
