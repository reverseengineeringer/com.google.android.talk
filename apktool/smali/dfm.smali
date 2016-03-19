.class public final Ldfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Leao;


# direct methods
.method public constructor <init>(Leao;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Ldfm;->b:Leao;

    iput-object p2, p0, Ldfm;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Ldfm;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 341
    const-string v1, "___time"

    .line 1292
    sget-object v2, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->d:Ljava/text/SimpleDateFormat;

    .line 341
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 2292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->c:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 3292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->e:Ljava/lang/String;

    .line 343
    if-eqz v1, :cond_0

    const-string v1, "conversation_id"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldfm;->b:Leao;

    iget-object v2, v2, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 4292
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->e:Ljava/lang/String;

    .line 344
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 5292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->b:Landroid/widget/ArrayAdapter;

    .line 347
    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 6292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->b:Landroid/widget/ArrayAdapter;

    .line 348
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Ldfm;->b:Leao;

    iget-object v0, v0, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 7292
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->b:Landroid/widget/ArrayAdapter;

    .line 349
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_1
    :goto_0
    iget-object v0, p0, Ldfm;->b:Leao;

    iget-object v0, v0, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 8292
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->c:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    .line 353
    iget-object v0, p0, Ldfm;->b:Leao;

    iget-object v0, v0, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 9292
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->c:Ljava/util/ArrayList;

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 10292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->b:Landroid/widget/ArrayAdapter;

    .line 354
    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Ldfm;->b:Leao;

    iget-object v1, v1, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 11292
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->b:Landroid/widget/ArrayAdapter;

    .line 355
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_2
    return-void
.end method
