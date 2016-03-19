.class public final Ldfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/DebugActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 431
    check-cast p2, Ldfn;

    .line 432
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    invoke-virtual {p2}, Ldfn;->a()Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    move-result-object v1

    .line 1084
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->e:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 434
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 2084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->d:Landroid/widget/ListView;

    .line 434
    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 3917
    new-instance v2, Ldfb;

    invoke-direct {v2, v1}, Ldfb;-><init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V

    .line 434
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 435
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 4084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->d:Landroid/widget/ListView;

    .line 435
    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 5961
    new-instance v2, Ldfc;

    invoke-direct {v2, v1}, Ldfc;-><init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V

    .line 435
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 437
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 6084
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->b()Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 7084
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->f:Landroid/widget/ArrayAdapter;

    .line 438
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 8084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->e:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 438
    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 9084
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity;->f:Landroid/widget/ArrayAdapter;

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->a(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 10084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->d:Landroid/widget/ListView;

    .line 439
    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 11084
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity;->f:Landroid/widget/ArrayAdapter;

    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 12084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->d:Landroid/widget/ListView;

    .line 440
    iget-object v1, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 13084
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/DebugActivity;->f:Landroid/widget/ArrayAdapter;

    .line 440
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 441
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 14084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->e:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 446
    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->a(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Ldfk;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 15084
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->e:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 448
    return-void
.end method
