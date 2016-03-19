.class public final Lcuz;
.super Loq;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 4

    .prologue
    .line 1004
    iput-object p1, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1005
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v0

    .line 1088
    iget-object v1, p1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 1005
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->gw:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->gv:I

    invoke-direct {p0, v0, v1, v2, v3}, Loq;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    .line 1007
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1063
    return-void
.end method

.method private e()Lbfd;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 18088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ar:Lhzy;

    .line 1083
    invoke-virtual {v0}, Lhzy;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 1067
    invoke-super {p0, p1}, Loq;->a(I)V

    .line 1068
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 14088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ao:Ljava/lang/Runnable;

    .line 1068
    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 15088
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ao:Ljava/lang/Runnable;

    .line 1076
    :cond_0
    if-eqz p1, :cond_1

    .line 1077
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 16088
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->b()V

    .line 1078
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 17088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->h:Lcvd;

    .line 1078
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcvd;->a(Z)V

    .line 1080
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1029
    invoke-super {p0, p1}, Loq;->a(Landroid/view/View;)V

    .line 1030
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->y_()V

    .line 1031
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 5088
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->a()V

    .line 1033
    invoke-direct {p0}, Lcuz;->e()Lbfd;

    move-result-object v0

    const/16 v1, 0x616

    .line 1032
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1034
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1011
    invoke-super {p0, p1, v2}, Loq;->a(Landroid/view/View;F)V

    .line 1012
    cmpl-float v0, p2, v2

    if-nez v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 2088
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ap:Z

    .line 1018
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1019
    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    .line 1020
    sget v0, Laal;->cT:I

    invoke-direct {p0, v0}, Lcuz;->c(I)V

    .line 1025
    :cond_1
    :goto_1
    return-void

    .line 1014
    :cond_2
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 3088
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ap:Z

    .line 1014
    if-nez v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 4088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ap:Z

    .line 1016
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laen;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1022
    :cond_3
    sget v0, Laal;->dh:I

    invoke-direct {p0, v0}, Lcuz;->c(I)V

    goto :goto_1
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1038
    invoke-super {p0, p1}, Loq;->b(Landroid/view/View;)V

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1040
    sget v0, Laal;->dh:I

    invoke-direct {p0, v0}, Lcuz;->c(I)V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 6088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->h:Lcvd;

    .line 1042
    invoke-virtual {v0}, Lcvd;->a()V

    .line 1043
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 7088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->h:Lcvd;

    .line 1043
    invoke-virtual {v0, v2}, Lcvd;->a(Z)V

    .line 1044
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {v0}, Lba;->y_()V

    .line 1051
    :cond_1
    invoke-direct {p0}, Lcuz;->e()Lbfd;

    move-result-object v0

    const/16 v1, 0x617

    .line 1050
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1052
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 8088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ao:Ljava/lang/Runnable;

    .line 1052
    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 9088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ao:Ljava/lang/Runnable;

    .line 1053
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1054
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 10088
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ao:Ljava/lang/Runnable;

    .line 1056
    :cond_2
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 11088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 1056
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->c(I)V

    .line 1057
    iget-object v0, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iget-object v1, p0, Lcuz;->j:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 12088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 13088
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    .line 1058
    return-void
.end method
