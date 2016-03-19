.class public Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;
.super Lcbr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 17
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    .line 18
    new-instance v0, Lepc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lepc;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lepc;->b(Lilh;)Lepc;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Laal;->gA:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->C_()Lbg;

    move-result-object v1

    .line 30
    sget v0, Laen;->eP:I

    .line 31
    invoke-virtual {v1, v0}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Ldcc;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ldcc;

    invoke-direct {v0}, Ldcc;-><init>()V

    .line 34
    invoke-virtual {v1}, Lbg;->a()Lbz;

    move-result-object v1

    sget v2, Laen;->eP:I

    const-class v3, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lbz;->b()I

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laen;->eQ:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->findViewById(I)Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->m:Landroid/support/v7/widget/Toolbar;

    .line 40
    invoke-virtual {v0, v1, v2}, Ldcc;->a(Landroid/view/LayoutInflater;Landroid/support/v7/widget/Toolbar;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;->g()Lqe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqe;->a(Z)V

    .line 43
    return-void
.end method
