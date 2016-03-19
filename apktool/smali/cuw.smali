.class final Lcuw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgpt;

.field final synthetic c:Lcuu;


# direct methods
.method constructor <init>(Lcuu;ILgpt;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcuw;->c:Lcuu;

    iput p2, p0, Lcuw;->a:I

    iput-object p3, p0, Lcuw;->b:Lgpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    iget v0, p0, Lcuw;->a:I

    packed-switch v0, :pswitch_data_0

    .line 699
    :goto_0
    iget-object v0, p0, Lcuw;->c:Lcuu;

    iget-object v0, v0, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 4088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 699
    invoke-virtual {v0, v4}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->c(I)V

    .line 700
    return-void

    .line 677
    :pswitch_0
    iget-object v0, p0, Lcuw;->c:Lcuu;

    iget-object v0, v0, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iget-object v1, p0, Lcuw;->b:Lgpt;

    .line 1088
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->c(Lgpt;)V

    .line 678
    iget-object v0, p0, Lcuw;->c:Lcuu;

    iget-object v0, v0, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 2088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->c:Lcva;

    .line 678
    iget-object v1, p0, Lcuw;->b:Lgpt;

    .line 679
    invoke-interface {v1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcuw;->b:Lgpt;

    invoke-interface {v2}, Lgpt;->e()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-interface {v0, v1, v2}, Lcva;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :pswitch_1
    new-instance v0, Liac;

    iget-object v1, p0, Lcuw;->c:Lcuu;

    iget-object v1, v1, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 3088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->context:Lill;

    .line 682
    invoke-direct {v0, v1}, Liac;-><init>(Landroid/content/Context;)V

    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    const-class v2, Lhzv;

    .line 684
    invoke-virtual {v1, v2}, Liaj;->a(Ljava/lang/Class;)Liaj;

    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Liac;->a(Liaj;)Liac;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Liac;->a()Landroid/content/Intent;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcuw;->c:Lcuu;

    iget-object v1, v1, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v1, v0, v5}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 691
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    const-string v1, "authorities"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gmail-ls"

    aput-object v3, v2, v4

    const-string v3, "com.google.android.gm.email.provider"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcuw;->c:Lcuu;

    iget-object v1, v1, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
