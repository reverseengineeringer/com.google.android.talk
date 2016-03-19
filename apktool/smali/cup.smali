.class public final Lcup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iput-object p2, p0, Lcup;->a:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcup;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    check-cast p2, Landroid/widget/ListView;

    .line 2088
    iput-object p2, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 222
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iget-object v0, p0, Lcup;->a:Landroid/view/LayoutInflater;

    sget v2, Laal;->eR:I

    iget-object v3, p0, Lcup;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 3088
    iput-object v0, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 225
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 4088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a()V

    .line 226
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 5088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 226
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 6088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->f:Lfic;

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lfic;)V

    .line 227
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 7088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 227
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 8088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->g:Lgme;

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgme;)V

    .line 228
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 9088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 228
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgna;)V

    .line 229
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 10088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 229
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgnc;)V

    .line 230
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 11088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 230
    sget v1, Laal;->gF:I

    iget-object v2, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 12088
    iget-object v2, v2, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->ay:Lgnf;

    .line 232
    iget-object v3, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 13088
    iget-object v3, v3, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->az:Lgnd;

    .line 230
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(ILgnf;Lgnd;)V

    .line 234
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 14088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 234
    invoke-virtual {v0, v4}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->c(I)V

    .line 235
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 15088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->al:Lgpt;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 16088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 236
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 17088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->al:Lgpt;

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgpt;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 18088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 238
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 19088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->am:Lgpt;

    .line 238
    iget-object v2, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 20088
    iget-object v2, v2, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->an:Lgpt;

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgpt;Lgpt;)V

    .line 240
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 21088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 22089
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 22090
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22091
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 22092
    new-instance v2, Lcvc;

    .line 22100
    invoke-direct {v2, v1}, Lcvc;-><init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V

    .line 22092
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 22093
    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 22094
    new-instance v2, Lgms;

    invoke-direct {v2}, Lgms;-><init>()V

    iput-object v2, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->au:Lgms;

    .line 22095
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->au:Lgms;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 23088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 243
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 24088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->e:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 25088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 244
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 26088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->h:Lcvd;

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 27088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcup;->a:Landroid/view/LayoutInflater;

    sget v2, Laal;->gt:I

    iget-object v3, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 28088
    iget-object v3, v3, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 246
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 29088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aj:Landroid/widget/ListView;

    .line 247
    iget-object v1, p0, Lcup;->c:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 30088
    iget-object v1, v1, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->av:Landroid/widget/AdapterView$OnItemClickListener;

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    return-void
.end method
