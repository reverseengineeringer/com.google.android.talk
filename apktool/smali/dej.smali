.class public final Ldej;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    iput-object p1, p0, Ldej;->a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Ldej;->a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;

    .line 1033
    iput-boolean v3, v0, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->b:Z

    .line 74
    iget-object v0, p0, Ldej;->a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;

    .line 2033
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->c:Landroid/app/AlertDialog;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    iget-object v0, p0, Ldej;->a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;

    .line 3110
    iget-object v1, v0, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->e:Lbfd;

    iget-object v2, v0, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->a:Landroid/telephony/SmsMessage;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->b:Z

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[BZ)I

    .line 76
    iget-object v1, p0, Ldej;->a:Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;

    .line 4099
    iget-object v0, v1, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4100
    iget-object v0, v1, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4102
    :cond_0
    iget-object v0, v1, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4103
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    .line 4105
    :cond_2
    iget-object v0, v1, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/phone/ClassZeroActivity;->a(Landroid/telephony/SmsMessage;)V

    goto :goto_0
.end method
